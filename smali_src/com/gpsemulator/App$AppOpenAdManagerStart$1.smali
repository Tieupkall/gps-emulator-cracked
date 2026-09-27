.class Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->loadAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputisLoadingAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V

    .line 370
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputfailed(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdFailedToLoad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppOpenAdManagerStart"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .registers 4

    .line 360
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    invoke-static {v0, p1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputappOpenAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 361
    iget-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputisLoadingAd(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V

    .line 362
    iget-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputfailed(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;Z)V

    .line 363
    iget-object p1, p0, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->this$1:Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;->-$$Nest$fputloadTime(Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart;J)V

    .line 364
    const-string p1, "AppOpenAdManagerStart"

    const-string v0, "onAdLoaded."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 357
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/App$AppOpenAdManagerStart$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method
