.class Lcom/rosteam/gpsemulator/MainActivity$38;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onFavButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$txtUrl:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V
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

    .line 2779
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$38;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$38;->val$txtUrl:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 2782
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$38;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$38;->val$txtUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2783
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$38;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result p1

    const/16 v0, 0x67

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$38;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/16 v0, 0x66

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;I)V

    :cond_1f
    return-void
.end method
