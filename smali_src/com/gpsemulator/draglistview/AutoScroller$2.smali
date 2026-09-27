.class Lcom/rosteam/gpsemulator/draglistview/AutoScroller$2;
.super Ljava/lang/Object;
.source "AutoScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->autoScrollColumnBy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

.field final synthetic val$columns:I


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
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

    .line 125
    iput-object p1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    iput p2, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$2;->val$columns:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$2;->this$0:Lcom/rosteam/gpsemulator/draglistview/AutoScroller;

    iget v1, p0, Lcom/rosteam/gpsemulator/draglistview/AutoScroller$2;->val$columns:I

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/draglistview/AutoScroller;->-$$Nest$mautoScrollColumnBy(Lcom/rosteam/gpsemulator/draglistview/AutoScroller;I)V

    return-void
.end method
