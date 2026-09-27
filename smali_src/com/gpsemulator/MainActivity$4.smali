.class Lcom/rosteam/gpsemulator/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 748
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$4;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 762
    const-string p1, "cargarOpenVK"

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismiss(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 772
    const-string p1, "cargarOpenVK"

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplay(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 782
    const-string p1, "cargarOpenVK"

    const-string v0, "onDisplay"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailedToShow(Lcom/my/target/ads/InterstitialAd;)V
    .registers 2

    return-void
.end method

.method public onLoad(Lcom/my/target/ads/InterstitialAd;)V
    .registers 4

    .line 751
    const-string v0, "cargarOpenVK"

    const-string v1, "onLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$4;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p1, v0, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    return-void
.end method

.method public onNoAd(Lcom/my/target/common/models/IAdLoadingError;Lcom/my/target/ads/InterstitialAd;)V
    .registers 4

    .line 757
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onNoAd "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/my/target/common/models/IAdLoadingError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cargarOpenVK"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 777
    const-string p1, "cargarOpenVK"

    const-string v0, "onVideoCompleted"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
