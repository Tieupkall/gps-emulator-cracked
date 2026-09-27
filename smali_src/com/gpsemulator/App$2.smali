.class Lcom/rosteam/gpsemulator/App$2;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/yandex/mobile/ads/appopenad/AppOpenAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/App;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/App;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/App;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$2;->this$0:Lcom/rosteam/gpsemulator/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/common/AdRequestError;)V
    .registers 3

    .line 137
    const-string p1, "yandex"

    const-string v0, "appopen failed to load"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/yandex/mobile/ads/appopenad/AppOpenAd;)V
    .registers 4

    .line 129
    const-string v0, "yandex"

    const-string v1, "appopen loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sput-object p1, Lcom/rosteam/gpsemulator/App;->yandexAppOpenAd:Lcom/yandex/mobile/ads/appopenad/AppOpenAd;

    return-void
.end method
