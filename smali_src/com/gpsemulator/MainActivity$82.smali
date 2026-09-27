.class Lcom/rosteam/gpsemulator/MainActivity$82;
.super Lcom/google/android/gms/ads/AdListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 5337
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$82;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 5347
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 5348
    const-string p1, "adMob Exit"

    const-string v0, "banner failed to Load"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$82;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->adViewAdMobExit:Lcom/google/android/gms/ads/AdView;

    .line 5350
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$82;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarBannerExitYandex(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onAdLoaded()V
    .registers 4

    .line 5340
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 5341
    const-string v0, "adMob Exit"

    const-string v1, "banner Loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$82;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputloadTimeExitAd(Lcom/rosteam/gpsemulator/MainActivity;J)V

    return-void
.end method
