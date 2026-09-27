.class Lcom/rosteam/gpsemulator/ItemAdapter$3;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/ItemAdapter;ILcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    iput p2, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 119
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$500(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$600(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    .line 120
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$700(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->setItemList(Ljava/util/List;)V

    .line 121
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$800(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-boolean p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    if-eqz p1, :cond_47

    .line 122
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->ic_pin:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_50

    .line 124
    :cond_47
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    sget v0, Lcom/rosteam/gpsemulator/R$drawable;->ic_pin_unselected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :goto_50
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetmPinListener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 128
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetmPinListener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    move-result-object p1

    iget v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$3;->val$position:I

    invoke-virtual {p1, v0}, Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;->onClicked(I)V

    :cond_63
    return-void
.end method
