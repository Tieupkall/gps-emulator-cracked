.class public Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
.super Ljava/lang/Object;
.source "ColumnProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mColumnBackgroundColor:I

.field private mColumnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mColumnDragView:Landroid/view/View;

.field private mColumnWidth:Ljava/lang/Integer;

.field private mDragItemAdapter:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

.field private mFooter:Landroid/view/View;

.field private mHasFixedItemSize:Z

.field private mHeader:Landroid/view/View;

.field private mItemDecoration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSectionBackgroundColor:I

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method private constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;)V
    .registers 4

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mItemDecoration:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mHasFixedItemSize:Z

    .line 131
    iput v1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnBackgroundColor:I

    .line 132
    iput v1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mItemsSectionBackgroundColor:I

    .line 133
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mHeader:Landroid/view/View;

    .line 134
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mFooter:Landroid/view/View;

    .line 135
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnDragView:Landroid/view/View;

    .line 136
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnWidth:Ljava/lang/Integer;

    .line 137
    iput-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 140
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mDragItemAdapter:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    return-void
.end method

.method public static newBuilder(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 151
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;)V

    return-object v0
.end method


# virtual methods
.method public varargs addItemDecorations([Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mItemDecoration:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;
    .registers 14

    .line 285
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mDragItemAdapter:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mItemDecoration:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mHasFixedItemSize:Z

    iget v5, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnBackgroundColor:I

    iget v6, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mItemsSectionBackgroundColor:I

    iget-object v7, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnDragView:Landroid/view/View;

    iget-object v8, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mHeader:Landroid/view/View;

    iget-object v9, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mFooter:Landroid/view/View;

    iget-object v10, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnWidth:Ljava/lang/Integer;

    iget-object v11, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcom/rosteam/gpsemulator/draglistview/ColumnProperties-IA;)V

    return-object v0
.end method

.method public setColumnBackgroundColor(I)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 203
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnBackgroundColor:I

    return-object p0
.end method

.method public setColumnBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 275
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setColumnDragView(Landroid/view/View;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnDragView:Landroid/view/View;

    return-object p0
.end method

.method public setColumnWidth(Ljava/lang/Integer;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mColumnWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFooter(Landroid/view/View;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mFooter:Landroid/view/View;

    return-object p0
.end method

.method public setHasFixedItemSize(Z)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 191
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mHasFixedItemSize:Z

    return-object p0
.end method

.method public setHeader(Landroid/view/View;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 227
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method public setItemsSectionBackgroundColor(I)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 215
    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mItemsSectionBackgroundColor:I

    return-object p0
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method
