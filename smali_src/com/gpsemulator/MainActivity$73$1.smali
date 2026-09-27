.class Lcom/rosteam/gpsemulator/MainActivity$73$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$73;->onError(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$73;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$73;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4984
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$73$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$73;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 4987
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$73$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$73;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerYandexReady:Z

    if-eqz v0, :cond_21

    .line 4988
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$73$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$73;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4989
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$73$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$73;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$73$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$73;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->preBannerYandex:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 4991
    :cond_21
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$73$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$73;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$73;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarBannerADG(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method
