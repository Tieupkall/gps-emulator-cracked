.class Lcom/rosteam/gpsemulator/TabFragment$3;
.super Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;
.source "TabFragment.java"


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

    .line 83
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(I)V
    .registers 4

    .line 86
    invoke-super {p0, p1}, Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;->onClicked(I)V

    .line 87
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6f

    .line 89
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$mlimpiarPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V

    .line 90
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$mreescribirPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V

    .line 91
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 92
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->placeholder:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    sget v0, Lcom/rosteam/gpsemulator/R$id;->textDelete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    sget v0, Lcom/rosteam/gpsemulator/R$id;->iconDelete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$3;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_6f
    return-void
.end method
