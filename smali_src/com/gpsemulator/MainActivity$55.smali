.class Lcom/rosteam/gpsemulator/MainActivity$55;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->searchPlace(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$dialog:Landroidx/appcompat/app/AppCompatDialog;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroidx/appcompat/app/AppCompatDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3536
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$55;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$55;->val$dialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 3539
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$55;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance p2, Lcom/google/android/gms/maps/model/LatLng;

    iget-object p4, p0, Lcom/rosteam/gpsemulator/MainActivity$55;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p4, p4, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/location/Address;

    invoke-virtual {p4}, Landroid/location/Address;->getLatitude()D

    move-result-wide p4

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$55;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->addresses:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/location/Address;

    invoke-virtual {p3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v0

    invoke-direct {p2, p4, p5, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/high16 p3, 0x41700000    # 15.0f

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lcom/rosteam/gpsemulator/MainActivity;->moveTo(Lcom/google/android/gms/maps/model/LatLng;FF)V

    .line 3540
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$55;->val$dialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method
