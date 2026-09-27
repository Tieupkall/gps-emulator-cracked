package com.rosteam.gpsemulator.draglistview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class DragItemRecyclerView extends RecyclerView implements AutoScroller.AutoScrollListener {
    private DragItemAdapter mAdapter;
    private AutoScroller mAutoScroller;
    private boolean mCanNotDragAboveTop;
    private boolean mCanNotDragBelowBottom;
    private boolean mClipToPadding;
    private boolean mDisableReorderWhenDragging;
    private DragItemCallback mDragCallback;
    private boolean mDragEnabled;
    private DragItem mDragItem;
    private long mDragItemId;
    private int mDragItemPosition;
    private DragState mDragState;
    private Drawable mDropTargetBackgroundDrawable;
    private Drawable mDropTargetForegroundDrawable;
    private boolean mHoldChangePosition;
    private DragItemListener mListener;
    private boolean mScrollingEnabled;
    private float mStartY;
    private int mTouchSlop;

    public interface DragItemCallback {
        boolean canDragItemAtPosition(int i);

        boolean canDropItemAtPosition(int i);
    }

    public interface DragItemListener {
        void onDragEnded(int i);

        void onDragStarted(int i, float f, float f2);

        void onDragging(int i, float f, float f2);
    }

    private enum DragState {
        DRAG_STARTED,
        DRAGGING,
        DRAG_ENDED
    }

    @Override // com.rosteam.gpsemulator.draglistview.AutoScroller.AutoScrollListener
    public void onAutoScrollColumnBy(int i) {
    }

    public DragItemRecyclerView(Context context) {
        super(context);
        this.mDragState = DragState.DRAG_ENDED;
        this.mDragItemId = -1L;
        this.mScrollingEnabled = true;
        this.mDragEnabled = true;
        init();
    }

    public DragItemRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.mDragState = DragState.DRAG_ENDED;
        this.mDragItemId = -1L;
        this.mScrollingEnabled = true;
        this.mDragEnabled = true;
        init();
    }

    public DragItemRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mDragState = DragState.DRAG_ENDED;
        this.mDragItemId = -1L;
        this.mScrollingEnabled = true;
        this.mDragEnabled = true;
        init();
    }

    private void init() {
        this.mAutoScroller = new AutoScroller(getContext(), this);
        this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        addItemDecoration(new RecyclerView.ItemDecoration() { // from class: com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.1
            public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
                super.onDraw(canvas, recyclerView, state);
                drawDecoration(canvas, recyclerView, DragItemRecyclerView.this.mDropTargetBackgroundDrawable);
            }

            public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
                super.onDrawOver(canvas, recyclerView, state);
                drawDecoration(canvas, recyclerView, DragItemRecyclerView.this.mDropTargetForegroundDrawable);
            }

            private void drawDecoration(Canvas canvas, RecyclerView recyclerView, Drawable drawable) {
                if (DragItemRecyclerView.this.mAdapter == null || DragItemRecyclerView.this.mAdapter.getDropTargetId() == -1 || drawable == null) {
                    return;
                }
                for (int i = 0; i < recyclerView.getChildCount(); i++) {
                    View childAt = recyclerView.getChildAt(i);
                    int childAdapterPosition = DragItemRecyclerView.this.getChildAdapterPosition(childAt);
                    if (childAdapterPosition != -1 && DragItemRecyclerView.this.mAdapter.getItemId(childAdapterPosition) == DragItemRecyclerView.this.mAdapter.getDropTargetId()) {
                        drawable.setBounds(childAt.getLeft(), childAt.getTop(), childAt.getRight(), childAt.getBottom());
                        drawable.draw(canvas);
                    }
                }
            }
        });
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.mScrollingEnabled) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.mStartY = motionEvent.getY();
        } else if (action == 2 && Math.abs(motionEvent.getY() - this.mStartY) > ((double) this.mTouchSlop) * 0.5d) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    void setDragEnabled(boolean z) {
        this.mDragEnabled = z;
    }

    boolean isDragEnabled() {
        return this.mDragEnabled;
    }

    void setCanNotDragAboveTopItem(boolean z) {
        this.mCanNotDragAboveTop = z;
    }

    void setCanNotDragBelowBottomItem(boolean z) {
        this.mCanNotDragBelowBottom = z;
    }

    void setScrollingEnabled(boolean z) {
        this.mScrollingEnabled = z;
    }

    void setDisableReorderWhenDragging(boolean z) {
        this.mDisableReorderWhenDragging = z;
    }

    public void setDropTargetDrawables(Drawable drawable, Drawable drawable2) {
        this.mDropTargetBackgroundDrawable = drawable;
        this.mDropTargetForegroundDrawable = drawable2;
    }

    void setDragItemListener(DragItemListener dragItemListener) {
        this.mListener = dragItemListener;
    }

    void setDragItemCallback(DragItemCallback dragItemCallback) {
        this.mDragCallback = dragItemCallback;
    }

    void setDragItem(DragItem dragItem) {
        this.mDragItem = dragItem;
    }

    boolean isDragging() {
        return this.mDragState != DragState.DRAG_ENDED;
    }

    long getDragItemId() {
        return this.mDragItemId;
    }

    public void setClipToPadding(boolean z) {
        super.setClipToPadding(z);
        this.mClipToPadding = z;
    }

    public void setAdapter(RecyclerView.Adapter adapter) {
        if (!isInEditMode()) {
            if (!(adapter instanceof DragItemAdapter)) {
                throw new RuntimeException("Adapter must extend DragItemAdapter");
            }
            if (!adapter.hasStableIds()) {
                throw new RuntimeException("Adapter must have stable ids");
            }
        }
        super.setAdapter(adapter);
        this.mAdapter = (DragItemAdapter) adapter;
    }

    public void swapAdapter(RecyclerView.Adapter adapter, boolean z) {
        if (!isInEditMode()) {
            if (!(adapter instanceof DragItemAdapter)) {
                throw new RuntimeException("Adapter must extend DragItemAdapter");
            }
            if (!adapter.hasStableIds()) {
                throw new RuntimeException("Adapter must have stable ids");
            }
        }
        super.swapAdapter(adapter, z);
        this.mAdapter = (DragItemAdapter) adapter;
    }

    public void setLayoutManager(RecyclerView.LayoutManager layoutManager) {
        super.setLayoutManager(layoutManager);
        if (!(layoutManager instanceof LinearLayoutManager)) {
            throw new RuntimeException("Layout must be an instance of LinearLayoutManager");
        }
    }

    @Override // com.rosteam.gpsemulator.draglistview.AutoScroller.AutoScrollListener
    public void onAutoScrollPositionBy(int i, int i2) {
        if (isDragging()) {
            scrollBy(i, i2);
            updateDragPositionAndScroll();
        } else {
            this.mAutoScroller.stopAutoScroll();
        }
    }

    public View findChildView(float f, float f2) {
        int childCount = getChildCount();
        if (f2 <= 0.0f && childCount > 0) {
            return getChildAt(0);
        }
        for (int i = childCount - 1; i >= 0; i--) {
            View childAt = getChildAt(i);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) childAt.getLayoutParams();
            if (f >= childAt.getLeft() - marginLayoutParams.leftMargin && f <= childAt.getRight() + marginLayoutParams.rightMargin && f2 >= childAt.getTop() - marginLayoutParams.topMargin && f2 <= childAt.getBottom() + marginLayoutParams.bottomMargin) {
                return childAt;
            }
        }
        return null;
    }

    private boolean shouldChangeItemPosition(int i) {
        int i2;
        if (this.mHoldChangePosition || (i2 = this.mDragItemPosition) == -1 || i2 == i) {
            return false;
        }
        if ((this.mCanNotDragAboveTop && i == 0) || (this.mCanNotDragBelowBottom && i == this.mAdapter.getItemCount() - 1)) {
            return false;
        }
        DragItemCallback dragItemCallback = this.mDragCallback;
        return dragItemCallback == null || dragItemCallback.canDropItemAtPosition(i);
    }

    /* JADX WARN: Code duplicated, block: B:67:0x014c A[PHI: r5
  0x014c: PHI (r5v8 boolean) = (r5v5 boolean), (r5v10 boolean) binds: [B:66:0x014a, B:57:0x0132] A[DONT_GENERATE, DONT_INLINE]] */
    private void updateDragPositionAndScroll() {
        boolean z;
        View viewFindChildView = findChildView(this.mDragItem.getX(), this.mDragItem.getY());
        int childLayoutPosition = getChildLayoutPosition(viewFindChildView);
        if (childLayoutPosition == -1 || viewFindChildView == null) {
            return;
        }
        boolean z2 = false;
        if ((getLayoutManager() instanceof LinearLayoutManager) && !(getLayoutManager() instanceof GridLayoutManager)) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindChildView.getLayoutParams();
            int measuredHeight = viewFindChildView.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            int top = (viewFindChildView.getTop() - marginLayoutParams.topMargin) + (measuredHeight / 2);
            boolean z3 = this.mDragItemPosition >= getChildLayoutPosition(viewFindChildView) ? this.mDragItem.getY() < ((float) top) : this.mDragItem.getY() > ((float) top);
            if (measuredHeight > this.mDragItem.getDragItemView().getMeasuredHeight() && !z3) {
                childLayoutPosition = this.mDragItemPosition;
            }
        }
        LinearLayoutManager layoutManager = getLayoutManager();
        if (shouldChangeItemPosition(childLayoutPosition)) {
            if (this.mDisableReorderWhenDragging) {
                DragItemAdapter dragItemAdapter = this.mAdapter;
                dragItemAdapter.setDropTargetId(dragItemAdapter.getItemId(childLayoutPosition));
                this.mAdapter.notifyDataSetChanged();
            } else {
                int iFindFirstVisibleItemPosition = layoutManager.findFirstVisibleItemPosition();
                View viewFindViewByPosition = layoutManager.findViewByPosition(iFindFirstVisibleItemPosition);
                this.mAdapter.changeItemPosition(this.mDragItemPosition, childLayoutPosition);
                this.mDragItemPosition = childLayoutPosition;
                if (layoutManager.getOrientation() == 1) {
                    layoutManager.scrollToPositionWithOffset(iFindFirstVisibleItemPosition, viewFindViewByPosition.getTop() - ((ViewGroup.MarginLayoutParams) viewFindViewByPosition.getLayoutParams()).topMargin);
                } else {
                    layoutManager.scrollToPositionWithOffset(iFindFirstVisibleItemPosition, viewFindViewByPosition.getLeft() - ((ViewGroup.MarginLayoutParams) viewFindViewByPosition.getLayoutParams()).leftMargin);
                }
            }
        }
        int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
        int height = this.mClipToPadding ? getHeight() - getPaddingBottom() : getHeight();
        int paddingLeft = this.mClipToPadding ? getPaddingLeft() : 0;
        int width = this.mClipToPadding ? getWidth() - getPaddingRight() : getWidth();
        RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition = findViewHolderForLayoutPosition(this.mAdapter.getItemCount() - 1);
        RecyclerView.ViewHolder viewHolderFindViewHolderForLayoutPosition2 = findViewHolderForLayoutPosition(0);
        if (layoutManager.getOrientation() == 1) {
            z = viewHolderFindViewHolderForLayoutPosition != null && viewHolderFindViewHolderForLayoutPosition.itemView.getBottom() <= height;
            if (viewHolderFindViewHolderForLayoutPosition2 != null && viewHolderFindViewHolderForLayoutPosition2.itemView.getTop() >= paddingTop) {
                z2 = true;
            }
        } else {
            z = viewHolderFindViewHolderForLayoutPosition != null && viewHolderFindViewHolderForLayoutPosition.itemView.getRight() <= width;
            if (viewHolderFindViewHolderForLayoutPosition2 != null && viewHolderFindViewHolderForLayoutPosition2.itemView.getLeft() >= paddingLeft) {
                z2 = true;
            }
        }
        if (layoutManager.getOrientation() == 1) {
            if (this.mDragItem.getY() > getHeight() - (viewFindChildView.getHeight() / 2) && !z) {
                this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.UP);
                return;
            } else if (this.mDragItem.getY() < viewFindChildView.getHeight() / 2 && !z2) {
                this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.DOWN);
                return;
            } else {
                this.mAutoScroller.stopAutoScroll();
                return;
            }
        }
        if (this.mDragItem.getX() > getWidth() - (viewFindChildView.getWidth() / 2) && !z) {
            this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.LEFT);
        } else if (this.mDragItem.getX() < viewFindChildView.getWidth() / 2 && !z2) {
            this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.RIGHT);
        } else {
            this.mAutoScroller.stopAutoScroll();
        }
    }

    boolean startDrag(View view, long j, float f, float f2) {
        int positionForItemId = this.mAdapter.getPositionForItemId(j);
        if (!this.mDragEnabled || ((this.mCanNotDragAboveTop && positionForItemId == 0) || (this.mCanNotDragBelowBottom && positionForItemId == this.mAdapter.getItemCount() - 1))) {
            return false;
        }
        DragItemCallback dragItemCallback = this.mDragCallback;
        if (dragItemCallback != null && !dragItemCallback.canDragItemAtPosition(positionForItemId)) {
            return false;
        }
        getParent().requestDisallowInterceptTouchEvent(false);
        this.mDragState = DragState.DRAG_STARTED;
        this.mDragItemId = j;
        this.mDragItem.startDrag(view, f, f2);
        this.mDragItemPosition = positionForItemId;
        updateDragPositionAndScroll();
        this.mAdapter.setDragItemId(this.mDragItemId);
        this.mAdapter.notifyDataSetChanged();
        DragItemListener dragItemListener = this.mListener;
        if (dragItemListener != null) {
            dragItemListener.onDragStarted(this.mDragItemPosition, this.mDragItem.getX(), this.mDragItem.getY());
        }
        invalidate();
        return true;
    }

    void onDragging(float f, float f2) {
        if (this.mDragState == DragState.DRAG_ENDED) {
            return;
        }
        this.mDragState = DragState.DRAGGING;
        this.mDragItemPosition = this.mAdapter.getPositionForItemId(this.mDragItemId);
        this.mDragItem.setPosition(f, f2);
        if (!this.mAutoScroller.isAutoScrolling()) {
            updateDragPositionAndScroll();
        }
        DragItemListener dragItemListener = this.mListener;
        if (dragItemListener != null) {
            dragItemListener.onDragging(this.mDragItemPosition, f, f2);
        }
        invalidate();
    }

    void onDragEnded() {
        if (this.mDragState == DragState.DRAG_ENDED) {
            return;
        }
        this.mAutoScroller.stopAutoScroll();
        setEnabled(false);
        if (this.mDisableReorderWhenDragging) {
            DragItemAdapter dragItemAdapter = this.mAdapter;
            int positionForItemId = dragItemAdapter.getPositionForItemId(dragItemAdapter.getDropTargetId());
            if (positionForItemId != -1) {
                this.mAdapter.swapItems(this.mDragItemPosition, positionForItemId);
                this.mDragItemPosition = positionForItemId;
            }
            this.mAdapter.setDropTargetId(-1L);
        }
        post(new Runnable() { // from class: com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                DragItemRecyclerView dragItemRecyclerView = DragItemRecyclerView.this;
                final RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = dragItemRecyclerView.findViewHolderForAdapterPosition(dragItemRecyclerView.mDragItemPosition);
                if (viewHolderFindViewHolderForAdapterPosition != null) {
                    if (DragItemRecyclerView.this.getItemAnimator() != null) {
                        DragItemRecyclerView.this.getItemAnimator().endAnimation(viewHolderFindViewHolderForAdapterPosition);
                    }
                    DragItemRecyclerView.this.mDragItem.endDrag(viewHolderFindViewHolderForAdapterPosition.itemView, new AnimatorListenerAdapter() { // from class: com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.2.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            viewHolderFindViewHolderForAdapterPosition.itemView.setAlpha(1.0f);
                            DragItemRecyclerView.this.onDragItemAnimationEnd();
                        }
                    });
                    return;
                }
                DragItemRecyclerView.this.onDragItemAnimationEnd();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onDragItemAnimationEnd() {
        this.mAdapter.setDragItemId(-1L);
        this.mAdapter.setDropTargetId(-1L);
        this.mAdapter.notifyDataSetChanged();
        this.mDragState = DragState.DRAG_ENDED;
        DragItemListener dragItemListener = this.mListener;
        if (dragItemListener != null) {
            dragItemListener.onDragEnded(this.mDragItemPosition);
        }
        this.mDragItemId = -1L;
        this.mDragItem.hide();
        setEnabled(true);
        invalidate();
    }

    int getDragPositionForY(float f) {
        int childLayoutPosition;
        View viewFindChildView = findChildView(0.0f, f);
        if (viewFindChildView == null && getChildCount() > 0) {
            childLayoutPosition = getChildLayoutPosition(getChildAt(getChildCount() - 1)) + 1;
        } else {
            childLayoutPosition = getChildLayoutPosition(viewFindChildView);
        }
        if (childLayoutPosition == -1) {
            return 0;
        }
        return childLayoutPosition;
    }

    void addDragItemAndStart(float f, Object obj, long j) {
        int dragPositionForY = getDragPositionForY(f);
        this.mDragState = DragState.DRAG_STARTED;
        this.mDragItemId = j;
        this.mAdapter.setDragItemId(j);
        this.mAdapter.addItem(dragPositionForY, obj);
        this.mDragItemPosition = dragPositionForY;
        this.mHoldChangePosition = true;
        postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.3
            @Override // java.lang.Runnable
            public void run() {
                DragItemRecyclerView.this.mHoldChangePosition = false;
            }
        }, getItemAnimator().getMoveDuration());
        invalidate();
    }

    Object removeDragItemAndEnd() {
        if (this.mDragItemPosition == -1) {
            return null;
        }
        this.mAutoScroller.stopAutoScroll();
        Object objRemoveItem = this.mAdapter.removeItem(this.mDragItemPosition);
        this.mAdapter.setDragItemId(-1L);
        this.mDragState = DragState.DRAG_ENDED;
        this.mDragItemId = -1L;
        invalidate();
        return objRemoveItem;
    }
}
