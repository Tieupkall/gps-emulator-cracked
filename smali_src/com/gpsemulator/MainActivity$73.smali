.class Lcom/rosteam/gpsemulator/MainActivity$73;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerPangle()V
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

    .line 4970
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V
    .registers 4

    .line 5001
    const-string v0, "pangle"

    const-string v1, "Banner onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5003
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;->getBannerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

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

    .line 4970
    check-cast p1, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$73;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAd;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 5

    .line 4974
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner load error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " yandexReeady? "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->topBannerYandexReady:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pangle"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerYandexReady:Z

    if-eqz p1, :cond_45

    .line 4980
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4981
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->preBannerYandex:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 4983
    :cond_45
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/rosteam/gpsemulator/MainActivity$73$1;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/MainActivity$73$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$73;)V

    const-wide/16 v0, 0x514

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
