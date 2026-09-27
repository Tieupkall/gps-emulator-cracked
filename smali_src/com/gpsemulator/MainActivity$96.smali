.class Lcom/rosteam/gpsemulator/MainActivity$96;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5916
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$96;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2d

    .line 5921
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2d

    .line 5922
    const-string p1, "fakegps"

    const-string v0, "MAIN hay purchase"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5923
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$96;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "esSubs"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5924
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$96;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5925
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$96;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 5927
    :cond_2d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$96;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 5928
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    const-string v0, "inapp"

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p2

    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$96$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$96$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$96;)V

    .line 5927
    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method
