.class Lcom/rosteam/gpsemulator/servicex2484$3;
.super Ljava/lang/Object;
.source "servicex2484.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/servicex2484;->restablecerGPS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/servicex2484;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/servicex2484;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 647
    iput-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 9

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onLocationChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service2484"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :try_start_26
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/rosteam/gpsemulator/servicex2484$3$2;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/servicex2484$3$2;-><init>(Lcom/rosteam/gpsemulator/servicex2484$3;)V

    .line 654
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/rosteam/gpsemulator/servicex2484$3$1;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/servicex2484$3$1;-><init>(Lcom/rosteam/gpsemulator/servicex2484$3;)V

    .line 662
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 667
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    .line 668
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iput-object v1, v0, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 669
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_56} :catch_57

    goto :goto_5b

    :catch_57
    move-exception v0

    .line 670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5b
    const/4 v0, 0x0

    .line 672
    :try_start_5c
    new-instance v1, Lcom/rosteam/gpsemulator/MockLocationProvider;

    const-string v2, "network"

    iget-object v3, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v3, v3, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/rosteam/gpsemulator/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 673
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DD)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_72} :catch_73

    goto :goto_78

    :catch_73
    move-exception v1

    .line 674
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    .line 679
    :goto_78
    :try_start_78
    new-instance v2, Lcom/rosteam/gpsemulator/MockLocationProvider;

    const-string v3, "gps"

    iget-object v4, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lcom/rosteam/gpsemulator/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 680
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DD)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8e} :catch_90

    move-object v0, v2

    goto :goto_94

    :catch_90
    move-exception p1

    .line 681
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    :goto_94
    :try_start_94
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 688
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, v1, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;

    .line 689
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, v0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-interface {p1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_b4} :catch_b5

    goto :goto_b9

    :catch_b5
    move-exception p1

    .line 690
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b9
    const-wide/16 v2, 0x5dc

    .line 693
    :try_start_bb
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_be
    .catch Ljava/lang/InterruptedException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_c3

    :catch_bf
    move-exception p1

    .line 695
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_c3
    if-eqz v1, :cond_c8

    .line 697
    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/MockLocationProvider;->shutdown()V

    :cond_c8
    if-eqz v0, :cond_cd

    .line 698
    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MockLocationProvider;->shutdown()V

    .line 700
    :cond_cd
    :try_start_cd
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 701
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->flushLocations(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 702
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_e7} :catch_e8

    goto :goto_ec

    :catch_e8
    move-exception p1

    .line 703
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    :goto_ec
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/servicex2484;->locationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$3;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
