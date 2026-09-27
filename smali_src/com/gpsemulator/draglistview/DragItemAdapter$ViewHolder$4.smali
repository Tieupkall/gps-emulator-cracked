.class Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$4;
.super Ljava/lang/Object;
.source "DragItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$4;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->onItemLongClicked(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
