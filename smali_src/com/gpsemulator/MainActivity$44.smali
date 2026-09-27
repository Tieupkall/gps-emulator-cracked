.class Lcom/rosteam/gpsemulator/MainActivity$44;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onFavButtonClick(Landroid/view/View;)V
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

    .line 2819
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 2821
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$fputmodoApp(Lcom/rosteam/gpsemulator/MainActivity;I)V

    .line 2823
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->rutas:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 2830
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2831
    :goto_13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_34

    .line 2833
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->puntos:Ljava/util/List;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->currentRoute:Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->puntos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2835
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_34

    :cond_31
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    .line 2841
    :cond_34
    :goto_34
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p2, p1}, Lcom/rosteam/gpsemulator/MainActivity;->rewriteRutasEnPrefs(Ljava/util/ArrayList;)V

    .line 2843
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->onStopClickStep2(Z)V

    .line 2845
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->loadRutasFromPref()V

    .line 2846
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity;->loadPinned()Ljava/util/ArrayList;

    .line 2847
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->miPinnedAdapter:Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->miPinnedAdapter:Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;->notifyDataSetChanged()V

    .line 2849
    :cond_56
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    if-nez p1, :cond_67

    .line 2850
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-boolean p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    .line 2851
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$44;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/16 v0, 0x3c

    invoke-static {p1, p2, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mswitchPinnedList(Lcom/rosteam/gpsemulator/MainActivity;ZI)V

    :cond_67
    return-void
.end method
