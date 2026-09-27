.class Lcom/rosteam/gpsemulator/TabFragment$MyDragItem;
.super Lcom/rosteam/gpsemulator/draglistview/DragItem;
.source "TabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/TabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyDragItem"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItem;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBindDragView(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 323
    sget v0, Lcom/rosteam/gpsemulator/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 324
    sget v1, Lcom/rosteam/gpsemulator/R$id;->edit_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 325
    sget v1, Lcom/rosteam/gpsemulator/R$id;->text:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    sget v0, Lcom/rosteam/gpsemulator/R$id;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    sget v0, Lcom/rosteam/gpsemulator/R$id;->edit_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    sget p1, Lcom/rosteam/gpsemulator/R$id;->item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
