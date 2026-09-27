.class public final synthetic Lcom/rosteam/gpsemulator/App$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/yandex/mobile/ads/common/InitializationListener;


# instance fields
.field public final synthetic f$0:Lcom/rosteam/gpsemulator/App;


# direct methods
.method public synthetic constructor <init>(Lcom/rosteam/gpsemulator/App;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/App$$ExternalSyntheticLambda0;->f$0:Lcom/rosteam/gpsemulator/App;

    return-void
.end method


# virtual methods
.method public final onInitializationCompleted()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/rosteam/gpsemulator/App$$ExternalSyntheticLambda0;->f$0:Lcom/rosteam/gpsemulator/App;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/App;->lambda$onCreate$0$com-rosteam-gpsemulator-App()V

    return-void
.end method
