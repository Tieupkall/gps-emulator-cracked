.class Lcom/rosteam/gpsemulator/TabFragment$6$2$1;
.super Ljava/lang/Object;
.source "TabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/TabFragment$6$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/TabFragment$6$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;->this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;->this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;->this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$mlimpiarPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V

    .line 185
    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;->this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;->this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$mreescribirPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V

    .line 186
    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;->this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6;->val$editLyt:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;->this$2:Lcom/rosteam/gpsemulator/TabFragment$6$2;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/TabFragment$6;->val$confirmLyt:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
