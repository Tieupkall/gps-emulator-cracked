.class public abstract Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DragItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;,
        Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private mDragItemId:J

.field private mDragStartCallback:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

.field private mDropTargetId:J

.field protected mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDragItemId:J

    .line 38
    iput-wide v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDropTargetId:J

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_12

    .line 80
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->notifyItemInserted(I)V

    :cond_12
    return-void
.end method

.method public changeItemPosition(II)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_20

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_20

    .line 87
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->notifyItemMoved(II)V

    :cond_20
    return-void
.end method

.method public getDropTargetId()J
    .registers 3

    .line 148
    iget-wide v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDropTargetId:J

    return-wide v0
.end method

.method public getItemCount()I
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .registers 4

    .line 112
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getUniqueItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public getPositionForItem(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 62
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public getPositionForItemId(J)I
    .registers 7

    .line 101
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 103
    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getItemId(I)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, -0x1

    return p1
.end method

.method public abstract getUniqueItemId(I)J
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->onBindViewHolder(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getItemId(I)J

    move-result-wide v0

    .line 124
    iput-wide v0, p1, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->mItemId:J

    .line 125
    iget-object p2, p1, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-wide v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDragItemId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_10

    const/4 v0, 0x4

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDragStartCallback:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->setDragStartCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->onViewRecycled(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 131
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;->setDragStartCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;)V

    return-void
.end method

.method public removeItem(I)Ljava/lang/Object;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_16

    if-ltz p1, :cond_16

    .line 71
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 72
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->notifyItemRemoved(I)V

    return-object v0

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method setDragItemId(J)V
    .registers 3

    .line 140
    iput-wide p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDragItemId:J

    return-void
.end method

.method setDragStartedListener(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDragStartCallback:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;

    return-void
.end method

.method setDropTargetId(J)V
    .registers 3

    .line 144
    iput-wide p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mDropTargetId:J

    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public swapItems(II)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_1a

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1a

    .line 95
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->mItemList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 96
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->notifyDataSetChanged()V

    :cond_1a
    return-void
.end method
