.class public Lcom/rosteam/gpsemulator/servicex2484;
.super Landroid/app/Service;
.source "servicex2484.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/servicex2484$postFL;
    }
.end annotation


# static fields
.field private static final REFRESH_RATE:I = 0x96


# instance fields
.field context:Landroid/content/Context;

.field locationListener:Landroid/location/LocationListener;

.field locationManager:Landroid/location/LocationManager;

.field loopMode:I

.field private mCiudadPais:Ljava/lang/String;

.field mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLatitude:[D

.field private mLongitude:[D

.field private mTestRequest:Ljava/lang/String;

.field miPostFL:Lcom/rosteam/gpsemulator/servicex2484$postFL;

.field notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field pause:Z

.field preferences:Landroid/content/SharedPreferences;

.field private rutaName:Ljava/lang/String;

.field stopPostFL:Z

.field stopwithoutlaunch:Z

.field useplayserv:Z

.field velocidad:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLatitude:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLongitude:[D

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendMessageStopStay(Lcom/rosteam/gpsemulator/servicex2484;DD)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/rosteam/gpsemulator/servicex2484;->sendMessageStopStay(DD)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendMessageUpdate(Lcom/rosteam/gpsemulator/servicex2484;DD[D[DFZ)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/rosteam/gpsemulator/servicex2484;->sendMessageUpdate(DD[D[DFZ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->rutaName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->loopMode:I

    .line 68
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    return-void
.end method

.method private sendMessageStop()V
    .registers 4

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "detener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    const-string v1, "permanecer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendMessageStopStay(DD)V
    .registers 8

    .line 264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "detener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v1, "permanecer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "latitude"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 267
    const-string p1, "longitude"

    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 268
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private sendMessageUpdate(DD[D[DFZ)V
    .registers 11

    .line 274
    new-instance p8, Landroid/content/Intent;

    const-string v0, "update"

    invoke-direct {p8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 275
    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    .line 276
    const-string p1, "message"

    invoke-virtual {p8, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 277
    const-string p1, "latitudes"

    invoke-virtual {p8, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 278
    const-string p1, "longitudes"

    invoke-virtual {p8, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 279
    const-string p1, "velocidad"

    invoke-virtual {p8, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 280
    const-string p1, "pause"

    iget-boolean p2, p0, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    invoke-virtual {p8, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 282
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, p8}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method public isMockLocationEnabled(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 720
    :try_start_1
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 721
    const-string v1, "android:mock_location"

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "com.android.billingclient"

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1a

    if-nez p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v0

    :catch_1a
    move-exception p1

    .line 727
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 73
    iput-object p0, p0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    .line 75
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->preferences:Landroid/content/SharedPreferences;

    .line 76
    const-string v1, "useplayserv"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->useplayserv:Z

    .line 77
    new-instance v0, Lcom/rosteam/gpsemulator/servicex2484$postFL;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/servicex2484$postFL;-><init>(Lcom/rosteam/gpsemulator/servicex2484;)V

    iput-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->miPostFL:Lcom/rosteam/gpsemulator/servicex2484$postFL;

    .line 80
    :try_start_18
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/rosteam/gpsemulator/servicex2484$2;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/servicex2484$2;-><init>(Lcom/rosteam/gpsemulator/servicex2484;)V

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/servicex2484$1;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/servicex2484$1;-><init>(Lcom/rosteam/gpsemulator/servicex2484;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 287
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->stopPostFL:Z

    .line 290
    const-string v0, "service2484"

    const-string v1, "onDestroy() servicex2484 detenido"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/servicex2484;->stopSelf()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 15

    .line 113
    const-string p2, "onStartCommand"

    const-string p3, "servicex2484"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v0, "resume"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    const/high16 v1, 0x4000000

    .line 117
    invoke-static {p0, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 120
    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "launchonstop"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->stopwithoutlaunch:Z

    .line 123
    const-string v4, "ACTION_STOP_MAIN"

    const-string v5, "ACTION_STOP"

    if-eqz v2, :cond_39

    .line 125
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-static {p0, v0, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_47

    .line 131
    :cond_39
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {p0, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_47
    if-eqz p1, :cond_71

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "accion recibidah: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " main visible: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/rosteam/gpsemulator/App;->isActivityVisible()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_71
    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_a9

    .line 143
    const-string p1, "procesaremos el stop desde notif"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-boolean v6, p0, Lcom/rosteam/gpsemulator/servicex2484;->stopPostFL:Z

    .line 145
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/servicex2484;->restablecerGPS()V

    .line 147
    invoke-static {}, Lcom/rosteam/gpsemulator/App;->isActivityVisible()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 148
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/servicex2484;->sendMessageStop()V

    .line 151
    :cond_8d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_25f

    .line 152
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 153
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/servicex2484;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_25f

    .line 158
    :cond_a9
    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 159
    const-string p1, "procesaremos el stop desde main"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iput-boolean v6, p0, Lcom/rosteam/gpsemulator/servicex2484;->stopPostFL:Z

    .line 161
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->miPostFL:Lcom/rosteam/gpsemulator/servicex2484$postFL;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/servicex2484$postFL;->limpiarFakes()V

    .line 162
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/servicex2484;->restablecerGPS()V

    goto/16 :goto_25f

    .line 163
    :cond_c2
    iget-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    const-string v2, "ACTION_PAUSE"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_d0

    .line 164
    iput-boolean v6, p0, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    goto/16 :goto_25f

    .line 165
    :cond_d0
    iget-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    const-string v2, "ACTION_RESUME"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v2, "loopMode"

    const/4 v3, 0x0

    const-string v4, "velocidad"

    const-string v5, "com.example.android.mocklocation.CIUDADPAIS"

    if-eqz p3, :cond_f7

    .line 166
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/rosteam/gpsemulator/servicex2484;->mCiudadPais:Ljava/lang/String;

    .line 167
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    iput p2, p0, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    .line 168
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->loopMode:I

    .line 169
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    goto/16 :goto_25f

    .line 171
    :cond_f7
    iget-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    const-string v7, "ACTION_START_CONTINUOUS"

    invoke-static {p3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_19e

    .line 172
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    .line 173
    const-string p3, "uy.digitools.RUTA"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->rutaName:Ljava/lang/String;

    .line 174
    const-string v7, "rutaName"

    if-eqz p3, :cond_163

    .line 175
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v8, "Se envi\u00f3 nombre de ruta? "

    invoke-direct {p3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/rosteam/gpsemulator/servicex2484;->rutaName:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/rosteam/gpsemulator/servicex2484;->rutaName:Ljava/lang/String;

    invoke-static {p3, v7}, Lcom/rosteam/gpsemulator/LocationUtils;->getRoute(Landroid/content/Context;Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object p3

    .line 178
    iget-object p3, p3, Lcom/rosteam/gpsemulator/utils/RegUbic;->puntos:Ljava/util/List;

    .line 179
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [D

    iput-object v7, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLatitude:[D

    .line 180
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [D

    iput-object v7, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLongitude:[D

    move v7, v0

    .line 181
    :goto_13e
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_178

    .line 182
    iget-object v8, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLatitude:[D

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v9, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    double-to-float v9, v9

    float-to-double v9, v9

    aput-wide v9, v8, v7

    .line 183
    iget-object v8, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLongitude:[D

    invoke-interface {p3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v9, v9, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    double-to-float v9, v9

    float-to-double v9, v9

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13e

    .line 186
    :cond_163
    const-string p3, "NO se envi\u00f3 nombre de ruta, usamos puntos recibidos"

    invoke-static {v7, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string p3, "com.example.android.mocklocation.LATITUDE"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p3

    iput-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLatitude:[D

    .line 188
    const-string p3, "com.example.android.mocklocation.LONGITUDE"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p3

    iput-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->mLongitude:[D

    .line 191
    :cond_178
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->mCiudadPais:Ljava/lang/String;

    .line 192
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p3

    iput p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    .line 195
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->loopMode:I

    .line 196
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->miPostFL:Lcom/rosteam/gpsemulator/servicex2484$postFL;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/servicex2484$postFL;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object p3, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq p1, p3, :cond_1ae

    .line 197
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->miPostFL:Lcom/rosteam/gpsemulator/servicex2484$postFL;

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p1, p3, v2}, Lcom/rosteam/gpsemulator/servicex2484$postFL;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1ae

    .line 198
    :cond_19e
    iget-object p3, p0, Lcom/rosteam/gpsemulator/servicex2484;->mTestRequest:Ljava/lang/String;

    const-string v2, "ACTION_REFRESH_NOTIF"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1ae

    .line 199
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->mCiudadPais:Ljava/lang/String;

    .line 204
    :cond_1ae
    :goto_1ae
    new-instance p1, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget p3, Lcom/rosteam/gpsemulator/R$drawable;->stopnotif:I

    sget v2, Lcom/rosteam/gpsemulator/R$string;->opener:I

    .line 205
    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/servicex2484;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p3, v2, p2}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 206
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    .line 208
    new-instance p3, Landroidx/core/app/NotificationCompat$Action$Builder;

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->stopnotif:I

    sget v3, Lcom/rosteam/gpsemulator/R$string;->stop:I

    .line 209
    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/servicex2484;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, v3, v1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 210
    invoke-virtual {p3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p3

    .line 213
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "GPSEmulator23"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/rosteam/gpsemulator/servicex2484;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 215
    iget-object v1, p0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->fakegpsnotifyloli:I

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    sget v3, Lcom/rosteam/gpsemulator/R$drawable;->notificationanim:I

    .line 219
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 220
    iget-object v3, p0, Lcom/rosteam/gpsemulator/servicex2484;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "hidenotif"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1f8

    const/4 v0, -0x1

    :cond_1f8
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 222
    iget v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    const v3, 0x3e8e38e4

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_20c

    sget v2, Lcom/rosteam/gpsemulator/R$string;->emulating_route:I

    goto :goto_20e

    :cond_20c
    sget v2, Lcom/rosteam/gpsemulator/R$string;->emulating_location:I

    :goto_20e
    invoke-virtual {p0, v2}, Lcom/rosteam/gpsemulator/servicex2484;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/rosteam/gpsemulator/servicex2484;->mCiudadPais:Ljava/lang/String;

    .line 223
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 227
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 229
    const-string p1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_238

    .line 230
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/servicex2484;->stopSelf()V

    return p2

    .line 236
    :cond_238
    :try_start_238
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_23a
    .catch Ljava/lang/Exception; {:try_start_238 .. :try_end_23a} :catch_260

    const/16 p3, 0x1d

    const-string v0, "service2484"

    if-lt p1, p3, :cond_251

    .line 237
    :try_start_240
    const-string p1, "StartForeground build >= 29"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p0, v6, p1, p3}, Lcom/rosteam/gpsemulator/servicex2484;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_25f

    .line 241
    :cond_251
    const-string p1, "StartForeground build < 29"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/rosteam/gpsemulator/servicex2484;->startForeground(ILandroid/app/Notification;)V
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_25f} :catch_260

    :cond_25f
    :goto_25f
    return v6

    .line 245
    :catch_260
    const-string p1, "GPSEMU"

    const-string p3, "ERROR PRODUCIDO"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/servicex2484;->stopSelf()V

    return p2
.end method

.method public restablecerGPS()V
    .registers 8

    .line 639
    const-string v0, "restablecerGPS incio"

    const-string v1, "service2484"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 643
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has permission? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_45

    .line 646
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484;->locationManager:Landroid/location/LocationManager;

    .line 647
    new-instance v6, Lcom/rosteam/gpsemulator/servicex2484$3;

    invoke-direct {v6, p0}, Lcom/rosteam/gpsemulator/servicex2484$3;-><init>(Lcom/rosteam/gpsemulator/servicex2484;)V

    iput-object v6, p0, Lcom/rosteam/gpsemulator/servicex2484;->locationListener:Landroid/location/LocationListener;

    .line 710
    iget-object v1, p0, Lcom/rosteam/gpsemulator/servicex2484;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-string v2, "network"

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 712
    :cond_45
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/servicex2484;->stopSelf()V

    return-void
.end method
