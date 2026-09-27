.class Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ListSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private mSwipeStarted:Z

.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;


# direct methods
.method private constructor <init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;-><init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)V

    return-void
.end method

.method private canStartSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 3

    if-eqz p1, :cond_28

    if-eqz p2, :cond_28

    .line 197
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-nez p1, :cond_28

    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getSupportedSwipeDirection()Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object p1

    sget-object p2, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    if-eq p1, p2, :cond_28

    const/4 p1, 0x1

    return p1

    :cond_28
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method isSwipeStarted()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p1, 0x0

    .line 178
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->canStartSwipe(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    .line 188
    :cond_8
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->setFlingSpeed(F)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    if-eqz p1, :cond_9f

    if-eqz p2, :cond_9f

    .line 154
    iget-object p4, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p4}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p4

    if-eqz p4, :cond_9f

    iget-object p4, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p4}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p4

    if-eqz p4, :cond_1a

    goto/16 :goto_9f

    .line 158
    :cond_1a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    .line 159
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 160
    iget-boolean p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    if-nez p2, :cond_7e

    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmTouchSlop(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpl-float p2, p4, p2

    if-lez p2, :cond_7e

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p4, p2

    cmpl-float p1, p4, p1

    if-lez p1, :cond_7e

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    .line 162
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 163
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->handleSwipeMoveStarted(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V

    .line 164
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 165
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;->onItemSwipeStarted(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)V

    .line 169
    :cond_7e
    iget-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    if-eqz p1, :cond_9c

    .line 170
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p1

    neg-float p2, p3

    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmRecyclerView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    iget-object p4, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p4}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeView(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->handleSwipeMove(FLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 173
    :cond_9c
    iget-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$GestureListener;->mSwipeStarted:Z

    return p1

    :cond_9f
    :goto_9f
    const/4 p1, 0x0

    return p1
.end method
