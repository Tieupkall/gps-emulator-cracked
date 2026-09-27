.class final enum Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;
.super Ljava/lang/Enum;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SwipeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

.field public static final enum ANIMATING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

.field public static final enum IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

.field public static final enum SWIPING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;


# direct methods
.method private static synthetic $values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;
    .registers 3

    .line 35
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->SWIPING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    sget-object v2, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->ANIMATING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    filled-new-array {v0, v1, v2}, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->IDLE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 37
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    const-string v1, "SWIPING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->SWIPING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 38
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    const-string v1, "ANIMATING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->ANIMATING:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    .line 35
    invoke-static {}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->$values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    return-object p0
.end method

.method public static values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;
    .registers 1

    .line 35
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    invoke-virtual {v0}, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeState;

    return-object v0
.end method
