.class Lcom/rosteam/gpsemulator/MainActivity$107;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/yandex/mobile/ads/interstitial/InterstitialAdEventListener;


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

    .line 6260
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->val$myIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->val$requestCode:I

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

    .line 6274
    const-string v0, "YANDEX_INTERSTITIAL"

    const-string v1, "onAdDismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6275
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->interstitialYandex:Lcom/yandex/mobile/ads/interstitial/InterstitialAd;

    .line 6276
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->val$myIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6277
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarTransitionYandex(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/yandex/mobile/ads/common/AdError;)V
    .registers 4

    .line 6268
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdFailedToShow "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/yandex/mobile/ads/common/AdError;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YANDEX_INTERSTITIAL"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6269
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->val$myIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity$107;->val$requestCode:I

    invoke-virtual {p1, v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAdImpression(Lcom/yandex/mobile/ads/common/ImpressionData;)V
    .registers 2

    return-void
.end method

.method public onAdShown()V
    .registers 3

    .line 6263
    const-string v0, "YANDEX_INTERSTITIAL"

    const-string v1, "onAdShown"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
