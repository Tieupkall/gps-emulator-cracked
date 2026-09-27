.class Lcom/rosteam/gpsemulator/MainActivity$61;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->readFileFromUri(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$tfavs:Ljava/util/ArrayList;

.field final synthetic val$troutes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 4356
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->val$tfavs:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->val$troutes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 p1, 0x2

    .line 4360
    :try_start_1
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->val$tfavs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->val$troutes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mreemplazarBookmarks(Lcom/rosteam/gpsemulator/MainActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 4361
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->bookmarks_added:I

    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-void

    .line 4363
    :catch_17
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$61;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->something_went_wrong:I

    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/rosteam/gpsemulator/MainActivity;->miToast(Ljava/lang/String;I)V

    return-void
.end method
