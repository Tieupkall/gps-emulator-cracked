.class Lcom/rosteam/gpsemulator/MainActivity$97$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$97;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$97;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$97;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5978
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$97$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$97;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5981
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$97$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$97;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$97;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->habilitarPRO()V

    .line 5982
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$97$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$97;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$97;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v1, Lcom/rosteam/gpsemulator/R$string;->congrats:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
