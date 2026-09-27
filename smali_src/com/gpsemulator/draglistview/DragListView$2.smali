.class Lcom/rosteam/gpsemulator/draglistview/DragListView$2;
.super Ljava/lang/Object;
.source "DragListView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/DragListView;->createRecyclerView()Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
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

    .line 166
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDragItemAtPosition(I)Z
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListCallback(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListCallback(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;->canDragItemAtPosition(I)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method

.method public canDropItemAtPosition(I)Z
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListCallback(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragListView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->-$$Nest$fgetmDragListCallback(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;->canDropItemAtPosition(I)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x1

    return p1
.end method
