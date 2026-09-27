.class Lcom/rosteam/gpsemulator/MainActivity$101$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$101;->onConsentFormLoadSuccess(Lcom/google/android/ump/ConsentForm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$101;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$101;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6098
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$101$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$101;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .registers 2

    .line 6102
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$101$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$101;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$101;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->loadForm()V

    return-void
.end method
