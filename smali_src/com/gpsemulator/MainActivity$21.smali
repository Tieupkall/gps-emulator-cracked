.class Lcom/rosteam/gpsemulator/MainActivity$21;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onStartContinuousButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$miSpeed:Landroid/widget/SeekBar;

.field final synthetic val$miSpeedText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
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

    .line 2103
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->val$miSpeed:Landroid/widget/SeekBar;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->val$miSpeedText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6

    .line 2106
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->seekTouchTracking:Z

    const p2, 0x3f1f122f

    if-eqz p1, :cond_5d

    .line 2107
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->val$miSpeed:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    sget v0, Lcom/rosteam/gpsemulator/MainActivity;->VEL_MAX_KM:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p3, v0

    add-int/lit8 p3, p3, 0x64

    div-int/lit8 p3, p3, 0x64

    int-to-float p3, p3

    iput p3, p1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    .line 2108
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->val$miSpeedText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean p3, p3, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    if-eqz p3, :cond_3a

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget p3, Lcom/rosteam/gpsemulator/R$string;->speed:I

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4f

    :cond_3a
    iget-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->speed_mph:I

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_4f
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2109
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    const p3, 0x40666666    # 3.6f

    div-float/2addr p2, p3

    iput p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    return-void

    .line 2113
    :cond_5d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->val$miSpeedText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean p3, p3, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    if-eqz p3, :cond_7a

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget p3, Lcom/rosteam/gpsemulator/R$string;->speed:I

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_8f

    :cond_7a
    iget-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->speed_mph:I

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    mul-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, v0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_8f
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 2120
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->seekTouchTracking:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 2125
    const-string p1, "velocidadSEEK"

    const-string v0, "onStopTrackingTouch"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$21;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->seekTouchTracking:Z

    return-void
.end method
