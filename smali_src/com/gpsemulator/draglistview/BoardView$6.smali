.class Lcom/rosteam/gpsemulator/draglistview/BoardView$6;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;


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

    .line 1017
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDragging()Z
    .registers 2

    .line 1025
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public startDrag(Landroid/view/View;J)Z
    .registers 10

    .line 1020
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v1, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetRelativeViewTouchX(Lcom/rosteam/gpsemulator/draglistview/BoardView;Landroid/view/View;)F

    move-result v4

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;->val$recyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v1, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetRelativeViewTouchY(Lcom/rosteam/gpsemulator/draglistview/BoardView;Landroid/view/View;)F

    move-result v5

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->startDrag(Landroid/view/View;JFF)Z

    move-result p1

    return p1
.end method
