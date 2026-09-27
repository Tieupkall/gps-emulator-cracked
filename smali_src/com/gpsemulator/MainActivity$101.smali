.class Lcom/rosteam/gpsemulator/MainActivity$101;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->loadForm()V
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

    .line 6091
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$101;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentFormLoadSuccess(Lcom/google/android/ump/ConsentForm;)V
    .registers 4

    .line 6094
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$101;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p1, v0, Lcom/rosteam/gpsemulator/MainActivity;->consentForm:Lcom/google/android/ump/ConsentForm;

    .line 6095
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$101;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 6096
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$101;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$101$1;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/MainActivity$101$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$101;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/ump/ConsentForm;->show(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    :cond_19
    return-void
.end method
