.class Lcom/rosteam/gpsemulator/Bookmarks02$4;
.super Ljava/lang/Object;
.source "Bookmarks02.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/Bookmarks02;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/Bookmarks02;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/Bookmarks02;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$4;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 346
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$4;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/rosteam/gpsemulator/Bookmarks02;->saveIsPending:Z

    .line 347
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$4;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    # invokes: Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V
    invoke-static {p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->access$001(Lcom/rosteam/gpsemulator/Bookmarks02;)V

    return-void
.end method
