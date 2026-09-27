.class Lcom/rosteam/gpsemulator/MainActivity$93;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$resultCode:I


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

    .line 5717
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->val$data:Landroid/content/Intent;

    iput p3, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 5721
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->val$data:Landroid/content/Intent;

    if-eqz v0, :cond_70

    .line 5722
    const-string v1, "cadena"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5723
    iget v1, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->val$resultCode:I

    const-string v2, "onActivityResult"

    if-eqz v1, :cond_43

    const/4 v3, 0x1

    if-eq v1, v3, :cond_17

    const/4 v3, 0x2

    if-eq v1, v3, :cond_55

    goto :goto_70

    .line 5725
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "recibimos ruta: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5726
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5727
    invoke-static {v1}, Lcom/rosteam/gpsemulator/LocationUtils;->parseRutaToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v1

    .line 5728
    iput-object v0, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->prefName:Ljava/lang/String;

    .line 5729
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object v0, v2, Lcom/rosteam/gpsemulator/MainActivity;->currentRuta:Ljava/lang/String;

    .line 5730
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mgotoRoute(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    return-void

    .line 5733
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Fav seleccionado cadena: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5735
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Historico seleccionado cadena: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5736
    invoke-static {v0}, Lcom/rosteam/gpsemulator/LocationUtils;->parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v0

    .line 5737
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$93;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mgotoLocation(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    :cond_70
    :goto_70
    return-void
.end method
