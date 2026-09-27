.class Lcom/rosteam/gpsemulator/TabFragment$5;
.super Ljava/lang/Object;
.source "TabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/TabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/TabFragment;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/TabFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$5;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 146
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$5;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$mconfirmAndDeleteHistory(Lcom/rosteam/gpsemulator/TabFragment;)V

    return-void
.end method
