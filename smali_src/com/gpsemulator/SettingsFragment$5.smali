.class Lcom/rosteam/gpsemulator/SettingsFragment$5;
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

    .line 231
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$5;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 234
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$5;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-boolean p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->noAds:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    .line 235
    :cond_8
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$5;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/SettingsFragment;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$5;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->upgradepro:I

    .line 236
    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/rosteam/gpsemulator/R$string;->upgradetounlock:I

    .line 237
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/rosteam/gpsemulator/SettingsFragment$5$2;

    invoke-direct {p2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$5$2;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment$5;)V

    .line 238
    const-string v0, "Ok"

    invoke-virtual {p1, v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$5;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->proinviteno:I

    .line 243
    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/rosteam/gpsemulator/SettingsFragment$5$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$5$1;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment$5;)V

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    const/4 p1, 0x0

    return p1
.end method
