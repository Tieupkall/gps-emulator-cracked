.class Lcom/rosteam/gpsemulator/MainActivity$72;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/yandex/mobile/ads/banner/BannerAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->cargarPreBannerYandex()V
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

    .line 4933
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$72;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

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

    .line 4942
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pre banner ready FAILED "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YANDEX_MOBILE_ADS_TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4943
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$72;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerYandexReady:Z

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    .line 4936
    const-string v0, "YANDEX_MOBILE_ADS_TAG"

    const-string v1, "pre banner ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$72;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerYandexReady:Z

    return-void
.end method

.method public onImpression(Lcom/yandex/mobile/ads/common/ImpressionData;)V
    .registers 2

    return-void
.end method
