.class public Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputFilterMinMax"
.end annotation


# instance fields
.field private max:I

.field private min:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    iput p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;->min:I

    .line 1124
    iput p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;->max:I

    return-void
.end method

.method private isInRange(IIF)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p2, p1, :cond_10

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_f

    int-to-float p1, p2

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_f

    return v0

    :cond_f
    return v1

    :cond_10
    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-ltz p2, :cond_1b

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_1b

    return v0

    :cond_1b
    return v1
.end method

.method private lessThan3Decimals(F)Z
    .registers 4

    .line 1143
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1144
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x2

    if-gt p1, v1, :cond_19

    return v0

    :cond_19
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 7

    .line 1130
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p3, 0x0

    invoke-interface {p4, p3, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p2

    invoke-interface {p4, p6, p2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 1131
    iget p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;->min:I

    iget p3, p0, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;->max:I

    invoke-direct {p0, p2, p3, p1}, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;->isInRange(IIF)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 1132
    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;->lessThan3Decimals(F)Z

    move-result p1
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_38} :catch_3c

    if-eqz p1, :cond_3c

    const/4 p1, 0x0

    return-object p1

    .line 1134
    :catch_3c
    :cond_3c
    const-string p1, ""

    return-object p1
.end method
