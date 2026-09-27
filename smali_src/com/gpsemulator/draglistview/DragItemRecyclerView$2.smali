.class Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;
.super Ljava/lang/Object;
.source "DragItemRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->onDragEnded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 443
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 447
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmDragItemPosition(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 449
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 450
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 452
    :cond_1d
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)Lcom/rosteam/gpsemulator/draglistview/DragItem;

    move-result-object v1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2$1;

    invoke-direct {v3, p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2$1;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2, v3}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->endDrag(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void

    .line 460
    :cond_2e
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$monDragItemAnimationEnd(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V

    return-void
.end method
