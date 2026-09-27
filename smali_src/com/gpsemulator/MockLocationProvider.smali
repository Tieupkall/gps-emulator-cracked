.class public Lcom/rosteam/gpsemulator/MockLocationProvider;
.super Ljava/lang/Object;
.source "MockLocationProvider.java"


# instance fields
.field ctx:Landroid/content/Context;

.field public mockLocation:Landroid/location/Location;

.field preferences:Landroid/content/SharedPreferences;

.field providerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->ctx:Landroid/content/Context;

    .line 26
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->preferences:Landroid/content/SharedPreferences;

    .line 29
    const-string p1, "location"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/location/LocationManager;

    .line 33
    :try_start_16
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1b

    .line 36
    :catch_1b
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v10}, Landroid/location/LocationManager;->addTestProvider(Ljava/lang/String;ZZZZZZZII)V

    .line 39
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setTestProviderEnabled(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public isProviderEnabled()Z
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 101
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pushLocation(DD)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 51
    invoke-virtual/range {v0 .. v6}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V

    return-void
.end method

.method public pushLocation(DDFF)V
    .registers 12

    .line 55
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 59
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "altitude2"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 60
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "accuracy2"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 62
    new-instance v3, Landroid/location/Location;

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    .line 66
    invoke-virtual {v3, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 67
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-virtual {p1, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 70
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    float-to-double p2, v1

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setAltitude(D)V

    .line 71
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setTime(J)V

    .line 72
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-virtual {p1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 74
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 82
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-virtual {p1, p5}, Landroid/location/Location;->setSpeed(F)V

    .line 84
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-virtual {p1, p6}, Landroid/location/Location;->setBearing(F)V

    .line 87
    :try_start_55
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MockLocationProvider;->isProviderEnabled()Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_62} :catch_62

    :catch_62
    :cond_62
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->ctx:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 95
    :try_start_a
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/MockLocationProvider;->isProviderEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MockLocationProvider;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeTestProvider(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method
