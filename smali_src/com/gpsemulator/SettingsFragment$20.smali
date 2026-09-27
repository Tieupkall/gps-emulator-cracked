.class Lcom/rosteam/gpsemulator/SettingsFragment$20;
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

    .line 628
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$20;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 3

    .line 630
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    :try_start_7
    sget-boolean v0, Lcom/rosteam/gpsemulator/App;->XIAOMI:Z

    if-eqz v0, :cond_1a

    .line 633
    const-string v0, "mimarket://details?id=com.rosteam.gpsemulator&back=true|false&ref=refstr&startDownload=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 634
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$20;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_28

    .line 636
    :cond_1a
    const-string v0, "market://details?id=com.rosteam.gpsemulator"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 637
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$20;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_28

    :catch_28
    :goto_28
    const/4 p1, 0x1

    return p1
.end method
