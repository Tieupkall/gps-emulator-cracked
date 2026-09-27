.class Lcom/rosteam/gpsemulator/TabFragment$6;
.super Ljava/lang/Object;
.source "TabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/TabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/TabFragment;

.field final synthetic val$confirmLyt:Landroid/view/View;

.field final synthetic val$editLyt:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/TabFragment;Landroid/view/View;Landroid/view/View;)V
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

    .line 159
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->val$editLyt:Landroid/view/View;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->val$confirmLyt:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 162
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    sget v0, Lcom/rosteam/gpsemulator/TabFragment;->EDITAR:I

    iput v0, p1, Lcom/rosteam/gpsemulator/TabFragment;->modo:I

    .line 163
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget v0, v0, Lcom/rosteam/gpsemulator/TabFragment;->modo:I

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->setModo(I)V

    .line 164
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->notifyDataSetChanged()V

    .line 165
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->dataPasser:Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;->onDataPass(Z)V

    .line 166
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/rosteam/gpsemulator/TabFragment$6$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/TabFragment$6$1;-><init>(Lcom/rosteam/gpsemulator/TabFragment$6;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$6;->val$confirmLyt:Landroid/view/View;

    new-instance v0, Lcom/rosteam/gpsemulator/TabFragment$6$2;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/TabFragment$6$2;-><init>(Lcom/rosteam/gpsemulator/TabFragment$6;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
