.class public Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ListSwipeHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;,
        Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;,
        Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListenerAdapter;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

.field private mSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

.field private mTouchSlop:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchSlop(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mTouchSlop:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .registers 4

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    .line 61
    new-instance p2, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;-><init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper-IA;)V

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mGestureListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;

    .line 62
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mGestureListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2c

    const/4 p1, 0x1

    if-eq v0, p1, :cond_12

    const/4 p1, 0x3

    if-eq v0, p1, :cond_12

    goto :goto_48

    .line 103
    :cond_12
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    const/4 p2, 0x0

    if-eqz p1, :cond_20

    .line 105
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;-><init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)V

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->handleSwipeUp(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_23

    .line 118
    :cond_20
    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    .line 120
    :goto_23
    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    .line 121
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void

    .line 95
    :cond_2c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    .line 96
    instance-of p2, p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    if-eqz p2, :cond_48

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    .line 97
    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getSupportedSwipeDirection()Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object p2

    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    if-eq p2, v0, :cond_48

    .line 98
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    :cond_48
    :goto_48
    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 141
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 142
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mTouchSlop:I

    return-void
.end method

.method public detachFromRecyclerView()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_c

    .line 132
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 133
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_c
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 68
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mGestureListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->isSwipeStarted()Z

    move-result p1

    return p1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public resetSwipedViews(Landroid/view/View;)V
    .registers 6

    .line 82
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 84
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 85
    instance-of v3, v2, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    if-eqz v3, :cond_1b

    if-eq v2, p1, :cond_1b

    .line 86
    check-cast v2, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->resetSwipe(Z)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method public setSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    return-void
.end method
