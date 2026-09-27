.class Lcom/rosteam/gpsemulator/SettingsFragment$22;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment;->escribirEnDocumentos(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

.field final synthetic val$finalUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment;Landroid/net/Uri;)V
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

    .line 734
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$22;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$22;->val$finalUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 736
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    const-string p2, "application/octet-stream"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string p2, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$22;->val$finalUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 739
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 741
    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$22;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->compartir_archivo_de_marcadores:I

    .line 742
    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    .line 741
    invoke-virtual {p2, p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
