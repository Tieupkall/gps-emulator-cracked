.class Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->GetCiudadPais(DDFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CiudadPaisQuery"
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
.field ciudadpais:Ljava/lang/String;

.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$bearing:F

.field final synthetic val$lat:D

.field final synthetic val$lng:D

.field final synthetic val$zoom:F


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;DDFF)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4024
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-wide p2, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lat:D

    iput-wide p4, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lng:D

    iput p6, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$zoom:F

    iput p7, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$bearing:F

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->ciudadpais:Ljava/lang/String;

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

    .line 4024
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 4031
    new-instance v0, Landroid/location/Geocoder;

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 p1, 0x0

    .line 4034
    :try_start_e
    iget-wide v1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lat:D

    iget-wide v3, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lng:D

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_24

    :catch_18
    move-exception v0

    .line 4036
    const-string v1, "fakegps"

    const-string v2, "Error en geocoder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4037
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, p1

    :goto_24
    if-eqz v0, :cond_a5

    .line 4041
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a5

    const/4 v1, 0x0

    .line 4043
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    .line 4044
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v3}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v3

    .line 4046
    const-string v4, ", "

    if-nez v2, :cond_5c

    if-nez v3, :cond_4a

    .line 4048
    const-string v2, ""

    goto :goto_6d

    .line 4050
    :cond_4a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6d

    .line 4053
    :cond_5c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4056
    :goto_6d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 4057
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/rosteam/gpsemulator/MainActivity;->timeArea:Ljava/lang/String;

    .line 4058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->ciudadpais:Ljava/lang/String;

    :cond_a5
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

    .line 4024
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 11

    .line 4068
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->ciudadpais:Ljava/lang/String;

    iget-wide v2, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lat:D

    iget-wide v4, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lng:D

    iget v6, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$zoom:F

    iget v7, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$bearing:F

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/rosteam/gpsemulator/utils/RegUbic;-><init>(Ljava/lang/String;DDFFZ)V

    iput-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 4069
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->addToHis(Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    .line 4070
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p1, Lcom/rosteam/gpsemulator/MainActivity;->ultimaUbic:Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->updateLastLoc(Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    .line 4072
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.example.android.mocklocation.CIUDADPAIS"

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->ciudadpais:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4073
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ACTION_REFRESH_NOTIF"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4075
    :try_start_3a
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fgetmRequestIntent(Lcom/rosteam/gpsemulator/MainActivity;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_43} :catch_43

    .line 4079
    :catch_43
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->preferences:Landroid/content/SharedPreferences;

    const-string v0, ""

    const-string v1, "timearea"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4080
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "timeArea: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/MainActivity;->timeArea:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ultimoTimeArea: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fakegps"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4083
    iget-object v3, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-wide v4, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lat:D

    iget-wide v6, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->val$lng:D

    iget-object v0, v3, Lcom/rosteam/gpsemulator/MainActivity;->timeArea:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/rosteam/gpsemulator/MainActivity;->GetTime(DDZ)V

    .line 4084
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->timeArea:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4085
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$1CiudadPaisQuery;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
