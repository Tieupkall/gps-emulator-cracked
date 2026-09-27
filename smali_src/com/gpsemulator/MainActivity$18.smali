.class Lcom/rosteam/gpsemulator/MainActivity$18;
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

    .line 1806
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1809
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object p1

    .line 1810
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1811
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_22

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1812
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_32

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetundoButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1813
    :cond_32
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    .line 1814
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_56

    .line 1815
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1816
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    .line 1817
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 1818
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object v2, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    .line 1820
    :cond_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 1821
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object v0

    .line 1822
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1823
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$18;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V

    :cond_79
    return-void
.end method
