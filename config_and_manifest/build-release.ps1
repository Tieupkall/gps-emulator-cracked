param(
    [string]$JavaHome = "C:\Program Files\Eclipse Adoptium\jdk-17.0.20.8-hotspot",
    [string]$AndroidSdk = "C:\Users\LEGION\OneDrive\Desktop\ALL TOOL\ShizukuFilePaster\tools\android-sdk",
    [string]$BaseApk = "C:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\GPS+Emulator_13.28_APKPure.apk"
)

$ErrorActionPreference = "Stop"
$projectDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
$distributionDirectory = Join-Path $projectDirectory "dist"
$apkDestination = Join-Path $distributionDirectory "GPSEmulator.apk"
$unalignedApk = Join-Path $projectDirectory "temp_unaligned.apk"
$classes5Dex = Join-Path $projectDirectory "classes5.dex"
$keystorePath = Join-Path $projectDirectory "release-keystore.jks"

# 1. Verify Java Home
if (-not (Test-Path -LiteralPath (Join-Path $JavaHome "bin\java.exe"))) {
    $altJavaList = @(
        "C:\Users\LEGION\OneDrive\Desktop\ALL TOOL\ShizukuFilePaster\tools\jdk17\jdk-17.0.10+7",
        "C:\Users\LEGION\Downloads\Telegram Desktop\ShizukuFilePaster\tools\jdk17\jdk-17.0.10+7"
    )
    $foundJava = $false
    foreach ($candidate in $altJavaList) {
        if (Test-Path -LiteralPath (Join-Path $candidate "bin\java.exe")) {
            $JavaHome = $candidate
            $foundJava = $true
            break
        }
    }
    if (-not $foundJava) {
        throw "JDK 17 not found"
    }
}
$javaExe = Join-Path $JavaHome "bin\java.exe"

# 2. Locate Android Build Tools (zipalign & apksigner & aapt)
$buildToolsDirs = Get-ChildItem -Path (Join-Path $AndroidSdk "build-tools") -Directory | Sort-Object Name -Descending
$zipalignExe = $null
$apksignerBat = $null
$aaptExe = $null

foreach ($bDir in $buildToolsDirs) {
    $zCand = Join-Path $bDir.FullName "zipalign.exe"
    $aCand = Join-Path $bDir.FullName "apksigner.bat"
    $aaCand = Join-Path $bDir.FullName "aapt.exe"
    if ((Test-Path -LiteralPath $zCand) -and (Test-Path -LiteralPath $aCand)) {
        $zipalignExe = $zCand
        $apksignerBat = $aCand
        $aaptExe = $aaCand
        break
    }
}

if (-not $zipalignExe) {
    throw "zipalign.exe or apksigner.bat not found in $AndroidSdk\build-tools"
}

if (-not (Test-Path -LiteralPath $BaseApk)) {
    throw "Base APK not found at: $BaseApk"
}

Write-Host "=========================================="
Write-Host "--- BUILDING GPS EMULATOR (DEBUGGABLE) APK ---"
Write-Host "Java: $JavaHome"
Write-Host "Android Build Tools: $(Split-Path -Parent $zipalignExe)"
Write-Host "Base APK: $BaseApk"
Write-Host "=========================================="

# 3. Assemble Smali to classes5.dex
Write-Host "[1/4] Assembling smali_work into classes5.dex..."
$toolsCp = Join-Path $projectDirectory "tools\*"
$smaliDir = Join-Path $projectDirectory "smali_work"

& $javaExe -cp $toolsCp org.jf.smali.Main assemble $smaliDir -o $classes5Dex
if ($LASTEXITCODE -ne 0) {
    throw "Smali assemble failed with exit code $LASTEXITCODE"
}
Write-Host " -> Assembled classes5.dex ($((Get-Item $classes5Dex).Length) bytes)"

# 4. Patch Manifest with makeDebuggable and repackage into unaligned APK
Write-Host "[2/4] Patching AndroidManifest (debuggable=true) and repackaging base APK..."
$tempManifestIn = Join-Path $projectDirectory "temp_manifest_orig.xml"
$tempManifestOut = Join-Path $projectDirectory "temp_manifest_debug.xml"

$pythonScript = @"
import sys, os, zipfile
sys.path.append(r'$projectDirectory\tools')
import makeDebuggable

