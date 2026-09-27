.class Lcom/rosteam/gpsemulator/MainActivity$68$1$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$68$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$68$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4655
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$4;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/InterstitialAd;)V
    .registers 2

    return-void
.end method

.method public onDismiss(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 4675
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$4;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    return-void
.end method

.method public onDisplay(Lcom/my/target/ads/InterstitialAd;)V
    .registers 2

    return-void
.end method

.method public onFailedToShow(Lcom/my/target/ads/InterstitialAd;)V
    .registers 2

    return-void
.end method

.method public onLoad(Lcom/my/target/ads/InterstitialAd;)V
    .registers 2

    return-void
.end method

.method public onNoAd(Lcom/my/target/common/models/IAdLoadingError;Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V
    .registers 2

    return-void
.end method
