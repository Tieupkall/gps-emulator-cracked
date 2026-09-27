.class Lcom/rosteam/gpsemulator/ItemAdapter$2;
.super Ljava/lang/Object;
.source "ItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/ItemAdapter;->onBindViewHolder(Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

.field final synthetic val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/ItemAdapter;Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;)V
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

    .line 103
    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 106
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result p1

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "item nro: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " list size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {v1}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$200(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkDelete"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$300(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$400(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/ItemAdapter;->setItemList(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetmDeleteListener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 111
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$2;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetmDeleteListener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;->onClicked(I)V

    :cond_51
    return-void
.end method
