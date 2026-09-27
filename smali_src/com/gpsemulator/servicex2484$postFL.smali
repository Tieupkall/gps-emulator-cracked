.class Lcom/rosteam/gpsemulator/servicex2484$postFL;
.super Landroid/os/AsyncTask;
.source "servicex2484.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/servicex2484;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "postFL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mockFused:Lcom/rosteam/gpsemulator/MockLocationProvider;

.field mockGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;

.field mockNetwork:Lcom/rosteam/gpsemulator/MockLocationProvider;

.field mockPasive:Lcom/rosteam/gpsemulator/MockLocationProvider;

.field testGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;

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

    .line 294
    iput-object p1, p0, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private interpolate(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .registers 12

    .line 618
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, p3

    mul-double/2addr v1, v3

    iget-wide v5, p2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    mul-double/2addr v5, p3

    add-double/2addr v1, v5

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr v5, v3

    iget-wide p1, p2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    mul-double/2addr p1, p3

    add-double/2addr v5, p1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 294
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/servicex2484$postFL;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 36

    move-object/from16 v1, p0

    .line 315
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/rosteam/gpsemulator/servicex2484;->isMockLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 316
    invoke-virtual {v1, v2}, Lcom/rosteam/gpsemulator/servicex2484$postFL;->cancel(Z)Z

    .line 320
    :cond_10
    :try_start_10
    new-instance v0, Lcom/rosteam/gpsemulator/MockLocationProvider;

    const-string v3, "passive"

    iget-object v4, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/rosteam/gpsemulator/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockPasive:Lcom/rosteam/gpsemulator/MockLocationProvider;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    :goto_22
    :try_start_22
    new-instance v0, Lcom/rosteam/gpsemulator/MockLocationProvider;

    const-string v3, "network"

    iget-object v4, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/rosteam/gpsemulator/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockNetwork:Lcom/rosteam/gpsemulator/MockLocationProvider;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    :goto_34
    :try_start_34
    new-instance v0, Lcom/rosteam/gpsemulator/MockLocationProvider;

    const-string v3, "gps"

    iget-object v4, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/rosteam/gpsemulator/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    :goto_46
    :try_start_46
    new-instance v0, Lcom/rosteam/gpsemulator/MockLocationProvider;

    const-string v3, "fused"

    iget-object v4, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/rosteam/gpsemulator/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockFused:Lcom/rosteam/gpsemulator/MockLocationProvider;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 346
    :goto_58
    :try_start_58
    new-instance v0, Lcom/rosteam/gpsemulator/MockLocationProvider;

    const-string v3, "test"

    iget-object v4, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v4}, Lcom/rosteam/gpsemulator/MockLocationProvider;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->testGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_65} :catch_66

    goto :goto_6a

    :catch_66
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    :goto_6a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cantidad: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SEGMENTOS"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move v6, v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 363
    :goto_89
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v8, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v8}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v8

    aget-wide v9, v8, v5

    iget-object v8, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v8}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v8

    aget-wide v11, v8, v5

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v9, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v9}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v9

    add-int/lit8 v10, v5, 0x1

    aget-wide v11, v9, v10

    iget-object v9, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v9}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v9

    aget-wide v13, v9, v10

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0, v8}, Lcom/google/maps/android/SphericalUtil;->computeDistanceBetween(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 366
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    cmpl-float v0, v6, v3

    if-lez v0, :cond_c5

    div-float v0, v6, v8

    goto :goto_c6

    :cond_c5
    move v0, v3

    .line 378
    :goto_c6
    new-instance v9, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v11, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v11}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v11

    aget-wide v12, v11, v5

    iget-object v11, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v11}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v11

    aget-wide v14, v11, v5

    invoke-direct {v9, v12, v13, v14, v15}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v12, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v12}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v12

    aget-wide v13, v12, v10

    iget-object v12, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v12}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v12

    move/from16 p1, v3

    aget-wide v3, v12, v10

    invoke-direct {v11, v13, v14, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v9, v11}, Lcom/google/maps/android/SphericalUtil;->computeHeading(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v3

    .line 381
    const-string v11, "EXCEPTION CON PLAY SERVICES"

    const-string v12, "fake gps"

    const-string v13, "location"

    if-nez v7, :cond_2dd

    move/from16 v33, v6

    move v6, v0

    move/from16 v0, v33

    :goto_103
    const/high16 v14, 0x42c80000    # 100.0f

    cmpg-float v16, v6, v14

    if-gtz v16, :cond_2d8

    .line 383
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    div-float v0, v8, v0

    const/high16 v16, 0x41700000    # 15.0f

    div-float v16, v16, v0

    add-float v0, v6, v16

    sub-float/2addr v0, v14

    cmpl-float v14, v0, p1

    if-lez v14, :cond_11d

    mul-float/2addr v0, v8

    move v14, v0

    goto :goto_11f

    :cond_11d
    move/from16 v14, p1

    .line 394
    :goto_11f
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    if-eqz v0, :cond_127

    move/from16 v16, p1

    .line 395
    :cond_127
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->stopPostFL:Z

    if-eqz v0, :cond_130

    move v6, v14

    goto/16 :goto_2d9

    .line 397
    :cond_130
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v15, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v15}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v15

    move/from16 v17, v10

    aget-wide v9, v15, v5

    iget-object v15, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v15}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v15

    move-wide/from16 v19, v3

    aget-wide v2, v15, v5

    invoke-direct {v0, v9, v10, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v3

    aget-wide v9, v3, v17

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v3

    move v15, v5

    aget-wide v4, v3, v17

    invoke-direct {v2, v9, v10, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    float-to-double v3, v6

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v9

    invoke-static {v0, v2, v3, v4}, Lcom/google/maps/android/SphericalUtil;->interpolate(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 401
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 402
    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 404
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "accuracy"

    const/4 v10, 0x1

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v9, 0x3716b62c

    int-to-float v0, v0

    mul-float/2addr v0, v9

    .line 406
    iget-object v9, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v9, v9, Lcom/rosteam/gpsemulator/servicex2484;->preferences:Landroid/content/SharedPreferences;

    const-string v10, "randomize"

    move-wide/from16 v21, v2

    const/4 v2, 0x0

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const v9, 0x3e8e38e4

    if-eqz v3, :cond_1cc

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v3, v3, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    cmpg-float v3, v3, v9

    if-gez v3, :cond_1cc

    .line 407
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const/4 v10, 0x6

    if-le v3, v10, :cond_1cc

    .line 408
    const-string v3, "fakegps"

    const-string v10, "randomizamos"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float/2addr v3, v10

    mul-float/2addr v3, v0

    float-to-double v2, v3

    .line 410
    new-instance v23, Ljava/util/Random;

    invoke-direct/range {v23 .. v23}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/Random;->nextFloat()F

    move-result v23

    sub-float v23, v23, v10

    mul-float v0, v0, v23

    move/from16 v23, v9

    float-to-double v9, v0

    add-double v2, v21, v2

    add-double/2addr v4, v9

    goto :goto_1d0

    :cond_1cc
    move/from16 v23, v9

    move-wide/from16 v2, v21

    .line 416
    :goto_1d0
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->preferences:Landroid/content/SharedPreferences;

    const-string v9, "decimal_places"

    const-string v10, "-1"

    invoke-interface {v0, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_203

    .line 418
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v9}, Ljava/text/DecimalFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    .line 419
    invoke-virtual {v9, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 420
    invoke-virtual {v9, v0}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 421
    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v9, v0}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 422
    invoke-virtual {v9, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 423
    invoke-virtual {v9, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    :cond_203
    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    .line 428
    :try_start_207
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockNetwork:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_207 .. :try_end_20d} :catch_21c

    move-wide/from16 v3, v19

    double-to-float v5, v3

    move-object/from16 v24, v0

    move/from16 v29, v2

    move/from16 v30, v5

    :try_start_216
    invoke-virtual/range {v24 .. v30}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_216 .. :try_end_219} :catch_21a

    goto :goto_222

    :catch_21a
    move-exception v0

    goto :goto_21f

    :catch_21c
    move-exception v0

    move-wide/from16 v3, v19

    .line 431
    :goto_21f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 433
    :goto_222
    :try_start_222
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    double-to-float v5, v3

    move-object/from16 v24, v0

    move/from16 v29, v2

    move/from16 v30, v5

    invoke-virtual/range {v24 .. v30}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V
    :try_end_232
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_232} :catch_233

    goto :goto_237

    :catch_233
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    :goto_237
    :try_start_237
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockFused:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    double-to-float v5, v3

    move-object/from16 v24, v0

    move/from16 v29, v2

    move/from16 v30, v5

    invoke-virtual/range {v24 .. v30}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V
    :try_end_247
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_247} :catch_248

    goto :goto_24c

    :catch_248
    move-exception v0

    .line 441
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    :goto_24c
    :try_start_24c
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->testGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    double-to-float v5, v3

    move-object/from16 v24, v0

    move/from16 v29, v2

    move/from16 v30, v5

    invoke-virtual/range {v24 .. v30}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V
    :try_end_25c
    .catch Ljava/lang/Exception; {:try_start_24c .. :try_end_25c} :catch_25d

    goto :goto_261

    :catch_25d
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 448
    :goto_261
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 449
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 451
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->useplayserv:Z

    if-eqz v0, :cond_293

    .line 453
    :try_start_274
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v10, 0x1

    invoke-interface {v0, v2, v10}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 454
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockNetwork:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v5, v5, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_28b
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_28b} :catch_28c

    goto :goto_293

    :catch_28c
    move-exception v0

    .line 456
    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :cond_293
    :goto_293
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v29

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v30

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-boolean v5, v5, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    move-object/from16 v24, v0

    move/from16 v31, v2

    move/from16 v32, v5

    invoke-static/range {v24 .. v32}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$msendMessageUpdate(Lcom/rosteam/gpsemulator/servicex2484;DD[D[DFZ)V

    .line 461
    :try_start_2b0
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    cmpl-float v0, v0, v23

    if-ltz v0, :cond_2be

    const-wide/16 v9, 0x96

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2cf

    .line 462
    :cond_2be
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x384

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2cf
    .catch Ljava/lang/InterruptedException; {:try_start_2b0 .. :try_end_2cf} :catch_2cf

    :catch_2cf
    :goto_2cf
    add-float v6, v6, v16

    move v0, v14

    move v5, v15

    move/from16 v10, v17

    const/4 v2, 0x1

    goto/16 :goto_103

    :cond_2d8
    move v6, v0

    :goto_2d9
    move/from16 v17, v10

    goto/16 :goto_414

    :cond_2dd
    move/from16 v17, v10

    .line 467
    :try_start_2df
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockNetwork:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    array-length v5, v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-wide v20, v2, v5

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    array-length v5, v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-wide v22, v2, v5

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    double-to-float v5, v3

    move-object/from16 v19, v0

    move/from16 v24, v2

    move/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V
    :try_end_315
    .catch Ljava/lang/Exception; {:try_start_2df .. :try_end_315} :catch_316

    goto :goto_31a

    :catch_316
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 470
    :goto_31a
    :try_start_31a
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    array-length v5, v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-wide v20, v2, v5

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    array-length v5, v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-wide v22, v2, v5

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    double-to-float v5, v3

    move-object/from16 v19, v0

    move/from16 v24, v2

    move/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V
    :try_end_350
    .catch Ljava/lang/Exception; {:try_start_31a .. :try_end_350} :catch_351

    goto :goto_355

    :catch_351
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    :goto_355
    :try_start_355
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->testGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    array-length v5, v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-wide v20, v2, v5

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    array-length v5, v5

    const/16 v18, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-wide v22, v2, v5

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    double-to-float v3, v3

    move-object/from16 v19, v0

    move/from16 v24, v2

    move/from16 v25, v3

    invoke-virtual/range {v19 .. v25}, Lcom/rosteam/gpsemulator/MockLocationProvider;->pushLocation(DDFF)V
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_355 .. :try_end_38b} :catch_38c

    goto :goto_390

    :catch_38c
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    :goto_390
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->context:Landroid/content/Context;

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 477
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    .line 479
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->useplayserv:Z

    if-eqz v0, :cond_3c2

    .line 481
    :try_start_3a3
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v10, 0x1

    invoke-interface {v0, v2, v10}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 482
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockNetwork:Lcom/rosteam/gpsemulator/MockLocationProvider;

    iget-object v3, v3, Lcom/rosteam/gpsemulator/MockLocationProvider;->mockLocation:Landroid/location/Location;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockLocation(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/location/Location;)Lcom/google/android/gms/common/api/PendingResult;
    :try_end_3ba
    .catch Ljava/lang/Exception; {:try_start_3a3 .. :try_end_3ba} :catch_3bb

    goto :goto_3c2

    :catch_3bb
    move-exception v0

    .line 484
    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    :cond_3c2
    :goto_3c2
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v3

    array-length v3, v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    aget-wide v20, v2, v3

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v22, v2, v3

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v24

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v25

    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v2, v2, Lcom/rosteam/gpsemulator/servicex2484;->velocidad:F

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-boolean v3, v3, Lcom/rosteam/gpsemulator/servicex2484;->pause:Z

    move-object/from16 v19, v0

    move/from16 v26, v2

    move/from16 v27, v3

    invoke-static/range {v19 .. v27}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$msendMessageUpdate(Lcom/rosteam/gpsemulator/servicex2484;DD[D[DFZ)V

    .line 489
    :try_start_403
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x384

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_414
    .catch Ljava/lang/InterruptedException; {:try_start_403 .. :try_end_414} :catch_414

    .line 495
    :catch_414
    :goto_414
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v0

    array-length v0, v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    move/from16 v5, v17

    if-ne v5, v0, :cond_49f

    .line 496
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->loopMode:I

    const/4 v2, 0x2

    if-eqz v0, :cond_46c

    if-eq v0, v10, :cond_431

    if-eq v0, v2, :cond_42d

    goto :goto_42e

    :cond_42d
    const/4 v5, 0x0

    :goto_42e
    const/16 v18, 0x1

    goto :goto_4a1

    .line 507
    :cond_431
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 508
    iget-object v2, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v2

    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 510
    array-length v3, v0

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    :goto_44f
    if-ltz v3, :cond_46a

    .line 511
    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    aget-wide v8, v0, v3

    aput-wide v8, v5, v4

    .line 512
    iget-object v5, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v5

    aget-wide v8, v2, v3

    aput-wide v8, v5, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_44f

    :cond_46a
    const/4 v5, 0x0

    goto :goto_4a1

    :cond_46c
    move/from16 v18, v10

    .line 499
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v3

    iget-object v4, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v4}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v3, v4

    iget-object v3, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v3

    iget-object v7, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v7}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLongitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v7

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-wide v7, v3, v7

    invoke-static {v0, v4, v5, v7, v8}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$msendMessageStopStay(Lcom/rosteam/gpsemulator/servicex2484;DD)V

    .line 502
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/servicex2484;->-$$Nest$fgetmLatitude(Lcom/rosteam/gpsemulator/servicex2484;)[D

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v2

    move v5, v0

    move/from16 v7, v18

    goto :goto_4a1

    :cond_49f
    move/from16 v18, v10

    .line 525
    :goto_4a1
    iget-object v0, v1, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->stopPostFL:Z

    if-eqz v0, :cond_4a9

    const/4 v0, 0x0

    return-object v0

    :cond_4a9
    move/from16 v3, p1

    move/from16 v2, v18

    goto/16 :goto_89
.end method

.method public limpiarFakes()V
    .registers 4

    .line 623
    const-string v0, "fakegps"

    const-string v1, "Limpiar fakes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockNetwork:Lcom/rosteam/gpsemulator/MockLocationProvider;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MockLocationProvider;->shutdown()V

    .line 626
    :cond_e
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$postFL;->mockGPS:Lcom/rosteam/gpsemulator/MockLocationProvider;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MockLocationProvider;->shutdown()V

    .line 628
    :cond_15
    :try_start_15
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->setMockMode(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;

    .line 629
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->flushLocations(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    .line 630
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/servicex2484;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2f} :catch_30

    return-void

    :catch_30
    move-exception v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected onCancelled()V
    .registers 3

    .line 612
    const-string v0, "onCancelled"

    const-string v1, "cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 294
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/servicex2484$postFL;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 2

    .line 607
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/servicex2484$postFL;->limpiarFakes()V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 309
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 310
    iget-object v0, p0, Lcom/rosteam/gpsemulator/servicex2484$postFL;->this$0:Lcom/rosteam/gpsemulator/servicex2484;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/rosteam/gpsemulator/servicex2484;->stopPostFL:Z

    return-void
.end method
