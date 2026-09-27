.class Lcom/rosteam/gpsemulator/SettingsFragment$9$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment$9;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/SettingsFragment$9;

.field final synthetic val$inputAltitude:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment$9;Landroid/widget/EditText;)V
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

    .line 341
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$9;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->val$inputAltitude:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 343
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$9;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$9;->val$miSeekAccuracy:Landroidx/preference/SeekBarPreference;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->val$inputAltitude:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    .line 344
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$9;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$9;->val$miSeekAccuracy:Landroidx/preference/SeekBarPreference;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$9;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->accuracy_formatted:I

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->val$inputAltitude:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 345
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$9;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->val$inputAltitude:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const-string v0, "accuracy2"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 346
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$9$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$9;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$9;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
