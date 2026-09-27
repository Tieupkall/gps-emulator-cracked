.class public abstract Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DragItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# instance fields
.field private mDragStartCallback:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

.field public mGrabView:Landroid/view/View;

.field public mItemId:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragStartCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->mDragStartCallback:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;IZ)V
    .registers 4

    .line 158
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    if-eqz p3, :cond_14

    .line 162
    new-instance p3, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$1;

    invoke-direct {p3, p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$1;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1c

    .line 180
    :cond_14
    new-instance p3, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;

    invoke-direct {p3, p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$2;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    :goto_1c
    new-instance p2, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$3;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$3;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    if-eq p1, p2, :cond_38

    .line 207
    new-instance p2, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$4;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$4;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 213
    new-instance p2, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$5;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder$5;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_38
    return-void
.end method


# virtual methods
.method public onItemClicked(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onItemLongClicked(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public setDragStartCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->mDragStartCallback:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

    return-void
.end method
