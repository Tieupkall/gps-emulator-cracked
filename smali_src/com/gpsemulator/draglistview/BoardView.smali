.class public Lcom/rosteam/gpsemulator/draglistview/BoardView;
.super Landroid/widget/HorizontalScrollView;
.source "BoardView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;,
        Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;,
        Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;,
        Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;,
        Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;,
        Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListenerAdapter;
    }
.end annotation


# static fields
.field private static final SCROLL_ANIMATION_DURATION:I = 0x145


# instance fields
.field private mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

.field private mBoardCallback:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

.field private mBoardEdge:I

.field private mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

.field private mColumnLayout:Landroid/widget/LinearLayout;

.field private mColumnSpacing:I

.field private mColumnWidth:I

.field private mCurrentColumn:I

.field private mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

.field private mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

.field private mDragColumnStartPosition:I

.field private mDragColumnStartScrollX:F

.field private mDragEnabled:Z

.field private mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

.field private mDragStartColumn:I

.field private mDragStartRow:I

.field private mFooters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasLaidOut:Z

.field private mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDragColumn:I

.field private mLastDragRow:I

.field private mLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Landroid/widget/FrameLayout;

.field private mSavedState:Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapPosition:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

.field private mSnapToColumnInLandscape:Z

.field private mSnapToColumnWhenDragging:Z

.field private mSnapToColumnWhenScrolling:Z

.field private mTouchX:F

