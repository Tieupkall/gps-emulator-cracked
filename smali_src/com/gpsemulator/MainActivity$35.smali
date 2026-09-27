.class Lcom/rosteam/gpsemulator/MainActivity$35;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 2645
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->val$txtUrl:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 2647
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->val$txtUrl:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2648
    const-string p2, "+"

    const-string v0, " "

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2649
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iput-object p1, p2, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    .line 2650
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_2f

    .line 2651
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_3a

    .line 2653
    :cond_2f
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->favorites:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2655
    :goto_3a
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->favsToPrefs()V

    .line 2656
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstopButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2657
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2658
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$35;->val$txtUrl:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
