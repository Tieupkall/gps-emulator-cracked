.class public Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;
.super Landroid/widget/RelativeLayout;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;,
        Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;,
        Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;
    }
.end annotation


# instance fields
.field private mFlingSpeed:F

.field private mLeftView:Landroid/view/View;

.field private mLeftViewId:I

.field private mMaxLeftTranslationX:F

.field private mMaxRightTranslationX:F

.field private mRightView:Landroid/view/View;

.field private mRightViewId:I

.field private mStartSwipeTranslationX:F

.field private mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field private mSwipeInStyle:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

.field private mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

.field private mSwipeStarted:Z

.field private mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

.field private mSwipeTranslationX:F

.field private mSwipeView:Landroid/view/View;

.field private mSwipeViewId:I

.field private mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSwipeTranslationX(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)F
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewHolder(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSwipeState(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;)V
    .registers 2

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 53
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxLeftTranslationX:F

    .line 62
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxRightTranslationX:F

    .line 63
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT_AND_RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    .line 64
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->APPEAR:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeInStyle:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxLeftTranslationX:F

    .line 62
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxRightTranslationX:F

    .line 63
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT_AND_RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    .line 64
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->APPEAR:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeInStyle:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    .line 75
    invoke-direct {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 61
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxLeftTranslationX:F

    .line 62
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxRightTranslationX:F

    .line 63
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT_AND_RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    .line 64
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->APPEAR:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeInStyle:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    .line 80
    invoke-direct {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getTranslateToXPosition(FFF)F
    .registers 8

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_17

    sub-float v2, p1, p2

    .line 314
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_17

    return p1

    :cond_17
    cmpg-float p2, p2, v0

    if-gez p2, :cond_25

    if-lez v1, :cond_1e

    return v0

    .line 322
    :cond_1e
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result p1

    neg-int p1, p1

    :goto_23
    int-to-float p1, p1

    return p1

    :cond_25
    cmpl-float p1, p1, v0

    if-nez p1, :cond_33

    cmpg-float p1, p3, v0

    if-gez p1, :cond_2e

    return v0

    .line 329
    :cond_2e
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result p1

    goto :goto_23

    :cond_33
    if-lez v1, :cond_3a

    .line 334
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result p1

    goto :goto_23

    :cond_3a
    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 4

    .line 84
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/rosteam/gpsemulator/R$styleable;->ListSwipeItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    sget v0, Lcom/rosteam/gpsemulator/R$styleable;->ListSwipeItem_swipeViewId:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeViewId:I

    .line 87
    sget v0, Lcom/rosteam/gpsemulator/R$styleable;->ListSwipeItem_leftViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftViewId:I

    .line 88
    sget v0, Lcom/rosteam/gpsemulator/R$styleable;->ListSwipeItem_rightViewId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightViewId:I

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method varargs animateToSwipeTranslationX(F[Landroid/animation/Animator$AnimatorListener;)V
    .registers 6

    .line 234
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_7

    return-void

    .line 238
    :cond_7
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->ANIMATING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 239
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    const-string p1, "SwipeTranslationX"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 240
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    array-length v0, p2

    :goto_2a
    if-ge v2, v0, :cond_36

    aget-object v1, p2, v2

    if-eqz v1, :cond_33

    .line 244
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 247
    :cond_36
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public getMaxLeftTranslationX()F
    .registers 3

    .line 144
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxLeftTranslationX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getMaxRightTranslationX()F
    .registers 3

    .line 162
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxRightTranslationX:F

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getSupportedSwipeDirection()Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object v0
.end method

.method getSwipedDirection()Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    if-eq v0, v1, :cond_9

    .line 171
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object v0

    .line 174
    :cond_9
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMaxLeftTranslationX()F

    move-result v1

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    .line 175
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object v0

    .line 176
    :cond_1b
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMaxRightTranslationX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2c

    .line 177
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object v0

    .line 179
    :cond_2c
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object v0
.end method

.method handleSwipeMove(FLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 347
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 350
    :cond_7
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->SWIPING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 351
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeStarted:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeStarted:Z

    .line 353
    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 356
    :cond_18
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->swipeTranslationByX(F)V

    return-void
.end method

.method handleSwipeMoveStarted(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .registers 3

    .line 342
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mStartSwipeTranslationX:F

    .line 343
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    return-void
.end method

.method handleSwipeUp(Landroid/animation/Animator$AnimatorListener;)V
    .registers 10

    .line 284
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeStarted:Z

    if-nez v0, :cond_b

    goto :goto_51

    .line 288
    :cond_b
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$2;-><init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)V

    .line 301
    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mFlingSpeed:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v1, :cond_3a

    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mStartSwipeTranslationX:F

    iget v6, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    sub-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    cmpg-float v1, v1, v6

    if-gez v1, :cond_3a

    .line 303
    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mStartSwipeTranslationX:F

    new-array v5, v5, [Landroid/animation/Animator$AnimatorListener;

    aput-object v0, v5, v4

    aput-object p1, v5, v3

    invoke-virtual {p0, v1, v5}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->animateToSwipeTranslationX(F[Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4d

    .line 306
    :cond_3a
    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mStartSwipeTranslationX:F

    iget v6, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    iget v7, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mFlingSpeed:F

    invoke-direct {p0, v1, v6, v7}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getTranslateToXPosition(FFF)F

    move-result v1

    .line 307
    new-array v5, v5, [Landroid/animation/Animator$AnimatorListener;

    aput-object v0, v5, v4

    aput-object p1, v5, v3

    invoke-virtual {p0, v1, v5}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->animateToSwipeTranslationX(F[Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    :goto_4d
    iput v2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mStartSwipeTranslationX:F

    .line 310
    iput v2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mFlingSpeed:F

    :cond_51
    :goto_51
    return-void
.end method

.method isAnimating()Z
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->ANIMATING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method isSwipeStarted()Z
    .registers 2

    .line 187
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeStarted:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 95
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 96
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeViewId:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeView:Landroid/view/View;

    .line 97
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftViewId:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftView:Landroid/view/View;

    .line 98
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightViewId:I

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftView:Landroid/view/View;

    const/4 v1, 0x4

    if-eqz v0, :cond_23

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    :cond_23
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightView:Landroid/view/View;

    if-eqz v0, :cond_2a

    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    return-void
.end method

.method resetSwipe(Z)V
    .registers 7

    .line 251
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_47

    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeStarted:Z

    if-nez v0, :cond_b

    goto :goto_47

    .line 255
    :cond_b
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_24

    .line 257
    new-array p1, v3, [Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$1;-><init>(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)V

    aput-object v0, p1, v2

    invoke-virtual {p0, v1, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->animateToSwipeTranslationX(F[Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_30

    .line 265
    :cond_24
    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->setSwipeTranslationX(F)V

    .line 266
    sget-object p1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeState:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 267
    iput-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    goto :goto_30

    .line 270
    :cond_2e
    iput-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    .line 273
    :goto_30
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result p1

    if-nez p1, :cond_3f

    .line 274
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 277
    :cond_3f
    iput-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 278
    iput v1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mFlingSpeed:F

    .line 279
    iput v1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mStartSwipeTranslationX:F

    .line 280
    iput-boolean v2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeStarted:Z

    :cond_47
    :goto_47
    return-void
.end method

.method setFlingSpeed(F)V
    .registers 2

    .line 191
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mFlingSpeed:F

    return-void
.end method

.method public setMaxLeftTranslationX(F)V
    .registers 2

    .line 137
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxLeftTranslationX:F

    return-void
.end method

.method public setMaxRightTranslationX(F)V
    .registers 2

    .line 155
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mMaxRightTranslationX:F

    return-void
.end method

.method public setSupportedSwipeDirection(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-void
.end method

.method public setSwipeInStyle(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeInStyle:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    return-void
.end method

.method setSwipeListener(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    return-void
.end method

.method setSwipeTranslationX(F)V
    .registers 6

    .line 200
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_1b

    :cond_b
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    if-ne v0, v1, :cond_15

    cmpg-float v0, p1, v2

    if-ltz v0, :cond_1b

    :cond_15
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeDirection:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    if-ne v0, v1, :cond_1c

    :cond_1b
    move p1, v2

    .line 204
    :cond_1c
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMaxRightTranslationX()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    .line 205
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMaxLeftTranslationX()F

    move-result v0

    neg-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    .line 206
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3c

    return-void

    .line 210
    :cond_3c
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeView:Landroid/view/View;

    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 211
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeListener:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;

    if-eqz p1, :cond_4c

    .line 212
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    invoke-interface {p1, p0, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;->onItemSwiping(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;F)V

    .line 215
    :cond_4c
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    cmpg-float v0, p1, v2

    const/4 v1, 0x0

    const/4 v3, 0x4

    if-gez v0, :cond_72

    .line 216
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeInStyle:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->SLIDE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    if-ne p1, v0, :cond_67

    .line 217
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 219
    :cond_67
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_72
    cmpl-float p1, p1, v2

    if-lez p1, :cond_95

    .line 222
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeInStyle:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->SLIDE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    if-ne p1, v0, :cond_8a

    .line 223
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->getMeasuredWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 225
    :cond_8a
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 228
    :cond_95
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mRightView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mLeftView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 2

    .line 110
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 113
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->resetSwipe(Z)V

    :cond_11
    return-void
.end method

.method swipeTranslationByX(F)V
    .registers 3

    .line 195
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->mSwipeTranslationX:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;->setSwipeTranslationX(F)V

    return-void
.end method
