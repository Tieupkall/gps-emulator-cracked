.class Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private mStartColumn:I

.field private mStartScrollX:F

.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;


# direct methods
.method private constructor <init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1106
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/BoardView-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1112
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->mStartScrollX:F

    .line 1113
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmCurrentColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->mStartColumn:I

    .line 1114
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    .line 1120
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$mgetClosestSnapColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I

    move-result p1

    .line 1125
    iget p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->mStartColumn:I

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, p2, :cond_11

    cmpl-float v2, p3, v0

    if-gtz v2, :cond_17

    :cond_11
    if-ge p1, p2, :cond_19

    cmpg-float p2, p3, v0

    if-gez p2, :cond_19

    :cond_17
    move p2, v1

    goto :goto_1a

    :cond_19
    move p2, p4

    .line 1127
    :goto_1a
    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->mStartScrollX:F

    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-virtual {v3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2a

    .line 1128
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->mStartColumn:I

    goto :goto_39

    .line 1129
    :cond_2a
    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->mStartColumn:I

    if-eq v2, p1, :cond_30

    if-eqz p2, :cond_39

    :cond_30
    cmpg-float p2, p3, v0

    if-gez p2, :cond_37

    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_37
    add-int/lit8 p1, p1, -0x1

    :cond_39
    :goto_39
    if-ltz p1, :cond_48

    .line 1137
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmLists(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    if-le p1, p2, :cond_58

    :cond_48
    if-gez p1, :cond_4b

    goto :goto_57

    .line 1138
    :cond_4b
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->-$$Nest$fgetmLists(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p4, p1, -0x1

    :goto_57
    move p1, p4

    .line 1142
    :cond_58
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;->this$0:Lcom/rosteam/gpsemulator/draglistview/BoardView;

    invoke-virtual {p2, p1, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToColumn(IZ)V

    return v1
.end method
