.class Lcom/rosteam/gpsemulator/MainActivity$69;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/MainActivity;
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

    .line 4705
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$69;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 4708
    const-string p1, "permanecer"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 4709
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$69;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->onStopButtonClick(Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_35

    .line 4712
    const-string p1, "Message"

    const-string v0, "Permanecer en ultimo punto de la ruta"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4713
    const-string p1, "latitude"

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    .line 4714
    const-string p1, "longitude"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    .line 4716
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 4717
    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$69$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/rosteam/gpsemulator/MainActivity$69$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$69;DD)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void
.end method
