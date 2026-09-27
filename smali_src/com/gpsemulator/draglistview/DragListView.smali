.class public Lcom/rosteam/gpsemulator/draglistview/DragListView;
.super Landroid/widget/FrameLayout;
.source "DragListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;,
        Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;,
        Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallbackAdapter;,
        Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListenerAdapter;
    }
.end annotation


# instance fields
.field private mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

.field private mDragListCallback:Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;

.field private mDragListListener:Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

.field private mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

.field private mSwipeHelper:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragListCallback(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragListCallback:Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragListListener:Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/DragListView;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchX(Lcom/rosteam/gpsemulator/draglistview/DragListView;)F
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mTouchX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchY(Lcom/rosteam/gpsemulator/draglistview/DragListView;)F
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mTouchY:F

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private createRecyclerView()Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$layout;->drag_item_recycler_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 136
    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setMotionEventSplittingEnabled(Z)V

    .line 137
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 138
    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 139
    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 140
    new-instance v1, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView$1;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragListView;)V

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragItemListener(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemListener;)V

    .line 166
    new-instance v1, Lcom/rosteam/gpsemulator/draglistview/DragListView$2;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView$2;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragListView;)V

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragItemCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemCallback;)V

    return-object v0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mTouchX:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mTouchY:F

    .line 119
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2e

    goto :goto_33

    .line 122
    :cond_20
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->onDragging(FF)V

    goto :goto_33

    .line 126
    :cond_2e
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->onDragEnded()V

    :goto_33
    return v1

    :cond_34
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getAdapter()Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    if-eqz v0, :cond_b

    .line 211
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    return-object v0
.end method

.method public isDragEnabled()Z
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->isDragEnabled()Z

    move-result v0

    return v0
.end method

.method public isDragging()Z
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->isDragging()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 97
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    .line 98
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->createRecyclerView()Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 99
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItem;)V

    .line 100
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 107
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 112
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 113
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x1

    return p1
.end method

.method public resetSwipedViews(Landroid/view/View;)V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mSwipeHelper:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    if-eqz v0, :cond_7

    .line 201
    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public setAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Z)V
    .registers 4

    .line 217
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setHasFixedSize(Z)V

    .line 218
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p2, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 219
    new-instance p2, Lcom/rosteam/gpsemulator/draglistview/DragListView$3;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView$3;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragListView;)V

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->setDragStartedListener(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;)V

    return-void
.end method

.method public setCanDragHorizontally(Z)V
    .registers 3

    .line 290
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setCanDragHorizontally(Z)V

    return-void
.end method

.method public setCanDragVertically(Z)V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setCanDragVertically(Z)V

    return-void
.end method

.method public setCanNotDragAboveTopItem(Z)V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setCanNotDragAboveTopItem(Z)V

    return-void
.end method

.method public setCanNotDragBelowBottomItem(Z)V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setCanNotDragBelowBottomItem(Z)V

    return-void
.end method

.method public setCustomDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItem;)V
    .registers 3

    const/4 v0, 0x1

    .line 268
    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->removeViewAt(I)V

    if-eqz p1, :cond_7

    goto :goto_10

    .line 274
    :cond_7
    new-instance p1, Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    .line 277
    :goto_10
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->canDragHorizontally()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setCanDragHorizontally(Z)V

    .line 278
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->canDragVertically()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setCanDragVertically(Z)V

    .line 279
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->isSnapToTouch()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 280
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    .line 281
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItem;)V

    .line 282
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDisableReorderWhenDragging(Z)V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDisableReorderWhenDragging(Z)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragEnabled(Z)V

    return-void
.end method

.method public setDragListCallback(Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragListCallback:Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListCallback;

    return-void
.end method

.method public setDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragListListener:Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;

    return-void
.end method

.method public setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 334
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDropTargetDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .registers 3

    .line 310
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setScrollingEnabled(Z)V

    return-void
.end method

.method public setSnapDragItemToTouch(Z)V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setSnapToTouch(Z)V

    return-void
.end method

.method public setSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mSwipeHelper:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    if-nez v0, :cond_14

    .line 182
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;-><init>(Landroid/content/Context;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mSwipeHelper:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    goto :goto_17

    .line 184
    :cond_14
    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->setSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V

    .line 188
    :goto_17
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mSwipeHelper:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->detachFromRecyclerView()V

    if-eqz p1, :cond_25

    .line 190
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mSwipeHelper:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_25
    return-void
.end method

.method public swapAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Z)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragListView;->mRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 234
    new-instance p2, Lcom/rosteam/gpsemulator/draglistview/DragListView$4;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/draglistview/DragListView$4;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragListView;)V

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->setDragStartedListener(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;)V

    return-void
.end method
