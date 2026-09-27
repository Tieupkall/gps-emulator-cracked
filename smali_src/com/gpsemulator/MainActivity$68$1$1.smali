.class Lcom/rosteam/gpsemulator/MainActivity$68$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$68$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$68$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4576
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAdComplete()V
    .registers 2

    .line 4579
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetAdBlock(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 4580
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$68$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$68$1;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$68;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$68;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
