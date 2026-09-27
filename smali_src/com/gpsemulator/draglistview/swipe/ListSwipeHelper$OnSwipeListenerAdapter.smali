.class public abstract Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListenerAdapter;
.super Ljava/lang/Object;
.source "ListSwipeHelper.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper$OnSwipeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnSwipeListenerAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSwipeEnded(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;)V
    .registers 3

    return-void
.end method

.method public onItemSwipeStarted(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;)V
    .registers 2

    return-void
.end method

.method public onItemSwiping(Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;F)V
    .registers 3

    return-void
.end method
