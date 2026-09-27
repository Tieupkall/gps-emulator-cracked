.class Lcom/rosteam/gpsemulator/SettingsFragment$11$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/android/billingclient/api/ProductDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment$11;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/SettingsFragment$11;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment$11;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$11$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .registers 4

    .line 434
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    if-nez p1, :cond_1d

    .line 435
    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsResult;->getProductDetailsList()Ljava/util/List;

    move-result-object p1

    .line 436
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1d

    .line 437
    iget-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$11$2;->this$1:Lcom/rosteam/gpsemulator/SettingsFragment$11;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/SettingsFragment$11;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/ProductDetails;

    iput-object p1, p2, Lcom/rosteam/gpsemulator/SettingsFragment;->productDetails:Lcom/android/billingclient/api/ProductDetails;

    :cond_1d
    return-void
.end method
