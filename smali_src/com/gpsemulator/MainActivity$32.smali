.class Lcom/rosteam/gpsemulator/MainActivity$32;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onStopClickStep2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$conToast:Z


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Z)V
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

    .line 2586
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-boolean p2, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->val$conToast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2589
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 2590
    :cond_d
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->polyline1:Lcom/google/android/gms/maps/model/Polyline;

    .line 2592
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 2593
    :cond_1f
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    .line 2595
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->stoptimertask()V

    .line 2596
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->botonset:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2597
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstopButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2598
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2599
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2600
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setHapticFeedbackEnabled(Z)V

    .line 2601
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget v4, Lcom/rosteam/gpsemulator/R$drawable;->botonfav:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2602
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0, v2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 2603
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    if-eqz v0, :cond_8c

    .line 2604
    const-string v0, "STOP|"

    const-string v2, "marker no es null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 2606
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    .line 2607
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->val$conToast:Z

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$32;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v1, Lcom/rosteam/gpsemulator/R$string;->location_cheater_stopped:I

    invoke-virtual {v0, v1, v3}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(II)V

    :cond_8c
    return-void
.end method
