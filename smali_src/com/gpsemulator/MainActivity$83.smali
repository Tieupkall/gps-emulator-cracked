.class Lcom/rosteam/gpsemulator/MainActivity$83;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/yandex/mobile/ads/banner/BannerAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarBannerExitYandex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$mBannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/yandex/mobile/ads/banner/BannerAdView;)V
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

    .line 5374
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$83;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$83;->val$mBannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 1

    return-void
.end method

.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/common/AdRequestError;)V
    .registers 4

    .line 5383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdFailedToLoad "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YANDEX_ADS_EXIT"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5384
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$83;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->bannerYandexExit:Lcom/yandex/mobile/ads/banner/BannerAdView;

    .line 5385
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$83;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mcargarBannerExitAdGen(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    .line 5377
    const-string v0, "YANDEX_ADS_EXIT"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5378
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$83;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$83;->val$mBannerAdView:Lcom/yandex/mobile/ads/banner/BannerAdView;

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->bannerYandexExit:Lcom/yandex/mobile/ads/banner/BannerAdView;

    return-void
.end method

.method public onImpression(Lcom/yandex/mobile/ads/common/ImpressionData;)V
    .registers 2

    return-void
.end method
