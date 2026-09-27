.class final enum Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;
.super Ljava/lang/Enum;
.source "AutoScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/AutoScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScrollDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

.field public static final enum DOWN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

.field public static final enum LEFT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

.field public static final enum RIGHT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

.field public static final enum UP:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;


# direct methods
.method private static synthetic $values()[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;
    .registers 4

    .line 27
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->UP:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    sget-object v1, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->DOWN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    sget-object v2, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->LEFT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    sget-object v3, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->RIGHT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    filled-new-array {v0, v1, v2, v3}, [Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 28
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->UP:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    const-string v1, "DOWN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->DOWN:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->LEFT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    const-string v1, "RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->RIGHT:Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    .line 27
    invoke-static {}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->$values()[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 27
    const-class v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    return-object p0
.end method

.method public static values()[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;
    .registers 1

    .line 27
    sget-object v0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->$VALUES:[Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    invoke-virtual {v0}, [Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rosteam/gpsemulator/draglistview/AutoScroller$ScrollDirection;

    return-object v0
.end method
