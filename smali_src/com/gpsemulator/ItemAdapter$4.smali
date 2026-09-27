.class Lcom/rosteam/gpsemulator/ItemAdapter$4;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/ItemAdapter;I)V
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

    .line 159
    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    iput p2, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 161
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/ItemAdapter;)I

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/ItemAdapter;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    :cond_11
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetmodo(Lcom/rosteam/gpsemulator/ItemAdapter;)I

    move-result p1

    sget v0, Lcom/rosteam/gpsemulator/TabFragment;->EDITAR:I

    if-ne p1, v0, :cond_1c

    return-void

    .line 162
    :cond_1c
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetlistener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$900(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$4;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-interface {p1, v0}, Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;->onItemClick(Lcom/rosteam/gpsemulator/utils/RegUbic;)V

    return-void
.end method
