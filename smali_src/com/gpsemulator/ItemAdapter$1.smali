.class Lcom/rosteam/gpsemulator/ItemAdapter$1;
.super Ljava/lang/Object;
.source "ItemAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 70
    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$1;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/ItemAdapter$1;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$1;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/ItemAdapter;->dragging:Z

    if-nez v0, :cond_3c

    .line 87
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter$1;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {v0}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$000(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$1;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 89
    const-string v1, "+"

    const-string v2, " "

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v1, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 91
    iput-object p1, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    goto :goto_2d

    .line 93
    :cond_2b
    iput-object p1, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    .line 95
    :goto_2d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$1;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    # getter for: Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;
    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->access$100(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$1;->val$holder:Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
