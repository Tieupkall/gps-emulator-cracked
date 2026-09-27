.class Lcom/rosteam/gpsemulator/MainActivity$6$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$6;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$6;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1025
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1029
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    if-eqz p1, :cond_24

    .line 1030
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-static {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mgotoRoute(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    goto :goto_4b

    .line 1033
    :cond_24
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const-class p2, Lcom/rosteam/gpsemulator/servicex2484;

    invoke-static {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$misMyServiceRunning(Lcom/rosteam/gpsemulator/MainActivity;Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->onStopClickStep2(Z)V

    .line 1034
    :cond_38
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-static {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mgotoLocation(Lcom/rosteam/gpsemulator/MainActivity;Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    .line 1036
    :goto_4b
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$6;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    return-void
.end method
