.class Lcom/rosteam/gpsemulator/busqueda$6$1;
.super Ljava/lang/Object;
.source "busqueda.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/busqueda$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/busqueda$6;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/busqueda$6;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$6$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$6$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$6;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$6;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/busqueda$6$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$6;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/busqueda$6;->val$searchText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
