.class Lcom/rosteam/gpsemulator/MainActivity$37$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity$37;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rosteam/gpsemulator/MainActivity$37;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity$37;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2695
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$37$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2698
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$37$1;->this$1:Lcom/rosteam/gpsemulator/MainActivity$37;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity$37;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->imm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void
.end method
