.class Lcom/rosteam/gpsemulator/ItemAdapter;
.super Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;,
        Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;,
        Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter<",
        "Lcom/rosteam/gpsemulator/utils/RegUbic;",
        "Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public dragging:Z

.field private final listener:Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;

.field private mDeleteListener:Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

.field private mDragOnLongPress:Z

.field private mGrabHandleId:I

.field private mLayoutId:I

.field private mPinListener:Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

.field private modo:I

.field private tipo:I


# direct methods
.method static bridge synthetic -$$Nest$fgetlistener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->listener:Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeleteListener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mDeleteListener:Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDragOnLongPress(Lcom/rosteam/gpsemulator/ItemAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mDragOnLongPress:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGrabHandleId(Lcom/rosteam/gpsemulator/ItemAdapter;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mGrabHandleId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPinListener(Lcom/rosteam/gpsemulator/ItemAdapter;)Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mPinListener:Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodo(Lcom/rosteam/gpsemulator/ItemAdapter;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettipo(Lcom/rosteam/gpsemulator/ItemAdapter;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->tipo:I

    return p0
.end method

.method constructor <init>(Ljava/util/ArrayList;IIZILcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;IIZI",
            "Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;-><init>()V

    .line 43
    sget v0, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    iput v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    .line 47
    iput p2, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mLayoutId:I

    .line 48
    iput p3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mGrabHandleId:I

    .line 49
    iput-boolean p4, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mDragOnLongPress:Z

    .line 50
    iput p5, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->tipo:I

    .line 51
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->setItemList(Ljava/util/List;)V

    .line 52
    iput-object p6, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->listener:Lcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/rosteam/gpsemulator/ItemAdapter;)Ljava/util/List;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getUniqueItemId(I)J
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->id:I

    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/ItemAdapter;->onBindViewHolder(Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;I)V
    .registers 8

    .line 65
    invoke-super {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;->onBindViewHolder(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;I)V

    .line 66
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 67
    iget-object v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    .line 68
    :cond_19
    iget-object v1, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/rosteam/gpsemulator/ItemAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/rosteam/gpsemulator/ItemAdapter$1;-><init>(Lcom/rosteam/gpsemulator/ItemAdapter;Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    new-instance v1, Lcom/rosteam/gpsemulator/ItemAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/rosteam/gpsemulator/ItemAdapter$2;-><init>(Lcom/rosteam/gpsemulator/ItemAdapter;Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    new-instance v1, Lcom/rosteam/gpsemulator/ItemAdapter$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/rosteam/gpsemulator/ItemAdapter$3;-><init>(Lcom/rosteam/gpsemulator/ItemAdapter;ILcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-boolean v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    if-eqz v1, :cond_52

    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->ic_pin:I

    goto :goto_54

    :cond_52
    sget v1, Lcom/rosteam/gpsemulator/R$drawable;->ic_pin_unselected:I

    :goto_54
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->tipo:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_a5

    .line 136
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_68

    move v3, v1

    goto :goto_69

    :cond_68
    move v3, v2

    :goto_69
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_76

    move v3, v2

    goto :goto_77

    :cond_76
    move v3, v1

    :goto_77
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_84

    move v3, v1

    goto :goto_85

    :cond_84
    move v3, v2

    :goto_85
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 139
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_92

    move v3, v1

    goto :goto_93

    :cond_92
    move v3, v2

    :goto_93
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->EDITAR:I

    if-ne v3, v4, :cond_9f

    goto :goto_a0

    :cond_9f
    move v1, v2

    :goto_a0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10b

    :cond_a5
    const/4 v3, 0x1

    if-ne v0, v3, :cond_ee

    .line 143
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_b2

    move v3, v1

    goto :goto_b3

    :cond_b2
    move v3, v2

    :goto_b3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_c0

    move v3, v2

    goto :goto_c1

    :cond_c0
    move v3, v1

    :goto_c1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mEditText:Landroid/widget/EditText;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_ce

    move v3, v1

    goto :goto_cf

    :cond_ce
    move v3, v2

    :goto_cf
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 146
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    if-ne v3, v4, :cond_dc

    move v3, v1

    goto :goto_dd

    :cond_dc
    move v3, v2

    :goto_dd
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    iget v3, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    sget v4, Lcom/rosteam/gpsemulator/TabFragment;->EDITAR:I

    if-ne v3, v4, :cond_e9

    goto :goto_ea

    :cond_e9
    move v1, v2

    :goto_ea
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_10b

    :cond_ee
    const/4 v3, 0x2

    if-ne v0, v3, :cond_10b

    .line 150
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mGrabView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 153
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :cond_10b
    :goto_10b
    iget-object v0, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object p1, p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/rosteam/gpsemulator/ItemAdapter$4;

    invoke-direct {v0, p0, p2}, Lcom/rosteam/gpsemulator/ItemAdapter$4;-><init>(Lcom/rosteam/gpsemulator/ItemAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 27
    check-cast p1, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/ItemAdapter;->onBindViewHolder(Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/rosteam/gpsemulator/ItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;
    .registers 5

    .line 59
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mLayoutId:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 60
    new-instance p2, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;-><init>(Lcom/rosteam/gpsemulator/ItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setModo(I)V
    .registers 2

    .line 175
    iput p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->modo:I

    return-void
.end method

.method public setOnDeleteListener(Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mDeleteListener:Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    return-void
.end method

.method public setOnPinListener(Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter;->mPinListener:Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;

    return-void
.end method
