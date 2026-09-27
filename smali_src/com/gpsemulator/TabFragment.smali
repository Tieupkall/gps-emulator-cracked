.class public Lcom/rosteam/gpsemulator/TabFragment;
.super Landroidx/fragment/app/Fragment;
.source "TabFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/TabFragment$MyDragItem;,
        Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;
    }
.end annotation


# static fields
.field static EDITAR:I = 0x1

.field public static final FAVORITOS:I = 0x0

.field public static final HISTORIAL:I = 0x2

.field static NORMAL:I = 0x0

.field public static final PINED:I = 0x3

.field public static final RUTAS:I = 0x1


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation
.end field

.field dataPasser:Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;

.field deleteLyt:Landroid/view/View;

.field listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

.field modo:I

.field placeholder:Landroid/view/View;

.field private tipo:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I
    .registers 1

    iget p0, p0, Lcom/rosteam/gpsemulator/TabFragment;->tipo:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mconfirmAndDeleteHistory(Lcom/rosteam/gpsemulator/TabFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/TabFragment;->confirmAndDeleteHistory()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlimpiarPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/TabFragment;->limpiarPrefs(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreescribirPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/rosteam/gpsemulator/TabFragment;->reescribirPrefs(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 33
    sget v0, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    iput v0, p0, Lcom/rosteam/gpsemulator/TabFragment;->modo:I

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 33
    sget v0, Lcom/rosteam/gpsemulator/TabFragment;->NORMAL:I

    iput v0, p0, Lcom/rosteam/gpsemulator/TabFragment;->modo:I

    .line 38
    iput p1, p0, Lcom/rosteam/gpsemulator/TabFragment;->tipo:I

    .line 39
    iput-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    return-void
.end method

.method private confirmAndDeleteHistory()V
    .registers 4

    .line 276
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/rosteam/gpsemulator/R$string;->deletehistory:I

    .line 277
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->deletehistorymessage:I

    .line 278
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/TabFragment$8;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/TabFragment$8;-><init>(Lcom/rosteam/gpsemulator/TabFragment;)V

    const v2, 0x104000a

    .line 279
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rosteam/gpsemulator/TabFragment$7;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/TabFragment$7;-><init>(Lcom/rosteam/gpsemulator/TabFragment;)V

    const/high16 v2, 0x1040000

    .line 296
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private limpiarPrefs(I)V
    .registers 7

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "limpiarPref() tipo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPSEmulator"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz p1, :cond_2b

    const/4 v2, 0x1

    if-eq p1, v2, :cond_28

    .line 247
    const-string p1, "histPosition"

    goto :goto_2d

    .line 255
    :cond_28
    const-string p1, "ruta"

    goto :goto_2d

    .line 253
    :cond_2b
    const-string p1, "favPosition"

    :goto_2d
    const/4 v2, 0x0

    .line 261
    :goto_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4f

    .line 270
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 266
    :cond_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e
.end method

.method private reescribirPrefs(I)V
    .registers 9

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    if-eq p1, v0, :cond_8

    .line 212
    const-string v1, "histPosition"

    goto :goto_d

    .line 220
    :cond_8
    const-string v1, "ruta"

    goto :goto_d

    .line 218
    :cond_b
    const-string v1, "favPosition"

    .line 223
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reescribir "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data.size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tabFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 228
    const-string v3, ""

    const/4 v4, 0x0

    :goto_40
    iget-object v5, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_9e

    if-ne p1, v0, :cond_57

    .line 230
    iget-object v3, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-static {v3}, Lcom/rosteam/gpsemulator/LocationUtils;->rutaToString(Lcom/rosteam/gpsemulator/utils/RegUbic;)Ljava/lang/String;

    move-result-object v3

    goto :goto_68

    :cond_57
    if-eqz p1, :cond_5c

    const/4 v5, 0x2

    if-ne p1, v5, :cond_68

    .line 232
    :cond_5c
    iget-object v3, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-virtual {p0, v3}, Lcom/rosteam/gpsemulator/TabFragment;->fav_histToString(Lcom/rosteam/gpsemulator/utils/RegUbic;)Ljava/lang/String;

    move-result-object v3

    .line 234
    :cond_68
    :goto_68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " posicion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cadena"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    :cond_9e
    return-void
.end method


# virtual methods
.method public fav_histToString(Lcom/rosteam/gpsemulator/utils/RegUbic;)Ljava/lang/String;
    .registers 6

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->bearing:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 205
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 206
    check-cast p1, Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment;->dataPasser:Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14

    .line 50
    sget p3, Lcom/rosteam/gpsemulator/R$layout;->fragment_tab:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 52
    sget p2, Lcom/rosteam/gpsemulator/R$id;->drag_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/rosteam/gpsemulator/draglistview/DragListView;

    .line 53
    invoke-virtual {p2}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 54
    new-instance p3, Lcom/rosteam/gpsemulator/TabFragment$1;

    invoke-direct {p3, p0}, Lcom/rosteam/gpsemulator/TabFragment$1;-><init>(Lcom/rosteam/gpsemulator/TabFragment;)V

    invoke-virtual {p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->setDragListListener(Lcom/rosteam/gpsemulator/draglistview/DragListView$DragListListener;)V

    .line 65
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    new-instance v9, Lcom/rosteam/gpsemulator/TabFragment$2;

    invoke-direct {v9, p0}, Lcom/rosteam/gpsemulator/TabFragment$2;-><init>(Lcom/rosteam/gpsemulator/TabFragment;)V

    .line 81
    new-instance v3, Lcom/rosteam/gpsemulator/ItemAdapter;

    iget-object v4, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    sget v5, Lcom/rosteam/gpsemulator/R$layout;->list_item:I

    sget v6, Lcom/rosteam/gpsemulator/R$id;->image:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/rosteam/gpsemulator/TabFragment;->tipo:I

    invoke-direct/range {v3 .. v9}, Lcom/rosteam/gpsemulator/ItemAdapter;-><init>(Ljava/util/ArrayList;IIZILcom/rosteam/gpsemulator/ItemAdapter$OnItemClickListener;)V

    iput-object v3, p0, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    .line 83
    new-instance p3, Lcom/rosteam/gpsemulator/TabFragment$3;

    invoke-direct {p3, p0}, Lcom/rosteam/gpsemulator/TabFragment$3;-><init>(Lcom/rosteam/gpsemulator/TabFragment;)V

    invoke-virtual {v3, p3}, Lcom/rosteam/gpsemulator/ItemAdapter;->setOnDeleteListener(Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;)V

    .line 102
    iget-object p3, p0, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    new-instance v2, Lcom/rosteam/gpsemulator/TabFragment$4;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/TabFragment$4;-><init>(Lcom/rosteam/gpsemulator/TabFragment;)V

    invoke-virtual {p3, v2}, Lcom/rosteam/gpsemulator/ItemAdapter;->setOnPinListener(Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;)V

    .line 121
    iget-object p3, p0, Lcom/rosteam/gpsemulator/TabFragment;->listAdapter:Lcom/rosteam/gpsemulator/ItemAdapter;

    invoke-virtual {p2, p3, v1}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->setAdapter(Lcom/rosteam/gpsemulator/draglistview/DragItemAdapter;Z)V

    .line 122
    invoke-virtual {p2, v0}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->setCanDragHorizontally(Z)V

    .line 123
    new-instance p3, Lcom/rosteam/gpsemulator/TabFragment$MyDragItem;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/rosteam/gpsemulator/R$layout;->list_item:I

    invoke-direct {p3, v2, v3}, Lcom/rosteam/gpsemulator/TabFragment$MyDragItem;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, p3}, Lcom/rosteam/gpsemulator/draglistview/DragListView;->setCustomDragItem(Lcom/rosteam/gpsemulator/draglistview/DragItem;)V

    .line 126
    sget p2, Lcom/rosteam/gpsemulator/R$id;->empyListPlaceholder:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->placeholder:Landroid/view/View;

    .line 127
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    const/16 p3, 0x8

    if-eqz p2, :cond_82

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_82

    .line 128
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->placeholder:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_87

    .line 130
    :cond_82
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->placeholder:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :goto_87
    iget p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->tipo:I

    const/4 v2, 0x2

    if-ne p2, v2, :cond_ea

    .line 134
    sget p2, Lcom/rosteam/gpsemulator/R$id;->botnEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 135
    sget p2, Lcom/rosteam/gpsemulator/R$id;->botnDelete:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    .line 136
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    if-eqz p2, :cond_da

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_da

    .line 137
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 138
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    sget p3, Lcom/rosteam/gpsemulator/R$id;->textDelete:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    sget p3, Lcom/rosteam/gpsemulator/R$id;->iconDelete:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 142
    :cond_da
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object p2, p0, Lcom/rosteam/gpsemulator/TabFragment;->deleteLyt:Landroid/view/View;

    new-instance p3, Lcom/rosteam/gpsemulator/TabFragment$5;

    invoke-direct {p3, p0}, Lcom/rosteam/gpsemulator/TabFragment$5;-><init>(Lcom/rosteam/gpsemulator/TabFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1

    :cond_ea
    if-eqz p2, :cond_f0

    if-ne p2, v1, :cond_ef

    goto :goto_f0

    :cond_ef
    return-object p1

    .line 150
    :cond_f0
    :goto_f0
    sget p2, Lcom/rosteam/gpsemulator/R$id;->botnEdit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 152
    iget-object p3, p0, Lcom/rosteam/gpsemulator/TabFragment;->data:Ljava/util/ArrayList;

    if-eqz p3, :cond_12d

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_12d

    .line 153
    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 154
    sget p3, Lcom/rosteam/gpsemulator/R$id;->text_edit:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    sget p3, Lcom/rosteam/gpsemulator/R$id;->icon_edit:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/TabFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$color;->gris_unselected2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 158
    :cond_12d
    sget p3, Lcom/rosteam/gpsemulator/R$id;->botnConfirm:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 159
    new-instance v0, Lcom/rosteam/gpsemulator/TabFragment$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/rosteam/gpsemulator/TabFragment$6;-><init>(Lcom/rosteam/gpsemulator/TabFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
