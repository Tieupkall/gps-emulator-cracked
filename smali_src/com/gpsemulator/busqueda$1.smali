.class Lcom/rosteam/gpsemulator/busqueda$1;
.super Ljava/lang/Object;
.source "busqueda.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/busqueda;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/busqueda;

.field final synthetic val$searchText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;)V
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

    .line 87
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$1;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$1;->val$searchText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 90
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$1;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    iget p1, p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->tipo:I

    if-nez p1, :cond_3e

    .line 92
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$1;->val$searchText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$1;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->nombre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$1;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 94
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$1;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 95
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$1;->val$searchText:Landroid/widget/EditText;

    new-instance p2, Landroid/view/KeyEvent;

    const/4 p3, 0x0

    const/16 p4, 0x42

    invoke-direct {p2, p3, p4}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_3e
    return-void
.end method
