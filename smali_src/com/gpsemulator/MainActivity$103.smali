.class Lcom/rosteam/gpsemulator/MainActivity$103;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->transitionShow(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$myIntent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V
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

    .line 6150
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->val$myIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 3

    .line 6153
    const-string v0, "mInterstitialAd"

    const-string v1, "Ad was clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .registers 4

    .line 6158
    const-string v0, "mInterstitialAd"

    const-string v1, "Ad dismissed fullscreen content."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6159
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmInterstitialAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 6160
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarTransitionAdmob(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 6161
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->val$myIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .registers 4

    .line 6166
    const-string p1, "mInterstitialAd"

    const-string v0, "Ad failed to show fullscreen content."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmInterstitialAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 6168
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarTransitionAdmob(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 6169
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->val$myIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity$103;->val$requestCode:I

    invoke-virtual {p1, v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    .line 6174
    const-string v0, "mInterstitialAd"

    const-string v1, "Ad recorded an impression."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 3

    .line 6179
    const-string v0, "mInterstitialAd"

    const-string v1, "Ad showed fullscreen content."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
