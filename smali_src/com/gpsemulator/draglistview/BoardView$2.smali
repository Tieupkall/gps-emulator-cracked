.class Lcom/rosteam/gpsemulator/draglistview/BoardView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView;->endDragColumn()V
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

    .line 824
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 827
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getRealDragView()Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 828
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->hide()V

    .line 829
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmRootLayout(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 831
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 832
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmDragColumnStartPosition(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmCurrentRecyclerView(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object v2

    .line 833
    invoke-static {v1, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v1

    .line 832
    invoke-interface {p1, v0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onColumnDragEnded(II)V

    :cond_4c
    return-void
.end method
