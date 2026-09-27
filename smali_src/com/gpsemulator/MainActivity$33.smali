.class Lcom/rosteam/gpsemulator/MainActivity$33;
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

    .line 2669
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$33;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$33;->val$txtUrl:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .line 2672
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$33;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 2673
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$33;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2675
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$33;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$33;->val$txtUrl:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
