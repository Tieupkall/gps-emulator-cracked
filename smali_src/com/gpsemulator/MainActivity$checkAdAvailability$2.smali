.class Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/rosteam/gpsemulator/App$OnShowAdCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;

.field final synthetic val$animation:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;Landroid/animation/AnimatorSet;)V
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

    .line 1210
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$2;->this$1:Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$2;->val$animation:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowAdComplete()V
    .registers 2

    .line 1213
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$checkAdAvailability$2;->val$animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
