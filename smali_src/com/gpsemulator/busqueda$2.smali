.class Lcom/rosteam/gpsemulator/busqueda$2;
.super Ljava/lang/Object;
.source "busqueda.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$searchText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V
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

    .line 104
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$2;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$2;->val$searchText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/busqueda$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 107
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$2;->val$searchText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$2;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 109
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$2;->val$searchText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
