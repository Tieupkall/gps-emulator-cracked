.class Lcom/rosteam/gpsemulator/MainActivity$46;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onManualRouteClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V
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

    .line 2869
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$46;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$46;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2871
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$46;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 2872
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$46;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->miCirculo:Lcom/google/android/gms/maps/model/Circle;

    .line 2873
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$46;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$46;->val$v:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$msetManualMode(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V

    return-void
.end method
