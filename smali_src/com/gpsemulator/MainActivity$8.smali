.class Lcom/rosteam/gpsemulator/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 1068
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$8;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1071
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$8;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->drawer:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 1072
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$8;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mnewRoute(Lcom/rosteam/gpsemulator/MainActivity;)V

    return-void
.end method
