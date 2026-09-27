.class Lcom/rosteam/gpsemulator/MainActivity$23;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$miGroup:Landroid/widget/RadioGroup;

.field final synthetic val$opcReverse:Landroid/widget/RadioButton;

.field final synthetic val$opcStop:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2133
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->val$opcStop:Landroid/widget/RadioButton;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->val$opcReverse:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->val$miGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 2136
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    const v0, 0x40666666    # 3.6f

    div-float/2addr p2, v0

    iput p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    .line 2137
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->val$opcStop:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    .line 2138
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->loopMode:I

    goto :goto_2b

    .line 2140
    :cond_19
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->val$opcReverse:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2141
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->loopMode:I

    goto :goto_2b

    .line 2144
    :cond_26
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x2

    iput v1, p1, Lcom/rosteam/gpsemulator/MainActivity;->loopMode:I

    .line 2147
    :goto_2b
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->val$miGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const-string v2, "loopmode"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2148
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "valor a guardar: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setVelocidad"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->misKMxHora:F

    const-string v2, "velocidad"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 2150
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2152
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmodoApp(Lcom/rosteam/gpsemulator/MainActivity;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_db

    .line 2153
    const-string p1, "StartContinuos"

    const-string v1, "SE VUELVE DE PAUSA"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->ic_pause:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2155
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2156
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 2157
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->route_resumed:I

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    .line 2159
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->velocidad:F

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 2160
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->loopMode:I

    const-string v1, "loopMode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2161
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ACTION_RESUME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2163
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2164
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void

    .line 2169
    :cond_db
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->currentMark:Lcom/google/android/gms/maps/model/Marker;

    if-eqz p1, :cond_f8

    .line 2171
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ACTION_STOP"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2172
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->stopService(Landroid/content/Intent;)Z

    const/16 p1, 0x190

    goto :goto_f9

    :cond_f8
    move p1, v0

    .line 2176
    :goto_f9
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x5

    invoke-static {p2, v1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 2179
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetfavButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2181
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 2182
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$23$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$23$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$23;)V

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
