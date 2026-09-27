.class Lcom/rosteam/gpsemulator/MainActivity$75;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/my/target/ads/MyTargetView$MyTargetViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerVK()V
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

    .line 5074
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$75;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/my/target/ads/MyTargetView;)V
    .registers 3

    .line 5095
    const-string p1, "bannerMyTarget"

    const-string v0, "onClick"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoad(Lcom/my/target/ads/MyTargetView;)V
    .registers 3

    .line 5077
    const-string p1, "bannerMyTarget"

    const-string v0, "onLoad"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5078
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$75;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5079
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$75;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$75;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->myTargetBanner:Lcom/my/target/ads/MyTargetView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onNoAd(Lcom/my/target/common/models/IAdLoadingError;Lcom/my/target/ads/MyTargetView;)V
    .registers 4

    .line 5084
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onNoAd "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/my/target/common/models/IAdLoadingError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bannerMyTarget"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$75;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarBannerUnityNew(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onShow(Lcom/my/target/ads/MyTargetView;)V
    .registers 3

    .line 5090
    const-string p1, "bannerMyTarget"

    const-string v0, "onShow"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
