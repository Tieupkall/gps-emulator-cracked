.class Lcom/rosteam/gpsemulator/MainActivity$6;
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

    .line 1010
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12

    .line 1013
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->loadPinned()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    .line 1014
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    new-instance v1, Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v2}, Lcom/rosteam/gpsemulator/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v4, v4, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;-><init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->miPinnedAdapter:Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;

    .line 1015
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinedList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->miPinnedAdapter:Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1017
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2e

    const/16 v1, 0xe6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1019
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_63

    .line 1021
    new-instance v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->nothing_here_yet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/rosteam/gpsemulator/utils/RegUbic;-><init>(Ljava/lang/String;DDF)V

    .line 1022
    iput-boolean v2, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->pinnedPlaceholder:Z

    .line 1023
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->pinnedTemp:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3c

    goto :goto_6f

    .line 1025
    :cond_63
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->pinedList:Landroid/widget/ListView;

    new-instance v3, Lcom/rosteam/gpsemulator/MainActivity$6$1;

    invoke-direct {v3, p0}, Lcom/rosteam/gpsemulator/MainActivity$6$1;-><init>(Lcom/rosteam/gpsemulator/MainActivity$6;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1041
    :goto_6f
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v3, v1, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    xor-int/2addr v2, v3

    iput-boolean v2, v1, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    .line 1042
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    sget v2, Lcom/rosteam/gpsemulator/R$id;->pinnecicon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/rosteam/gpsemulator/MainActivity;->pinview:Landroid/widget/ImageView;

    .line 1043
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$6;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v1, p1, Lcom/rosteam/gpsemulator/MainActivity;->pinedClosed:Z

    invoke-static {p1, v1, v0}, Lcom/rosteam/gpsemulator/MainActivity;->-$$Nest$mswitchPinnedList(Lcom/rosteam/gpsemulator/MainActivity;ZI)V

    return-void
.end method
