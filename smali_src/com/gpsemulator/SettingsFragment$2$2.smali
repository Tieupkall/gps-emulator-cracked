.class Lcom/rosteam/gpsemulator/SettingsFragment$2$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment$2;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/SettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$2$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 169
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$2$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$2;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$2;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->hacerCompra()V

    return-void
.end method
