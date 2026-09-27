.class Lcom/rosteam/gpsemulator/SettingsFragment$9;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

.field final synthetic val$miSeekAccuracy:Landroidx/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment;Landroidx/preference/SeekBarPreference;)V
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

    .line 326
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9;->val$miSeekAccuracy:Landroidx/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 7

    .line 329
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$layout;->altitude_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 330
    sget v0, Lcom/rosteam/gpsemulator/R$id;->inputAltitude:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x2002

    .line 331
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "accuracy2"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 334
    new-array v1, v1, [Landroid/text/InputFilter;

    .line 335
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 336
    new-instance v2, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;

    const/16 v4, 0x12c

    invoke-direct {v2, v3, v4}, Lcom/rosteam/gpsemulator/SettingsFragment$InputFilterMinMax;-><init>(II)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 338
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/SettingsFragment;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v4, Lcom/rosteam/gpsemulator/R$string;->Accuracy:I

    .line 339
    invoke-virtual {v2, v4}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 340
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;

    invoke-direct {v1, p0, v0}, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment$9;Landroid/widget/EditText;)V

    .line 341
    const-string v0, "Ok"

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v3
.end method
