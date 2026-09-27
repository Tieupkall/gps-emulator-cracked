.class Lcom/rosteam/gpsemulator/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onStartContinuousButtonClick(Landroid/view/View;)V
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

    .line 1888
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13

    .line 1891
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result p1

    const/16 v0, 0x67

    const/4 v1, 0x0

    if-ne p1, v0, :cond_53

    .line 1892
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/16 v0, 0x66

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;I)V

    const/4 p1, 0x1

    .line 1893
    new-array v10, p1, [F

    .line 1894
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    .line 1895
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 1894
    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 1897
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    aget v0, v10, v1

    float-to-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    return-void

    .line 1899
    :cond_53
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 1900
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    .line 1901
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetundoButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1902
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetundoButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1903
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$19;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
