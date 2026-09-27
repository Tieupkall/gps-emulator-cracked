# GPS Emulator - Thư mục mã nguồn chọn lọc (Filtered Source Code)

Thư mục này chứa toàn bộ mã nguồn thực tế của ứng dụng **GPS Emulator (`com.rosteam.gpsemulator`)**, đã được tách lọc hoàn toàn khỏi hàng ngàn file thư viện bên thứ 3 (Google Ads, Pangle, Yandex, UnityAds, AndroidX,...).

---

## 📁 Cấu trúc thư mục

```text
app_source_code/
├── java_src/                 # Mã nguồn Java decompile từ ứng dụng (24 files)
│   └── com/rosteam/gpsemulator/
│       ├── App.java                   # Application class khởi tạo
│       ├── MainActivity.java          # Màn hình chính & bản đồ GPS
│       ├── SettingsFragment.java      # Cài đặt & cấu hình PRO/Noads
│       ├── BootUpReceiver.java        # BroadcastReceiver khởi động cùng máy
│       ├── Bookmarks02.java           # Quản lý địa điểm yêu thích
│       ├── LocationUtils.java         # Tiện ích tính toán tọa độ GPS
│       ├── MockLocationProvider.java  # Provider giả lập vị trí Android
│       ├── servicex2484.java          # Service chạy ngầm giả lập GPS
│       ├── draglistview/              # Component UI danh sách kéo thả
│       └── utils/                     # Các model dữ liệu (RegUbic,...)
│
├── smali_src/                # Toàn bộ mã nguồn Smali của com.rosteam (350 files)
│   └── com/rosteam/gpsemulator/       # Bao gồm tất cả các inner class ($1, $2,...)
│
├── modified_smali/           # 4 file Smali cốt lõi đã được can thiệp (Patch)
│   ├── App.smali                      # Bỏ qua khởi tạo Ads SDK & ép noads=true
│   ├── BootUpReceiver.smali           # Ép trạng thái noads khi boot
│   ├── MainActivity.smali             # Tắt quảng cáo xen kẽ, popup & chặn reset PRO
│   └── SettingsFragment.smali         # Chặn hàm deshabilitarPRO(), kích hoạt PRO
│
└── config_and_manifest/      # File cấu hình & Manifest
    ├── AndroidManifest.xml            # Manifest của app (đã cấu hình debuggable)
    ├── build-release.ps1              # Script tự động assemble, patch, zipalign & ký APK
    └── release-signing.properties     # Thông tin keystore ký release
```

---

## 🔍 Chi tiết các file Smali đã patch (`modified_smali/`)

| File Smali | Thay đổi can thiệp | Mục đích |
|---|---|---|
| **`App.smali`** | Inject `Editor.putBoolean("noads", true)` & `putInt("numerofavoritos", 1000)` trước khi đọc SharedPreferences; đặt `v0 = 1` bỏ qua gọi SDK Google Ads, Yandex Ads, Pangle | Khởi động app ở chế độ PRO ngay từ `Application.onCreate()`, không load SDK quảng cáo |
| **`BootUpReceiver.smali`** | Giữ `move-result v3`, đặt `const/4 v3, 0x1` cho biến `noads` | Cho phép auto-start vị trí khi khởi động máy mà không đòi hỏi mua bản quyền |
| **`MainActivity.smali`** | `exitAdNow()`, `splashNow()`, `transitionNow()` trả về `0` (`false`); làm rỗng `deshabilitarPRO()` | Chặn hoàn toàn quảng cáo khi chuyển màn hình, mở app, tắt app; không bị hạ cấp bản quyền |
| **`SettingsFragment.smali`** | Làm rỗng `deshabilitarPRO()` (`return-void`); ép `noAds = true` trong `onCreatePreferences` | Giữ nguyên trạng thái PRO vĩnh viễn khi người dùng vào màn hình Cài đặt |

---

## 🚀 Cách Build lại APK từ nguồn này

Chạy script PowerShell tại thư mục gốc của project:
```powershell
powershell -ExecutionPolicy Bypass -File "build-release.ps1"
```
Kết quả APK xuất ra tại: `dist/GPSEmulator.apk`
