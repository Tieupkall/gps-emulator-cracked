.class Lcom/rosteam/gpsemulator/MainActivity$52;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->setAutomaticMode(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/view/View;)V
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

    .line 2968
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$52;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$52;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2970
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$52;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$52;->val$v:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/rosteam/gpsemulator/MainActivity;->onRewardedClick(Landroid/view/View;)V

    return-void
.end method
