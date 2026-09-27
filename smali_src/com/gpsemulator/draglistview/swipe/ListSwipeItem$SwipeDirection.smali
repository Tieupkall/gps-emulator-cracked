.class public final enum Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;
.super Ljava/lang/Enum;
.source "ListSwipeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwipeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum LEFT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum LEFT_AND_RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

.field public static final enum RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;


# direct methods
.method private static synthetic $values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;
    .registers 4

    .line 41
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    sget-object v2, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT_AND_RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    sget-object v3, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v1, "RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v1, "LEFT_AND_RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->LEFT_AND_RIGHT:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->NONE:Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    .line 41
    invoke-static {}, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->$values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    const-class v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object p0
.end method

.method public static values()[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;
    .registers 1

    .line 41
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    invoke-virtual {v0}, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rosteam/gpsemulator/draglistview/swipe/ListSwipeItem$SwipeDirection;

    return-object v0
.end method
