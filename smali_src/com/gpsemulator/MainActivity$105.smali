.class Lcom/rosteam/gpsemulator/MainActivity$105;
.super Lcom/socdm/d/adgeneration/interstitial/ADGInterstitialListener;
.source "MainActivity.java"


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

    .line 6220
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$105;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$105;->val$myIntent:Landroid/content/Intent;

    iput p3, p0, Lcom/rosteam/gpsemulator/MainActivity$105;->val$requestCode:I

    invoke-direct {p0}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseInterstitial()V
    .registers 4

    .line 6223
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$105;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$105;->val$myIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/rosteam/gpsemulator/MainActivity$105;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6224
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$105;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->adgInterstitial:Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;

    invoke-virtual {v0}, Lcom/socdm/d/adgeneration/interstitial/ADGInterstitial;->preload()V

    return-void
.end method

.method public onReceiveAd()V
    .registers 1

    return-void
.end method
