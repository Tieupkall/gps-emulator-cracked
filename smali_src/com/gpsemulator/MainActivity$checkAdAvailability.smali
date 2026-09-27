.class Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkAdAvailability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field appOpenhAvailable:Z

.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1128
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 1129
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->appOpenhAvailable:Z

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 9

    .line 1140
    sget-wide v0, Lcom/rosteam/gpsemulator/MainActivity;->TIEMPO_ESPERA_ADS:J

    const/4 v2, 0x0

    .line 1160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1140
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 1142
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_26

    .line 1144
    :try_start_1a
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rsub-int v1, v1, 0x3e8

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_26} :catch_26

    :catch_26
    :cond_26
    move v1, v2

    :cond_27
    if-gt v1, v0, :cond_4d

    const/4 v5, 0x1

    .line 1149
    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v3, v5, v2

    invoke-virtual {p0, v5}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x64

    const-wide/16 v5, 0x64

    .line 1152
    :try_start_35
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_40

    .line 1154
    :catch_39
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v4

    .line 1157
    :goto_40
    iget-boolean v5, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->appOpenhAvailable:Z

    if-eqz v5, :cond_45

    return-object v3

    .line 1158
    :cond_45
    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msplashNow(Lcom/rosteam/gpsemulator/MainActivity;)Z

    move-result v5

    if-nez v5, :cond_27

    :cond_4d
    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1128
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 6

    .line 1170
    const-string p1, "onPostExecute"

    const-string v0, "cheadvailavility"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-string p1, "GPS"

    const-string v1, "CARGAR EXIT Y TRANS"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarBannerExit(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1173
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarTransitionAdmob(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1176
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1177
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_172

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1178
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v1, 0x64

    .line 1179
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v1, 0x12c

    .line 1180
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1182
    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$1;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;)V

    .line 1200
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msplashNow(Lcom/rosteam/gpsemulator/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 1201
    const-string v2, "splashNow yes"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-boolean v2, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->appOpenhAvailable:Z

    const-string v3, "AppOpen"

    if-eqz v2, :cond_89

    .line 1205
    const-string v2, "aadmob pp open available"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :try_start_57
    const-string v0, "va Admob..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1210
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$2;

    invoke-direct {v2, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$2;-><init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;Landroid/animation/AnimatorSet;)V

    invoke-static {v0, v2}, Lcom/rosteam/gpsemulator/App;->showAdIfAvailable2(Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6b} :catch_6c

    return-void

    .line 1217
    :catch_6c
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->unitySplashReady:Z

    if-eqz v0, :cond_88

    .line 1218
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1219
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1220
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetsplashId(Lcom/rosteam/gpsemulator/MainActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v2}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    invoke-static {p1, v0, v2, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    :cond_88
    return-void

    .line 1227
    :cond_89
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/InterstitialAd;->canPlayAd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 1228
    const-string v0, "va Vungle..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1230
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1231
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/ads/InterstitialAd;->play(Landroid/content/Context;)V

    return-void

    .line 1236
    :cond_be
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->unitySplashReady:Z

    if-eqz v0, :cond_e0

    .line 1237
    const-string v0, "va Unity..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1239
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1240
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetsplashId(Lcom/rosteam/gpsemulator/MainActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v2}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    invoke-static {p1, v0, v2, v1}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void

    .line 1245
    :cond_e0
    sget-object v0, Lcom/rosteam/gpsemulator/App;->pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    if-eqz v0, :cond_100

    .line 1246
    const-string v0, "va Pangle..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    sget-object v0, Lcom/rosteam/gpsemulator/App;->pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$3;

    invoke-direct {v1, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$3;-><init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;)V

    .line 1263
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1264
    sget-object p1, Lcom/rosteam/gpsemulator/App;->pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->show(Landroid/app/Activity;)V

    return-void

    .line 1270
    :cond_100
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    invoke-virtual {v0}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 1271
    const-string v0, "va AdGen..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1273
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    invoke-virtual {v0}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->show()Z

    .line 1274
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 1279
    :cond_11f
    sget-object v0, Lcom/rosteam/gpsemulator/App;->yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    if-eqz v0, :cond_142

    .line 1280
    const-string v0, "va Yandex..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$4;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$4;-><init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;)V

    .line 1303
    sget-object v1, Lcom/rosteam/gpsemulator/App;->yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->setAdEventListener(Lcom/yandex/mobile/ads/appopenad/AppOpenAdEventListener;)V

    .line 1304
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1305
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1306
    sget-object p1, Lcom/rosteam/gpsemulator/App;->yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-interface {p1, v0}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void

    .line 1311
    :cond_142
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    if-eqz v0, :cond_169

    .line 1312
    const-string v0, "va VK..."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$5;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$5;-><init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    .line 1344
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 1345
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 1346
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {p1}, Lcom/my/target/ads/InterstitialAd;->show()V

    return-void

    .line 1352
    :cond_169
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 1357
    :cond_16d
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_172
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1128
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 1133
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1134
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 2

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1128
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
