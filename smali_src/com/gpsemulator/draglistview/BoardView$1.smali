.class Lcom/rosteam/gpsemulator/draglistview/BoardView$1;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmCurrentColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToColumn(IZ)V

    return-void
.end method
