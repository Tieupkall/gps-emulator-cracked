.class public Lcom/rosteam/gpsemulator/BootUpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootUpReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isMockLocationEnabled(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 87
    :try_start_1
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 88
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

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 25
    const-string p2, "BootUp received"

    const-string v0, "BootUp"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 27
    const-string v1, "startlastlocation"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    const-string v3, "noads"

    invoke-interface {p2, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v3, 0x1

    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "autoStart: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " noAds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_109

    if-eqz v3, :cond_109

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 36
    :cond_3e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "histPosition"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {p2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    invoke-virtual {p0, v4}, Lcom/rosteam/gpsemulator/BootUpReceiver;->parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v3, v3, 0x1

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "History position 0 :"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "History position "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v3, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_109

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 45
    iget-wide v5, p2, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    iget-wide v7, p2, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    const/4 v1, 0x2

    new-array v3, v1, [D

    aput-wide v5, v3, v2

    aput-wide v7, v3, v4

    .line 46
    iget-wide v5, p2, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    iget-wide v7, p2, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    new-array v9, v1, [D

    aput-wide v5, v9, v2

    aput-wide v7, v9, v4

    .line 47
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    .line 48
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 49
    const-string v4, "com.example.android.mocklocation.LATITUDE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 50
    const-string v3, "com.example.android.mocklocation.LONGITUDE"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 51
    const-string v3, "com.example.android.mocklocation.CIUDADPAIS"

    iget-object p2, p2, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string p2, "velocidad"

    const v3, 0x3ce38e3a

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 53
    const-string p2, "loopMode"

    invoke-virtual {v2, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-string p2, "ACTION_START_CONTINUOUS"

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string p2, "Vamos a intentar iniciar foreground service"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_109
    return-void
.end method

.method public parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;
    .registers 12

    .line 69
    const-string v0, "\\+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    aget-object v2, p1, v0

    const/4 v0, 0x1

    .line 72
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const/4 v0, 0x2

    .line 73
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    const/4 v0, 0x3

    .line 74
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/4 v0, 0x4

    .line 77
    :try_start_1f
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_27

    :catch_26
    const/4 p1, 0x0

    :goto_27
    move v8, p1

    .line 81
    new-instance v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/rosteam/gpsemulator/utils/RegUbic;-><init>(Ljava/lang/String;DDFFZ)V

    return-object v1
.end method
