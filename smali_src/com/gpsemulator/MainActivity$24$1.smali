.class Lcom/rosteam/gpsemulator/MainActivity$24$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$24;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$24;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$24;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2338
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$24$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 2340
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$24$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$24;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$24;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.DEVICE_INFO_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
