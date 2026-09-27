.class Lcom/rosteam/gpsemulator/MainActivity$23$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$23;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$23;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$23;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2182
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$23$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2185
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$23$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$23;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$23;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetstartButton(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->callOnClick()Z

    return-void
.end method
