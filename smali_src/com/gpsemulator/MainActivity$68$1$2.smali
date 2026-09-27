.class Lcom/rosteam/gpsemulator/MainActivity$68$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;


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

    .line 4599
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$2;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 1

    return-void
.end method

.method public onAdDismissed()V
    .registers 4

    .line 4611
    const-string v0, "pangleAppOpen"

    const-string v1, "ad dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$2;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->val$animation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 4613
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$2;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x0

    .line 4614
    sput-object v0, Lcom/rosteam/gpsemulator/App;->pangleAppOpenAd:Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;

    return-void
.end method

.method public onAdShowed()V
    .registers 3

    .line 4602
    const-string v0, "pangleAppOpen"

    const-string v1, "ad showed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
