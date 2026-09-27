package com.rosteam.gpsemulator;

import android.app.Activity;
import android.app.Application;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.bytedance.sdk.openadsdk.api.init.PAGConfig;
import com.bytedance.sdk.openadsdk.api.init.PAGSdk;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.yandex.mobile.ads.appopenad.AppOpenAd;
import com.yandex.mobile.ads.appopenad.AppOpenAdLoadListener;
import com.yandex.mobile.ads.appopenad.AppOpenAdLoader;
import com.yandex.mobile.ads.common.AdRequest;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.common.InitializationListener;
import com.yandex.mobile.ads.common.YandexAds;
import java.util.Date;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class App extends Application implements Application.ActivityLifecycleCallbacks, LifecycleObserver {
    public static final String CHANNEL_ID = "GPSEmulator23";
    public static boolean XIAOMI = true;
    private static final String YANDEX_MOBILE_ADS_TAG = "YandexMobileAds";
    private static boolean activityVisible;
    public static AppOpenAdManagerStart appOpenAdManager;
    public static PAGAppOpenAd pangleAppOpenAd;
    public static AppOpenAd yandexAppOpenAd;
    SharedPreferences preferences;

    public interface OnShowAdCompleteListener {
        void onShowAdComplete();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    private static PAGConfig buildNewConfig(Context context) {
        return new PAGConfig.Builder().appId("8123667").appIcon(R.mipmap.ic_launcher).debugLog(true).build();
    }

    @Override // android.app.Application
    public void onCreate() {
        super.onCreate();
        registerActivityLifecycleCallbacks(this);
        ProcessLifecycleOwner.get().getLifecycle().addObserver(this);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.preferences = defaultSharedPreferences;
        defaultSharedPreferences.edit().putBoolean("noads", true).putInt("numerofavoritos", 1000).apply();
        if (false) {
            if (isMainProcess()) {
                Log.e("PROCESS", "es MainProcess");
                boolean z = this.preferences.getBoolean("isEEA", false);
                int i = this.preferences.getInt("consent_status", -1);
                MobileAds.initialize(this, new OnInitializationCompleteListener() { // from class: com.rosteam.gpsemulator.App.1
                    public void onInitializationComplete(InitializationStatus initializationStatus) {
                    }
                });
                if (z) {
                    YandexAds.setUserConsent(i == 3);
                }
                YandexAds.initialize(this, new InitializationListener() { // from class: com.rosteam.gpsemulator.App$$ExternalSyntheticLambda0
                    public final void onInitializationCompleted() {
                        this.f$0.m438lambda$onCreate$0$comrosteamgpsemulatorApp();
                    }
                });
                appOpenAdManager = new AppOpenAdManagerStart(this);
                Log.e("GPSEmu", "Inicializamos pangle");
                PAGConfig pAGConfigBuildNewConfig = buildNewConfig(getApplicationContext());
                if (z) {
                    if (i == 3) {
                        PAGConfig.setPAConsent(1);
                    } else {
                        PAGConfig.setPAConsent(0);
                    }
                }
                PAGSdk.init(getApplicationContext(), pAGConfigBuildNewConfig, new PAGSdk.PAGInitCallback() { // from class: com.rosteam.gpsemulator.App.3
                    public void success() {
                        Log.e("GPSEmu", "pangle init success: ");
                        PAGAppOpenRequest pAGAppOpenRequest = new PAGAppOpenRequest();
                        pAGAppOpenRequest.setTimeout(DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS);
                        PAGAppOpenAd.loadAd(App.XIAOMI ? "890085402" : "890014658", pAGAppOpenRequest, new PAGAppOpenAdLoadListener() { // from class: com.rosteam.gpsemulator.App.3.1
                            public void onError(int i2, String str) {
                                Log.e("pangle", "app open error: " + i2 + " reason: " + str);
                            }

                            public void onAdLoaded(PAGAppOpenAd pAGAppOpenAd) {
                                Log.e("pangle", "onAdLoaded");
                                App.pangleAppOpenAd = pAGAppOpenAd;
                            }
                        });
                    }

                    public void fail(int i2, String str) {
                        Log.e("GPSEmu", "pangle init fail: " + i2);
                    }
                });
            } else {
                Log.e("PROCESS", "NO es MainProcess");
            }
        }
        int i2 = Integer.parseInt(this.preferences.getString("dark_mode", MBridgeConstans.ENDCARD_URL_TYPE_PL));
        if (i2 == 0) {
            AppCompatDelegate.setDefaultNightMode(-1);
        } else if (i2 == 1) {
            AppCompatDelegate.setDefaultNightMode(2);
        } else if (i2 == 2) {
            AppCompatDelegate.setDefaultNightMode(1);
        }
        createNotificationChannel();
    }

    /* JADX INFO: renamed from: lambda$onCreate$0$com-rosteam-gpsemulator-App, reason: not valid java name */
    /* synthetic */ void m438lambda$onCreate$0$comrosteamgpsemulatorApp() {
        Log.e("YANDEX", "SDK initialized");
        AppOpenAdLoader appOpenAdLoader = new AppOpenAdLoader(this);
        AdRequest adRequestBuild = new AdRequest.Builder("R-M-16039764-2").build();
        AppOpenAdLoadListener appOpenAdLoadListener = new AppOpenAdLoadListener() { // from class: com.rosteam.gpsemulator.App.2
            public void onAdLoaded(AppOpenAd appOpenAd) {
                Log.e("yandex", "appopen loaded");
                App.yandexAppOpenAd = appOpenAd;
            }

            public void onAdFailedToLoad(AdRequestError adRequestError) {
                Log.e("yandex", "appopen failed to load");
            }
        };
        Log.e("yandex", "appopen load requested");
        appOpenAdLoader.loadAd(adRequestBuild, appOpenAdLoadListener);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    protected void onMoveToForeground() {
        Log.e("fakegps", "moved to foreground");
    }

    private void createNotificationChannel() {
        NotificationChannel notificationChannel = new NotificationChannel(CHANNEL_ID, "GPS Emulator", 2);
        notificationChannel.setShowBadge(false);
        notificationChannel.setSound(null, null);
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(notificationChannel);
    }

    public static boolean isAppOpenStartAvailable() {
        AppOpenAdManagerStart appOpenAdManagerStart = appOpenAdManager;
        if (appOpenAdManagerStart == null) {
            return false;
        }
        return appOpenAdManagerStart.isAdAvailable();
    }

    public static void showAdIfAvailable2(Activity activity, OnShowAdCompleteListener onShowAdCompleteListener) {
        appOpenAdManager.showAdIfAvailable(activity, onShowAdCompleteListener);
    }

    public class AppOpenAdManagerStart {
        public static final String LOG_TAG = "AppOpenAdManagerStart";
        private final String AD_UNIT_ID;
        private com.google.android.gms.ads.appopen.AppOpenAd appOpenAd;
        private boolean failed;
        private boolean isLoadingAd;
        private boolean isShowingAd;
        private long loadTime;

        public AppOpenAdManagerStart(Context context) {
            this.AD_UNIT_ID = App.XIAOMI ? "ca-app-pub-4161078187932834/2103219461" : "ca-app-pub-4161078187932834/4623201598";
            this.appOpenAd = null;
            this.isLoadingAd = false;
            this.isShowingAd = false;
            this.failed = false;
            this.loadTime = 0L;
            Log.e("FakeGPS", "pedimos AppOpenAd Start");
            loadAd(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadAd(Context context) {
            if (this.isLoadingAd || isAdAvailable()) {
                return;
            }
            this.isLoadingAd = true;
            com.google.android.gms.ads.AdRequest.Builder builder = new com.google.android.gms.ads.AdRequest.Builder();
            if (App.this.preferences == null) {
                App.this.preferences = PreferenceManager.getDefaultSharedPreferences(context);
            }
            com.google.android.gms.ads.appopen.AppOpenAd.load(context, this.AD_UNIT_ID, builder.build(), new com.google.android.gms.ads.appopen.AppOpenAd.AppOpenAdLoadCallback() { // from class: com.rosteam.gpsemulator.App.AppOpenAdManagerStart.1
                public void onAdLoaded(com.google.android.gms.ads.appopen.AppOpenAd appOpenAd) {
                    AppOpenAdManagerStart.this.appOpenAd = appOpenAd;
                    AppOpenAdManagerStart.this.isLoadingAd = false;
                    AppOpenAdManagerStart.this.failed = false;
                    AppOpenAdManagerStart.this.loadTime = new Date().getTime();
                    Log.e(AppOpenAdManagerStart.LOG_TAG, "onAdLoaded.");
                }

                public void onAdFailedToLoad(LoadAdError loadAdError) {
                    AppOpenAdManagerStart.this.isLoadingAd = false;
                    AppOpenAdManagerStart.this.failed = true;
                    Log.e(AppOpenAdManagerStart.LOG_TAG, "onAdFailedToLoad: " + loadAdError.getMessage());
                }
            });
        }

        private boolean wasLoadTimeLessThanNHoursAgo(long j) {
            return new Date().getTime() - this.loadTime < j * 3600000;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isAdAvailable() {
            return this.appOpenAd != null && wasLoadTimeLessThanNHoursAgo(4L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void showAdIfAvailable(final Activity activity, final OnShowAdCompleteListener onShowAdCompleteListener) {
            if (this.isShowingAd) {
                Log.e(LOG_TAG, "The app open ad is already showing.");
                return;
            }
            if (!isAdAvailable()) {
                Log.e(LOG_TAG, "The app open ad is not ready yet.");
                onShowAdCompleteListener.onShowAdComplete();
                loadAd(activity);
            } else {
                Log.e(LOG_TAG, "Will show ad.");
                this.appOpenAd.setFullScreenContentCallback(new FullScreenContentCallback() { // from class: com.rosteam.gpsemulator.App.AppOpenAdManagerStart.2
                    public void onAdDismissedFullScreenContent() {
                        Log.e(AppOpenAdManagerStart.LOG_TAG, "onAdDismissedFullScreenContent.");
                        onShowAdCompleteListener.onShowAdComplete();
                        AppOpenAdManagerStart.this.appOpenAd = null;
                        AppOpenAdManagerStart.this.isShowingAd = false;
                        AppOpenAdManagerStart.this.loadAd(activity);
                    }

                    public void onAdFailedToShowFullScreenContent(AdError adError) {
                        Log.e(AppOpenAdManagerStart.LOG_TAG, "onAdFailedToShowFullScreenContent: " + adError.getMessage());
                        onShowAdCompleteListener.onShowAdComplete();
                        AppOpenAdManagerStart.this.appOpenAd = null;
                        AppOpenAdManagerStart.this.isShowingAd = false;
                        AppOpenAdManagerStart.this.loadAd(activity);
                    }

                    public void onAdShowedFullScreenContent() {
                        Log.e(AppOpenAdManagerStart.LOG_TAG, "onAdShowedFullScreenContent.");
                    }

                    public void onAdClicked() {
                        super.onAdClicked();
                    }
                });
                this.isShowingAd = true;
                this.appOpenAd.show(activity);
            }
        }

        public boolean hasFailed() {
            return this.failed;
        }
    }

    public static boolean isActivityVisible() {
        return activityVisible;
    }

    public static void activityResumed() {
        activityVisible = true;
    }

    public static void activityPaused() {
        activityVisible = false;
    }

    private boolean isMainProcess() {
        if (Build.VERSION.SDK_INT >= 28) {
            return getPackageName().equals(getProcessName());
        }
        return true;
    }
}
