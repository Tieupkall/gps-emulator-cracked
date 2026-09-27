.class Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/yandex/mobile/ads/appopenad/AppOpenAdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1281
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$4;->this$1:Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .registers 1

    return-void
.end method

.method public onAdDismissed()V
    .registers 1

    return-void
.end method

.method public onAdFailedToShow(Lcom/yandex/mobile/ads/common/AdError;)V
    .registers 2

    return-void
.end method

.method public onAdImpression(Lcom/yandex/mobile/ads/common/ImpressionData;)V
    .registers 2

    return-void
.end method

.method public onAdShown()V
    .registers 1

    return-void
.end method
