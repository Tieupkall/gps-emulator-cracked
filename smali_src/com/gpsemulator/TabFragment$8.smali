.class Lcom/rosteam/gpsemulator/TabFragment$8;
.super Ljava/lang/Object;
.source "TabFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/TabFragment;->confirmAndDeleteHistory()V
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

    .line 279
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 281
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/TabFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 282
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_10
    const/16 v1, 0xc

    if-ge v0, v1, :cond_29

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "histPosition"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 286
    :cond_29
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->notifyDataSetChanged()V

    .line 289
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->placeholder:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 291
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    sget p2, Lcom/rosteam/gpsemulator/R$id;->textDelete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 292
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    sget p2, Lcom/rosteam/gpsemulator/R$id;->iconDelete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment$8;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
