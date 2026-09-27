.class Lcom/rosteam/gpsemulator/draglistview/AutoScroller;
.super Ljava/lang/Object;
.source "AutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;,
        Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;,
        Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_UPDATE_DELAY:I = 0xc

.field private static final COLUMN_SCROLL_UPDATE_DELAY:I = 0x3e8

.field private static final SCROLL_SPEED_DP:I = 0x8


# instance fields
.field private mAutoScrollMode:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoScrolling:Z

.field private mLastScrollTime:J

.field private mListener:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;

.field private mScrollSpeed:I


# direct methods
.method static bridge synthetic -$$Nest$mautoScrollColumnBy(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->autoScrollColumnBy(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mautoScrollPositionBy(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->autoScrollPositionBy(II)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mHandler:Landroid/os/Handler;

    .line 46
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mAutoScrollMode:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    .line 49
    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mListener:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mScrollSpeed:I

    return-void
.end method

.method private autoScrollColumnBy(I)V
    .registers 6

    .line 117
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-eqz v0, :cond_2f

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mLastScrollTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1d

    .line 119
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mListener:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;

    invoke-interface {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;->onAutoScrollColumnBy(I)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mLastScrollTime:J

    goto :goto_23

    .line 122
    :cond_1d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mListener:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;->onAutoScrollColumnBy(I)V

    .line 125
    :goto_23
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$2;

    invoke-direct {v1, p0, p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$2;-><init>(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;I)V

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2f
    return-void
.end method

.method private autoScrollPositionBy(II)V
    .registers 5

    .line 98
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-eqz v0, :cond_15

    .line 99
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mListener:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;->onAutoScrollPositionBy(II)V

    .line 100
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;-><init>(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;II)V

    const-wide/16 p1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_15
    return-void
.end method

.method private startAutoScrollColumnBy(I)V
    .registers 3

    .line 110
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    .line 112
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->autoScrollColumnBy(I)V

    :cond_a
    return-void
.end method

.method private startAutoScrollPositionBy(II)V
    .registers 4

    .line 91
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->autoScrollPositionBy(II)V

    :cond_a
    return-void
.end method


# virtual methods
.method isAutoScrolling()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    return v0
.end method

.method setAutoScrollMode(Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mAutoScrollMode:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    return-void
.end method

.method startAutoScroll(Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;)V
    .registers 5

    .line 66
    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_33

    const/4 v2, 0x2

    if-eq p1, v2, :cond_23

    const/4 v1, 0x3

    if-eq p1, v1, :cond_11

    return-void

    .line 81
    :cond_11
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mAutoScrollMode:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    if-ne p1, v1, :cond_1e

    .line 82
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mScrollSpeed:I

    neg-int p1, p1

    invoke-direct {p0, p1, v0}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    return-void

    :cond_1e
    const/4 p1, -0x1

    .line 84
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScrollColumnBy(I)V

    return-void

    .line 74
    :cond_23
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mAutoScrollMode:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    sget-object v2, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    if-ne p1, v2, :cond_2f

    .line 75
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mScrollSpeed:I

    invoke-direct {p0, p1, v0}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    return-void

    .line 77
    :cond_2f
    invoke-direct {p0, v1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScrollColumnBy(I)V

    return-void

    .line 71
    :cond_33
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mScrollSpeed:I

    neg-int p1, p1

    invoke-direct {p0, v0, p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    return-void

    .line 68
    :cond_3a
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mScrollSpeed:I

    invoke-direct {p0, v0, p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScrollPositionBy(II)V

    return-void
.end method

.method stopAutoScroll()V
    .registers 2

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->mIsAutoScrolling:Z

    return-void
.end method
