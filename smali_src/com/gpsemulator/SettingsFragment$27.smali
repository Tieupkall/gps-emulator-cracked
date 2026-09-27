.class Lcom/rosteam/gpsemulator/SettingsFragment$27;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
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

    .line 1009
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$27;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

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

    if-eqz p2, :cond_1c

    .line 1014
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1c

    .line 1015
    const-string p1, "fakegps"

    const-string v0, "Settings hay purchase"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$27;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/SettingsFragment;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 1018
    :cond_1c
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$27;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 1019
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p2

    new-instance v0, Lcom/rosteam/gpsemulator/SettingsFragment$27$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/SettingsFragment$27$1;-><init>(Lcom/rosteam/gpsemulator/SettingsFragment$27;)V

    .line 1018
    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method
