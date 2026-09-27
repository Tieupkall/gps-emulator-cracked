.class Lcom/rosteam/gpsemulator/MainActivity$84;
.super Lcom/socdm/d/adgeneration/ADGListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExitAdGen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$adgExitTemp:Lcom/socdm/d/adgeneration/ADG;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/socdm/d/adgeneration/ADG;)V
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

    .line 5409
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$84;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$84;->val$adgExitTemp:Lcom/socdm/d/adgeneration/ADG;

    invoke-direct {p0}, Lcom/socdm/d/adgeneration/ADGListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickAd()V
    .registers 1

    .line 5426
    invoke-super {p0}, Lcom/socdm/d/adgeneration/ADGListener;->onClickAd()V

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/socdm/d/adgeneration/ADGConsts$ADGErrorCode;)V
    .registers 3

    .line 5418
    invoke-super {p0, p1}, Lcom/socdm/d/adgeneration/ADGListener;->onFailedToReceiveAd(Lcom/socdm/d/adgeneration/ADGConsts$ADGErrorCode;)V

    .line 5420
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$84;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->adgExit:Lcom/socdm/d/adgeneration/ADG;

    .line 5421
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$84;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarExitVK(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onReceiveAd()V
    .registers 3

    .line 5413
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$84;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$84;->val$adgExitTemp:Lcom/socdm/d/adgeneration/ADG;

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->adgExit:Lcom/socdm/d/adgeneration/ADG;

    return-void
.end method
