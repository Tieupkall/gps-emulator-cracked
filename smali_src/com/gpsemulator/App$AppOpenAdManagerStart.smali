.class public Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;
.super Ljava/lang/Object;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppOpenAdManagerStart"
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AppOpenAdManagerStart"


# instance fields
.field private final AD_UNIT_ID:Ljava/lang/String;

.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private failed:Z

.field private isLoadingAd:Z

.field private isShowingAd:Z

.field private loadTime:J

.field final synthetic this$0:Lcom/rosteam/gpsemulator/App;


# direct methods
.method static bridge synthetic -$$Nest$fputappOpenAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfailed(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->failed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisLoadingAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isLoadingAd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisShowingAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isShowingAd:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputloadTime(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;J)V
    .registers 3

    iput-wide p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->loadTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$misAdAvailable(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;)Z
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isAdAvailable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->loadAd(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAdIfAvailable(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->showAdIfAvailable(Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/rosteam/gpsemulator/App;Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->this$0:Lcom/rosteam/gpsemulator/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    sget-boolean p1, Lcom/rosteam/gpsemulator/App;->XIAOMI:Z

    if-eqz p1, :cond_c

    const-string p1, "ca-app-pub-4161078187932834/2103219461"

    goto :goto_e

    :cond_c
    const-string p1, "ca-app-pub-4161078187932834/4623201598"

    :goto_e
    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->AD_UNIT_ID:Ljava/lang/String;

    const/4 p1, 0x0

    .line 327
    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 p1, 0x0

    .line 328
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isLoadingAd:Z

    .line 329
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isShowingAd:Z

    .line 330
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->failed:Z

    const-wide/16 v0, 0x0

    .line 332
    iput-wide v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->loadTime:J

    .line 335
    const-string p1, "FakeGPS"

    const-string v0, "pedimos AppOpenAd Start"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0, p2}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->loadAd(Landroid/content/Context;)V

    return-void
.end method

.method private isAdAvailable()Z
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_e

    const-wide/16 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->wasLoadTimeLessThanNHoursAgo(J)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private loadAd(Landroid/content/Context;)V
    .registers 5

    .line 340
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isLoadingAd:Z

    if-nez v0, :cond_2f

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2f

    :cond_b
    const/4 v0, 0x1

    .line 344
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isLoadingAd:Z

    .line 347
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->this$0:Lcom/rosteam/gpsemulator/App;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/App;->preferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->this$0:Lcom/rosteam/gpsemulator/App;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lcom/rosteam/gpsemulator/App;->preferences:Landroid/content/SharedPreferences;

    .line 352
    :cond_21
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 353
    iget-object v1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->AD_UNIT_ID:Ljava/lang/String;

    new-instance v2, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;-><init>(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;)V

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method private showAdIfAvailable(Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V
    .registers 5

    .line 388
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isShowingAd:Z

    const-string v1, "AppOpenAdManagerStart"

    if-eqz v0, :cond_c

    .line 389
    const-string p1, "The app open ad is already showing."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 393
    :cond_c
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 394
    const-string v0, "The app open ad is not ready yet."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-interface {p2}, Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;->onShowAdComplete()V

    .line 396
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->loadAd(Landroid/content/Context;)V

    return-void

    .line 400
    :cond_1e
    const-string v0, "Will show ad."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    new-instance v1, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;-><init>(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    const/4 p2, 0x1

    .line 434
    iput-boolean p2, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->isShowingAd:Z

    .line 435
    iget-object p2, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method private wasLoadTimeLessThanNHoursAgo(J)Z
    .registers 7

    .line 378
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->loadTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long/2addr p1, v2

    cmp-long p1, v0, p1

    if-gez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public hasFailed()Z
    .registers 2

    .line 439
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->failed:Z

    return v0
.end method
