.class Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3987
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 3989
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
