.class public final Lcom/rosteam/gpsemulator/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static BoardView:[I = null

.field public static BoardView_boardEdges:I = 0x0

.field public static BoardView_columnSpacing:I = 0x1

.field public static ListSwipeItem:[I = null

.field public static ListSwipeItem_leftViewId:I = 0x0

.field public static ListSwipeItem_rightViewId:I = 0x1

.field public static ListSwipeItem_swipeViewId:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const v0, 0x7f04007f

    const v1, 0x7f040148

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/R$styleable;->BoardView:[I

    const v0, 0x7f040423

    const v1, 0x7f04049f

    const v2, 0x7f040305

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/rosteam/gpsemulator/R$styleable;->ListSwipeItem:[I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
