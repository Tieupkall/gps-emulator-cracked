.class Lcom/rosteam/gpsemulator/MainActivity$54;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onRewardedClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V
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

    .line 3036
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 4

    .line 3039
    const-string p1, "Rewarded"

    const-string v0, "The user earned the reward."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->val$v:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 3042
    sget v0, Lcom/rosteam/gpsemulator/R$id;->automatic_route:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3043
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputrewardedAutomaticRoutes(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 3045
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->automatic:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetrewardedAutomaticRoutes(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3047
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$munsetRewardedNow(Lcom/rosteam/gpsemulator/MainActivity;)V

    .line 3048
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$54;->val$v:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->switchAtuomatic(Landroid/view/View;)V

    return-void
.end method
