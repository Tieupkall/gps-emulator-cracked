.class Lcom/rosteam/gpsemulator/SettingsFragment$17;
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


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 575
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    .line 578
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v1, Lcom/rosteam/gpsemulator/R$string;->menu_reset_all:I

    .line 579
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$17;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v1, Lcom/rosteam/gpsemulator/R$string;->resetallmsg:I

    .line 580
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/rosteam/gpsemulator/SettingsFragment$17$2;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$17$2;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment$17;)V

    .line 581
    const-string v1, "Ok"

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/rosteam/gpsemulator/SettingsFragment$17$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$17$1;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment$17;)V

    const/high16 v1, 0x1040000

    .line 589
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 592
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x1

    return p1
.end method
