.class Lcom/rosteam/gpsemulator/draglistview/BoardView$4;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemListener;


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

    .line 969
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnded(I)V
    .registers 7

    .line 995
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fputmLastDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V

    .line 996
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fputmLastDragRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V

    .line 997
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 998
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v1

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v2

    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v3, v4}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onItemDragEnded(IIII)V

    :cond_30
    return-void
.end method

.method public onDragStarted(IFF)V
    .registers 4

    .line 972
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {p2, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result p3

    invoke-static {p2, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fputmDragStartColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V

    .line 973
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p2, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fputmDragStartRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V

    .line 974
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fputmCurrentRecyclerView(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V

    .line 975
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragItem(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItem;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmCurrentRecyclerView(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmCurrentRecyclerView(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setOffset(FF)V

    .line 976
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 977
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result p2

    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onItemDragStarted(II)V

    .line 979
    :cond_57
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->invalidate()V

    return-void
.end method

.method public onDragging(IFF)V
    .registers 6

    .line 984
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {p2, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result p2

    .line 985
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmLastDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result p3

    if-ne p2, p3, :cond_1b

    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmLastDragRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result p3

    if-eq p1, p3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p3, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p3, 0x1

    .line 986
    :goto_1c
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object v0

    if-eqz v0, :cond_45

    if-eqz p3, :cond_45

    .line 987
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p3, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fputmLastDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V

    .line 988
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p3, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fputmLastDragRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V

    .line 989
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object p3

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragStartRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v1

    invoke-interface {p3, v0, v1, p2, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onItemChangedPosition(IIII)V

    :cond_45
    return-void
.end method
