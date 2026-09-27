.class Lcom/rosteam/gpsemulator/MainActivity$90;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->hacerCompra()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$billingFlowParams:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/android/billingclient/api/BillingFlowParams;)V
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

    .line 5655
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$90;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$90;->val$billingFlowParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 5658
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$90;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$90;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$90;->val$billingFlowParams:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method
