.class Lcom/rosteam/gpsemulator/busqueda$5;
.super Ljava/lang/Object;
.source "busqueda.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/busqueda;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/busqueda;

.field final synthetic val$searchText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;)V
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

    .line 257
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$5;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$5;->val$searchText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$5;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
