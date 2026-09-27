.class Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$3;
.super Ljava/lang/Object;
.source "DragItemRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->addDragItemAndStart(FLjava/lang/Object;J)V
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

    .line 511
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$3;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$3;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fputmHoldChangePosition(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;Z)V

    return-void
.end method
