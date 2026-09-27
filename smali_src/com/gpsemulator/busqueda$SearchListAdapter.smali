.class Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "busqueda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/busqueda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/rosteam/gpsemulator/busqueda$ItemSearch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/busqueda;


# direct methods
.method public constructor <init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/busqueda$ItemSearch;",
            ">;)V"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    const/4 p1, 0x0

    .line 297
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 302
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    const/4 v0, 0x0

    if-nez p2, :cond_15

    .line 304
    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/rosteam/gpsemulator/R$layout;->search_row:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 306
    :cond_15
    sget p3, Lcom/rosteam/gpsemulator/R$id;->pin_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 307
    sget v1, Lcom/rosteam/gpsemulator/R$id;->icon_pinned_row:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 308
    sget v2, Lcom/rosteam/gpsemulator/R$id;->icon_action:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 310
    iget v3, p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->tipo:I

    if-nez v3, :cond_40

    .line 311
    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->nombre:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    sget p1, Lcom/rosteam/gpsemulator/R$drawable;->ic_history:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x4

    .line 313
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2

    .line 315
    :cond_40
    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->address:Landroid/location/Address;

    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    sget p1, Lcom/rosteam/gpsemulator/R$drawable;->pinned_location:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method
