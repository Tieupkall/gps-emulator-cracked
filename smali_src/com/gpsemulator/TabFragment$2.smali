.class Lcom/rosteam/gpsemulator/TabFragment$2;
.super Ljava/lang/Object;
.source "TabFragment.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/TabFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$2;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/rosteam/gpsemulator/utils/RegUbic;)V
    .registers 6

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$2;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "cadena"

    if-ne v1, v2, :cond_16

    .line 72
    iget-object p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->prefName:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1b

    .line 74
    :cond_16
    iget-object p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->cadenaPref:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :goto_1b
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$2;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/TabFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$2;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$2;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/TabFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
