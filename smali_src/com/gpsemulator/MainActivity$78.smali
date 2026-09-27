.class Lcom/rosteam/gpsemulator/MainActivity$78;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarTransitionAdmob()V
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

    .line 5205
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$78;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 5214
    const-string v0, "cargarTransitionAdmob"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$78;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmInterstitialAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 5217
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$78;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarTransitionPangle(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 3

    .line 5208
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$78;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmInterstitialAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 5209
    const-string p1, "cargarTransitionAdmob"

    const-string v0, "onAdLoaded"

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

    .line 5205
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$78;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