orig_apk = r'$BaseApk'
new_dex = r'$classes5Dex'
out_apk = r'$unalignedApk'
mf_in = r'$tempManifestIn'
mf_out = r'$tempManifestOut'

# Extract original manifest
with zipfile.ZipFile(orig_apk, 'r') as z:
    with open(mf_in, 'wb') as f:
        f.write(z.read('AndroidManifest.xml'))

# Patch manifest to inject debuggable=true
makeDebuggable.patchManifestByFilename(mf_in, mf_out)

with open(mf_out, 'rb') as f:
    debug_manifest_data = f.read()

with open(new_dex, 'rb') as f:
    new_dex_data = f.read()

# Repackage APK
with zipfile.ZipFile(orig_apk, 'r') as zin, zipfile.ZipFile(out_apk, 'w') as zout:
    for item in zin.infolist():
        # Strip existing signature files
        if item.filename in ['META-INF/CERT.RSA', 'META-INF/CERT.SF', 'META-INF/MANIFEST.MF'] or \
           (item.filename.startswith('META-INF/') and item.filename.endswith(('.SF', '.RSA', '.DSA', '.EC'))):
            continue
        
        if item.filename == 'AndroidManifest.xml':
            new_info = zipfile.ZipInfo('AndroidManifest.xml')
            new_info.compress_type = zipfile.ZIP_DEFLATED
            new_info.date_time = item.date_time
            zout.writestr(new_info, debug_manifest_data)
        elif item.filename == 'classes5.dex':
            new_info = zipfile.ZipInfo('classes5.dex')
            new_info.compress_type = zipfile.ZIP_DEFLATED
            new_info.date_time = item.date_time
            zout.writestr(new_info, new_dex_data)
        else:
            data = zin.read(item.filename)
            new_info = zipfile.ZipInfo(item.filename)
            new_info.compress_type = item.compress_type
            new_info.date_time = item.date_time
            new_info.external_attr = item.external_attr
            zout.writestr(new_info, data)
"@

python -c $pythonScript
if ($LASTEXITCODE -ne 0) {
    throw "APK repackaging failed"
}
Remove-Item $tempManifestIn, $tempManifestOut, $classes5Dex -Force -ErrorAction SilentlyContinue

# 5. Zipalign (4-byte alignment with page-alignment for shared objects)
Write-Host "[3/4] Zipaligning APK..."
New-Item -ItemType Directory -Path $distributionDirectory -Force | Out-Null
& $zipalignExe -f -p 4 $unalignedApk $apkDestination
if ($LASTEXITCODE -ne 0) {
    throw "Zipalign failed with exit code $LASTEXITCODE"
}
Remove-Item $unalignedApk -Force -ErrorAction SilentlyContinue

# 6. Sign with Release Keystore
Write-Host "[4/4] Signing APK with apksigner..."
& $apksignerBat sign --ks $keystorePath --ks-key-alias uhsm-release --ks-pass pass:"UHSM-V6-2026-8c71b4f9!" --key-pass pass:"UHSM-V6-2026-8c71b4f9!" --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true $apkDestination
if ($LASTEXITCODE -ne 0) {
    throw "Signing failed with exit code $LASTEXITCODE"
}

# Verify Signature
Write-Host "Verifying signature..."
& $apksignerBat verify --verbose $apkDestination
if ($LASTEXITCODE -ne 0) {
    throw "Signature verification failed with exit code $LASTEXITCODE"
}

if ($aaptExe) {
    $debuggableCheck = & $aaptExe dump badging $apkDestination | Select-String "application-debuggable"
    if ($debuggableCheck) {
        Write-Host "Flag: $debuggableCheck (ENABLED)"
    }
}

$hash = Get-FileHash -LiteralPath $apkDestination -Algorithm SHA256
$sizeMB = (Get-Item -LiteralPath $apkDestination).Length / 1MB

Write-Host "=========================================="
Write-Host "BUILD SUCCESS!"
Write-Host "APK: $apkDestination"
Write-Host "Size: $([math]::Round($sizeMB, 2)) MB"
Write-Host "SHA-256: $($hash.Hash)"
Write-Host "Debuggable: TRUE"
Write-Host "=========================================="
