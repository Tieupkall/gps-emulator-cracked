.class Lcom/rosteam/gpsemulator/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 842
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .registers 5

    .line 847
    const-string v0, "fakegps"

    :try_start_2
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    sget v2, Lcom/rosteam/gpsemulator/R$raw;->map_style:I

    .line 848
    invoke-static {v1, v2}, Lcom/google/android/gms/maps/model/MapStyleOptions;->loadRawResourceStyle(Landroid/content/Context;I)Lcom/google/android/gms/maps/model/MapStyleOptions;

    move-result-object v1

    .line 847
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 851
    const-string v1, "Style parsing failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v1

    .line 854
    const-string v2, "Can\'t find style. Error: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmap(Lcom/rosteam/gpsemulator/MainActivity;Lcom/google/android/gms/maps/GoogleMap;)V

    .line 858
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 859
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 860
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->setBuildingsEnabled(Z)V

    .line 861
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5d

    .line 863
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 866
    :cond_5d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 868
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p1

    new-instance v2, Lcom/rosteam/gpsemulator/MainActivity$5$1;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/MainActivity$5$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$5;)V

    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraMoveListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraMoveListener;)V

    .line 885
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->reiniciarMap()V

    .line 886
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstopButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 887
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 888
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 889
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$5;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mprocessIntent(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method
