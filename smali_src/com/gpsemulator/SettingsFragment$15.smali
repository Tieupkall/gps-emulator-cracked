.class Lcom/rosteam/gpsemulator/SettingsFragment$15;
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

    .line 510
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 11

    const/4 p1, 0x1

    .line 516
    const-string v0, ""

    const/4 v1, 0x0

    move v4, p1

    move-object v3, v0

    move v2, v1

    .line 518
    :cond_7
    :try_start_7
    iget-object v5, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object v5, v5, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "favPosition"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 519
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_26} :catch_a8

    const-string v7, "\n"

    if-nez v6, :cond_33

    .line 520
    :try_start_2a
    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_34

    :cond_33
    move v4, v1

    :goto_34
    add-int/lit8 v2, v2, 0x1

    if-nez v4, :cond_7

    .line 528
    const-string v2, "###\n"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v4, p1

    move v3, v1

    .line 532
    :cond_40
    iget-object v5, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object v5, v5, Lcom/rosteam/gpsemulator/SettingsFragment;->preferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ruta"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 533
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 534
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6b

    :cond_6a
    move v4, v1

    :goto_6b
    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_40

    .line 542
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_7c

    .line 543
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-static {v0, v2}, Lcom/rosteam/gpsemulator/SettingsFragment;->-$$Nest$mescribirEnDocumentos(Lcom/rosteam/gpsemulator/SettingsFragment;Ljava/lang/String;)V

    goto :goto_bf

    .line 545
    :cond_7c
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/SettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v2, Lcom/rosteam/gpsemulator/R$string;->backup_app_data:I

    .line 546
    invoke-virtual {v1, v2}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->no_hay_marcadores_para_exportar:I

    .line 547
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->cerrar:I

    new-instance v2, Lcom/rosteam/gpsemulator/SettingsFragment$15$1;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$15$1;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment$15;)V

    .line 548
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_a7} :catch_a8

    goto :goto_bf

    :catch_a8
    move-exception v0

    .line 554
    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$15;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v3, Lcom/rosteam/gpsemulator/R$string;->something_went_wrong:I

    invoke-virtual {v2, v3}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 555
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_bf
    return p1
.end method
