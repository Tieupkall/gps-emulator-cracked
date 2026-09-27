.class Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->handleTouch(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

.field final synthetic val$endingSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 108
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->isSwipeStarted()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 109
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->resetSwipedViews(Landroid/view/View;)V

    .line 112
    :cond_f
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 113
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;->-$$Nest$fgetmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$1;->val$endingSwipeView:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getSwipedDirection()Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;->onItemSwipeEnded(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;)V

    :cond_26
    return-void
.end method
