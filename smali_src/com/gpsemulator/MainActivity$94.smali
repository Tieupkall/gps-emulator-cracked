.class Lcom/rosteam/gpsemulator/MainActivity$94;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->switchPinnedList(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$altoList:I


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;I)V
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

    .line 5840
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$94;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput p2, p0, Lcom/rosteam/gpsemulator/MainActivity$94;->val$altoList:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5843
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$94;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinedList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5844
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$94;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v2, p0, Lcom/rosteam/gpsemulator/MainActivity$94;->val$altoList:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5845
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$94;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->pinedList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5847
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$94;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinedList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_22
    if-eqz v0, :cond_2c

    .line 5849
    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 5850
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_22

    :cond_2c
    return-void
.end method
