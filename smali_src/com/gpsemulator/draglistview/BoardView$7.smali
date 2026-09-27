.class Lcom/rosteam/gpsemulator/draglistview/BoardView$7;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView;->setupColumnDragListener(Landroid/view/View;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

.field final synthetic val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1071
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5

    .line 1074
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;->canDragColumnAtPosition(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    .line 1075
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmTouchX(Lcom/rosteam/gpsemulator/draglistview/BoardView;)F

    move-result v1

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmTouchY(Lcom/rosteam/gpsemulator/draglistview/BoardView;)F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mstartDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;FF)V

    const/4 p1, 0x1

    return p1
.end method
