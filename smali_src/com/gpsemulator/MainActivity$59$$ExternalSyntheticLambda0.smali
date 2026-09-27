.class public final synthetic Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/rosteam/gpsemulator/MainActivity$59;

.field public final synthetic f$1:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method public synthetic constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$59;Lcom/google/android/play/core/review/ReviewManager;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda0;->f$0:Lcom/rosteam/gpsemulator/MainActivity$59;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda0;->f$0:Lcom/rosteam/gpsemulator/MainActivity$59;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/play/core/review/ReviewManager;

    invoke-virtual {v0, v1, p1}, Lcom/rosteam/gpsemulator/MainActivity$59;->lambda$onClick$1$com-rosteam-gpsemulator-MainActivity$59(Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
