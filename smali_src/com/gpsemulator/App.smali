.class public Lcom/rosteam/gpsemulator/App;
.super Landroid/app/Application;
.source "App.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;,
        Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "GPSEmulator23"

.field public static XIAOMI:Z = true

.field private static final YANDEX_MOBILE_ADS_TAG:Ljava/lang/String; = "YandexMobileAds"

.field private static activityVisible:Z

.field public static appOpenAdManager:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

.field public static pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

.field public static yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;


# instance fields
.field preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static activityPaused()V
    .registers 1

    const/4 v0, 0x0

    .line 454
    sput-boolean v0, Lcom/rosteam/gpsemulator/App;->activityVisible:Z

    return-void
.end method

.method public static activityResumed()V
    .registers 1

    const/4 v0, 0x1

    .line 450
    sput-boolean v0, Lcom/rosteam/gpsemulator/App;->activityVisible:Z

    return-void
.end method

.method private static buildNewConfig(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;
    .registers 2

    .line 64
    new-instance p0, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;-><init>()V

    const-string v0, "8123667"

    .line 65
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    sget v0, Lcom/rosteam/gpsemulator/R$mipmap;->ic_launcher:I

    .line 67
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->appIcon(I)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->debugLog(Z)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    move-result-object p0

    return-object p0
.end method

.method private createNotificationChannel()V
    .registers 5

    .line 290
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "GPS Emulator"

    const/4 v2, 0x2

    const-string v3, "GPSEmulator23"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 298
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/App;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 299
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static isActivityVisible()Z
    .registers 1

    .line 446
    sget-boolean v0, Lcom/rosteam/gpsemulator/App;->activityVisible:Z

    return v0
.end method

.method public static isAppOpenStartAvailable()Z
    .registers 1

    .line 312
    sget-object v0, Lcom/rosteam/gpsemulator/App;->appOpenAdManager:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 313
    :cond_6
    invoke-static {v0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$misAdAvailable(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;)Z

    move-result v0

    return v0
.end method

.method private isMainProcess()Z
    .registers 3

    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_13

    .line 462
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/App;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/rosteam/gpsemulator/App;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method public static showAdIfAvailable2(Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V
    .registers 3

    .line 319
    sget-object v0, Lcom/rosteam/gpsemulator/App;->appOpenAdManager:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    invoke-static {v0, p0, p1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$mshowAdIfAvailable(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-rosteam-gpsemulator-App()V
    .registers 6

    .line 117
    const-string v0, "YANDEX"

    const-string v1, "SDK initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v1, Lcom/yandex/mobile/ads/common/AdRequest$Builder;

    const-string v2, "R-M-16039764-2"

    invoke-direct {v1, v2}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/common/AdRequest$Builder;->build()Lcom/yandex/mobile/ads/common/AdRequest;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/rosteam/gpsemulator/App$2;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/App$2;-><init>(Lcom/rosteam/gpsemulator/App;)V

    .line 142
    const-string v3, "yandex"

    const-string v4, "appopen load requested"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoader;->loadAd(Lcom/yandex/mobile/ads/common/AdRequest;Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoadListener;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onCreate()V
    .registers 9

    .line 75
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 77
    invoke-virtual {p0, p0}, Lcom/rosteam/gpsemulator/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 80
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 82
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/App;->preferences:Landroid/content/SharedPreferences;

    # --- PATCH: write noads=true, numerofavoritos=1000 to SharedPreferences ---
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "noads"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "numerofavoritos"

    const/16 v3, 0x3e8

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    # --- END PATCH ---

    .line 83
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "noads"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_8d

    .line 85
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/App;->isMainProcess()Z

    move-result v0

    const-string v4, "PROCESS"

    if-eqz v0, :cond_88

    .line 86
    const-string v0, "es MainProcess"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "isEEA"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 88
    iget-object v4, p0, Lcom/rosteam/gpsemulator/App;->preferences:Landroid/content/SharedPreferences;

    const-string v5, "consent_status"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 97
    new-instance v5, Lcom/rosteam/gpsemulator/App$1;

    invoke-direct {v5, p0}, Lcom/rosteam/gpsemulator/App$1;-><init>(Lcom/rosteam/gpsemulator/App;)V

    invoke-static {p0, v5}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    const/4 v5, 0x3

    if-eqz v0, :cond_52

    if-ne v4, v5, :cond_4e

    move v6, v3

    goto :goto_4f

    :cond_4e
    move v6, v2

    .line 106
    :goto_4f
    invoke-static {v6}, Lcom/yandex/mobile/ads/common/YandexAds;->setUserConsent(Z)V

    .line 116
    :cond_52
    new-instance v6, Lcom/rosteam/gpsemulator/App$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/App$$ExternalSyntheticLambda0;-><init>(Lcom/rosteam/gpsemulator/App;)V

    invoke-static {p0, v6}, Lcom/yandex/mobile/ads/common/YandexAds;->initialize(Landroid/content/Context;Lcom/yandex/mobile/ads/common/InitializationListener;)V

    .line 152
    new-instance v6, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    invoke-direct {v6, p0, p0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;-><init>(Lcom/rosteam/gpsemulator/App;Landroid/content/Context;)V

    sput-object v6, Lcom/rosteam/gpsemulator/App;->appOpenAdManager:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    .line 171
    const-string v6, "GPSEmu"

    const-string v7, "Inicializamos pangle"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/rosteam/gpsemulator/App;->buildNewConfig(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;

    move-result-object v6

    if-eqz v0, :cond_7b

    if-ne v4, v5, :cond_78

    .line 179
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->setPAConsent(I)V

    goto :goto_7b

    .line 181
    :cond_78
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;->setPAConsent(I)V

    .line 197
    :cond_7b
    :goto_7b
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/rosteam/gpsemulator/App$3;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/App$3;-><init>(Lcom/rosteam/gpsemulator/App;)V

    invoke-static {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/init/PAGConfig;Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;)V

    goto :goto_8d

    .line 232
    :cond_88
    const-string v0, "NO es MainProcess"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "dark_mode"

    const-string v4, "0"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_ab

    const/4 v1, 0x2

    if-eq v0, v3, :cond_a7

    if-eq v0, v1, :cond_a3

    goto :goto_ae

    .line 249
    :cond_a3
    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_ae

    .line 246
    :cond_a7
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_ae

    .line 243
    :cond_ab
    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 252
    :goto_ae
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/App;->createNotificationChannel()V

    return-void
.end method

.method protected onMoveToForeground()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 257
    const-string v0, "fakegps"

    const-string v1, "moved to foreground"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
