.class Lcom/rosteam/gpsemulator/MainActivity$86;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarRewarded()V
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

    .line 5475
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$86;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 5479
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$86;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputrewardedAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 3

    .line 5484
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$86;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputrewardedAd(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

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

    .line 5475
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$86;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
