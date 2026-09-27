.class Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->resetSwipe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 260
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->-$$Nest$fputmSwipeState(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;)V

    .line 261
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->-$$Nest$fputmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V

    return-void
.end method
