.class Lcom/rosteam/gpsemulator/MainActivity$40;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onFavButtonClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$txtUrl:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/EditText;)V
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

    .line 2727
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->val$txtUrl:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 2729
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->val$txtUrl:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2730
    const-string p2, "+"

    const-string v0, " "

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2731
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 2732
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetundoButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2733
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->botondelete:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2734
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetundoButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2735
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->ic_play:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2736
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->val$txtUrl:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2737
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v1, Lcom/rosteam/gpsemulator/R$id;->createRouteLyt:I

    invoke-virtual {p2, v1}, Lcom/rosteam/gpsemulator/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2742
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result p2

    const/16 v1, 0x66

    if-eq p2, v1, :cond_7a

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoRuta(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result p2

    const/16 v1, 0x67

    if-ne p2, v1, :cond_71

    goto :goto_7a

    .line 2745
    :cond_71
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Polyline;->getPoints()Ljava/util/List;

    move-result-object p2

    goto :goto_8e

    .line 2743
    :cond_7a
    :goto_7a
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Circle;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Circle;->getRadius()D

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lcom/rosteam/gpsemulator/LocationUtils;->generateCirclePoints(Lcom/google/android/gms/maps/model/LatLng;D)Ljava/util/List;

    move-result-object p2

    .line 2748
    :goto_8e
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->polylinePending:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2749
    :cond_9b
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    const/4 v3, 0x1

    invoke-static {p2, p1, v3, v1, v2}, Lcom/rosteam/gpsemulator/LocationUtils;->rutaToString(Ljava/util/List;Ljava/lang/String;IFF)Ljava/lang/String;

    move-result-object p1

    .line 2750
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v2, v1, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->rutaToPrefs(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->currentRuta:Ljava/lang/String;

    .line 2751
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->loadRutasFromPref()V

    .line 2753
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p1, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iput-object v1, p1, Lcom/rosteam/gpsemulator/MainActivity;->currentRoute:Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 2755
    new-instance p1, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 2756
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_ea
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_fa

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/LatLng;

    .line 2757
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_ea

    .line 2759
    :cond_fa
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object p1

    const/16 p2, 0x50

    .line 2761
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 2762
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmap(Lcom/rosteam/gpsemulator/MainActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object p2

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {p2, p1, v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;ILcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V

    .line 2766
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v3, :cond_126

    .line 2767
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget p2, Lcom/rosteam/gpsemulator/R$string;->ruta_paso_final:I

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void

    .line 2769
    :cond_126
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$40;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget p2, Lcom/rosteam/gpsemulator/R$string;->ruta_paso_ruta_guardada:I

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void
.end method
