.class public Lcom/rosteam/gpsemulator/SettingsActivity2;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity2.java"


# instance fields
.field miSettingsFragment:Lcom/rosteam/gpsemulator/SettingsFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsActivity2;->miSettingsFragment:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/rosteam/gpsemulator/SettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget p1, Lcom/rosteam/gpsemulator/R$layout;->pref_activity:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsActivity2;->setContentView(I)V

    .line 18
    const-string p1, "fakegps"

    const-string v0, "iniciamos preferences"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p1, Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-direct {p1}, Lcom/rosteam/gpsemulator/SettingsFragment;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsActivity2;->miSettingsFragment:Lcom/rosteam/gpsemulator/SettingsFragment;

    .line 20
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsActivity2;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$id;->pref_container:I

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsActivity2;->miSettingsFragment:Lcom/rosteam/gpsemulator/SettingsFragment;

    .line 22
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 25
    sget p1, Lcom/rosteam/gpsemulator/R$id;->toolbarsettings:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsActivity2;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/SettingsActivity2;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 26
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsActivity2;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsActivity2;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 37
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 38
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/SettingsActivity2;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsActivity2;->miSettingsFragment:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method
