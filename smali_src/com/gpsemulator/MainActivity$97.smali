.class Lcom/rosteam/gpsemulator/MainActivity$97;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->handlePurchase(Lcom/android/billingclient/api/Purchase;)V
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

    .line 5972
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$97;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
    .registers 4

    .line 5975
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_28

    .line 5976
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "acknowledgment response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fakegps"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$97;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$97$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$97$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$97;)V

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_28
    return-void
.end method
