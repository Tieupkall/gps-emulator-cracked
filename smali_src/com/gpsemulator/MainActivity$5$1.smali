.class Lcom/rosteam/gpsemulator/MainActivity$5$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$5;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$5;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$5;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 868
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraMove()V
    .registers 14

    .line 871
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoApp(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_cf

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    if-eqz v0, :cond_cf

    .line 872
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result v0

    if-eq v0, v2, :cond_74

    .line 873
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/maps/model/LatLng;

    aput-object v4, v2, v3

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v4}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v6, v6, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v6}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v3, v2, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    return-void

    .line 874
    :cond_74
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result v0

    if-ne v0, v2, :cond_cf

    .line 875
    new-array v12, v1, [F

    .line 876
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    .line 877
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 876
    invoke-static/range {v4 .. v12}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 879
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$5;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    aget v1, v12, v3

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    :cond_cf
    return-void
.end method
