.class Lcom/rosteam/gpsemulator/TabFragment$1;
.super Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListenerAdapter;
.source "TabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/TabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/TabFragment;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/TabFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$1;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemDragEnded(II)V
    .registers 3

    .line 61
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$1;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/rosteam/gpsemulator/ItemAdapter;->dragging:Z

    return-void
.end method

.method public onItemDragStarted(I)V
    .registers 3

    .line 57
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$1;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter;->dragging:Z

    return-void
.end method
