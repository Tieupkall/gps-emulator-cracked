.class public Lcom/rosteam/gpsemulator/miBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "miBottomSheetDialog.java"


# instance fields
.field mBanner:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 24
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "llega banner "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miBottomSheetDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput-object p1, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->mBanner:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 3

    .line 35
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/miBottomSheetDialog$1;-><init>(Lcom/rosteam/gpsemulator/miBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 58
    new-instance v0, Lcom/rosteam/gpsemulator/miBottomSheetDialog$2;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/miBottomSheetDialog$2;-><init>(Lcom/rosteam/gpsemulator/miBottomSheetDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 73
    sget p3, Lcom/rosteam/gpsemulator/R$layout;->bottom_sheet_dialog:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    sget p2, Lcom/rosteam/gpsemulator/R$id;->exitbannercontainer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 77
    iget-object p3, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->mBanner:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    if-eqz p3, :cond_24

    iget-object p3, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->mBanner:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->mBanner:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    :cond_24
    iget-object p3, p0, Lcom/rosteam/gpsemulator/miBottomSheetDialog;->mBanner:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 81
    sget p2, Lcom/rosteam/gpsemulator/R$id;->button_no:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/rosteam/gpsemulator/miBottomSheetDialog$3;

    invoke-direct {p3, p0}, Lcom/rosteam/gpsemulator/miBottomSheetDialog$3;-><init>(Lcom/rosteam/gpsemulator/miBottomSheetDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget p2, Lcom/rosteam/gpsemulator/R$id;->button_yes:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/rosteam/gpsemulator/miBottomSheetDialog$4;

    invoke-direct {p3, p0}, Lcom/rosteam/gpsemulator/miBottomSheetDialog$4;-><init>(Lcom/rosteam/gpsemulator/miBottomSheetDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget p2, Lcom/rosteam/gpsemulator/R$id;->exitText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/rosteam/gpsemulator/miBottomSheetDialog$5;

    invoke-direct {p3, p0}, Lcom/rosteam/gpsemulator/miBottomSheetDialog$5;-><init>(Lcom/rosteam/gpsemulator/miBottomSheetDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onDestroyView()V
    .registers 1

    .line 107
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onDestroyView()V

    return-void
.end method
