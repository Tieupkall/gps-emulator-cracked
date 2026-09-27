.class public final enum Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;
.super Ljava/lang/Enum;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeInStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

.field public static final enum APPEAR:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

.field public static final enum SLIDE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;


# direct methods
.method private static synthetic $values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;
    .registers 2

    .line 45
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->APPEAR:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->SLIDE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    filled-new-array {v0, v1}, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 46
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    const-string v1, "APPEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->APPEAR:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    const-string v1, "SLIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->SLIDE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    .line 45
    invoke-static {}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->$values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 45
    const-class v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    return-object p0
.end method

.method public static values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;
    .registers 1

    .line 45
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    invoke-virtual {v0}, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeInStyle;

    return-object v0
.end method
