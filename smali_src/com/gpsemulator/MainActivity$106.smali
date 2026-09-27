.class Lcom/rosteam/gpsemulator/MainActivity$106;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->transitionShow(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$myIntent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6238
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->val$myIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->val$requestCode:I

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

    .line 6247
    const-string v0, "PANGLE"

    const-string v1, "AD dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6248
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarTransitionAdmob(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 6249
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialPangle:Lcom/bytedance/sdk/openadsdk/api/interstitial/PAGInterstitialAd;

    .line 6250
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->val$myIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/rosteam/gpsemulator/MainActivity$106;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAdShowed()V
    .registers 3

    .line 6241
    const-string v0, "PANGLE"

    const-string v1, "AD showed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
