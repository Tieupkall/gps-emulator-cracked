.class Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->handleSwipeUp(Landroid/animation/Animator$AnimatorListener;)V
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

    .line 288
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 291
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->-$$Nest$fputmSwipeState(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;)V

    .line 292
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->-$$Nest$fgetmSwipeTranslationX(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_18

    .line 293
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->resetSwipe(Z)V

    .line 295
    :cond_18
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->-$$Nest$fgetmViewHolder(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 296
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->-$$Nest$fgetmViewHolder(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    :cond_2a
    return-void
.end method
