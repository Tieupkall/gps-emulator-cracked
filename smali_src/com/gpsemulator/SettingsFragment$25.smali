.class Lcom/rosteam/gpsemulator/SettingsFragment$25;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/SettingsFragment;->initiatePurchase()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

.field final synthetic val$billingFlowParams2:Lcom/android/billingclient/api/BillingFlowParams;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/SettingsFragment;Lcom/android/billingclient/api/BillingFlowParams;)V
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

    .line 958
    iput-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$25;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/SettingsFragment$25;->val$billingFlowParams2:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 961
    iget-object p1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$25;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/SettingsFragment;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/SettingsFragment$25;->this$0:Lcom/rosteam/gpsemulator/SettingsFragment;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/SettingsFragment;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/SettingsFragment$25;->val$billingFlowParams2:Lcom/android/billingclient/api/BillingFlowParams;

    invoke-virtual {p1, v0, v1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    return-void
.end method
