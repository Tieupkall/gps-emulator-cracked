.class Lcom/rosteam/gpsemulator/miBottomSheetDialog$1$1;
.super Ljava/lang/Object;
.source "miBottomSheetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog$1$1;->this$1:Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p3, 0x4

    if-ne p2, p3, :cond_13

    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 49
    iget-object p1, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog$1$1;->this$1:Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;->this$0:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
