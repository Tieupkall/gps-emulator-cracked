.class Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DragItemRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method private drawDecoration(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V
    .registers 10

    .line 105
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getDropTargetId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_60

    if-nez p3, :cond_1b

    goto :goto_60

    :cond_1b
    const/4 v0, 0x0

    .line 109
    :goto_1c
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 110
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-virtual {v2, v1}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5d

    .line 112
    iget-object v3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getItemId(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {v4}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->getDropTargetId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5d

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p3, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_60
    :goto_60
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 95
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmDropTargetBackgroundDrawable(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->drawDecoration(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 101
    iget-object p3, p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;

    invoke-static {p3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;->-$$Nest$fgetmDropTargetForegroundDrawable(Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$1;->drawDecoration(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
