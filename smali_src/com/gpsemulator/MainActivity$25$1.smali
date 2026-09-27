.class Lcom/rosteam/gpsemulator/MainActivity$25$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$25;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$25;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$25;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2352
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$25$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$25;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 2354
    :try_start_0
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$25$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$25;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$25;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$25$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$25;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$25;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$25$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$25;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity$25;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->error_open_developer_options_manually:I

    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void
.end method
