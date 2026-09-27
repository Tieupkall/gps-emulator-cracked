.class Lcom/rosteam/gpsemulator/servicex2484$3$2;
.super Ljava/lang/Object;
.source "servicex2484.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/servicex2484$3;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/servicex2484$3;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/servicex2484$3;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 654
    iput-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484$3$2;->this$1:Lcom/rosteam/gpsemulator/servicex2484$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    return-void
.end method
