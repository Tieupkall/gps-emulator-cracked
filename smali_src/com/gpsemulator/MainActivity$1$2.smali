.class Lcom/rosteam/gpsemulator/MainActivity$1$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$1;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$1;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 470
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 9

    .line 475
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_b8

    .line 476
    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p1

    .line 477
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_ae

    .line 478
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$1$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity$1;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    iput-object v1, p2, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    .line 480
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "productDetailsList.size() "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "GPS"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    .line 481
    :goto_38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_ad

    .line 482
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offers size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$1$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity$1;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v0

    .line 483
    :goto_69
    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$1$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity$1;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_aa

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "offer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity$1$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1;

    iget-object v5, v5, Lcom/rosteam/gpsemulator/MainActivity$1;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v5, v5, Lcom/rosteam/gpsemulator/MainActivity;->currentProductDetails:Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_aa
    add-int/lit8 p2, p2, 0x1

    goto :goto_38

    :cond_ad
    return-void

    .line 499
    :cond_ae
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$1;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->purchaseFromDrawerLyt:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 502
    :cond_b8
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$1;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->purchaseFromDrawerLyt:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
