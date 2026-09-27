package com.rosteam.gpsemulator.draglistview;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: c:\Users\LEGION\OneDrive\Desktop\ALL TOOL\New folder\classes5.dex */
public class ColumnProperties {
    private int mColumnBackgroundColor;
    private Drawable mColumnBackgroundDrawable;
    private View mColumnDragView;
    private Integer mColumnWidth;
    private DragItemAdapter mDragItemAdapter;
    private View mFooter;
    private boolean mHasFixedItemSize;
    private View mHeader;
    private List<RecyclerView.ItemDecoration> mItemDecorations;
    private int mItemsSectionBackgroundColor;
    private RecyclerView.LayoutManager mLayoutManager;

    private ColumnProperties(DragItemAdapter dragItemAdapter, RecyclerView.LayoutManager layoutManager, List<RecyclerView.ItemDecoration> list, boolean z, int i, int i2, View view, View view2, View view3, Integer num, Drawable drawable) {
        this.mDragItemAdapter = dragItemAdapter;
        this.mLayoutManager = layoutManager;
        this.mItemDecorations = list;
        this.mHasFixedItemSize = z;
        this.mColumnBackgroundColor = i;
        this.mItemsSectionBackgroundColor = i2;
        this.mHeader = view2;
        this.mFooter = view3;
        this.mColumnDragView = view;
        this.mColumnWidth = num;
        this.mColumnBackgroundDrawable = drawable;
    }

    DragItemAdapter getDragItemAdapter() {
        return this.mDragItemAdapter;
    }

    RecyclerView.LayoutManager getLayoutManager() {
        return this.mLayoutManager;
    }

    List<RecyclerView.ItemDecoration> getItemDecorations() {
        return this.mItemDecorations;
    }

    boolean hasFixedItemSize() {
        return this.mHasFixedItemSize;
    }

    int getColumnBackgroundColor() {
        return this.mColumnBackgroundColor;
    }

    int getItemsSectionBackgroundColor() {
        return this.mItemsSectionBackgroundColor;
    }

    View getHeader() {
        return this.mHeader;
    }

    View getFooter() {
        return this.mFooter;
    }

    View getColumnDragView() {
        return this.mColumnDragView;
    }

    Integer getColumnWidth() {
        return this.mColumnWidth;
    }

    Drawable getColumnBackgroundDrawable() {
        return this.mColumnBackgroundDrawable;
    }

    public static class Builder {
        private DragItemAdapter mDragItemAdapter;
        private RecyclerView.LayoutManager mLayoutManager = null;
        private ArrayList<RecyclerView.ItemDecoration> mItemDecoration = new ArrayList<>();
        private boolean mHasFixedItemSize = false;
        private int mColumnBackgroundColor = 0;
        private int mItemsSectionBackgroundColor = 0;
        private View mHeader = null;
        private View mFooter = null;
        private View mColumnDragView = null;
        private Integer mColumnWidth = null;
        private Drawable mColumnBackgroundDrawable = null;

        private Builder(DragItemAdapter dragItemAdapter) {
            this.mDragItemAdapter = dragItemAdapter;
        }

        public static Builder newBuilder(DragItemAdapter dragItemAdapter) {
            return new Builder(dragItemAdapter);
        }

        public Builder setLayoutManager(RecyclerView.LayoutManager layoutManager) {
            this.mLayoutManager = layoutManager;
            return this;
        }

        public Builder addItemDecorations(RecyclerView.ItemDecoration... itemDecorationArr) {
            Collections.addAll(this.mItemDecoration, itemDecorationArr);
            return this;
        }

        public Builder setHasFixedItemSize(boolean z) {
            this.mHasFixedItemSize = z;
            return this;
        }

        public Builder setColumnBackgroundColor(int i) {
            this.mColumnBackgroundColor = i;
            return this;
        }

        public Builder setItemsSectionBackgroundColor(int i) {
            this.mItemsSectionBackgroundColor = i;
            return this;
        }

        public Builder setHeader(View view) {
            this.mHeader = view;
            return this;
        }

        public Builder setFooter(View view) {
            this.mFooter = view;
            return this;
        }

        public Builder setColumnDragView(View view) {
            this.mColumnDragView = view;
            return this;
        }

        public Builder setColumnWidth(Integer num) {
            this.mColumnWidth = num;
            return this;
        }

        public Builder setColumnBackgroundDrawable(Drawable drawable) {
            this.mColumnBackgroundDrawable = drawable;
            return this;
        }

        public ColumnProperties build() {
            return new ColumnProperties(this.mDragItemAdapter, this.mLayoutManager, this.mItemDecoration, this.mHasFixedItemSize, this.mColumnBackgroundColor, this.mItemsSectionBackgroundColor, this.mColumnDragView, this.mHeader, this.mFooter, this.mColumnWidth, this.mColumnBackgroundDrawable);
        }
    }
}
