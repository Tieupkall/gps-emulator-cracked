package com.rosteam.gpsemulator.draglistview;

import android.content.Context;
import android.os.Handler;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
class AutoScroller {
    private static final int AUTO_SCROLL_UPDATE_DELAY = 12;
    private static final int COLUMN_SCROLL_UPDATE_DELAY = 1000;
    private static final int SCROLL_SPEED_DP = 8;
    private boolean mIsAutoScrolling;
    private long mLastScrollTime;
    private AutoScrollListener mListener;
    private int mScrollSpeed;
    private Handler mHandler = new Handler();
    private AutoScrollMode mAutoScrollMode = AutoScrollMode.POSITION;

    interface AutoScrollListener {
        void onAutoScrollColumnBy(int i);

        void onAutoScrollPositionBy(int i, int i2);
    }

    enum AutoScrollMode {
        POSITION,
        COLUMN
    }

    enum ScrollDirection {
        UP,
        DOWN,
        LEFT,
        RIGHT
    }

    AutoScroller(Context context, AutoScrollListener autoScrollListener) {
        this.mListener = autoScrollListener;
        this.mScrollSpeed = (int) (context.getResources().getDisplayMetrics().density * 8.0f);
    }

    void setAutoScrollMode(AutoScrollMode autoScrollMode) {
        this.mAutoScrollMode = autoScrollMode;
    }

    boolean isAutoScrolling() {
        return this.mIsAutoScrolling;
    }

    void stopAutoScroll() {
        this.mIsAutoScrolling = false;
    }

    void startAutoScroll(ScrollDirection scrollDirection) {
        int iOrdinal = scrollDirection.ordinal();
        if (iOrdinal == 0) {
            startAutoScrollPositionBy(0, this.mScrollSpeed);
            return;
        }
        if (iOrdinal == 1) {
            startAutoScrollPositionBy(0, -this.mScrollSpeed);
            return;
        }
        if (iOrdinal == 2) {
            if (this.mAutoScrollMode == AutoScrollMode.POSITION) {
                startAutoScrollPositionBy(this.mScrollSpeed, 0);
                return;
            } else {
                startAutoScrollColumnBy(1);
                return;
            }
        }
        if (iOrdinal != 3) {
            return;
        }
        if (this.mAutoScrollMode == AutoScrollMode.POSITION) {
            startAutoScrollPositionBy(-this.mScrollSpeed, 0);
        } else {
            startAutoScrollColumnBy(-1);
        }
    }

    private void startAutoScrollPositionBy(int i, int i2) {
        if (this.mIsAutoScrolling) {
            return;
        }
        this.mIsAutoScrolling = true;
        autoScrollPositionBy(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoScrollPositionBy(final int i, final int i2) {
        if (this.mIsAutoScrolling) {
            this.mListener.onAutoScrollPositionBy(i, i2);
            this.mHandler.postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.draglistview.AutoScroller.1
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.autoScrollPositionBy(i, i2);
                }
            }, 12L);
        }
    }

    private void startAutoScrollColumnBy(int i) {
        if (this.mIsAutoScrolling) {
            return;
        }
        this.mIsAutoScrolling = true;
        autoScrollColumnBy(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoScrollColumnBy(final int i) {
        if (this.mIsAutoScrolling) {
            if (System.currentTimeMillis() - this.mLastScrollTime > 1000) {
                this.mListener.onAutoScrollColumnBy(i);
                this.mLastScrollTime = System.currentTimeMillis();
            } else {
                this.mListener.onAutoScrollColumnBy(0);
            }
            this.mHandler.postDelayed(new Runnable() { // from class: com.rosteam.gpsemulator.draglistview.AutoScroller.2
                @Override // java.lang.Runnable
                public void run() {
                    AutoScroller.this.autoScrollColumnBy(i);
                }
            }, 12L);
        }
    }
}
