.class Lcom/rosteam/gpsemulator/busqueda$4$1$1;
.super Ljava/lang/Object;
.source "busqueda.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/busqueda$4$1;->onPostExecute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/busqueda$4$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 218
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    iget p1, p1, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->tipo:I

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-ne p1, p2, :cond_8c

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$text:Ljava/lang/String;

    const-string p5, " "

    const-string v0, "+"

    invoke-virtual {p2, v0, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->address:Landroid/location/Address;

    invoke-virtual {p2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->address:Landroid/location/Address;

    invoke-virtual {p2}, Landroid/location/Address;->getLongitude()D

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "+15"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 221
    const-string p3, "cadena"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->miActivity:Landroid/app/Activity;

    invoke-virtual {p1, p4, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 223
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->miActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    .line 225
    :cond_8c
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->nombre:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 227
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 228
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;->this$2:Lcom/rosteam/gpsemulator/busqueda$4$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    new-instance p2, Landroid/view/KeyEvent;

    const/16 p3, 0x42

    invoke-direct {p2, p4, p3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
