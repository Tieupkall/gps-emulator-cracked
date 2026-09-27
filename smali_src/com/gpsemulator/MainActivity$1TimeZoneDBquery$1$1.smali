.class Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3989
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, " "

    .line 3992
    :try_start_2
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->zoneName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 3993
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x3

    .line 3995
    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 3996
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3998
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4000
    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/MainActivity;->textHoraFake:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v5, Lcom/rosteam/gpsemulator/R$string;->time_in_location:I

    invoke-virtual {v4, v5}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4001
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1$1;->this$2:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->textHoraFake:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception v0

    .line 4003
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
