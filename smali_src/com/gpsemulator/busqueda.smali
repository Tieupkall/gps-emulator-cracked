.class public Lcom/rosteam/gpsemulator/busqueda;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "busqueda.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;,
        Lcom/rosteam/gpsemulator/busqueda$ItemSearch;
    }
.end annotation


# instance fields
.field datos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/busqueda$ItemSearch;",
            ">;"
        }
    .end annotation
.end field

.field editor:Landroid/content/SharedPreferences$Editor;

.field listResultados:Landroid/widget/ListView;

.field mBanner:Landroid/view/View;

.field miActivity:Landroid/app/Activity;

.field preferences:Landroid/content/SharedPreferences;

.field searchAdapter:Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;

.field ultimasBusquedas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/busqueda$ItemSearch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private recuperarBusquedas()V
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda;->preferences:Landroid/content/SharedPreferences;

    sget v1, Lcom/rosteam/gpsemulator/R$string;->rosarioarg:I

    invoke-virtual {p0, v1}, Lcom/rosteam/gpsemulator/busqueda;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastSearch"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    new-instance v2, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .line 53
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget p1, Lcom/rosteam/gpsemulator/R$style;->AppTheme_PopupOverlay:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->setTheme(I)V

    .line 56
    sget p1, Lcom/rosteam/gpsemulator/R$layout;->activity_busqueda:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->setContentView(I)V

    .line 58
    sget p1, Lcom/rosteam/gpsemulator/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 59
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/busqueda;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/busqueda;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 65
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda;->preferences:Landroid/content/SharedPreferences;

    .line 66
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda;->editor:Landroid/content/SharedPreferences$Editor;

    .line 68
    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 70
    sget p1, Lcom/rosteam/gpsemulator/R$id;->search_edit:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    .line 71
    sget p1, Lcom/rosteam/gpsemulator/R$id;->boton_delete_text:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    .line 73
    sget p1, Lcom/rosteam/gpsemulator/R$id;->error_search:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    .line 75
    sget p1, Lcom/rosteam/gpsemulator/R$id;->search_progress:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/widget/ProgressBar;

    .line 76
    sget p1, Lcom/rosteam/gpsemulator/R$id;->lista_resultados_busqueda:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda;->listResultados:Landroid/widget/ListView;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/busqueda;->recuperarBusquedas()V

    .line 85
    new-instance p1, Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    invoke-direct {p1, p0, p0, v0}, Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;-><init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda;->searchAdapter:Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;

    .line 86
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda;->listResultados:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda;->listResultados:Landroid/widget/ListView;

    new-instance v0, Lcom/rosteam/gpsemulator/busqueda$1;

    invoke-direct {v0, p0, v2}, Lcom/rosteam/gpsemulator/busqueda$1;-><init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    iput-object p0, p0, Lcom/rosteam/gpsemulator/busqueda;->miActivity:Landroid/app/Activity;

    .line 104
    new-instance p1, Lcom/rosteam/gpsemulator/busqueda$2;

    invoke-direct {p1, p0, v2, v5}, Lcom/rosteam/gpsemulator/busqueda$2;-><init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance p1, Lcom/rosteam/gpsemulator/busqueda$3;

    invoke-direct {p1, p0, v6, v4}, Lcom/rosteam/gpsemulator/busqueda$3;-><init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    new-instance v0, Lcom/rosteam/gpsemulator/busqueda$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/rosteam/gpsemulator/busqueda$4;-><init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 256
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 257
    new-instance v0, Lcom/rosteam/gpsemulator/busqueda$5;

    invoke-direct {v0, p0, v2}, Lcom/rosteam/gpsemulator/busqueda$5;-><init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    new-instance p1, Lcom/rosteam/gpsemulator/busqueda$6;

    invoke-direct {p1, p0, v5, v2}, Lcom/rosteam/gpsemulator/busqueda$6;-><init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/busqueda;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
