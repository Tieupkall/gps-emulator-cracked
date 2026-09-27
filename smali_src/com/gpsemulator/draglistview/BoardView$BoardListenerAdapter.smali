.class public abstract Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListenerAdapter;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/BoardView$BoardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BoardListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColumnDragChangedPosition(II)V
    .registers 3

    return-void
.end method

.method public onColumnDragEnded(II)V
    .registers 3

    return-void
.end method

.method public onColumnDragStarted(I)V
    .registers 2

    return-void
.end method

.method public onFocusedColumnChanged(II)V
    .registers 3

    return-void
.end method

.method public onItemChangedColumn(II)V
    .registers 3

    return-void
.end method

.method public onItemChangedPosition(IIII)V
    .registers 5

    return-void
.end method

.method public onItemDragEnded(IIII)V
    .registers 5

    return-void
.end method

.method public onItemDragStarted(II)V
    .registers 3

    return-void
.end method
