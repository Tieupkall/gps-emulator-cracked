.class Lcom/rosteam/gpsemulator/MainActivity$7$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$7;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$7;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1053
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$7$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1056
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$7$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$7;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$7;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    if-nez v0, :cond_18

    .line 1057
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$7$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$7;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$7;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    .line 1058
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$7$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$7;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$7;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/16 v2, 0x3c

    invoke-static {v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mswitchPinnedList(Lcom/rosteam/gpsemulator/MainActivity;ZI)V

    .line 1060
    :cond_18
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$7$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$7;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$7;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1061
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$7$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$7;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$7;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const-class v2, Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1062
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$7$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$7;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$7;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/16 v2, 0x138d

    invoke-static {v1, v0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mtransitionShow(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Intent;I)V

    return-void
.end method
