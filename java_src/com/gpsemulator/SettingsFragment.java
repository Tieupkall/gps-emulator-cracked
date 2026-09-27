package com.rosteam.gpsemulator;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import android.text.InputFilter;
import android.text.Spanned;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.content.FileProvider;
import androidx.preference.DropDownPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceFragmentCompat;
import androidx.preference.PreferenceGroup;
import androidx.preference.SeekBarPreference;
import androidx.preference.SwitchPreference;
import com.android.billingclient.api.AcknowledgePurchaseParams;
import com.android.billingclient.api.AcknowledgePurchaseResponseListener;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingFlowParams;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.PendingPurchasesParams;
import com.android.billingclient.api.ProductDetails;
import com.android.billingclient.api.ProductDetailsResponseListener;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.PurchasesUpdatedListener;
import com.android.billingclient.api.QueryProductDetailsParams;
import com.android.billingclient.api.QueryProductDetailsResult;
import com.android.billingclient.api.QueryPurchasesParams;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.my.target.common.models.IAdLoadingError;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class SettingsFragment extends PreferenceFragmentCompat implements SharedPreferences.OnSharedPreferenceChangeListener, PurchasesUpdatedListener {
    Activity activity;
    BillingClient billingClient;
    Context context;
    SharedPreferences.Editor editor;
    Preference manageSubs;
    boolean noAds = true;
    Preference prefGoPRO;
    SwitchPreference prefHideNotif;
    SwitchPreference prefRandomize;
    DropDownPreference prefRoundUp;
    SwitchPreference prefStart;
    SwitchPreference prefStop;
    SharedPreferences preferences;
    ProductDetails productDetails;
    AlertDialog purchaseDialog;

    private void escribirEnDocumentos2(String str) throws Exception {
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public void onResume() {
        super.onResume();
        getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
    }

    public void onPause() {
        super.onPause();
        getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    }

    public void onCreatePreferences(Bundle bundle, String str) {
        setPreferencesFromResource(R.xml.pref_general_dark_theme, str);
        this.context = getActivity();
        this.activity = getActivity();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        this.preferences = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.editor.putBoolean("noads", true);
        this.editor.putInt("numerofavoritos", 1000);
        this.editor.commit();
        this.noAds = true;
        this.prefGoPRO = findPreference("gopro");
        this.manageSubs = findPreference("mngsubs");
        if (this.prefGoPRO != null) {
            findPreference("pref_group_general").removePreference(this.prefGoPRO);
        }
        if (this.noAds && this.preferences.getBoolean("esSubs", false)) {
            this.manageSubs.setEnabled(true);
        } else if (this.noAds && !this.preferences.getBoolean("esSubs", false)) {
            PreferenceGroup preferenceGroupFindPreference = findPreference("pref_group_doyoulike");
            if (this.manageSubs == null) {
                this.manageSubs = findPreference("gopro");
            }
            preferenceGroupFindPreference.removePreference(this.manageSubs);
        } else {
            this.manageSubs.setEnabled(false);
            this.manageSubs.setSummary(getString(R.string.manage_subs_unavailable));
        }
        this.manageSubs.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.1
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(Uri.parse("https://play.google.com/store/account/subscriptions?sku=pro_subs&package=com.rosteam.gpsemulator"));
                SettingsFragment.this.startActivity(intent);
                return true;
            }
        });
        SwitchPreference switchPreferenceFindPreference = findPreference("launchonstop");
        this.prefStop = switchPreferenceFindPreference;
        SwitchPreference switchPreferenceFindPreference2 = findPreference("startlastlocation");
        this.prefStart = switchPreferenceFindPreference2;
        SwitchPreference switchPreferenceFindPreference3 = findPreference("hidenotif");
        this.prefHideNotif = switchPreferenceFindPreference3;
        SwitchPreference switchPreferenceFindPreference4 = findPreference("randomize");
        this.prefRandomize = switchPreferenceFindPreference4;
        DropDownPreference dropDownPreferenceFindPreference = findPreference("decimal_places");
        this.prefRoundUp = dropDownPreferenceFindPreference;
        final SeekBarPreference seekBarPreferenceFindPreference = findPreference("altitude");
        seekBarPreferenceFindPreference.setTitle(getString(R.string.altitude_formatted, new Object[]{Float.valueOf(this.preferences.getFloat("altitude2", 0.0f))}));
        seekBarPreferenceFindPreference.setUpdatesContinuously(true);
        seekBarPreferenceFindPreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.7
            public boolean onPreferenceClick(Preference preference) {
                View viewInflate = SettingsFragment.this.getLayoutInflater().inflate(R.layout.altitude_layout, (ViewGroup) null);
                final EditText editText = (EditText) viewInflate.findViewById(R.id.inputAltitude);
                editText.setInputType(12290);
                editText.setText(TtmlNode.ANONYMOUS_REGION_ID + SettingsFragment.this.preferences.getFloat("altitude2", 0.0f));
                editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(8), new InputFilterMinMax(-6000, IAdLoadingError.LoadErrorType.INTERNAL_ERROR)});
                new AlertDialog.Builder(SettingsFragment.this.context).setTitle(SettingsFragment.this.getString(R.string.Altitude)).setView(viewInflate).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.7.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        seekBarPreferenceFindPreference.setValue(Math.round(Float.parseFloat(editText.getText().toString())));
                        seekBarPreferenceFindPreference.setTitle(SettingsFragment.this.getString(R.string.altitude_formatted, new Object[]{Float.valueOf(Float.parseFloat(editText.getText().toString()))}));
                        SettingsFragment.this.editor.putFloat("altitude2", Float.parseFloat(editText.getText().toString()));
                        SettingsFragment.this.editor.commit();
                    }
                }).show();
                return false;
            }
        });
        seekBarPreferenceFindPreference.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.8
            public boolean onPreferenceChange(Preference preference, Object obj) {
                int iIntValue = (((Integer) obj).intValue() / 100) * 100;
                float f = iIntValue;
                seekBarPreferenceFindPreference.setTitle(SettingsFragment.this.getString(R.string.altitude_formatted, new Object[]{Float.valueOf(f)}));
                seekBarPreferenceFindPreference.setValue(iIntValue);
                SettingsFragment.this.editor.putFloat("altitude2", f);
                SettingsFragment.this.editor.commit();
                return false;
            }
        });
        final SeekBarPreference seekBarPreferenceFindPreference2 = findPreference("accuracy");
        seekBarPreferenceFindPreference2.setTitle(getString(R.string.accuracy_formatted, new Object[]{Float.valueOf(this.preferences.getFloat("accuracy2", 0.0f))}));
        seekBarPreferenceFindPreference2.setUpdatesContinuously(true);
        seekBarPreferenceFindPreference2.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.9
            public boolean onPreferenceClick(Preference preference) {
                View viewInflate = SettingsFragment.this.getLayoutInflater().inflate(R.layout.altitude_layout, (ViewGroup) null);
                final EditText editText = (EditText) viewInflate.findViewById(R.id.inputAltitude);
                editText.setInputType(8194);
                editText.setText(TtmlNode.ANONYMOUS_REGION_ID + SettingsFragment.this.preferences.getFloat("accuracy2", 0.0f));
                editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(6), new InputFilterMinMax(0, 300)});
                new AlertDialog.Builder(SettingsFragment.this.context).setTitle(SettingsFragment.this.getString(R.string.Accuracy)).setView(viewInflate).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.9.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        seekBarPreferenceFindPreference2.setValue(Math.round(Float.parseFloat(editText.getText().toString())));
                        seekBarPreferenceFindPreference2.setTitle(SettingsFragment.this.getString(R.string.accuracy_formatted, new Object[]{Float.valueOf(Float.parseFloat(editText.getText().toString()))}));
                        SettingsFragment.this.editor.putFloat("accuracy2", Float.parseFloat(editText.getText().toString()));
                        SettingsFragment.this.editor.commit();
                    }
                }).show();
                return false;
            }
        });
        seekBarPreferenceFindPreference2.setOnPreferenceChangeListener(new Preference.OnPreferenceChangeListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.10
            public boolean onPreferenceChange(Preference preference, Object obj) {
                int iIntValue = (((Integer) obj).intValue() / 10) * 10;
                float f = iIntValue;
                seekBarPreferenceFindPreference2.setTitle(SettingsFragment.this.getString(R.string.accuracy_formatted, new Object[]{Float.valueOf(f)}));
                seekBarPreferenceFindPreference2.setValue(iIntValue);
                SettingsFragment.this.editor.putFloat("accuracy2", f);
                SettingsFragment.this.editor.commit();
                return false;
            }
        });
        BillingClient billingClientBuild = BillingClient.newBuilder(this.activity).setListener(this).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
        this.billingClient = billingClientBuild;
        billingClientBuild.startConnection(new AnonymousClass11());
        findPreference("policy").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.12
            public boolean onPreferenceClick(Preference preference) {
                SettingsFragment.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://digitools.uy/privacy-policy/")));
                return false;
            }
        });
        Preference preferenceFindPreference = findPreference("gdpr");
        if (!this.preferences.getBoolean("isEEA", false) || this.noAds) {
            preferenceFindPreference.setVisible(false);
        }
        preferenceFindPreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.13
            public boolean onPreferenceClick(Preference preference) {
                SettingsFragment.this.getActivity().setResult(1);
                SettingsFragment.this.getActivity().finish();
                return false;
            }
        });
        findPreference("mocklocation").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.14
            public boolean onPreferenceClick(Preference preference) {
                SettingsFragment.this.getActivity().setResult(2);
                SettingsFragment.this.getActivity().finish();
                return false;
            }
        });
        findPreference("backup").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.15
            public boolean onPreferenceClick(Preference preference) {
                boolean z = true;
                String strConcat = TtmlNode.ANONYMOUS_REGION_ID;
                int i = 0;
                do {
                    try {
                        String string = SettingsFragment.this.preferences.getString("favPosition" + i, TtmlNode.ANONYMOUS_REGION_ID);
                        if (string.isEmpty()) {
                            z = false;
                        } else {
                            strConcat = strConcat.concat(string).concat("\n");
                        }
                        i++;
                    } catch (Exception e) {
                        Toast.makeText(SettingsFragment.this.activity, SettingsFragment.this.getString(R.string.something_went_wrong), 1).show();
                        e.printStackTrace();
                    }
                } while (z);
                String strConcat2 = strConcat.concat("###\n");
                boolean z2 = true;
                int i2 = 0;
                do {
                    String string2 = SettingsFragment.this.preferences.getString("ruta" + i2, TtmlNode.ANONYMOUS_REGION_ID);
                    if (string2.isEmpty()) {
                        z2 = false;
                    } else {
                        strConcat2 = strConcat2.concat(string2).concat("\n");
                    }
                    i2++;
                } while (z2);
                if (strConcat2.length() > 4) {
                    SettingsFragment.this.escribirEnDocumentos(strConcat2);
                } else {
                    new AlertDialog.Builder(SettingsFragment.this.getActivity()).setTitle(SettingsFragment.this.getString(R.string.backup_app_data)).setMessage(R.string.no_hay_marcadores_para_exportar).setNegativeButton(R.string.cerrar, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.15.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i3) {
                        }
                    }).show();
                }
                return true;
            }
        });
        findPreference("map_mode").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.16
            public boolean onPreferenceClick(Preference preference) {
                SettingsFragment.this.editor.putInt("accion", 2);
                SettingsFragment.this.editor.commit();
                return false;
            }
        });
        findPreference("resetall").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.17
            public boolean onPreferenceClick(Preference preference) {
                new AlertDialog.Builder(SettingsFragment.this.getActivity()).setTitle(SettingsFragment.this.getString(R.string.menu_reset_all)).setMessage(SettingsFragment.this.getString(R.string.resetallmsg)).setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.17.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        SettingsFragment.this.editor.putInt("accion", 1);
                        SettingsFragment.this.editor.apply();
                        SettingsFragment.this.editor.commit();
                        SettingsFragment.this.getActivity().finish();
                    }
                }).setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.17.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                }).show();
                return true;
            }
        });
        if (this.prefGoPRO != null) {
            this.prefGoPRO.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.18
                public boolean onPreferenceClick(Preference preference) {
                    return false;
                }
            });
        }
        findPreference("tellfriends").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.19
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent("android.intent.action.SEND");
                intent.setType("text/plain");
                intent.putExtra("android.intent.extra.TEXT", "https://play.google.com/store/apps/details?id=com.rosteam.gpsemulator");
                intent.putExtra("android.intent.extra.SUBJECT", SettingsFragment.this.getString(R.string.check_out));
                SettingsFragment settingsFragment = SettingsFragment.this;
                settingsFragment.startActivity(Intent.createChooser(intent, settingsFragment.getString(R.string.tell_your_friends)));
                return true;
            }
        });
        findPreference("rateus").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.20
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent("android.intent.action.VIEW");
                try {
                    if (App.XIAOMI) {
                        intent.setData(Uri.parse("mimarket://details?id=com.rosteam.gpsemulator&back=true|false&ref=refstr&startDownload=true"));
                        SettingsFragment.this.startActivity(intent);
                    } else {
                        intent.setData(Uri.parse("market://details?id=com.rosteam.gpsemulator"));
                        SettingsFragment.this.startActivity(intent);
                    }
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }
        });
        findPreference("qrtools").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.21
            public boolean onPreferenceClick(Preference preference) {
                Intent intent = new Intent("android.intent.action.VIEW");
                try {
                    if (App.XIAOMI) {
                        intent.setData(Uri.parse("mimarket://details?id=uy.digitools.qrtools&back=true|false&ref=refstr&startDownload=true"));
                        SettingsFragment.this.startActivity(intent);
                    } else {
                        intent.setData(Uri.parse("market://details?id=uy.digitools.qrtools"));
                        SettingsFragment.this.startActivity(intent);
                    }
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }
        });
    }

    /* JADX INFO: renamed from: com.rosteam.gpsemulator.SettingsFragment$11, reason: invalid class name */
    class AnonymousClass11 implements BillingClientStateListener {
        AnonymousClass11() {
        }

        public void onBillingSetupFinished(BillingResult billingResult) {
            if (billingResult.getResponseCode() == 0) {
                SettingsFragment.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("subs").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.11.1
                    public void onQueryPurchasesResponse(BillingResult billingResult2, List<Purchase> list) {
                        if (list != null && list.size() > 0) {
                            Log.e("fakegps", "hay purchase");
                            SettingsFragment.this.editor.putBoolean("esSubs", true);
                            SettingsFragment.this.editor.commit();
                            SettingsFragment.this.handlePurchase(list.get(0));
                            return;
                        }
                        SettingsFragment.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.11.1.1
                            public void onQueryPurchasesResponse(BillingResult billingResult3, List<Purchase> list2) {
                                if (list2 != null && list2.size() > 0) {
                                    Log.e("fakegps", "hay purchase");
                                    SettingsFragment.this.editor.putBoolean("esSubs", false);
                                    SettingsFragment.this.editor.commit();
                                    SettingsFragment.this.handlePurchase(list2.get(0));
                                    return;
                                }
                                SettingsFragment.this.deshabilitarPRO();
                            }
                        });
                    }
                });
                ArrayList arrayList = new ArrayList();
                arrayList.add(QueryProductDetailsParams.Product.newBuilder().setProductId("pro_subs").setProductType("subs").build());
                SettingsFragment.this.billingClient.queryProductDetailsAsync(QueryProductDetailsParams.newBuilder().setProductList(arrayList).build(), new ProductDetailsResponseListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.11.2
                    public void onProductDetailsResponse(BillingResult billingResult2, QueryProductDetailsResult queryProductDetailsResult) {
                        if (billingResult2.getResponseCode() == 0) {
                            List productDetailsList = queryProductDetailsResult.getProductDetailsList();
                            if (productDetailsList.size() > 0) {
                                SettingsFragment.this.productDetails = (ProductDetails) productDetailsList.get(0);
                            }
                        }
                    }
                });
            }
        }

        public void onBillingServiceDisconnected() {
            Log.e("fakegps", "Billing Service Disconnected");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void escribirEnDocumentos(String str) throws Exception {
        String absolutePath;
        final Uri uriForFile;
        String str2 = "export_" + System.currentTimeMillis() + ".gpsemu";
        if (Build.VERSION.SDK_INT >= 29) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_display_name", str2);
            contentValues.put("mime_type", "application/octet-stream");
            contentValues.put("relative_path", Environment.DIRECTORY_DOCUMENTS);
            uriForFile = getActivity().getContentResolver().insert(MediaStore.Files.getContentUri("external"), contentValues);
            absolutePath = Environment.DIRECTORY_DOCUMENTS + RemoteSettings.FORWARD_SLASH_STRING + str2;
            if (uriForFile != null) {
                try {
                    OutputStream outputStreamOpenOutputStream = getActivity().getContentResolver().openOutputStream(uriForFile);
                    try {
                        outputStreamOpenOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
                        if (outputStreamOpenOutputStream != null) {
                            outputStreamOpenOutputStream.close();
                        }
                    } catch (Throwable th) {
                        if (outputStreamOpenOutputStream != null) {
                            try {
                                outputStreamOpenOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                } catch (IOException e) {
                    Log.e("EscribirFILE", "Error en MediaStore", e);
                }
            }
        } else {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS);
            if (!externalStoragePublicDirectory.exists()) {
                externalStoragePublicDirectory.mkdirs();
            }
            File file = new File(externalStoragePublicDirectory, str2);
            absolutePath = file.getAbsolutePath();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(str.getBytes(StandardCharsets.UTF_8));
                    MediaScannerConnection.scanFile(getActivity(), new String[]{file.getAbsolutePath()}, null, null);
                    fileOutputStream.close();
                } catch (Throwable th3) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            } catch (IOException e2) {
                Log.e("EscribirFILE", "Error en File", e2);
            }
            uriForFile = FileProvider.getUriForFile(getContext(), getContext().getPackageName() + ".fileprovider", file);
        }
        if (uriForFile != null) {
            new AlertDialog.Builder(getActivity()).setTitle(getString(R.string.backup_app_data)).setMessage(String.format(getString(R.string.backup_file_saved_to_s), absolutePath)).setPositiveButton(R.string.share, new DialogInterface.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.22
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType("application/octet-stream");
                    intent.putExtra("android.intent.extra.STREAM", uriForFile);
                    intent.addFlags(1);
                    SettingsFragment settingsFragment = SettingsFragment.this;
                    settingsFragment.startActivity(Intent.createChooser(intent, settingsFragment.getString(R.string.compartir_archivo_de_marcadores)));
                }
            }).setNegativeButton(R.string.cerrar, (DialogInterface.OnClickListener) null).show();
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str.contentEquals("dark_mode")) {
            int i = Integer.parseInt(this.preferences.getString("dark_mode", MBridgeConstans.ENDCARD_URL_TYPE_PL));
            if (i == 0) {
                AppCompatDelegate.setDefaultNightMode(-1);
            } else if (i == 1) {
                AppCompatDelegate.setDefaultNightMode(2);
            } else {
                if (i != 2) {
                    return;
                }
                AppCompatDelegate.setDefaultNightMode(1);
            }
        }
    }

    public void hacerCompra() {
        if (true) return;
        Log.e("FakeGPS", "HACER COMPRA Billing Client Ready: " + this.billingClient.isReady());
        if (this.billingClient.isReady()) {
            initiatePurchase();
            return;
        }
        BillingClient billingClientBuild = BillingClient.newBuilder(this.activity).setListener(this).enablePendingPurchases(PendingPurchasesParams.newBuilder().enableOneTimeProducts().build()).build();
        this.billingClient = billingClientBuild;
        billingClientBuild.startConnection(new BillingClientStateListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.23
            public void onBillingSetupFinished(BillingResult billingResult) {
                if (billingResult.getResponseCode() == 0) {
                    SettingsFragment.this.initiatePurchase();
                } else {
                    Toast.makeText(SettingsFragment.this.activity, "Error " + billingResult.getDebugMessage(), 0).show();
                }
            }

            public void onBillingServiceDisconnected() {
                Log.e("fakegps", "Billing Service Disconnected");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initiatePurchase() {
        ProductDetails.PricingPhase pricingPhase;
        ProductDetails.PricingPhase pricingPhase2;
        Log.e("GPSemu", "initiate purchase");
        if (this.productDetails != null) {
            int i = 0;
            int i2 = 0;
            for (int i3 = 0; i3 < this.productDetails.getSubscriptionOfferDetails().size(); i3++) {
                if (((ProductDetails.SubscriptionOfferDetails) this.productDetails.getSubscriptionOfferDetails().get(i3)).getBasePlanId().contentEquals("pro-3months")) {
                    i = i3;
                }
                if (((ProductDetails.SubscriptionOfferDetails) this.productDetails.getSubscriptionOfferDetails().get(i3)).getBasePlanId().contentEquals("pro-monthly")) {
                    i2 = i3;
                }
            }
            String offerToken = ((ProductDetails.SubscriptionOfferDetails) this.productDetails.getSubscriptionOfferDetails().get(i)).getOfferToken();
            ArrayList arrayList = new ArrayList();
            arrayList.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(this.productDetails).setOfferToken(offerToken).build());
            final BillingFlowParams billingFlowParamsBuild = BillingFlowParams.newBuilder().setProductDetailsParamsList(arrayList).build();
            String offerToken2 = ((ProductDetails.SubscriptionOfferDetails) this.productDetails.getSubscriptionOfferDetails().get(i2)).getOfferToken();
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(BillingFlowParams.ProductDetailsParams.newBuilder().setProductDetails(this.productDetails).setOfferToken(offerToken2).build());
            final BillingFlowParams billingFlowParamsBuild2 = BillingFlowParams.newBuilder().setProductDetailsParamsList(arrayList2).build();
            try {
                pricingPhase = (ProductDetails.PricingPhase) ((ProductDetails.SubscriptionOfferDetails) this.productDetails.getSubscriptionOfferDetails().get(i)).getPricingPhases().getPricingPhaseList().get(0);
                try {
                    pricingPhase2 = (ProductDetails.PricingPhase) ((ProductDetails.SubscriptionOfferDetails) this.productDetails.getSubscriptionOfferDetails().get(i2)).getPricingPhases().getPricingPhaseList().get(0);
                } catch (Exception unused) {
                    pricingPhase2 = null;
                }
            } catch (Exception unused2) {
                pricingPhase = null;
            }
            View viewInflate = getLayoutInflater().inflate(R.layout.purchase, (ViewGroup) null);
            LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.three_months);
            TextView textView = (TextView) viewInflate.findViewById(R.id.text_3months);
            TextView textView2 = (TextView) viewInflate.findViewById(R.id.text_saving);
            LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.one_month);
            TextView textView3 = (TextView) viewInflate.findViewById(R.id.text_1month);
            LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.dismiss);
            textView.setText(getString(R.string.money_3months, new Object[]{pricingPhase.getFormattedPrice()}));
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.24
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SettingsFragment.this.billingClient.launchBillingFlow(SettingsFragment.this.activity, billingFlowParamsBuild);
                }
            });
            textView2.setText(getString(R.string.save_money, new Object[]{Integer.valueOf((int) (((((pricingPhase2.getPriceAmountMicros() / 1000) * 3) - (pricingPhase.getPriceAmountMicros() / 1000)) / ((pricingPhase2.getPriceAmountMicros() / 1000) * 3)) * 100.0f))}));
            textView3.setText(getString(R.string.money_month, new Object[]{pricingPhase2.getFormattedPrice()}));
            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.25
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SettingsFragment.this.billingClient.launchBillingFlow(SettingsFragment.this.activity, billingFlowParamsBuild2);
                }
            });
            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.26
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    SettingsFragment.this.purchaseDialog.dismiss();
                }
            });
            AlertDialog alertDialogCreate = new AlertDialog.Builder(this.activity).setTitle(R.string.upgradepro).setMessage(R.string.removeads).setView(viewInflate).create();
            this.purchaseDialog = alertDialogCreate;
            alertDialogCreate.show();
        }
    }

    public void onPurchasesUpdated(BillingResult billingResult, List<Purchase> list) {
        if (billingResult.getResponseCode() == 0 && list != null) {
            AlertDialog alertDialog = this.purchaseDialog;
            if (alertDialog != null) {
                alertDialog.dismiss();
            }
            Iterator<Purchase> it = list.iterator();
            while (it.hasNext()) {
                handlePurchase(it.next());
            }
            return;
        }
        if (billingResult.getResponseCode() == 7) {
            this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("subs").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.27
                public void onQueryPurchasesResponse(BillingResult billingResult2, List<Purchase> list2) {
                    if (list2 != null && list2.size() > 0) {
                        Log.e("fakegps", "Settings hay purchase");
                        SettingsFragment.this.handlePurchase(list2.get(0));
                    } else {
                        SettingsFragment.this.billingClient.queryPurchasesAsync(QueryPurchasesParams.newBuilder().setProductType("inapp").build(), new PurchasesResponseListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.27.1
                            public void onQueryPurchasesResponse(BillingResult billingResult3, List<Purchase> list3) {
                                if (list3 != null && list3.size() > 0) {
                                    Log.e("fakegps", "hay purchase");
                                    SettingsFragment.this.handlePurchase(list3.get(0));
                                } else {
                                    SettingsFragment.this.deshabilitarPRO();
                                }
                            }
                        });
                    }
                }
            });
        } else {
            if (billingResult.getResponseCode() == 1) {
                return;
            }
            Toast.makeText(this.activity, "Error " + billingResult.getDebugMessage(), 0).show();
        }
    }

    void handlePurchase(Purchase purchase) {
        Log.e("fakegps", "handlePurchase state: " + purchase.getPurchaseState());
        if (purchase.getPurchaseState() == 1) {
            if (!purchase.isAcknowledged()) {
                Log.e("fakegps", "vamos a hacer el acknowledgment");
                this.billingClient.acknowledgePurchase(AcknowledgePurchaseParams.newBuilder().setPurchaseToken(purchase.getPurchaseToken()).build(), new AcknowledgePurchaseResponseListener() { // from class: com.rosteam.gpsemulator.SettingsFragment.28
                    public void onAcknowledgePurchaseResponse(BillingResult billingResult) {
                        Log.e("fakegps", "acknowledgment response: " + billingResult.getResponseCode());
                        SettingsFragment.this.habilitarPRO();
                        Toast.makeText(SettingsFragment.this.activity, R.string.congrats, 0).show();
                    }
                });
                return;
            }
            habilitarPRO();
            return;
        }
        if (purchase.getPurchaseState() == 2) {
            Toast.makeText(this.activity, R.string.purchase_pending, 0).show();
            dejarPendiente();
        } else if (purchase.getPurchaseState() == 0) {
            deshabilitarPRO();
            Toast.makeText(this.activity, "Purchase Status Unknown", 0).show();
        }
    }

    public void habilitarPRO() {
        PreferenceGroup preferenceGroupFindPreference = findPreference("pref_group_general");
        if (this.prefGoPRO == null) {
            this.prefGoPRO = findPreference("gopro");
        }
        this.noAds = true;
        preferenceGroupFindPreference.removePreference(this.prefGoPRO);
        this.editor.putBoolean("noads", true);
        this.editor.putInt("numerofavoritos", 1000);
        this.editor.commit();
    }

    public void deshabilitarPRO() {
        Log.e("Preferences", "Deshabilitar PRO - bypassed");
        habilitarPRO();
    }

    public void dejarPendiente() {
        if (this.prefGoPRO == null) {
            this.prefGoPRO = findPreference("gopro");
        }
        try {
            this.prefGoPRO.setSummary(getString(R.string.purchase_pending));
            this.prefGoPRO.setEnabled(false);
        } catch (Exception unused) {
        }
    }

    public static class InputFilterMinMax implements InputFilter {
        private int max;
        private int min;

        private boolean isInRange(int i, int i2, float f) {
            if (i2 > i) {
                return f >= ((float) i) && f <= ((float) i2);
            }
            return f >= ((float) i2) && f <= ((float) i);
        }

        public InputFilterMinMax(int i, int i2) {
            this.min = i;
            this.max = i2;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            try {
                float f = Float.parseFloat(spanned.subSequence(0, i3).toString() + ((Object) charSequence) + ((Object) spanned.subSequence(i4, spanned.length())));
                if (isInRange(this.min, this.max, f) && lessThan3Decimals(f)) {
                    return null;
                }
                return TtmlNode.ANONYMOUS_REGION_ID;
            } catch (NumberFormatException unused) {
                return TtmlNode.ANONYMOUS_REGION_ID;
            }
        }

        private boolean lessThan3Decimals(float f) {
            return (String.valueOf(f).length() - String.valueOf(f).indexOf(46)) - 1 <= 2;
        }
    }
}
