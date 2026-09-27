.class Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;

.field final synthetic val$animation:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;Landroid/animation/AnimatorSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1247
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$3;->this$1:Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$3;->val$animation:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 1

    return-void
.end method

.method public onAdDismissed()V
    .registers 3

    .line 1259
    const-string v0, "pangleAppOpen"

    const-string v1, "ad dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$3;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAdShowed()V
    .registers 3

    .line 1250
    const-string v0, "pangleAppOpen"

    const-string v1, "ad showed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
