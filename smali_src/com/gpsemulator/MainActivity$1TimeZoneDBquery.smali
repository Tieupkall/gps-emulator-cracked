.class Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->GetTime(DDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeZoneDBquery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field TimeZoneDBResult:Ljava/lang/String;

.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$repetido:Z


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Z)V
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

    .line 3931
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-boolean p2, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->val$repetido:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3931
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string p1, "HTTP RESPONSE: urlConnection.getResponseCode() TimeZoneDBResult: "

    const-string v0, "https://adrieto.pythonanywhere.com/time1/lat="

    .line 3942
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "timezone"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3943
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ultimoTimeZone: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GPS"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    iget-boolean v4, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->val$repetido:Z

    if-eqz v4, :cond_34

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 3946
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object v1, p1, Lcom/rosteam/gpsemulator/MainActivity;->zoneName:Ljava/lang/String;

    goto/16 :goto_cd

    .line 3952
    :cond_34
    :try_start_34
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x14

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    .line 3954
    const-string v1, "TimeZoneQuery"

    const-string v3, "va adrieto..."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    new-instance v1, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-wide v4, v0, Lcom/rosteam/gpsemulator/MainActivity;->GetTimeLat:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&lng="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-wide v3, v3, Lcom/rosteam/gpsemulator/MainActivity;->GetTimeLng:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoiYWRyaWFuIiwicGFzc3dvcmQiOiJsb2NvIn0.5yG_BGH8OsyOtDDlHWk4_jRW5iFb0-RBA78M6tXxc9M"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3958
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_73} :catch_e6

    .line 3959
    :try_start_73
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7d
    .catchall {:try_start_73 .. :try_end_7d} :catchall_da

    .line 3962
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->TimeZoneDBResult:Ljava/lang/String;

    .line 3963
    const-string v3, "GetTime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->TimeZoneDBResult:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->TimeZoneDBResult:Ljava/lang/String;

    const-string v4, "<zoneName>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    iget-object v5, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->TimeZoneDBResult:Ljava/lang/String;

    const-string v6, "</zoneName>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p1, Lcom/rosteam/gpsemulator/MainActivity;->zoneName:Ljava/lang/String;

    .line 3965
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v3, v3, Lcom/rosteam/gpsemulator/MainActivity;->zoneName:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3966
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_c5
    .catchall {:try_start_7d .. :try_end_c5} :catchall_d0

    .line 3967
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_da

    if-eqz v0, :cond_cd

    :try_start_ca
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_e6

    .line 3975
    :cond_cd
    :goto_cd
    const-string p1, "true"

    return-object p1

    :catchall_d0
    move-exception p1

    .line 3958
    :try_start_d1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_d5

    goto :goto_d9

    :catchall_d5
    move-exception v1

    :try_start_d6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d9
    throw p1
    :try_end_da
    .catchall {:try_start_d6 .. :try_end_da} :catchall_da

    :catchall_da
    move-exception p1

    if-eqz v0, :cond_e5

    :try_start_dd
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e1

    goto :goto_e5

    :catchall_e1
    move-exception v0

    :try_start_e2
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e5
    :goto_e5
    throw p1
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e6} :catch_e6

    :catch_e6
    move-exception p1

    .line 3970
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3971
    const-string p1, "false"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 3931
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 8

    const-string v0, "ZoneName: "

    .line 3980
    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_42

    .line 3983
    :try_start_a
    const-string p1, "onPostExecute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->zoneName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3986
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->timer:Ljava/util/Timer;

    .line 3987
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;)V

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->timerTask:Ljava/util/TimerTask;

    .line 4010
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->timer:Ljava/util/Timer;

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1TimeZoneDBquery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, p1, Lcom/rosteam/gpsemulator/MainActivity;->timerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_42

    :catch_42
    :cond_42
    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .line 3935
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
