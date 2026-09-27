.class public Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;
.super Ljava/lang/Object;
.source "ColumnProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/draglistview/ColumnProperties$Builder;
    }
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

.field private mItemDecorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsSectionBackgroundColor:I

.field private mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method private constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;ZII",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mDragItemAdapter:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    .line 66
    iput-object p2, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 67
    iput-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mItemDecorations:Ljava/util/List;

    .line 68
    iput-boolean p4, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mHasFixedItemSize:Z

    .line 69
    iput p5, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnBackgroundColor:I

    .line 70
    iput p6, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mItemsSectionBackgroundColor:I

    .line 71
    iput-object p8, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mHeader:Landroid/view/View;

    .line 72
    iput-object p9, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mFooter:Landroid/view/View;

    .line 73
    iput-object p7, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnDragView:Landroid/view/View;

    .line 74
    iput-object p10, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnWidth:Ljava/lang/Integer;

    .line 75
    iput-object p11, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcom/rosteam/gpsemulator/draglistview/ColumnProperties-IA;)V
    .registers 13

    invoke-direct/range {p0 .. p11}, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;-><init>(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Ljava/util/List;ZIILandroid/view/View;Landroid/view/View;Landroid/view/View;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method getColumnBackgroundColor()I
    .registers 2

    .line 95
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnBackgroundColor:I

    return v0
.end method

.method getColumnBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getColumnDragView()Landroid/view/View;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnDragView:Landroid/view/View;

    return-object v0
.end method

.method getColumnWidth()Ljava/lang/Integer;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mColumnWidth:Ljava/lang/Integer;

    return-object v0
.end method

.method getDragItemAdapter()Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mDragItemAdapter:Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    return-object v0
.end method

.method getFooter()Landroid/view/View;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mFooter:Landroid/view/View;

    return-object v0
.end method

.method getHeader()Landroid/view/View;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method getItemDecorations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mItemDecorations:Ljava/util/List;

    return-object v0
.end method

.method getItemsSectionBackgroundColor()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mItemsSectionBackgroundColor:I

    return v0
.end method

.method getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method hasFixedItemSize()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/draglistview/ColumnProperties;->mHasFixedItemSize:Z

    return v0
.end method