.field private mTouchY:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardCallback:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColumnLayout(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Landroid/widget/LinearLayout;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentColumn:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentRecyclerView(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItem;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragColumnStartPosition(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumnStartPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragItem(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Lcom/rosteam/gpsemulator/draglistview/DragItem;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragStartColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragStartColumn:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragStartRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragColumn:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastDragRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLists(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootLayout(Lcom/rosteam/gpsemulator/draglistview/BoardView;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchX(Lcom/rosteam/gpsemulator/draglistview/BoardView;)F
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchY(Lcom/rosteam/gpsemulator/draglistview/BoardView;)F
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentRecyclerView(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDragStartColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V
    .registers 2

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragStartColumn:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDragStartRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V
    .registers 2

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragStartRow:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V
    .registers 2

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragColumn:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastDragRow(Lcom/rosteam/gpsemulator/draglistview/BoardView;I)V
    .registers 2

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragRow:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetClosestSnapColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;)I
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getClosestSnapColumn()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetColumnOfList(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRelativeViewTouchX(Lcom/rosteam/gpsemulator/draglistview/BoardView;Landroid/view/View;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchX(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetRelativeViewTouchY(Lcom/rosteam/gpsemulator/draglistview/BoardView;Landroid/view/View;)F
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartDragColumn(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->startDragColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 156
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    .line 136
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 138
    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;->CENTER:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    iput-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapPosition:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    .line 144
    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnSpacing:I

    .line 145
    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardEdge:I

    .line 149
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragEnabled:Z

    const/4 p1, -0x1

    .line 150
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragColumn:I

    .line 151
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragRow:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 160
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    .line 136
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 138
    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;->CENTER:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    iput-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapPosition:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    .line 144
    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnSpacing:I

    .line 145
    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardEdge:I

    .line 149
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragEnabled:Z

    const/4 p1, -0x1

    .line 150
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragColumn:I

    .line 151
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragRow:I

    .line 161
    invoke-direct {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 165
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    .line 129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    .line 136
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    const/4 p3, 0x0

    .line 137
    iput-boolean p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 138
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;->CENTER:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapPosition:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    .line 144
    iput p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnSpacing:I

    .line 145
    iput p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardEdge:I

    .line 149
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragEnabled:Z

    const/4 p1, -0x1

    .line 150
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragColumn:I

    .line 151
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLastDragRow:I

    .line 166
    invoke-direct {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private addColumnTo(ILcom/rosteam/gpsemulator/draglistview/ColumnProperties;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 8

    .line 946
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnCount()I

    move-result v0

    if-gt p1, v0, :cond_120

    .line 950
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$layout;->drag_item_recycler_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 951
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setId(I)V

    .line 952
    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setHorizontalScrollBarEnabled(Z)V

    .line 953
    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 954
    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setMotionEventSplittingEnabled(Z)V

    .line 955
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItem;)V

    .line 956
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_3e

    goto :goto_47

    .line 959
    :cond_3e
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    :goto_47
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 960
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getItemsSectionBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setBackgroundColor(I)V

    .line 961
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->hasFixedItemSize()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setHasFixedSize(Z)V

    .line 963
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getItemDecorations()Ljava/util/List;

    move-result-object v1

    .line 964
    :goto_5c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6e

    .line 965
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    .line 968
    :cond_6e
    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 969
    new-instance v1, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;

    invoke-direct {v1, p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$4;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragItemListener(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemListener;)V

    .line 1002
    new-instance v1, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;

    invoke-direct {v1, p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$5;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragItemCallback(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragItemCallback;)V

    .line 1016
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getDragItemAdapter()Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    move-result-object v1

    .line 1017
    new-instance v2, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;

    invoke-direct {v2, p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$6;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V

    invoke-virtual {v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->setDragStartedListener(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$DragStartCallback;)V

    .line 1028
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1029
    iget-boolean v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragEnabled:Z

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragEnabled(Z)V

    .line 1031
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getColumnBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1032
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getColumnWidth()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 1035
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_ae

    :cond_ac
    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnWidth:I

    :goto_ae
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1037
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1038
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getColumnBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v3, 0x1

    .line 1039
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1040
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1042
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getHeader()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    if-nez v1, :cond_e6

    .line 1044
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1045
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    :cond_e6
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1048
    iget-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v4, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1050
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1051
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1053
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getFooter()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_108

    .line 1055
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1056
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    :cond_108
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1059
    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1061
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1063
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateBoardSpaces()V

    .line 1064
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->getColumnDragView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->setupColumnDragListener(Landroid/view/View;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V

    return-object v0

    .line 947
    :cond_120
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Index is out of bounds"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private endDragColumn()V
    .registers 4

    .line 824
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getRealDragView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$2;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;)V

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->endDrag(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method private getClosestSnapColumn()I
    .registers 9

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v0

    move v3, v2

    .line 452
    :goto_6
    iget-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6b

    .line 453
    iget-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v4}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 456
    iget-object v5, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapPosition:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    invoke-virtual {v5}, Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;->ordinal()I

    move-result v5

    if-eqz v5, :cond_57

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v6, :cond_3f

    if-eq v5, v7, :cond_2c

    move v4, v0

    goto :goto_64

    .line 466
    :cond_2c
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 467
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_64

    .line 462
    :cond_3f
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, v7

    add-int/2addr v5, v6

    .line 463
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v6, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnWidth:I

    div-int/2addr v6, v7

    add-int/2addr v4, v6

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_64

    .line 458
    :cond_57
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v5

    .line 459
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    :goto_64
    if-ge v4, v1, :cond_68

    move v3, v2

    move v1, v4

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6b
    return v3
.end method

.method private getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 429
    :goto_2
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 430
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-ne v2, p1, :cond_15

    move v1, v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_18
    return v1
.end method

.method private getCurrentColumn(F)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 439
    :goto_2
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 440
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 441
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 442
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2b

    return v1

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2e
    return v0
.end method

.method private getCurrentRecyclerView(F)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 6

    .line 418
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 419
    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 420
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_6

    return-object v1

    .line 424
    :cond_2b
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    return-object p1
.end method

.method private getRelativeViewTouchX(Landroid/view/View;)F
    .registers 4

    .line 410
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private getRelativeViewTouchY(Landroid/view/View;)F
    .registers 3

    .line 414
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchY:F

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 262
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchY:F

    .line 264
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_5d

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v3, :cond_36

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2a

    if-eq p1, v2, :cond_36

    goto :goto_5c

    .line 267
    :cond_2a
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->isAutoScrolling()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 268
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateScrollPosition()V

    goto :goto_5c

    .line 273
    :cond_36
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->stopAutoScroll()V

    .line 274
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDraggingColumn()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 275
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->endDragColumn()V

    goto :goto_4a

    .line 277
    :cond_45
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->onDragEnded()V

    .line 279
    :goto_4a
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 280
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToColumn(IZ)V

    .line 282
    :cond_59
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->invalidate()V

    :cond_5c
    :goto_5c
    return v3

    .line 287
    :cond_5d
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6c

    return v3

    .line 291
    :cond_6c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_85

    if-eq p1, v3, :cond_77

    if-eq p1, v2, :cond_77

    goto :goto_92

    .line 300
    :cond_77
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result p1

    if-eqz p1, :cond_92

    .line 301
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getClosestSnapColumn()I

    move-result p1

    invoke-virtual {p0, p1, v3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToColumn(IZ)V

    goto :goto_92

    .line 293
    :cond_85
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_92

    .line 295
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_92
    :goto_92
    return v1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4

    .line 170
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/rosteam/gpsemulator/R$styleable;->BoardView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 172
    sget v0, Lcom/rosteam/gpsemulator/R$styleable;->BoardView_columnSpacing:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnSpacing:I

    .line 173
    sget v0, Lcom/rosteam/gpsemulator/R$styleable;->BoardView_boardEdges:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardEdge:I

    .line 176
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isDragging()Z
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDraggingColumn()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private isDraggingColumn()Z
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method private moveColumn(II)V
    .registers 7

    .line 840
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 841
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 843
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 844
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 845
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 846
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 848
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 849
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 850
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 851
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 853
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateBoardSpaces()V

    .line 855
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/rosteam/gpsemulator/draglistview/BoardView$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$3;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 864
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    if-eqz v0, :cond_51

    .line 865
    invoke-interface {v0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onColumnDragChangedPosition(II)V

    :cond_51
    return-void
.end method

.method private setupColumnDragListener(Landroid/view/View;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V
    .registers 4

    if-eqz p1, :cond_a

    .line 1071
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;

    invoke-direct {v0, p0, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView$7;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_a
    return-void
.end method

.method private snapToColumnWhenDragging()Z
    .registers 5

    .line 485
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 486
    :goto_11
    iget-boolean v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    if-eqz v3, :cond_1c

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    if-eqz v0, :cond_1c

    :cond_1b
    return v2

    :cond_1c
    return v1
.end method

.method private snapToColumnWhenScrolling()Z
    .registers 5

    .line 480
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 481
    :goto_11
    iget-boolean v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    if-eqz v3, :cond_1c

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    if-eqz v0, :cond_1c

    :cond_1b
    return v2

    :cond_1c
    return v1
.end method

.method private startDragColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;FF)V
    .registers 5

    .line 809
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumnStartScrollX:F

    .line 810
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 812
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 813
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->startDrag(Landroid/view/View;FF)V

    .line 814
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p3}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 815
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 817
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    if-eqz p1, :cond_38

    .line 818
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumnStartPosition:I

    .line 819
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    invoke-interface {p2, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onColumnDragStarted(I)V

    :cond_38
    return-void
.end method

.method private updateBoardSpaces()V
    .registers 6

    .line 1086
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnCount()I

    move-result v0

    .line 1087
    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnSpacing:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_32

    .line 1090
    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1091
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v2, :cond_20

    .line 1094
    iget v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardEdge:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1095
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2f

    :cond_20
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_2b

    .line 1097
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1098
    iget v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardEdge:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_2f

    .line 1100
    :cond_2b
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1101
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_32
    return-void
.end method

.method private updateScrollPosition()V
    .registers 10

    .line 358
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDraggingColumn()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 359
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getCurrentRecyclerView(F)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    if-eq v1, v0, :cond_2b

    .line 361
    invoke-direct {p0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v1

    .line 362
    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v0

    .line 363
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardCallback:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    if-eqz v2, :cond_28

    invoke-interface {v2, v1, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;->canDropColumnAtPosition(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 364
    :cond_28
    invoke-direct {p0, v1, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->moveColumn(II)V

    .line 368
    :cond_2b
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumnStartScrollX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchY:F

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setPosition(FF)V

    goto/16 :goto_b9

    .line 371
    :cond_3f
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getCurrentRecyclerView(F)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    if-eq v1, v0, :cond_a4

    .line 373
    invoke-direct {p0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v1

    .line 374
    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnOfList(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)I

    move-result v2

    .line 375
    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getDragItemId()J

    move-result-wide v3

    .line 378
    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getDragPositionForY(F)I

    move-result v5

    .line 379
    iget-object v6, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardCallback:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    if-eqz v6, :cond_73

    iget v7, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragStartColumn:I

    iget v8, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragStartRow:I

    invoke-interface {v6, v7, v8, v2, v5}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;->canDropItemAtPosition(IIII)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 380
    :cond_73
    iget-object v5, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v5}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->removeDragItemAndEnd()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a4

    .line 382
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 383
    invoke-direct {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v6

    invoke-virtual {v0, v6, v5, v3, v4}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->addDragItemAndStart(FLjava/lang/Object;J)V

    .line 384
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v4}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setOffset(FF)V

    .line 386
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    if-eqz v0, :cond_a4

    .line 387
    invoke-interface {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onItemChangedColumn(II)V

    .line 394
    :cond_a4
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchX(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->onDragging(FF)V

    .line 397
    :goto_b9
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c7

    goto :goto_c8

    :cond_c7
    const/4 v1, 0x0

    .line 398
    :goto_c8
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    if-eqz v1, :cond_d9

    const v1, 0x3d75c28f    # 0.06f

    goto :goto_dc

    :cond_d9
    const v1, 0x3e0f5c29    # 0.14f

    :goto_dc
    mul-float/2addr v0, v1

    .line 399
    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_fd

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_fd

    .line 400
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->LEFT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScroll(Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_116

    .line 401
    :cond_fd
    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_111

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_111

    .line 402
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->RIGHT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->startAutoScroll(Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;)V

    goto :goto_116

    .line 404
    :cond_111
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->stopAutoScroll()V

    .line 406
    :goto_116
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->invalidate()V

    return-void
.end method


# virtual methods
.method public addColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Landroid/view/View;Landroid/view/View;Z)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 11

    .line 920
    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->addColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Landroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public addColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Landroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 6

    .line 926
    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->newBuilder(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 927
    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setHeader(Landroid/view/View;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 928
    invoke-virtual {p1, p3}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setColumnDragView(Landroid/view/View;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 929
    invoke-virtual {p1, p4}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setHasFixedItemSize(Z)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 930
    invoke-virtual {p1, p5}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 931
    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->build()Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;

    move-result-object p1

    .line 933
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnCount()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->addColumnTo(ILcom/rosteam/gpsemulator/draglistview/ColumnProperties;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public addColumn(Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;)V
    .registers 3

    .line 942
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getColumnCount()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->addColumnTo(ILcom/rosteam/gpsemulator/draglistview/ColumnProperties;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    return-void
.end method

.method public addItem(IILjava/lang/Object;Z)V
    .registers 6

    .line 570
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_37

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v0, p2, :cond_37

    .line 571
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    .line 572
    invoke-virtual {v0, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->addItem(ILjava/lang/Object;)V

    if-eqz p4, :cond_37

    const/4 p3, 0x0

    .line 574
    invoke-virtual {p0, p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToItem(IIZ)V

    :cond_37
    return-void
.end method

.method public clearBoard()V
    .registers 3

    .line 671
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 673
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 674
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 675
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 676
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_21
    return-void
.end method

.method public computeScroll()V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 312
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 313
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 314
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v2

    if-ne v2, v0, :cond_28

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollY()I

    move-result v2

    if-eq v2, v1, :cond_2b

    .line 315
    :cond_28
    invoke-virtual {p0, v0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollTo(II)V

    .line 320
    :cond_2b
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->isAutoScrolling()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 321
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDraggingColumn()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 322
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumnStartScrollX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mTouchY:F

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setPosition(FF)V

    goto :goto_69

    .line 324
    :cond_52
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchX(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentRecyclerView:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0, v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getRelativeViewTouchY(Landroid/view/View;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setPosition(FF)V

    .line 328
    :cond_69
    :goto_69
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void

    .line 329
    :cond_6d
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v0

    if-nez v0, :cond_76

    .line 330
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    :cond_76
    return-void
.end method

.method public getAdapter(I)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;
    .registers 3

    if-ltz p1, :cond_19

    .line 505
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_19

    .line 506
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    return-object p1

    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnCount()I
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getColumnOfFooter(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x0

    .line 554
    :goto_1
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 555
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public getColumnOfHeader(Landroid/view/View;)I
    .registers 4

    const/4 v0, 0x0

    .line 542
    :goto_1
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 543
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public getFocusedColumn()I
    .registers 2

    .line 707
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 710
    :cond_8
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentColumn:I

    return v0
.end method

.method public getFooterView(I)Landroid/view/View;
    .registers 3

    .line 535
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getHeaderView(I)Landroid/view/View;
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public getItemCount()I
    .registers 4

    .line 513
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 514
    invoke-virtual {v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_1d
    return v1
.end method

.method public getItemCount(I)I
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_19

    .line 521
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public getRecyclerView(I)Landroidx/recyclerview/widget/RecyclerView;
    .registers 3

    if-ltz p1, :cond_13

    .line 498
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_13

    .line 499
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public insertColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;ILandroid/view/View;Landroid/view/View;Z)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 13

    .line 882
    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->insertColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;ILandroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public insertColumn(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;ILandroid/view/View;Landroid/view/View;ZLandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
    .registers 7

    .line 889
    invoke-static {p1}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->newBuilder(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 890
    invoke-virtual {p1, p3}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setHeader(Landroid/view/View;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 891
    invoke-virtual {p1, p4}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setColumnDragView(Landroid/view/View;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 892
    invoke-virtual {p1, p5}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setHasFixedItemSize(Z)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 893
    invoke-virtual {p1, p6}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    move-result-object p1

    .line 894
    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->build()Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;

    move-result-object p1

    .line 895
    invoke-direct {p0, p2, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->addColumnTo(ILcom/rosteam/gpsemulator/draglistview/ColumnProperties;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public insertColumn(ILcom/rosteam/gpsemulator/draglistview/ColumnProperties;)V
    .registers 3

    .line 905
    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->addColumnTo(ILcom/rosteam/gpsemulator/draglistview/ColumnProperties;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    return-void
.end method

.method public isDragEnabled()Z
    .registers 2

    .line 691
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragEnabled:Z

    return v0
.end method

.method public moveItem(IIIIZ)V
    .registers 7

    .line 580
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_63

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_63

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    .line 581
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p3, :cond_63

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v0, p4, :cond_63

    .line 582
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    .line 583
    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 584
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    .line 585
    invoke-virtual {p2, p4, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->addItem(ILjava/lang/Object;)V

    if-eqz p5, :cond_63

    const/4 p1, 0x0

    .line 587
    invoke-virtual {p0, p3, p4, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToItem(IIZ)V

    :cond_63
    return-void
.end method

.method public moveItem(JIIZ)V
    .registers 15

    const/4 v0, 0x0

    move v2, v0

    .line 593
    :goto_2
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_39

    .line 594
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v7

    .line 595
    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    move v3, v0

    :goto_1b
    if-ge v3, v8, :cond_33

    .line 597
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-nez v1, :cond_2d

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    .line 599
    invoke-virtual/range {v1 .. v6}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->moveItem(IIIIZ)V

    return-void

    :cond_2d
    move v4, p3

    move v5, p4

    move v6, p5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_33
    move v4, p3

    move v5, p4

    move v6, p5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_39
    return-void
.end method

.method public onAutoScrollColumnBy(I)V
    .registers 3

    .line 346
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 347
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentColumn:I

    add-int/2addr v0, p1

    if-eqz p1, :cond_19

    if-ltz v0, :cond_19

    .line 348
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_19

    const/4 p1, 0x1

    .line 349
    invoke-virtual {p0, v0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToColumn(IZ)V

    .line 351
    :cond_19
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateScrollPosition()V

    return-void

    .line 353
    :cond_1d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->stopAutoScroll()V

    return-void
.end method

.method public onAutoScrollPositionBy(II)V
    .registers 4

    .line 336
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollBy(II)V

    .line 338
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateScrollPosition()V

    return-void

    .line 340
    :cond_d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->stopAutoScroll()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 6

    .line 181
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onFinishInflate()V

    .line 182
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 185
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v0, v0

    const-wide v2, 0x3febd70a3d70a3d7L    # 0.87

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnWidth:I

    goto :goto_2d

    .line 187
    :cond_21
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43a00000    # 320.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnWidth:I

    .line 190
    :goto_2d
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/rosteam/gpsemulator/draglistview/BoardView$GestureListener;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;Lcom/rosteam/gpsemulator/draglistview/BoardView-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 191
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f8ccccd    # 1.1f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    .line 192
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;-><init>(Landroid/content/Context;Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollListener;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    .line 193
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenDragging()Z

    move-result v1

    if-eqz v1, :cond_65

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    goto :goto_67

    .line 194
    :cond_65
    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    .line 193
    :goto_67
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->setAutoScrollMode(Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;)V

    .line 195
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    .line 196
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 199
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    .line 200
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    .line 203
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 204
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMotionEventSplittingEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 247
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 248
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected onLayout(ZIIII)V
    .registers 6

    .line 214
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 215
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateBoardSpaces()V

    .line 218
    iget-boolean p2, p1, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHasLaidOut:Z

    if-nez p2, :cond_1e

    iget-object p2, p1, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSavedState:Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    if-eqz p2, :cond_1e

    .line 219
    iget p2, p2, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;->currentColumn:I

    iput p2, p1, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentColumn:I

    const/4 p2, 0x0

    .line 220
    iput-object p2, p1, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSavedState:Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    .line 221
    new-instance p2, Lcom/rosteam/gpsemulator/draglistview/BoardView$1;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$1;-><init>(Lcom/rosteam/gpsemulator/draglistview/BoardView;)V

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    const/4 p2, 0x1

    .line 228
    iput-boolean p2, p1, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHasLaidOut:Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 233
    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    .line 234
    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 235
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSavedState:Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    .line 236
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 241
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenScrolling()Z

    move-result v2

    if-eqz v2, :cond_f

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentColumn:I

    goto :goto_13

    :cond_f
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getClosestSnapColumn()I

    move-result v2

    :goto_13
    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;-><init>(Landroid/os/Parcelable;ILcom/rosteam/gpsemulator/draglistview/BoardView-IA;)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 253
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 254
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public removeColumn(I)V
    .registers 3

    if-ltz p1, :cond_21

    .line 681
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_21

    .line 682
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 683
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mFooters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 685
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 686
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateBoardSpaces()V

    :cond_21
    return-void
.end method

.method public removeItem(II)V
    .registers 4

    .line 563
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_31

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_31

    .line 564
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    .line 565
    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    :cond_31
    return-void
.end method

.method public replaceItem(IILjava/lang/Object;Z)V
    .registers 6

    .line 607
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_3a

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_3a

    .line 608
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    .line 609
    invoke-virtual {v0, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->removeItem(I)Ljava/lang/Object;

    .line 610
    invoke-virtual {v0, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->addItem(ILjava/lang/Object;)V

    if-eqz p4, :cond_3a

    const/4 p3, 0x0

    .line 612
    invoke-virtual {p0, p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToItem(IIZ)V

    :cond_3a
    return-void
.end method

.method public scrollToColumn(IZ)V
    .registers 13

    .line 630
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_a

    goto/16 :goto_a9

    .line 634
    :cond_a
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 635
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 637
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapPosition:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    invoke-virtual {v2}, Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_54

    const/4 v5, 0x2

    if-eq v2, v3, :cond_3b

    if-eq v2, v5, :cond_2f

    move v0, v4

    goto :goto_5b

    .line 646
    :cond_2f
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getMeasuredWidth()I

    move-result v1

    goto :goto_5a

    .line 642
    :cond_3b
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v2, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v6

    div-int/2addr v2, v5

    .line 643
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_5b

    .line 639
    :cond_54
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_5a
    sub-int/2addr v0, v1

    .line 650
    :goto_5b
    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v0, :cond_69

    goto :goto_6a

    :cond_69
    move v4, v0

    :goto_6a
    if-le v4, v1, :cond_6d

    goto :goto_6e

    :cond_6d
    move v1, v4

    .line 653
    :goto_6e
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v0

    if-eq v0, v1, :cond_9c

    .line 654
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    if-eqz p2, :cond_95

    .line 656
    iget-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result v5

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollX()I

    move-result p2

    sub-int v7, v1, p2

    const/4 v8, 0x0

    const/16 v9, 0x145

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 657
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_9c

    .line 659
    :cond_95
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollTo(II)V

    .line 663
    :cond_9c
    :goto_9c
    iget p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentColumn:I

    .line 664
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mCurrentColumn:I

    .line 665
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    if-eqz v0, :cond_a9

    if-eq p2, p1, :cond_a9

    .line 666
    invoke-interface {v0, p2, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;->onFocusedColumnChanged(II)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method public scrollToItem(IIZ)V
    .registers 6

    .line 618
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->isDragging()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_42

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-le v0, p2, :cond_42

    .line 619
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 620
    invoke-virtual {p0, p1, p3}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->scrollToColumn(IZ)V

    if-eqz p3, :cond_37

    .line 622
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->smoothScrollToPosition(I)V

    return-void

    .line 624
    :cond_37
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->scrollToPosition(I)V

    :cond_42
    return-void
.end method

.method public setBoardCallback(Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;)V
    .registers 2

    .line 781
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardCallback:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardCallback;

    return-void
.end method

.method public setBoardEdge(I)V
    .registers 2

    .line 733
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardEdge:I

    .line 734
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateBoardSpaces()V

    return-void
.end method

.method public setBoardListener(Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;)V
    .registers 2

    .line 777
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mBoardListener:Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;

    return-void
.end method

.method public setColumnSnapPosition(Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;)V
    .registers 2

    .line 766
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapPosition:Lcom/rosteam/gpsemulator/draglistview/BoardView$ColumnSnapPosition;

    return-void
.end method

.method public setColumnSpacing(I)V
    .registers 2

    .line 725
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnSpacing:I

    .line 726
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->updateBoardSpaces()V

    return-void
.end method

.method public setColumnWidth(I)V
    .registers 2

    .line 718
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mColumnWidth:I

    return-void
.end method

.method public setCustomColumnDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItem;)V
    .registers 4

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_d

    .line 801
    :cond_4
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    :goto_d
    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 803
    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 805
    :cond_13
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragColumn:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    return-void
.end method

.method public setCustomDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItem;)V
    .registers 4

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_d

    .line 788
    :cond_4
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;-><init>(Landroid/content/Context;)V

    :goto_d
    const/4 v1, 0x1

    if-nez p1, :cond_13

    .line 790
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setSnapToTouch(Z)V

    .line 792
    :cond_13
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    .line 793
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 794
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mRootLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->getDragItemView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setDragEnabled(Z)V
    .registers 4

    .line 695
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragEnabled:Z

    .line 696
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_22

    .line 697
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mLists:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    .line 698
    iget-boolean v1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragEnabled:Z

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->setDragEnabled(Z)V

    goto :goto_10

    :cond_22
    return-void
.end method

.method public setSnapDragItemToTouch(Z)V
    .registers 3

    .line 773
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mDragItem:Lcom/rosteam/gpsemulator/draglistview/DragItem;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setSnapToTouch(Z)V

    return-void
.end method

.method public setSnapToColumnInLandscape(Z)V
    .registers 3

    .line 757
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnInLandscape:Z

    .line 758
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenDragging()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    goto :goto_f

    .line 759
    :cond_d
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    .line 758
    :goto_f
    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->setAutoScrollMode(Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;)V

    return-void
.end method

.method public setSnapToColumnWhenDragging(Z)V
    .registers 3

    .line 748
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenDragging:Z

    .line 749
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mAutoScroller:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/BoardView;->snapToColumnWhenDragging()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    goto :goto_f

    .line 750
    :cond_d
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    .line 749
    :goto_f
    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->setAutoScrollMode(Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;)V

    return-void
.end method

.method public setSnapToColumnsWhenScrolling(Z)V
    .registers 2

    .line 741
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView;->mSnapToColumnWhenScrolling:Z

    return-void
.end method
