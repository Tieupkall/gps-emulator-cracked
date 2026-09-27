.class Lcom/rosteam/gpsemulator/MainActivity$68$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$68;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$68;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$68;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4570
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 4575
    invoke-static {}, Lcom/rosteam/gpsemulator/App;->isAppOpenStartAvailable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4576
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$68$1$1;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$68$1$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$68$1;)V

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/App;->showAdIfAvailable2(Landroid/app/Activity;Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;)V

    return-void

    .line 4587
    :cond_13
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/InterstitialAd;->canPlayAd()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4588
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4589
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4590
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/InterstitialAd;->play(Landroid/content/Context;)V

    return-void

    .line 4597
    :cond_51
    sget-object v0, Lcom/rosteam/gpsemulator/App;->pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    if-eqz v0, :cond_77

    .line 4598
    const-string v0, "fakegps"

    const-string v1, "onRestast pangle open available"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4599
    sget-object v0, Lcom/rosteam/gpsemulator/App;->pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$68$1$2;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$68$1$2;-><init>(Lcom/rosteam/gpsemulator/MainActivity$68$1;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->setAdInteractionListener(Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;)V

    .line 4617
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4618
    sget-object v0, Lcom/rosteam/gpsemulator/App;->pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->show(Landroid/app/Activity;)V

    return-void

    .line 4622
    :cond_77
    sget-object v0, Lcom/rosteam/gpsemulator/App;->yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    if-eqz v0, :cond_9d

    .line 4623
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$68$1$3;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$68$1$3;-><init>(Lcom/rosteam/gpsemulator/MainActivity$68$1;)V

    .line 4645
    sget-object v1, Lcom/rosteam/gpsemulator/App;->yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->setAdEventListener(Lcom/yandex/mobile/ads/appopenad/AppOpenAdEventListener;)V

    .line 4646
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4647
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4648
    sget-object v0, Lcom/rosteam/gpsemulator/App;->yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/appopenad/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void

    .line 4653
    :cond_9d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    if-eqz v0, :cond_d2

    .line 4654
    const-string v0, "VK"

    const-string v1, "openVK not null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4655
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$68$1$4;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$68$1$4;-><init>(Lcom/rosteam/gpsemulator/MainActivity$68$1;)V

    invoke-virtual {v0, v1}, Lcom/my/target/ads/InterstitialAd;->setListener(Lcom/my/target/ads/InterstitialAd$InterstitialAdListener;)V

    .line 4686
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4687
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 4688
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->openVK:Lcom/my/target/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/my/target/ads/InterstitialAd;->show()V

    return-void

    .line 4693
    :cond_d2
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
