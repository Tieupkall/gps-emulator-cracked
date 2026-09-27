.class Lcom/rosteam/gpsemulator/MainActivity$20;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/TextView;Landroid/widget/SeekBar;)V
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

    .line 2057
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->val$miSpeedText:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->val$miSpeed:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 2060
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$layout;->altitude_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2061
    sget v0, Lcom/rosteam/gpsemulator/R$id;->inputAltitude:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x2002

    .line 2062
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 2064
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    const v2, 0x3f1f122f

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    goto :goto_2d

    :cond_28
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    mul-float/2addr v1, v2

    :goto_2d
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    .line 2067
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "truncated: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "editedSpeed"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 2071
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 2072
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 2073
    new-instance v3, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v4, v4, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    if-eqz v4, :cond_75

    sget v4, Lcom/rosteam/gpsemulator/MainActivity;->VEL_MAX_KM:I

    goto :goto_77

    :cond_75
    sget v4, Lcom/rosteam/gpsemulator/MainActivity;->VEL_MAX_MILES:I

    :goto_77
    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;-><init>(II)V

    aput-object v3, v1, v5

    .line 2075
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 2076
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->val$miSpeedText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v3, v3, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    if-eqz v3, :cond_9d

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v3, Lcom/rosteam/gpsemulator/R$string;->speed:I

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v4, v4, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b2

    :cond_9d
    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v4, Lcom/rosteam/gpsemulator/R$string;->speed_mph:I

    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v5, v5, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_b2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2078
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    sget v3, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2079
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v2, v2, Lcom/rosteam/gpsemulator/MainActivity;->metric:Z

    if-eqz v2, :cond_cb

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v3, Lcom/rosteam/gpsemulator/R$string;->speed_title:I

    goto :goto_cf

    :cond_cb
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$20;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v3, Lcom/rosteam/gpsemulator/R$string;->speed_title_mph:I

    :goto_cf
    invoke-virtual {v2, v3}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 2080
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$20$1;

    invoke-direct {v1, p0, v0}, Lcom/rosteam/gpsemulator/MainActivity$20$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$20;Landroid/widget/EditText;)V

    .line 2081
    const-string v0, "Ok"

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 2097
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method
