.class Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;
.super Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;
.source "ItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mDelete:Landroid/widget/ImageView;

.field mEditText:Landroid/widget/EditText;

.field mPin:Landroid/widget/ImageView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/rosteam/gpsemulator/ItemAdapter;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/ItemAdapter;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->this$0:Lcom/rosteam/gpsemulator/ItemAdapter;

    .line 183
    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetmGrabHandleId(Lcom/rosteam/gpsemulator/ItemAdapter;)I

    move-result v0

    invoke-static {p1}, Lcom/rosteam/gpsemulator/ItemAdapter;->-$$Nest$fgetmDragOnLongPress(Lcom/rosteam/gpsemulator/ItemAdapter;)Z

    move-result p1

    invoke-direct {p0, p2, v0, p1}, Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter$ViewHolder;-><init>(Landroid/view/View;IZ)V

    .line 184
    sget p1, Lcom/rosteam/gpsemulator/R$id;->text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mText:Landroid/widget/TextView;

    .line 185
    sget p1, Lcom/rosteam/gpsemulator/R$id;->edit_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mEditText:Landroid/widget/EditText;

    .line 186
    sget p1, Lcom/rosteam/gpsemulator/R$id;->delete:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mDelete:Landroid/widget/ImageView;

    .line 187
    sget p1, Lcom/rosteam/gpsemulator/R$id;->pininrow:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/ItemAdapter$ViewHolder;->mPin:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onItemLongClicked(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method
