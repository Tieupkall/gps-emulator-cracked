.class Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;
.super Ljava/lang/Object;
.source "AutoScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->autoScrollPositionBy(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

.field final synthetic val$dx:I

.field final synthetic val$dy:I


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    iput p2, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;->val$dx:I

    iput p3, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;->val$dy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;->this$0:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;->val$dx:I

    iget v2, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$1;->val$dy:I

    invoke-static {v0, v1, v2}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->-$$Nest$mautoScrollPositionBy(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;II)V

    return-void
.end method
