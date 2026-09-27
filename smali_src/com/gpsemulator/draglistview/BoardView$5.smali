.class Lcom/rosteam/gpsemulator/draglistview/BoardView$5;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView;->addColumnTo(ILcom/rosteam/gpsemulator/draglistview/ColumnProperties;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
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

    .line 1002
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDragItemAtPosition(I)Z
    .registers 4

    .line 1005
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;->canDragItemAtPosition(II)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p1, 0x0

    return p1

    :cond_1f
    :goto_1f
    const/4 p1, 0x1

    return p1
.end method

.method public canDropItemAtPosition(I)Z
    .registers 6

    .line 1011
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v0

    .line 1012
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v2

    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v3

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;->canDropItemAtPosition(IIII)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2b

    :cond_29
    const/4 p1, 0x0

    return p1

    :cond_2b
    :goto_2b
    const/4 p1, 0x1

    return p1
.end method
