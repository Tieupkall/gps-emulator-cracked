.class Lcom/rosteam/gpsemulator/MainActivity$74;
.super Lcom/socdm/d/adgeneration/ADGListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerADG()V
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

    .line 5015
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$74;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Lcom/socdm/d/adgeneration/ADGListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickAd()V
    .registers 3

    .line 5054
    invoke-super {p0}, Lcom/socdm/d/adgeneration/ADGListener;->onClickAd()V

    .line 5055
    const-string v0, "AdGeneration"

    const-string v1, "onClickAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFailedToReceiveAd(Lcom/socdm/d/adgeneration/ADGConsts$ADGErrorCode;)V
    .registers 4

    .line 5023
    invoke-super {p0, p1}, Lcom/socdm/d/adgeneration/ADGListener;->onFailedToReceiveAd(Lcom/socdm/d/adgeneration/ADGConsts$ADGErrorCode;)V

    .line 5024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailedToReceiveAd "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/socdm/d/adgeneration/ADGConsts$ADGErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdGeneration"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5048
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$74;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarBannerVK(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onReceiveAd()V
    .registers 3

    .line 5018
    const-string v0, "AdGeneration"

    const-string v1, "onReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
