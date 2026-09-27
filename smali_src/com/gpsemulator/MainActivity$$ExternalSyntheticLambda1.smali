.class public final synthetic Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/rosteam/gpsemulator/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/rosteam/gpsemulator/MainActivity;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$$ExternalSyntheticLambda1;->f$0:Lcom/rosteam/gpsemulator/MainActivity;

    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->lambda$checarUpdate$1$com-rosteam-gpsemulator-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
