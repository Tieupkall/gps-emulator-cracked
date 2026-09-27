.class Lcom/rosteam/gpsemulator/MainActivity$70;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4731
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 4735
    const-string p1, "message"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object p1

    .line 4736
    const-string v0, "latitudes"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v0

    .line 4737
    const-string v1, "longitudes"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v1

    .line 4738
    const-string v2, "pause"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 4739
    const-string v4, "velocidad"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p2

    const v4, 0x3e8e38e4

    cmpl-float p2, p2, v4

    const/4 v4, 0x1

    if-ltz p2, :cond_12e

    .line 4742
    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v5, v5, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v5, v5, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_d8

    .line 4743
    :cond_3c
    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v5}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 4744
    invoke-virtual {v7, v4}, Lcom/google/android/gms/maps/model/PolylineOptions;->geodesic(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v7

    .line 4745
    invoke-virtual {v7, v3}, Lcom/google/android/gms/maps/model/PolylineOptions;->clickable(Z)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v7

    new-array v8, v3, [Lcom/google/android/gms/maps/model/LatLng;

    .line 4746
    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/PolylineOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v7

    .line 4743
    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v6

    iput-object v6, v5, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    .line 4747
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 4749
    :goto_61
    array-length v7, v0

    if-ge v6, v7, :cond_73

    .line 4750
    new-instance v7, Lcom/google/android/gms/maps/model/LatLng;

    aget-wide v8, v0, v6

    aget-wide v10, v1, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_61

    .line 4753
    :cond_73
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 4754
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    new-instance v1, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setStartCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 4755
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    new-instance v1, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 4756
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    new-instance v1, Lcom/google/android/gms/maps/model/CustomCap;

    sget v5, Lcom/rosteam/gpsemulator/R$drawable;->arrow2:I

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    iget-object v6, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v6, v7}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v1, v5, v6}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Lcom/google/android/gms/maps/model/BitmapDescriptor;F)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setEndCap(Lcom/google/android/gms/maps/model/Cap;)V

    .line 4757
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v1, v5}, Lcom/rosteam/gpsemulator/MainActivity;->convertDpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V

    .line 4758
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/rosteam/gpsemulator/R$color;->colorRuta:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V

    .line 4759
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Polyline;->setJointType(I)V

    .line 4763
    :cond_d8
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstopButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz v2, :cond_109

    .line 4766
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 4768
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->ic_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4769
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->botondelete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4770
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_12e

    .line 4774
    :cond_109
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 4775
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->ic_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4776
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->botondelete:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 4777
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 4810
    :cond_12e
    :goto_12e
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_145

    .line 4811
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    aget-wide v1, p1, v3

    aget-wide v3, p1, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/Marker;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    .line 4813
    :cond_145
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    aget-wide v6, p1, v3

    aget-wide v8, p1, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 4814
    invoke-virtual {v2, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v2

    if-ltz p2, :cond_16c

    .line 4815
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$70;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/rosteam/gpsemulator/R$string;->route:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_187

    :cond_16c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v5, p1, v3

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, ", "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    aget-wide v3, p1, v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_187
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    .line 4816
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->zIndex(F)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    sget p2, Lcom/rosteam/gpsemulator/R$drawable;->fakegpsmarker:I

    .line 4817
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 4813
    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    iput-object p1, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    return-void
.end method
