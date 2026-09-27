.class Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchUrl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field calculatingRouteDialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;


# direct methods
.method private constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 3170
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3171
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget p1, Lcom/rosteam/gpsemulator/R$string;->calculating_route:I

    .line 3172
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/rosteam/gpsemulator/R$string;->wait:I

    .line 3173
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 3174
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 3175
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->calculatingRouteDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/MainActivity-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;-><init>(Lcom/rosteam/gpsemulator/MainActivity;)V

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

    .line 3170
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3185
    const-string v0, ""

    .line 3187
    :try_start_2
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-static {v1, p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mdownloadUrl(Lcom/rosteam/gpsemulator/MainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3188
    const-string p1, "Background Task data"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception p1

    .line 3190
    const-string v1, "Background Task"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1f
    const-wide/16 v1, 0x578

    .line 3194
    :try_start_21
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_24} :catch_24

    :catch_24
    return-object v0
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

    .line 3170
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5

    .line 3202
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3203
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->calculatingRouteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 3204
    new-instance v0, Lcom/rosteam/gpsemulator/MainActivity$ParserTask;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity$ParserTask;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/MainActivity-IA;)V

    const/4 v1, 0x1

    .line 3205
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/MainActivity$ParserTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .line 3179
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$FetchUrl;->calculatingRouteDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 3180
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
