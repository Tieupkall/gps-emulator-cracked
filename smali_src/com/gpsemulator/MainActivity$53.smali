.class Lcom/rosteam/gpsemulator/MainActivity$53;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onRewardedClick(Landroid/view/View;)V
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

    .line 3002
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$53;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 1

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .registers 3

    .line 3010
    const-string v0, "Rewarded"

    const-string v1, "Ad dismissed fullscreen content."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$53;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputrewardedAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 3012
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$53;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarRewarded(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 3

    .line 3019
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$53;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputrewardedAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 1

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 1

    return-void
.end method
