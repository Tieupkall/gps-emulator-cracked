.class final enum Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;
.super Ljava/lang/Enum;
.source "AutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/AutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AutoScrollMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

.field public static final enum COLUMN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

.field public static final enum POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;


# direct methods
.method private static synthetic $values()[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;
    .registers 2

    .line 23
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    filled-new-array {v0, v1}, [Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    const-string v1, "POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->POSITION:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    const-string v1, "COLUMN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->COLUMN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    .line 23
    invoke-static {}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->$values()[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    const-class v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    return-object p0
.end method

.method public static values()[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;
    .registers 1

    .line 23
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    invoke-virtual {v0}, [Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rosteam/gpsemulator/draglistview/AutoScroller$AutoScrollMode;

    return-object v0
.end method
