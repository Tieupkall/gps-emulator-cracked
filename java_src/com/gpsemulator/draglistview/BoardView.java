package com.rosteam.gpsemulator.draglistview;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.Scroller;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.Reader;
import com.rosteam.gpsemulator.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class BoardView extends HorizontalScrollView implements AutoScroller.AutoScrollListener {
    private static final int SCROLL_ANIMATION_DURATION = 325;
    private AutoScroller mAutoScroller;
    private BoardCallback mBoardCallback;
    private int mBoardEdge;
    private BoardListener mBoardListener;
    private LinearLayout mColumnLayout;
    private int mColumnSpacing;
    private int mColumnWidth;
    private int mCurrentColumn;
    private DragItemRecyclerView mCurrentRecyclerView;
    private DragItem mDragColumn;
    private int mDragColumnStartPosition;
    private float mDragColumnStartScrollX;
    private boolean mDragEnabled;
    private DragItem mDragItem;
    private int mDragStartColumn;
    private int mDragStartRow;
    private ArrayList<View> mFooters;
    private GestureDetector mGestureDetector;
    private boolean mHasLaidOut;
    private ArrayList<View> mHeaders;
    private int mLastDragColumn;
    private int mLastDragRow;
    private ArrayList<DragItemRecyclerView> mLists;
    private FrameLayout mRootLayout;
    private SavedState mSavedState;
    private Scroller mScroller;
    private ColumnSnapPosition mSnapPosition;
    private boolean mSnapToColumnInLandscape;
    private boolean mSnapToColumnWhenDragging;
    private boolean mSnapToColumnWhenScrolling;
    private float mTouchX;
    private float mTouchY;

    public interface BoardCallback {
        boolean canDragColumnAtPosition(int i);

        boolean canDragItemAtPosition(int i, int i2);

        boolean canDropColumnAtPosition(int i, int i2);

        boolean canDropItemAtPosition(int i, int i2, int i3, int i4);
    }

    public interface BoardListener {
        void onColumnDragChangedPosition(int i, int i2);

        void onColumnDragEnded(int i, int i2);

        void onColumnDragStarted(int i);

        void onFocusedColumnChanged(int i, int i2);

        void onItemChangedColumn(int i, int i2);

        void onItemChangedPosition(int i, int i2, int i3, int i4);

        void onItemDragEnded(int i, int i2, int i3, int i4);

        void onItemDragStarted(int i, int i2);
    }

    public static abstract class BoardListenerAdapter implements BoardListener {
        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onColumnDragChangedPosition(int i, int i2) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onColumnDragEnded(int i, int i2) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onColumnDragStarted(int i) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onFocusedColumnChanged(int i, int i2) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onItemChangedColumn(int i, int i2) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onItemChangedPosition(int i, int i2, int i3, int i4) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onItemDragEnded(int i, int i2, int i3, int i4) {
        }

        @Override // com.rosteam.gpsemulator.draglistview.BoardView.BoardListener
        public void onItemDragStarted(int i, int i2) {
        }
    }

    public enum ColumnSnapPosition {
        LEFT,
        CENTER,
        RIGHT
    }

    public BoardView(Context context) {
        super(context);
        this.mLists = new ArrayList<>();
        this.mHeaders = new ArrayList<>();
        this.mFooters = new ArrayList<>();
        this.mSnapToColumnWhenScrolling = true;
        this.mSnapToColumnWhenDragging = true;
        this.mSnapToColumnInLandscape = false;
        this.mSnapPosition = ColumnSnapPosition.CENTER;
        this.mColumnSpacing = 0;
        this.mBoardEdge = 0;
        this.mDragEnabled = true;
        this.mLastDragColumn = -1;
        this.mLastDragRow = -1;
    }

    public BoardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLists = new ArrayList<>();
        this.mHeaders = new ArrayList<>();
        this.mFooters = new ArrayList<>();
        this.mSnapToColumnWhenScrolling = true;
        this.mSnapToColumnWhenDragging = true;
        this.mSnapToColumnInLandscape = false;
        this.mSnapPosition = ColumnSnapPosition.CENTER;
        this.mColumnSpacing = 0;
        this.mBoardEdge = 0;
        this.mDragEnabled = true;
        this.mLastDragColumn = -1;
        this.mLastDragRow = -1;
        init(attributeSet);
    }

    public BoardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mLists = new ArrayList<>();
        this.mHeaders = new ArrayList<>();
        this.mFooters = new ArrayList<>();
        this.mSnapToColumnWhenScrolling = true;
        this.mSnapToColumnWhenDragging = true;
        this.mSnapToColumnInLandscape = false;
        this.mSnapPosition = ColumnSnapPosition.CENTER;
        this.mColumnSpacing = 0;
        this.mBoardEdge = 0;
        this.mDragEnabled = true;
        this.mLastDragColumn = -1;
        this.mLastDragRow = -1;
        init(attributeSet);
    }

    private void init(AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.BoardView);
        this.mColumnSpacing = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BoardView_columnSpacing, 0);
        this.mBoardEdge = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.BoardView_boardEdges, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Resources resources = getResources();
        if (resources.getConfiguration().orientation == 1) {
            this.mColumnWidth = (int) (((double) resources.getDisplayMetrics().widthPixels) * 0.87d);
        } else {
            this.mColumnWidth = (int) (resources.getDisplayMetrics().density * 320.0f);
        }
        this.mGestureDetector = new GestureDetector(getContext(), new GestureListener());
        this.mScroller = new Scroller(getContext(), new DecelerateInterpolator(1.1f));
        AutoScroller autoScroller = new AutoScroller(getContext(), this);
        this.mAutoScroller = autoScroller;
        autoScroller.setAutoScrollMode(snapToColumnWhenDragging() ? AutoScroller.AutoScrollMode.COLUMN : AutoScroller.AutoScrollMode.POSITION);
        this.mDragItem = new DragItem(getContext());
        DragItem dragItem = new DragItem(getContext());
        this.mDragColumn = dragItem;
        dragItem.setSnapToTouch(false);
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.mRootLayout = frameLayout;
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.mColumnLayout = linearLayout;
        linearLayout.setOrientation(0);
        this.mColumnLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        this.mColumnLayout.setMotionEventSplittingEnabled(false);
        this.mRootLayout.addView(this.mColumnLayout);
        this.mRootLayout.addView(this.mDragItem.getDragItemView());
        addView(this.mRootLayout);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        SavedState savedState;
        super.onLayout(z, i, i2, i3, i4);
        updateBoardSpaces();
        if (!this.mHasLaidOut && (savedState = this.mSavedState) != null) {
            this.mCurrentColumn = savedState.currentColumn;
            this.mSavedState = null;
            post(new Runnable() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.1
                @Override // java.lang.Runnable
                public void run() {
                    BoardView boardView = BoardView.this;
                    boardView.scrollToColumn(boardView.mCurrentColumn, false);
                }
            });
        }
        this.mHasLaidOut = true;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mSavedState = savedState;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), snapToColumnWhenScrolling() ? this.mCurrentColumn : getClosestSnapColumn());
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return handleTouchEvent(motionEvent) || super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0036  */
    /* JADX WARN: Code duplicated, block: B:18:0x0041  */
    /* JADX WARN: Code duplicated, block: B:19:0x0045  */
    /* JADX WARN: Code duplicated, block: B:22:0x0050  */
    private boolean handleTouchEvent(MotionEvent motionEvent) {
        if (this.mLists.size() == 0) {
            return false;
        }
        this.mTouchX = motionEvent.getX();
        this.mTouchY = motionEvent.getY();
        if (isDragging()) {
            int action = motionEvent.getAction();
            if (action == 1) {
                this.mAutoScroller.stopAutoScroll();
                if (isDraggingColumn()) {
                    endDragColumn();
                } else {
                    this.mCurrentRecyclerView.onDragEnded();
                }
                if (snapToColumnWhenScrolling()) {
                    scrollToColumn(getColumnOfList(this.mCurrentRecyclerView), true);
                }
                invalidate();
            } else if (action != 2) {
                if (action == 3) {
                    this.mAutoScroller.stopAutoScroll();
                    if (isDraggingColumn()) {
                        endDragColumn();
                    } else {
                        this.mCurrentRecyclerView.onDragEnded();
                    }
                    if (snapToColumnWhenScrolling()) {
                        scrollToColumn(getColumnOfList(this.mCurrentRecyclerView), true);
                    }
                    invalidate();
                }
            } else if (!this.mAutoScroller.isAutoScrolling()) {
                updateScrollPosition();
            }
            return true;
        }
        if (snapToColumnWhenScrolling() && this.mGestureDetector.onTouchEvent(motionEvent)) {
            return true;
        }
        int action2 = motionEvent.getAction();
        if (action2 == 0) {
            if (!this.mScroller.isFinished()) {
                this.mScroller.forceFinished(true);
            }
        } else if ((action2 == 1 || action2 == 3) && snapToColumnWhenScrolling()) {
            scrollToColumn(getClosestSnapColumn(), true);
        }
        return false;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void computeScroll() {
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int currX = this.mScroller.getCurrX();
            int currY = this.mScroller.getCurrY();
            if (getScrollX() != currX || getScrollY() != currY) {
                scrollTo(currX, currY);
            }
            if (this.mAutoScroller.isAutoScrolling() && isDragging()) {
                if (isDraggingColumn()) {
                    this.mDragColumn.setPosition((this.mTouchX + getScrollX()) - this.mDragColumnStartScrollX, this.mTouchY);
                } else {
                    this.mDragItem.setPosition(getRelativeViewTouchX((View) this.mCurrentRecyclerView.getParent()), getRelativeViewTouchY(this.mCurrentRecyclerView));
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        if (snapToColumnWhenScrolling()) {
            return;
        }
        super.computeScroll();
    }

    @Override // com.rosteam.gpsemulator.draglistview.AutoScroller.AutoScrollListener
    public void onAutoScrollPositionBy(int i, int i2) {
        if (isDragging()) {
            scrollBy(i, i2);
            updateScrollPosition();
        } else {
            this.mAutoScroller.stopAutoScroll();
        }
    }

    @Override // com.rosteam.gpsemulator.draglistview.AutoScroller.AutoScrollListener
    public void onAutoScrollColumnBy(int i) {
        if (isDragging()) {
            int i2 = this.mCurrentColumn + i;
            if (i != 0 && i2 >= 0 && i2 < this.mLists.size()) {
                scrollToColumn(i2, true);
            }
            updateScrollPosition();
            return;
        }
        this.mAutoScroller.stopAutoScroll();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.view.View, com.rosteam.gpsemulator.draglistview.DragItemRecyclerView] */
    private void updateScrollPosition() {
        Object objRemoveDragItemAndEnd;
        if (isDraggingColumn()) {
            DragItemRecyclerView currentRecyclerView = getCurrentRecyclerView(this.mTouchX + getScrollX());
            DragItemRecyclerView dragItemRecyclerView = this.mCurrentRecyclerView;
            if (dragItemRecyclerView != currentRecyclerView) {
                int columnOfList = getColumnOfList(dragItemRecyclerView);
                int columnOfList2 = getColumnOfList(currentRecyclerView);
                BoardCallback boardCallback = this.mBoardCallback;
                if (boardCallback == null || boardCallback.canDropColumnAtPosition(columnOfList, columnOfList2)) {
                    moveColumn(columnOfList, columnOfList2);
                }
            }
            this.mDragColumn.setPosition((this.mTouchX + getScrollX()) - this.mDragColumnStartScrollX, this.mTouchY);
        } else {
            ?? currentRecyclerView2 = getCurrentRecyclerView(this.mTouchX + getScrollX());
            DragItemRecyclerView dragItemRecyclerView2 = this.mCurrentRecyclerView;
            if (dragItemRecyclerView2 != currentRecyclerView2) {
                int columnOfList3 = getColumnOfList(dragItemRecyclerView2);
                int columnOfList4 = getColumnOfList(currentRecyclerView2);
                long dragItemId = this.mCurrentRecyclerView.getDragItemId();
                int dragPositionForY = currentRecyclerView2.getDragPositionForY(getRelativeViewTouchY(currentRecyclerView2));
                BoardCallback boardCallback2 = this.mBoardCallback;
                if ((boardCallback2 == null || boardCallback2.canDropItemAtPosition(this.mDragStartColumn, this.mDragStartRow, columnOfList4, dragPositionForY)) && (objRemoveDragItemAndEnd = this.mCurrentRecyclerView.removeDragItemAndEnd()) != null) {
                    this.mCurrentRecyclerView = currentRecyclerView2;
                    currentRecyclerView2.addDragItemAndStart(getRelativeViewTouchY(currentRecyclerView2), objRemoveDragItemAndEnd, dragItemId);
                    this.mDragItem.setOffset(((View) this.mCurrentRecyclerView.getParent()).getLeft(), this.mCurrentRecyclerView.getTop());
                    BoardListener boardListener = this.mBoardListener;
                    if (boardListener != null) {
                        boardListener.onItemChangedColumn(columnOfList3, columnOfList4);
                    }
                }
            }
            DragItemRecyclerView dragItemRecyclerView3 = this.mCurrentRecyclerView;
            dragItemRecyclerView3.onDragging(getRelativeViewTouchX((View) dragItemRecyclerView3.getParent()), getRelativeViewTouchY(this.mCurrentRecyclerView));
        }
        float f = getResources().getDisplayMetrics().widthPixels * (getResources().getConfiguration().orientation == 1 ? 0.06f : 0.14f);
        if (this.mTouchX > getWidth() - f && getScrollX() < this.mColumnLayout.getWidth()) {
            this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.LEFT);
        } else if (this.mTouchX < f && getScrollX() > 0) {
            this.mAutoScroller.startAutoScroll(AutoScroller.ScrollDirection.RIGHT);
        } else {
            this.mAutoScroller.stopAutoScroll();
        }
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getRelativeViewTouchX(View view) {
        return (this.mTouchX + getScrollX()) - view.getLeft();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getRelativeViewTouchY(View view) {
        return this.mTouchY - view.getTop();
    }

    private DragItemRecyclerView getCurrentRecyclerView(float f) {
        for (DragItemRecyclerView dragItemRecyclerView : this.mLists) {
            View view = (View) dragItemRecyclerView.getParent();
            if (view.getLeft() <= f && view.getRight() > f) {
                return dragItemRecyclerView;
            }
        }
        return this.mCurrentRecyclerView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColumnOfList(DragItemRecyclerView dragItemRecyclerView) {
        int i = 0;
        for (int i2 = 0; i2 < this.mLists.size(); i2++) {
            if (this.mLists.get(i2) == dragItemRecyclerView) {
                i = i2;
            }
        }
        return i;
    }

    private int getCurrentColumn(float f) {
        for (int i = 0; i < this.mLists.size(); i++) {
            View view = (View) this.mLists.get(i).getParent();
            if (view.getLeft() <= f && view.getRight() > f) {
                return i;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getClosestSnapColumn() {
        int iAbs;
        int i = Reader.READ_DONE;
        int i2 = 0;
        for (int i3 = 0; i3 < this.mLists.size(); i3++) {
            View view = (View) this.mLists.get(i3).getParent();
            int iOrdinal = this.mSnapPosition.ordinal();
            if (iOrdinal == 0) {
                iAbs = Math.abs(view.getLeft() - getScrollX());
            } else if (iOrdinal == 1) {
                iAbs = Math.abs((view.getLeft() + (this.mColumnWidth / 2)) - (getScrollX() + (getMeasuredWidth() / 2)));
            } else if (iOrdinal != 2) {
                iAbs = 0;
            } else {
                iAbs = Math.abs(view.getRight() - (getScrollX() + getMeasuredWidth()));
            }
            if (iAbs < i) {
                i2 = i3;
                i = iAbs;
            }
        }
        return i2;
    }

    private boolean snapToColumnWhenScrolling() {
        return this.mSnapToColumnWhenScrolling && ((getResources().getConfiguration().orientation == 1) || this.mSnapToColumnInLandscape);
    }

    private boolean snapToColumnWhenDragging() {
        return this.mSnapToColumnWhenDragging && ((getResources().getConfiguration().orientation == 1) || this.mSnapToColumnInLandscape);
    }

    private boolean isDraggingColumn() {
        return this.mCurrentRecyclerView != null && this.mDragColumn.isDragging();
    }

    private boolean isDragging() {
        DragItemRecyclerView dragItemRecyclerView = this.mCurrentRecyclerView;
        if (dragItemRecyclerView != null) {
            return dragItemRecyclerView.isDragging() || isDraggingColumn();
        }
        return false;
    }

    public RecyclerView getRecyclerView(int i) {
        if (i < 0 || i >= this.mLists.size()) {
            return null;
        }
        return this.mLists.get(i);
    }

    public DragItemAdapter getAdapter(int i) {
        if (i < 0 || i >= this.mLists.size()) {
            return null;
        }
        return (DragItemAdapter) this.mLists.get(i).getAdapter();
    }

    public int getItemCount() {
        Iterator<DragItemRecyclerView> it = this.mLists.iterator();
        int itemCount = 0;
        while (it.hasNext()) {
            itemCount += it.next().getAdapter().getItemCount();
        }
        return itemCount;
    }

    public int getItemCount(int i) {
        if (this.mLists.size() > i) {
            return this.mLists.get(i).getAdapter().getItemCount();
        }
        return 0;
    }

    public int getColumnCount() {
        return this.mLists.size();
    }

    public View getHeaderView(int i) {
        return this.mHeaders.get(i);
    }

    public View getFooterView(int i) {
        return this.mFooters.get(i);
    }

    public int getColumnOfHeader(View view) {
        for (int i = 0; i < this.mHeaders.size(); i++) {
            if (this.mHeaders.get(i) == view) {
                return i;
            }
        }
        return -1;
    }

    public int getColumnOfFooter(View view) {
        for (int i = 0; i < this.mFooters.size(); i++) {
            if (this.mFooters.get(i) == view) {
                return i;
            }
        }
        return -1;
    }

    public void removeItem(int i, int i2) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getItemCount() <= i2) {
            return;
        }
        ((DragItemAdapter) this.mLists.get(i).getAdapter()).removeItem(i2);
    }

    public void addItem(int i, int i2, Object obj, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getItemCount() < i2) {
            return;
        }
        ((DragItemAdapter) this.mLists.get(i).getAdapter()).addItem(i2, obj);
        if (z) {
            scrollToItem(i, i2, false);
        }
    }

    public void moveItem(int i, int i2, int i3, int i4, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getItemCount() <= i2 || this.mLists.size() <= i3 || this.mLists.get(i3).getAdapter().getItemCount() < i4) {
            return;
        }
        ((DragItemAdapter) this.mLists.get(i3).getAdapter()).addItem(i4, ((DragItemAdapter) this.mLists.get(i).getAdapter()).removeItem(i2));
        if (z) {
            scrollToItem(i3, i4, false);
        }
    }

    public void moveItem(long j, int i, int i2, boolean z) {
        for (int i3 = 0; i3 < this.mLists.size(); i3++) {
            RecyclerView.Adapter adapter = this.mLists.get(i3).getAdapter();
            int itemCount = adapter.getItemCount();
            for (int i4 = 0; i4 < itemCount; i4++) {
                if (adapter.getItemId(i4) == j) {
                    moveItem(i3, i4, i, i2, z);
                    return;
                }
            }
        }
    }

    public void replaceItem(int i, int i2, Object obj, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getItemCount() <= i2) {
            return;
        }
        DragItemAdapter dragItemAdapter = (DragItemAdapter) this.mLists.get(i).getAdapter();
        dragItemAdapter.removeItem(i2);
        dragItemAdapter.addItem(i2, obj);
        if (z) {
            scrollToItem(i, i2, false);
        }
    }

    public void scrollToItem(int i, int i2, boolean z) {
        if (isDragging() || this.mLists.size() <= i || this.mLists.get(i).getAdapter().getItemCount() <= i2) {
            return;
        }
        this.mScroller.forceFinished(true);
        scrollToColumn(i, z);
        if (z) {
            this.mLists.get(i).smoothScrollToPosition(i2);
        } else {
            this.mLists.get(i).scrollToPosition(i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0069  */
    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    /* JADX WARN: Code duplicated, block: B:24:0x0074  */
    /* JADX WARN: Code duplicated, block: B:26:0x007b  */
    /* JADX WARN: Code duplicated, block: B:27:0x0095  */
    public void scrollToColumn(int i, boolean z) {
        int left;
        int measuredWidth;
        int left2;
        int measuredWidth2;
        int i2;
        BoardListener boardListener;
        if (this.mLists.size() <= i) {
            return;
        }
        View view = (View) this.mLists.get(i).getParent();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int iOrdinal = this.mSnapPosition.ordinal();
        if (iOrdinal == 0) {
            left = view.getLeft();
            measuredWidth = marginLayoutParams.leftMargin;
        } else {
            if (iOrdinal == 1) {
                left2 = (view.getLeft() - marginLayoutParams.leftMargin) - ((((getMeasuredWidth() - view.getMeasuredWidth()) - marginLayoutParams.leftMargin) - marginLayoutParams.rightMargin) / 2);
            } else if (iOrdinal != 2) {
                left2 = 0;
            } else {
                left = view.getRight() + marginLayoutParams.rightMargin;
                measuredWidth = getMeasuredWidth();
            }
            measuredWidth2 = this.mRootLayout.getMeasuredWidth() - getMeasuredWidth();
            i2 = left2 >= 0 ? left2 : 0;
            if (i2 <= measuredWidth2) {
                measuredWidth2 = i2;
            }
            if (getScrollX() != measuredWidth2) {
                this.mScroller.forceFinished(true);
                if (z) {
                    this.mScroller.startScroll(getScrollX(), getScrollY(), measuredWidth2 - getScrollX(), 0, SCROLL_ANIMATION_DURATION);
                    ViewCompat.postInvalidateOnAnimation(this);
                } else {
                    scrollTo(measuredWidth2, getScrollY());
                }
            }
            int i3 = this.mCurrentColumn;
            this.mCurrentColumn = i;
            boardListener = this.mBoardListener;
            if (boardListener != null || i3 == i) {
            }
            boardListener.onFocusedColumnChanged(i3, i);
            return;
        }
        left2 = left - measuredWidth;
        measuredWidth2 = this.mRootLayout.getMeasuredWidth() - getMeasuredWidth();
        if (left2 >= 0) {
        }
        if (i2 <= measuredWidth2) {
            measuredWidth2 = i2;
        }
        if (getScrollX() != measuredWidth2) {
            this.mScroller.forceFinished(true);
            if (z) {
                this.mScroller.startScroll(getScrollX(), getScrollY(), measuredWidth2 - getScrollX(), 0, SCROLL_ANIMATION_DURATION);
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                scrollTo(measuredWidth2, getScrollY());
            }
        }
        int i4 = this.mCurrentColumn;
        this.mCurrentColumn = i;
        boardListener = this.mBoardListener;
        if (boardListener != null) {
        }
    }

    public void clearBoard() {
        for (int size = this.mLists.size() - 1; size >= 0; size--) {
            this.mColumnLayout.removeViewAt(size);
            this.mHeaders.remove(size);
            this.mFooters.remove(size);
            this.mLists.remove(size);
        }
    }

    public void removeColumn(int i) {
        if (i < 0 || this.mLists.size() <= i) {
            return;
        }
        this.mColumnLayout.removeViewAt(i);
        this.mHeaders.remove(i);
        this.mFooters.remove(i);
        this.mLists.remove(i);
        updateBoardSpaces();
    }

    public boolean isDragEnabled() {
        return this.mDragEnabled;
    }

    public void setDragEnabled(boolean z) {
        this.mDragEnabled = z;
        if (this.mLists.size() > 0) {
            Iterator<DragItemRecyclerView> it = this.mLists.iterator();
            while (it.hasNext()) {
                it.next().setDragEnabled(this.mDragEnabled);
            }
        }
    }

    public int getFocusedColumn() {
        if (snapToColumnWhenScrolling()) {
            return this.mCurrentColumn;
        }
        return 0;
    }

    public void setColumnWidth(int i) {
        this.mColumnWidth = i;
    }

    public void setColumnSpacing(int i) {
        this.mColumnSpacing = i;
        updateBoardSpaces();
    }

    public void setBoardEdge(int i) {
        this.mBoardEdge = i;
        updateBoardSpaces();
    }

    public void setSnapToColumnsWhenScrolling(boolean z) {
        this.mSnapToColumnWhenScrolling = z;
    }

    public void setSnapToColumnWhenDragging(boolean z) {
        this.mSnapToColumnWhenDragging = z;
        this.mAutoScroller.setAutoScrollMode(snapToColumnWhenDragging() ? AutoScroller.AutoScrollMode.COLUMN : AutoScroller.AutoScrollMode.POSITION);
    }

    public void setSnapToColumnInLandscape(boolean z) {
        this.mSnapToColumnInLandscape = z;
        this.mAutoScroller.setAutoScrollMode(snapToColumnWhenDragging() ? AutoScroller.AutoScrollMode.COLUMN : AutoScroller.AutoScrollMode.POSITION);
    }

    public void setColumnSnapPosition(ColumnSnapPosition columnSnapPosition) {
        this.mSnapPosition = columnSnapPosition;
    }

    public void setSnapDragItemToTouch(boolean z) {
        this.mDragItem.setSnapToTouch(z);
    }

    public void setBoardListener(BoardListener boardListener) {
        this.mBoardListener = boardListener;
    }

    public void setBoardCallback(BoardCallback boardCallback) {
        this.mBoardCallback = boardCallback;
    }

    public void setCustomDragItem(DragItem dragItem) {
        DragItem dragItem2 = dragItem != null ? dragItem : new DragItem(getContext());
        if (dragItem == null) {
            dragItem2.setSnapToTouch(true);
        }
        this.mDragItem = dragItem2;
        this.mRootLayout.removeViewAt(1);
        this.mRootLayout.addView(this.mDragItem.getDragItemView());
    }

    public void setCustomColumnDragItem(DragItem dragItem) {
        DragItem dragItem2 = dragItem != null ? dragItem : new DragItem(getContext());
        if (dragItem == null) {
            dragItem2.setSnapToTouch(false);
        }
        this.mDragColumn = dragItem2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDragColumn(DragItemRecyclerView dragItemRecyclerView, float f, float f2) {
        this.mDragColumnStartScrollX = getScrollX();
        this.mCurrentRecyclerView = dragItemRecyclerView;
        View childAt = this.mColumnLayout.getChildAt(getColumnOfList(dragItemRecyclerView));
        this.mDragColumn.startDrag(childAt, f, f2);
        this.mRootLayout.addView(this.mDragColumn.getDragItemView());
        childAt.setAlpha(0.0f);
        if (this.mBoardListener != null) {
            int columnOfList = getColumnOfList(this.mCurrentRecyclerView);
            this.mDragColumnStartPosition = columnOfList;
            this.mBoardListener.onColumnDragStarted(columnOfList);
        }
    }

    private void endDragColumn() {
        DragItem dragItem = this.mDragColumn;
        dragItem.endDrag(dragItem.getRealDragView(), new AnimatorListenerAdapter() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BoardView.this.mDragColumn.getRealDragView().setAlpha(1.0f);
                BoardView.this.mDragColumn.hide();
                BoardView.this.mRootLayout.removeView(BoardView.this.mDragColumn.getDragItemView());
                if (BoardView.this.mBoardListener != null) {
                    BoardListener boardListener = BoardView.this.mBoardListener;
                    int i = BoardView.this.mDragColumnStartPosition;
                    BoardView boardView = BoardView.this;
                    boardListener.onColumnDragEnded(i, boardView.getColumnOfList(boardView.mCurrentRecyclerView));
                }
            }
        });
    }

    private void moveColumn(int i, int i2) {
        this.mLists.add(i2, this.mLists.remove(i));
        this.mHeaders.add(i2, this.mHeaders.remove(i));
        this.mFooters.add(i2, this.mFooters.remove(i));
        final View childAt = this.mColumnLayout.getChildAt(i);
        final View childAt2 = this.mColumnLayout.getChildAt(i2);
        this.mColumnLayout.removeViewAt(i);
        this.mColumnLayout.addView(childAt, i2);
        updateBoardSpaces();
        this.mColumnLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.3
            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
                BoardView.this.mColumnLayout.removeOnLayoutChangeListener(this);
                View view2 = childAt2;
                view2.setTranslationX((view2.getTranslationX() + childAt.getLeft()) - childAt2.getLeft());
                childAt2.animate().translationX(0.0f).setDuration(350L).start();
            }
        });
        BoardListener boardListener = this.mBoardListener;
        if (boardListener != null) {
            boardListener.onColumnDragChangedPosition(i, i2);
        }
    }

    public DragItemRecyclerView insertColumn(DragItemAdapter dragItemAdapter, int i, View view, View view2, boolean z) {
        return insertColumn(dragItemAdapter, i, view, view2, z, new LinearLayoutManager(getContext()));
    }

    public DragItemRecyclerView insertColumn(DragItemAdapter dragItemAdapter, int i, View view, View view2, boolean z, RecyclerView.LayoutManager layoutManager) {
        return addColumnTo(i, ColumnProperties.Builder.newBuilder(dragItemAdapter).setHeader(view).setColumnDragView(view2).setHasFixedItemSize(z).setLayoutManager(layoutManager).build());
    }

    public void insertColumn(int i, ColumnProperties columnProperties) {
        addColumnTo(i, columnProperties);
    }

    public DragItemRecyclerView addColumn(DragItemAdapter dragItemAdapter, View view, View view2, boolean z) {
        return addColumn(dragItemAdapter, view, view2, z, new LinearLayoutManager(getContext()));
    }

    public DragItemRecyclerView addColumn(DragItemAdapter dragItemAdapter, View view, View view2, boolean z, RecyclerView.LayoutManager layoutManager) {
        return addColumnTo(getColumnCount(), ColumnProperties.Builder.newBuilder(dragItemAdapter).setHeader(view).setColumnDragView(view2).setHasFixedItemSize(z).setLayoutManager(layoutManager).build());
    }

    public void addColumn(ColumnProperties columnProperties) {
        addColumnTo(getColumnCount(), columnProperties);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.view.View, com.rosteam.gpsemulator.draglistview.DragItemRecyclerView, java.lang.Object] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    private DragItemRecyclerView addColumnTo(int i, ColumnProperties columnProperties) {
        if (i > getColumnCount()) {
            throw new IllegalArgumentException("Index is out of bounds");
        }
        final ?? r0 = (DragItemRecyclerView) LayoutInflater.from(getContext()).inflate(R.layout.drag_item_recycler_view, (ViewGroup) this, false);
        r0.setId(getColumnCount());
        r0.setHorizontalScrollBarEnabled(false);
        r0.setVerticalScrollBarEnabled(false);
        r0.setMotionEventSplittingEnabled(false);
        r0.setDragItem(this.mDragItem);
        r0.setLayoutParams(new LinearLayout.LayoutParams(-1, 0, 1.0f));
        LinearLayoutManager layoutManager = columnProperties.getLayoutManager();
        if (layoutManager == null) {
            layoutManager = new LinearLayoutManager(getContext());
        }
        r0.setLayoutManager(layoutManager);
        r0.setBackgroundColor(columnProperties.getItemsSectionBackgroundColor());
        r0.setHasFixedSize(columnProperties.hasFixedItemSize());
        List<RecyclerView.ItemDecoration> itemDecorations = columnProperties.getItemDecorations();
        for (int i2 = 0; i2 < itemDecorations.size(); i2++) {
            r0.addItemDecoration(itemDecorations.get(i2));
        }
        r0.setItemAnimator(new DefaultItemAnimator());
        r0.setDragItemListener(new DragItemRecyclerView.DragItemListener() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.4
            @Override // com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragStarted(int i3, float f, float f2) {
                BoardView boardView = BoardView.this;
                boardView.mDragStartColumn = boardView.getColumnOfList(r0);
                BoardView.this.mDragStartRow = i3;
                BoardView.this.mCurrentRecyclerView = r0;
                BoardView.this.mDragItem.setOffset(((View) BoardView.this.mCurrentRecyclerView.getParent()).getX(), BoardView.this.mCurrentRecyclerView.getY());
                if (BoardView.this.mBoardListener != null) {
                    BoardView.this.mBoardListener.onItemDragStarted(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow);
                }
                BoardView.this.invalidate();
            }

            @Override // com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragging(int i3, float f, float f2) {
                int columnOfList = BoardView.this.getColumnOfList(r0);
                boolean z = (columnOfList == BoardView.this.mLastDragColumn && i3 == BoardView.this.mLastDragRow) ? false : true;
                if (BoardView.this.mBoardListener == null || !z) {
                    return;
                }
                BoardView.this.mLastDragColumn = columnOfList;
                BoardView.this.mLastDragRow = i3;
                BoardView.this.mBoardListener.onItemChangedPosition(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow, columnOfList, i3);
            }

            @Override // com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.DragItemListener
            public void onDragEnded(int i3) {
                BoardView.this.mLastDragColumn = -1;
                BoardView.this.mLastDragRow = -1;
                if (BoardView.this.mBoardListener != null) {
                    BoardView.this.mBoardListener.onItemDragEnded(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow, BoardView.this.getColumnOfList(r0), i3);
                }
            }
        });
        r0.setDragItemCallback(new DragItemRecyclerView.DragItemCallback() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.5
            @Override // com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.DragItemCallback
            public boolean canDragItemAtPosition(int i3) {
                return BoardView.this.mBoardCallback == null || BoardView.this.mBoardCallback.canDragItemAtPosition(BoardView.this.getColumnOfList(r0), i3);
            }

            @Override // com.rosteam.gpsemulator.draglistview.DragItemRecyclerView.DragItemCallback
            public boolean canDropItemAtPosition(int i3) {
                return BoardView.this.mBoardCallback == null || BoardView.this.mBoardCallback.canDropItemAtPosition(BoardView.this.mDragStartColumn, BoardView.this.mDragStartRow, BoardView.this.getColumnOfList(r0), i3);
            }
        });
        DragItemAdapter dragItemAdapter = columnProperties.getDragItemAdapter();
        dragItemAdapter.setDragStartedListener(new DragItemAdapter.DragStartCallback() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.6
            @Override // com.rosteam.gpsemulator.draglistview.DragItemAdapter.DragStartCallback
            public boolean startDrag(View view, long j) {
                DragItemRecyclerView dragItemRecyclerView = r0;
                return dragItemRecyclerView.startDrag(view, j, BoardView.this.getRelativeViewTouchX((View) dragItemRecyclerView.getParent()), BoardView.this.getRelativeViewTouchY(r0));
            }

            @Override // com.rosteam.gpsemulator.draglistview.DragItemAdapter.DragStartCallback
            public boolean isDragging() {
                return r0.isDragging();
            }
        });
        r0.setAdapter(dragItemAdapter);
        r0.setDragEnabled(this.mDragEnabled);
        r0.setBackgroundDrawable(columnProperties.getColumnBackgroundDrawable());
        Integer columnWidth = columnProperties.getColumnWidth();
        Integer numValueOf = Integer.valueOf(columnWidth != null ? columnWidth.intValue() : this.mColumnWidth);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setBackgroundColor(columnProperties.getColumnBackgroundColor());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(numValueOf.intValue(), -1));
        View header = columnProperties.getHeader();
        if (header == null) {
            header = new View(getContext());
            header.setVisibility(8);
        }
        linearLayout.addView(header);
        this.mHeaders.add(i, header);
        linearLayout.addView(r0);
        this.mLists.add(i, (DragItemRecyclerView) r0);
        View footer = columnProperties.getFooter();
        if (footer == null) {
            footer = new View(getContext());
            footer.setVisibility(8);
        }
        linearLayout.addView(footer);
        this.mFooters.add(i, footer);
        this.mColumnLayout.addView(linearLayout, i);
        updateBoardSpaces();
        setupColumnDragListener(columnProperties.getColumnDragView(), r0);
        return r0;
    }

    private void setupColumnDragListener(View view, final DragItemRecyclerView dragItemRecyclerView) {
        if (view != null) {
            view.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.7
                @Override // android.view.View.OnLongClickListener
                public boolean onLongClick(View view2) {
                    if (BoardView.this.mBoardCallback != null && !BoardView.this.mBoardCallback.canDragColumnAtPosition(BoardView.this.getColumnOfList(dragItemRecyclerView))) {
                        return false;
                    }
                    BoardView boardView = BoardView.this;
                    boardView.startDragColumn(dragItemRecyclerView, boardView.mTouchX, BoardView.this.mTouchY);
                    return true;
                }
            });
        }
    }

    private void updateBoardSpaces() {
        int columnCount = getColumnCount();
        int i = this.mColumnSpacing / 2;
        for (int i2 = 0; i2 < columnCount; i2++) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.mColumnLayout.getChildAt(i2).getLayoutParams();
            if (i2 == 0) {
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = this.mBoardEdge;
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i;
            } else if (i2 == columnCount - 1) {
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i;
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = this.mBoardEdge;
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = i;
                ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = i;
            }
        }
    }

    private class GestureListener extends GestureDetector.SimpleOnGestureListener {
        private int mStartColumn;
        private float mStartScrollX;

        private GestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onDown(MotionEvent motionEvent) {
            this.mStartScrollX = BoardView.this.getScrollX();
            this.mStartColumn = BoardView.this.mCurrentColumn;
            return super.onDown(motionEvent);
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            int closestSnapColumn = BoardView.this.getClosestSnapColumn();
            int i = this.mStartColumn;
            boolean z = (closestSnapColumn > i && f > 0.0f) || (closestSnapColumn < i && f < 0.0f);
            if (this.mStartScrollX == BoardView.this.getScrollX()) {
                closestSnapColumn = this.mStartColumn;
            } else if (this.mStartColumn == closestSnapColumn || z) {
                closestSnapColumn = f < 0.0f ? closestSnapColumn + 1 : closestSnapColumn - 1;
            }
            if (closestSnapColumn < 0 || closestSnapColumn > BoardView.this.mLists.size() - 1) {
                closestSnapColumn = closestSnapColumn >= 0 ? BoardView.this.mLists.size() - 1 : 0;
            }
            BoardView.this.scrollToColumn(closestSnapColumn, true);
            return true;
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.rosteam.gpsemulator.draglistview.BoardView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        public int currentColumn;

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        private SavedState(Parcelable parcelable, int i) {
            super(parcelable);
            this.currentColumn = i;
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.currentColumn = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentColumn);
        }
    }
}
