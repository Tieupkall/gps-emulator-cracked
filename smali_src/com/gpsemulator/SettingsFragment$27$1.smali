.class Lcom/rosteam/gpsemulator/SettingsFragment$27$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment$27;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/SettingsFragment$27;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment$27;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1020
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$27$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$27;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1e

    .line 1025
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1e

    .line 1026
    const-string p1, "fakegps"

    const-string v0, "hay purchase"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$27$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$27;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$27;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 1029
    :cond_1e
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$27$1;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$27;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment$27;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/SettingsFragment;->deshabilitarPRO()V

    return-void
.end method
