.class Lcom/rosteam/gpsemulator/SettingsFragment$8;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


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

.field final synthetic val$miSeekAltitude:Landroidx/preference/SeekBarPreference;


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

    .line 308
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$8;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$8;->val$miSeekAltitude:Landroidx/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    .line 311
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 312
    div-int/lit8 p1, p1, 0x64

    mul-int/lit8 p1, p1, 0x64

    .line 314
    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$8;->val$miSeekAltitude:Landroidx/preference/SeekBarPreference;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$8;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v1, Lcom/rosteam/gpsemulator/R$string;->altitude_formatted:I

    int-to-float v2, p1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/SeekBarPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 315
    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$8;->val$miSeekAltitude:Landroidx/preference/SeekBarPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/SeekBarPreference;->setValue(I)V

    .line 316
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$8;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "altitude2"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 317
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$8;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 p1, 0x0

    return p1
.end method
