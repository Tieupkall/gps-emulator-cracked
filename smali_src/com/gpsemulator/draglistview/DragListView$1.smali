.class Lcom/rosteam/gpsemulator/draglistview/DragListView$1;
.super Ljava/lang/Object;
.source "DragListView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/DragListView;->createRecyclerView()Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDragStartPosition:I

.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragListView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnded(I)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 162
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    move-result-object v0

    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->mDragStartPosition:I

    invoke-interface {v0, v1, p1}, Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;->onItemDragEnded(II)V

    :cond_13
    return-void
.end method

.method public onDragStarted(IFF)V
    .registers 4

    .line 145
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p2, p3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 146
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->mDragStartPosition:I

    .line 147
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    move-result-object p2

    if-eqz p2, :cond_1d

    .line 148
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;->onItemDragStarted(I)V

    :cond_1d
    return-void
.end method

.method public onDragging(IFF)V
    .registers 5

    .line 154
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 155
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;->onItemDragging(IFF)V

    :cond_11
    return-void
.end method
