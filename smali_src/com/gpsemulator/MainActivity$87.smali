.class Lcom/rosteam/gpsemulator/MainActivity$87;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V
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

    .line 5547
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$87;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 5552
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$87;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->toastAnim:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 5549
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$87;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->toastAnim:Z

    return-void
.end method
