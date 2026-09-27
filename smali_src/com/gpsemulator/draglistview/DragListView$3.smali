.class Lcom/rosteam/gpsemulator/draglistview/DragListView$3;
.super Ljava/lang/Object;
.source "DragListView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/DragListView;->setAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 219
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$3;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDragging()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$3;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->isDragging()Z

    move-result v0

    return v0
.end method

.method public startDrag(Landroid/view/View;J)Z
    .registers 11

    .line 222
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$3;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object v1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$3;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmTouchX(Lcom/rosteam/gpsemulator/draglistview/DragListView;)F

    move-result v5

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$3;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmTouchY(Lcom/rosteam/gpsemulator/draglistview/DragListView;)F

    move-result v6

    move-object v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->startDrag(Landroid/view/View;JFF)Z

    move-result p1

    return p1
.end method
