.class Lcom/rosteam/gpsemulator/MainActivity$69$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$69;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$69;

.field final synthetic val$dlatitude:D

.field final synthetic val$dlongitude:D


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$69;DD)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4717
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$69;

    iput-wide p2, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->val$dlatitude:D

    iput-wide p4, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->val$dlongitude:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 4720
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$69;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$69;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-wide v1, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->val$dlatitude:D

    iput-wide v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLat:D

    .line 4721
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$69;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$69;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-wide v1, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->val$dlongitude:D

    iput-wide v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentLong:D

    .line 4722
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$69$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$69;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$69;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->onStartContinuousButtonClick(Landroid/view/View;)V

    return-void
.end method
