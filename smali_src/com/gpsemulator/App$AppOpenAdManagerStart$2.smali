.class Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->showAdIfAvailable(Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onShowAdCompleteListener:Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;Landroid/app/Activity;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 402
    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->val$onShowAdCompleteListener:Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 1

    .line 429
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .registers 3

    .line 406
    const-string v0, "AppOpenAdManagerStart"

    const-string v1, "onAdDismissedFullScreenContent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->val$onShowAdCompleteListener:Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;

    invoke-interface {v0}, Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;->onShowAdComplete()V

    .line 408
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputappOpenAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 409
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputisShowingAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V

    .line 410
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$mloadAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Landroid/content/Context;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 4

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdFailedToShowFullScreenContent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppOpenAdManagerStart"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->val$onShowAdCompleteListener:Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;

    invoke-interface {p1}, Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;->onShowAdComplete()V

    .line 417
    iget-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputappOpenAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 418
    iget-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputisShowingAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V

    .line 419
    iget-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$mloadAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Landroid/content/Context;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 3

    .line 424
    const-string v0, "AppOpenAdManagerStart"

    const-string v1, "onAdShowedFullScreenContent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
