.class Lcom/rosteam/gpsemulator/miBottomSheetDialog$3;
.super Ljava/lang/Object;
.source "miBottomSheetDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/miBottomSheetDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/miBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/miBottomSheetDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog$3;->this$0:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 84
    iget-object p1, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog$3;->this$0:Lcom/rosteam/gpsemulator/miBottomSheetDialog;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->dismiss()V

    return-void
.end method
