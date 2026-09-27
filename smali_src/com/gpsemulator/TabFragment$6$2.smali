.class Lcom/rosteam/gpsemulator/TabFragment$6$2;
.super Ljava/lang/Object;
.source "TabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/TabFragment$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/TabFragment$6;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/TabFragment$6;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 176
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    sget v0, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    iput v0, p1, Lcom/rosteam/gpsemulator/TabFragment;->modo:I

    .line 177
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->placeholder:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :cond_20
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget v1, v1, Lcom/rosteam/gpsemulator/TabFragment;->modo:I

    invoke-virtual {p1, v1}, Lcom/rosteam/gpsemulator/ItemAdapter;->setModo(I)V

    .line 179
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->notifyDataSetChanged()V

    .line 180
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6$2;->this$1:Lcom/rosteam/gpsemulator/TabFragment$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->dataPasser:Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;

    invoke-interface {p1, v0}, Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;->onDataPass(Z)V

    .line 181
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/TabFragment$6$2$1;-><init>(Lcom/rosteam/gpsemulator/TabFragment$6$2;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
