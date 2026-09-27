.class Lcom/rosteam/gpsemulator/MainActivity$59;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->rateThisApp()V
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

    .line 3892
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$59;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onClick$0(Lcom/google/android/gms/tasks/Task;)V
    .registers 1

    return-void
.end method


# virtual methods
.method synthetic lambda$onClick$1$com-rosteam-gpsemulator-MainActivity$59(Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 3902
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3903
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    .line 3905
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$59;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-interface {p1, v0, p2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 3906
    new-instance p2, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 3910
    :cond_1b
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3911
    const-string p2, "market://details?id=com.rosteam.gpsemulator"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3912
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$59;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p2, p1}, Lcom/rosteam/gpsemulator/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 3894
    sget-boolean p1, Lcom/rosteam/gpsemulator/App;->XIAOMI:Z

    if-eqz p1, :cond_1a

    .line 3895
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3896
    const-string p2, "mimarket://details?id=com.rosteam.gpsemulator&back=true|false&ref=refstr&startDownload=true"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3897
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$59;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p2, p1}, Lcom/rosteam/gpsemulator/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 3899
    :cond_1a
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$59;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p1

    .line 3900
    invoke-interface {p1}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 3901
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$59$$ExternalSyntheticLambda0;-><init>(Lcom/rosteam/gpsemulator/MainActivity$59;Lcom/google/android/play/core/review/ReviewManager;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
