.class Lcom/rosteam/gpsemulator/App$3;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$PAGInitCallback;


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

    .line 197
    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$3;->this$0:Lcom/rosteam/gpsemulator/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .registers 4

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "pangle init fail: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GPSEmu"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public success()V
    .registers 4

    .line 201
    const-string v0, "GPSEmu"

    const-string v1, "pangle init success: "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;-><init>()V

    const/16 v1, 0x9c4

    .line 203
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;->setTimeout(I)V

    .line 206
    sget-boolean v1, Lcom/rosteam/gpsemulator/App;->XIAOMI:Z

    if-eqz v1, :cond_18

    const-string v1, "890085402"

    goto :goto_1a

    :cond_18
    const-string v1, "890014658"

    :goto_1a
    new-instance v2, Lcom/rosteam/gpsemulator/App$3$1;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/App$3$1;-><init>(Lcom/rosteam/gpsemulator/App$3;)V

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAd;->loadAd(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenRequest;Lcom/bytedance/sdk/openadsdk/api/open/PAGAppOpenAdLoadListener;)V

    return-void
.end method
