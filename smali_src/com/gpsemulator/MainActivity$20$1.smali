.class Lcom/rosteam/gpsemulator/MainActivity$20$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$20;

.field final synthetic val$inputAltitude:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$20;Landroid/widget/EditText;)V
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

    .line 2081
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$20$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$20;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$20$1;->val$inputAltitude:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2086
    :try_start_2
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$20$1;->val$inputAltitude:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    move-exception p2

    .line 2088
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, p1

    :goto_16
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move p1, p2

    .line 2092
    :goto_1d
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$20$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$20;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$20$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$20;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    if-eqz v0, :cond_2a

    goto :goto_2e

    :cond_2a
    const v0, 0x3fcdfefc

    mul-float/2addr p1, v0

    :goto_2e
    iput p1, p2, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    .line 2093
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$20$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$20;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    sub-float/2addr p1, p2

    sget p2, Lcom/rosteam/gpsemulator/MainActivity;->VEL_MAX_KM:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 2094
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$20$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$20;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity$20;->val$miSpeed:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
