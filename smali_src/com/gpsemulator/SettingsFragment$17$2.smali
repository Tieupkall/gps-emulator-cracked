.class Lcom/rosteam/gpsemulator/SettingsFragment$17$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment$17;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/SettingsFragment$17;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment$17;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 581
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 583
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$17;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "accion"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 584
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$17;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 585
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$17;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 586
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$17;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
