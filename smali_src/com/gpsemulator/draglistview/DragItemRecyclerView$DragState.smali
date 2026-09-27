.class final enum Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;
.super Ljava/lang/Enum;
.source "DragItemRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DragState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

.field public static final enum DRAGGING:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

.field public static final enum DRAG_ENDED:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

.field public static final enum DRAG_STARTED:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;


# direct methods
.method private static synthetic $values()[Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;
    .registers 3

    .line 48
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->DRAG_STARTED:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->DRAGGING:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    sget-object v2, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    filled-new-array {v0, v1, v2}, [Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    const-string v1, "DRAG_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->DRAG_STARTED:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    const-string v1, "DRAGGING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->DRAGGING:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    const-string v1, "DRAG_ENDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->DRAG_ENDED:Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    .line 48
    invoke-static {}, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->$values()[Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 48
    const-class v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    return-object p0
.end method

.method public static values()[Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;
    .registers 1

    .line 48
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    invoke-virtual {v0}, [Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rosteam/gpsemulator/draglistview/DragItemRecyclerView$DragState;

    return-object v0
.end method
