.class public Lcom/rosteam/gpsemulator/draglistview/DragItem;
.super Ljava/lang/Object;
.source "DragItem.java"


# static fields
.field protected static final ANIMATION_DURATION:I = 0xfa


# instance fields
.field private mAnimationDx:F

.field private mAnimationDy:F

.field private mCanDragHorizontally:Z

.field private mCanDragVertically:Z

.field private mDragView:Landroid/view/View;

.field private mOffsetX:F

.field private mOffsetY:F

.field private mPosTouchDx:F

.field private mPosTouchDy:F

.field private mPosX:F

.field private mPosY:F

.field private mRealDragView:Landroid/view/View;

.field private mRealStartX:F

.field private mRealStartY:F

.field private mSnapToTouch:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragHorizontally:Z

    .line 47
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragVertically:Z

    .line 48
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mSnapToTouch:Z

    .line 51
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->hide()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragHorizontally:Z

    .line 47
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragVertically:Z

    .line 48
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mSnapToTouch:Z

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->hide()V

    return-void
.end method

.method private show()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updatePosition()V
    .registers 5

    .line 234
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragHorizontally:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1a

    .line 235
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosX:F

    iget v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mOffsetX:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mAnimationDx:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 237
    :cond_1a
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragVertically:Z

    if-eqz v0, :cond_32

    .line 238
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosY:F

    iget v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mOffsetY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mAnimationDy:F

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 241
    :cond_32
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method canDragHorizontally()Z
    .registers 2

    .line 85
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragHorizontally:Z

    return v0
.end method

.method canDragVertically()Z
    .registers 2

    .line 93
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragVertically:Z

    return v0
.end method

.method endDrag(Landroid/view/View;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 9

    .line 162
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->onEndDragAnimation(Landroid/view/View;)V

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v3, p1

    int-to-float p1, v3

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 168
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosX:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput v0, v3, p1

    const-string v0, "X"

    invoke-static {v0, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 169
    iget v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosY:F

    new-array v5, v2, [F

    aput v3, v5, v4

    aput v1, v5, p1

    const-string v1, "Y"

    invoke-static {v1, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 170
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    aput-object v1, v2, p1

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 171
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 173
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method getDragItemView()Landroid/view/View;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method getRealDragView()Landroid/view/View;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealDragView:Landroid/view/View;

    return-object v0
.end method

.method getX()F
    .registers 2

    .line 202
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosX:F

    return v0
.end method

.method getY()F
    .registers 2

    .line 206
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosY:F

    return v0
.end method

.method hide()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealDragView:Landroid/view/View;

    return-void
.end method

.method isDragging()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method isSnapToTouch()Z
    .registers 2

    .line 101
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mSnapToTouch:Z

    return v0
.end method

.method public onBindDragView(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 65
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onEndDragAnimation(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onMeasureDragView(Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 75
    invoke-virtual {p2, v0, p1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onStartDragAnimation(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method setAnimationDY(F)V
    .registers 2

    .line 185
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mAnimationDy:F

    .line 186
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setAnimationDx(F)V
    .registers 2

    .line 179
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mAnimationDx:F

    .line 180
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setCanDragHorizontally(Z)V
    .registers 2

    .line 89
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragHorizontally:Z

    return-void
.end method

.method setCanDragVertically(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragVertically:Z

    return-void
.end method

.method setOffset(FF)V
    .registers 3

    .line 228
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mOffsetX:F

    .line 229
    iput p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mOffsetY:F

    .line 230
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setPosition(FF)V
    .registers 6

    .line 210
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragHorizontally:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_c

    .line 211
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosTouchDx:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosX:F

    goto :goto_1c

    .line 213
    :cond_c
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealStartX:F

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosX:F

    .line 214
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 217
    :goto_1c
    iget-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mCanDragVertically:Z

    if-eqz p1, :cond_26

    .line 218
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosTouchDy:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosY:F

    goto :goto_36

    .line 220
    :cond_26
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealStartY:F

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosY:F

    .line 221
    iget-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setY(F)V

    .line 224
    :goto_36
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method protected setSnapToTouch(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mSnapToTouch:Z

    return-void
.end method

.method setX(F)V
    .registers 2

    .line 191
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosX:F

    .line 192
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method setY(F)V
    .registers 2

    .line 197
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosY:F

    .line 198
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->updatePosition()V

    return-void
.end method

.method startDrag(Landroid/view/View;FF)V
    .registers 8

    .line 130
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->show()V

    .line 131
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealDragView:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->onBindDragView(Landroid/view/View;Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->onMeasureDragView(Landroid/view/View;Landroid/view/View;)V

    .line 134
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->onStartDragAnimation(Landroid/view/View;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealStartX:F

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v1, p1

    int-to-float p1, v1

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mDragView:Landroid/view/View;

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealStartY:F

    .line 141
    iget-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mSnapToTouch:Z

    if-eqz p1, :cond_a2

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosTouchDx:F

    .line 143
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosTouchDy:F

    .line 144
    invoke-virtual {p0, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setPosition(FF)V

    .line 145
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealStartX:F

    sub-float/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setAnimationDx(F)V

    .line 146
    iget p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealStartY:F

    sub-float/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setAnimationDY(F)V

    .line 148
    iget p2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mAnimationDx:F

    const/4 p3, 0x2

    new-array v0, p3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    const-string v2, "AnimationDx"

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 149
    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mAnimationDy:F

    new-array v3, p3, [F

    aput v2, v3, v1

    aput p1, v3, p2

    const-string p1, "AnimationDY"

    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 150
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p3, v1

    aput-object p1, p3, p2

    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 151
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0xfa

    .line 152
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 155
    :cond_a2
    iget p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mRealStartX:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosTouchDx:F

    sub-float/2addr v0, p3

    .line 156
    iput v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItem;->mPosTouchDy:F

    .line 157
    invoke-virtual {p0, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItem;->setPosition(FF)V

    return-void
.end method
