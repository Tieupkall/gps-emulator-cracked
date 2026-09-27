.class Lcom/rosteam/gpsemulator/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/vungle/ads/InitializationListener;


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

    .line 645
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$2;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vungle/ads/VungleError;)V
    .registers 4

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/VungleError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Liftoff"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .registers 6

    .line 648
    const-string v0, "Liftoff"

    const-string v1, "Vungle SDK init onSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$2;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v1, Lcom/vungle/ads/InterstitialAd;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$2;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    new-instance v3, Lcom/vungle/ads/AdConfig;

    invoke-direct {v3}, Lcom/vungle/ads/AdConfig;-><init>()V

    const-string v4, "APPOPENDIRECT-6435318"

    invoke-direct {v1, v2, v4, v3}, Lcom/vungle/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;Lcom/vungle/ads/InterstitialAd;)V

    .line 650
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$2$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$2$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$2;)V

    .line 699
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$2;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/ads/InterstitialAd;->setAdListener(Lcom/vungle/ads/BaseAdListener;)V

    .line 700
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$2;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetvungleAppOpen(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/vungle/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/ads/InterstitialAd;->load()V

    return-void
.end method
