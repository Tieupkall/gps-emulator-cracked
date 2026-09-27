package com.rosteam.gpsemulator.draglistview;

import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class DragItem {
    protected static final int ANIMATION_DURATION = 250;
    private float mAnimationDx;
    private float mAnimationDy;
    private View mDragView;
    private float mOffsetX;
    private float mOffsetY;
    private float mPosTouchDx;
    private float mPosTouchDy;
    private float mPosX;
    private float mPosY;
    private View mRealDragView;
    private float mRealStartX;
    private float mRealStartY;
    private boolean mCanDragHorizontally = true;
    private boolean mCanDragVertically = true;
    private boolean mSnapToTouch = true;

    public void onEndDragAnimation(View view) {
    }

    public void onStartDragAnimation(View view) {
    }

    DragItem(Context context) {
        this.mDragView = new View(context);
        hide();
    }

    public DragItem(Context context, int i) {
        this.mDragView = View.inflate(context, i, null);
        hide();
    }

    public void onBindDragView(View view, View view2) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(bitmapCreateBitmap));
        view2.setBackground(new BitmapDrawable(view.getResources(), bitmapCreateBitmap));
    }

    public void onMeasureDragView(View view, View view2) {
        view2.setLayoutParams(new FrameLayout.LayoutParams(view.getMeasuredWidth(), view.getMeasuredHeight()));
        view2.measure(View.MeasureSpec.makeMeasureSpec(view.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824));
    }

    boolean canDragHorizontally() {
        return this.mCanDragHorizontally;
    }

    void setCanDragHorizontally(boolean z) {
        this.mCanDragHorizontally = z;
    }

    boolean canDragVertically() {
        return this.mCanDragVertically;
    }

    void setCanDragVertically(boolean z) {
        this.mCanDragVertically = z;
    }

    boolean isSnapToTouch() {
        return this.mSnapToTouch;
    }

    protected void setSnapToTouch(boolean z) {
        this.mSnapToTouch = z;
    }

    View getDragItemView() {
        return this.mDragView;
    }

    View getRealDragView() {
        return this.mRealDragView;
    }

    private void show() {
        this.mDragView.setVisibility(0);
    }

    void hide() {
        this.mDragView.setVisibility(8);
        this.mRealDragView = null;
    }

    boolean isDragging() {
        return this.mDragView.getVisibility() == 0;
    }

    void startDrag(View view, float f, float f2) {
        show();
        this.mRealDragView = view;
        onBindDragView(view, this.mDragView);
        onMeasureDragView(view, this.mDragView);
        onStartDragAnimation(this.mDragView);
        this.mRealStartX = (view.getX() - ((this.mDragView.getMeasuredWidth() - view.getMeasuredWidth()) / 2.0f)) + (this.mDragView.getMeasuredWidth() / 2.0f);
        float y = (view.getY() - ((this.mDragView.getMeasuredHeight() - view.getMeasuredHeight()) / 2.0f)) + (this.mDragView.getMeasuredHeight() / 2.0f);
        this.mRealStartY = y;
        if (this.mSnapToTouch) {
            this.mPosTouchDx = 0.0f;
            this.mPosTouchDy = 0.0f;
            setPosition(f, f2);
            setAnimationDx(this.mRealStartX - f);
            setAnimationDY(this.mRealStartY - f2);
            ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("AnimationDx", this.mAnimationDx, 0.0f), PropertyValuesHolder.ofFloat("AnimationDY", this.mAnimationDy, 0.0f));
            objectAnimatorOfPropertyValuesHolder.setInterpolator(new DecelerateInterpolator());
            objectAnimatorOfPropertyValuesHolder.setDuration(250L);
            objectAnimatorOfPropertyValuesHolder.start();
            return;
        }
        this.mPosTouchDx = this.mRealStartX - f;
        this.mPosTouchDy = y - f2;
        setPosition(f, f2);
    }

    void endDrag(View view, AnimatorListenerAdapter animatorListenerAdapter) {
        onEndDragAnimation(this.mDragView);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("X", this.mPosX, (view.getX() - ((this.mDragView.getMeasuredWidth() - view.getMeasuredWidth()) / 2.0f)) + (this.mDragView.getMeasuredWidth() / 2.0f)), PropertyValuesHolder.ofFloat("Y", this.mPosY, (view.getY() - ((this.mDragView.getMeasuredHeight() - view.getMeasuredHeight()) / 2.0f)) + (this.mDragView.getMeasuredHeight() / 2.0f)));
        objectAnimatorOfPropertyValuesHolder.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfPropertyValuesHolder.setDuration(250L);
        objectAnimatorOfPropertyValuesHolder.addListener(animatorListenerAdapter);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    void setAnimationDx(float f) {
        this.mAnimationDx = f;
        updatePosition();
    }

    void setAnimationDY(float f) {
        this.mAnimationDy = f;
        updatePosition();
    }

    void setX(float f) {
        this.mPosX = f;
        updatePosition();
    }

    void setY(float f) {
        this.mPosY = f;
        updatePosition();
    }

    float getX() {
        return this.mPosX;
    }

    float getY() {
        return this.mPosY;
    }

    void setPosition(float f, float f2) {
        if (this.mCanDragHorizontally) {
            this.mPosX = f + this.mPosTouchDx;
        } else {
            float f3 = this.mRealStartX;
            this.mPosX = f3;
            View view = this.mDragView;
            view.setX(f3 - (view.getMeasuredWidth() / 2.0f));
        }
        if (this.mCanDragVertically) {
            this.mPosY = f2 + this.mPosTouchDy;
        } else {
            float f4 = this.mRealStartY;
            this.mPosY = f4;
            View view2 = this.mDragView;
            view2.setY(f4 - (view2.getMeasuredHeight() / 2.0f));
        }
        updatePosition();
    }

    void setOffset(float f, float f2) {
        this.mOffsetX = f;
        this.mOffsetY = f2;
        updatePosition();
    }

    private void updatePosition() {
        if (this.mCanDragHorizontally) {
            View view = this.mDragView;
            view.setX(((this.mPosX + this.mOffsetX) + this.mAnimationDx) - (view.getMeasuredWidth() / 2.0f));
        }
        if (this.mCanDragVertically) {
            View view2 = this.mDragView;
            view2.setY(((this.mPosY + this.mOffsetY) + this.mAnimationDy) - (view2.getMeasuredHeight() / 2.0f));
        }
        this.mDragView.invalidate();
    }
}
