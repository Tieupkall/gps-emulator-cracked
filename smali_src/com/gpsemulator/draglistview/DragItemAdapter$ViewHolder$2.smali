.class Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;
.super Ljava/lang/Object;
.source "DragItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;-><init>(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;Landroid/view/View;)V
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

    .line 180
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 183
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->-$$Nest$fgetmDragStartCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 187
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->-$$Nest$fgetmDragStartCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

    move-result-object v0

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->val$itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    iget-wide v3, v3, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->mItemId:J

    invoke-interface {v0, v2, v3, v4}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;->startDrag(Landroid/view/View;J)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 p1, 0x1

    return p1

    .line 191
    :cond_24
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->-$$Nest$fgetmDragStartCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->val$itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    if-ne v0, v2, :cond_3f

    .line 192
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-virtual {v0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_3f
    return v1
.end method
