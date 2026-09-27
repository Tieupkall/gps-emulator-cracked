.class Lcom/rosteam/gpsemulator/MainActivity$81;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarTransitionVK()V
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

    .line 5275
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$81;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 5290
    const-string p1, "cargarTransitionVK"

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDismiss(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 5308
    const-string p1, "cargarTransitionVK"

    const-string v0, "onDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplay(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 5320
    const-string p1, "cargarTransitionVK"

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

    .line 5278
    const-string v0, "cargarTransitionVK"

    const-string v1, "onLoad"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5279
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$81;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p1, v0, Lcom/rosteam/gpsemulator/MainActivity;->intersVK:Lcom/my/target/ads/InterstitialAd;

    return-void
.end method

.method public onNoAd(Lcom/my/target/common/models/IAdLoadingError;Lcom/my/target/ads/InterstitialAd;)V
    .registers 4

    .line 5284
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onNoAd "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/my/target/common/models/IAdLoadingError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cargarTransitionVK"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoCompleted(Lcom/my/target/ads/InterstitialAd;)V
    .registers 3

    .line 5314
    const-string p1, "cargarTransitionVK"

    const-string v0, "onVideoCompleted"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
