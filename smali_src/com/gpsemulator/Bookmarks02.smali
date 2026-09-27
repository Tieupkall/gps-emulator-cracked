.class public Lcom/rosteam/gpsemulator/Bookmarks02;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Bookmarks02.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;
.implements Lcom/rosteam/gpsemulator/TabFragment$OnDataPass;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;
    }
.end annotation


# instance fields
.field bannerContainer:Landroid/widget/LinearLayout;

.field numerofavoritos:I

.field preferences:Landroid/content/SharedPreferences;

.field saveIsPending:Z

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;

.field titles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field viewPager2:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->saveIsPending:Z

    return-void
.end method

.method static synthetic access$001(Lcom/rosteam/gpsemulator/Bookmarks02;)V
    .registers 1

    .line 39
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method private cargarBannerAdmob()V
    .registers 5

    .line 124
    const-string v0, "Bookmarks"

    const-string v1, "cargarBannerAdmob"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    .line 126
    const-string v1, "ca-app-pub-4161078187932834/4822802799"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 127
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 128
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    .line 129
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 130
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 132
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    .line 133
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 135
    invoke-static {p0, v2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 138
    new-instance v2, Lcom/rosteam/gpsemulator/Bookmarks02$2;

    invoke-direct {v2, p0, v0}, Lcom/rosteam/gpsemulator/Bookmarks02$2;-><init>(Lcom/rosteam/gpsemulator/Bookmarks02;Lcom/google/android/gms/ads/AdView;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 158
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method


# virtual methods
.method public loadFavsFromPref()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    .line 270
    :goto_c
    iget v2, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->numerofavoritos:I

    if-ge v1, v2, :cond_3b

    .line 272
    iget-object v2, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "favPosition"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 275
    invoke-static {v2}, Lcom/rosteam/gpsemulator/LocationUtils;->parsePrefToUbic(Ljava/lang/String;)Lcom/rosteam/gpsemulator/utils/RegUbic;

    move-result-object v3

    .line 276
    iput-object v2, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->cadenaPref:Ljava/lang/String;

    .line 277
    iput v1, v3, Lcom/rosteam/gpsemulator/utils/RegUbic;->id:I

    .line 278
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_3b
    return-object v0
.end method

.method public onBackPressed()V
    .registers 4

    .line 334
    const-string v0, "Boorkmarks02"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-boolean v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->saveIsPending:Z

    if-eqz v0, :cond_3f

    .line 336
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/rosteam/gpsemulator/R$style;->Theme_Custom_Dialog:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 337
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/rosteam/gpsemulator/R$style;->CustomAlertDialog:I

    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/rosteam/gpsemulator/R$string;->discard_title:I

    .line 338
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard_summary:I

    .line 339
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->cancel:I

    new-instance v2, Lcom/rosteam/gpsemulator/Bookmarks02$5;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/Bookmarks02$5;-><init>(Lcom/rosteam/gpsemulator/Bookmarks02;)V

    .line 340
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$string;->discard:I

    new-instance v2, Lcom/rosteam/gpsemulator/Bookmarks02$4;

    invoke-direct {v2, p0}, Lcom/rosteam/gpsemulator/Bookmarks02$4;-><init>(Lcom/rosteam/gpsemulator/Bookmarks02;)V

    .line 344
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 359
    :cond_3f
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onConfigureTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V
    .registers 6

    .line 207
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$layout;->nav_tab:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 208
    sget v1, Lcom/rosteam/gpsemulator/R$id;->nav_label:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    sget v1, Lcom/rosteam/gpsemulator/R$id;->nav_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-nez p2, :cond_2f

    .line 210
    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->ic_star:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2f
    const/4 v2, 0x1

    if-ne p2, v2, :cond_37

    .line 211
    sget v2, Lcom/rosteam/gpsemulator/R$drawable;->route:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_37
    const/4 v2, 0x2

    if-ne p2, v2, :cond_3f

    .line 212
    sget p2, Lcom/rosteam/gpsemulator/R$drawable;->ic_history:I

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    :cond_3f
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 51
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/rosteam/gpsemulator/R$style;->AppTheme_PopupOverlay:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->setTheme(I)V

    .line 55
    sget p1, Lcom/rosteam/gpsemulator/R$layout;->activity_bookmarks02:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->setContentView(I)V

    .line 58
    sget p1, Lcom/rosteam/gpsemulator/R$id;->toolbar:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 59
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 60
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 63
    sget p1, Lcom/rosteam/gpsemulator/R$id;->pager:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    .line 64
    sget p1, Lcom/rosteam/gpsemulator/R$id;->tab_layout:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 66
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->preferences:Landroid/content/SharedPreferences;

    .line 69
    sget p1, Lcom/rosteam/gpsemulator/R$id;->banner_container:I

    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/Bookmarks02;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->bannerContainer:Landroid/widget/LinearLayout;

    .line 70
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "noads"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_59

    .line 71
    invoke-direct {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->cargarBannerAdmob()V

    .line 74
    :cond_59
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "numerofavoritos"

    const/16 v2, 0xa

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->numerofavoritos:I

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->titles:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/rosteam/gpsemulator/R$string;->favorites:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/rosteam/gpsemulator/R$string;->routes:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->titles:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/rosteam/gpsemulator/R$string;->history:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->setViewPagerAdapter()V

    .line 85
    new-instance p1, Lcom/google/android/material/tabs/TabLayoutMediator;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p1, v0, v2, p0}, Lcom/google/android/material/tabs/TabLayoutMediator;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayoutMediator$TabConfigurationStrategy;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayoutMediator;->attach()V

    .line 87
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v0, Lcom/rosteam/gpsemulator/Bookmarks02$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/Bookmarks02$1;-><init>(Lcom/rosteam/gpsemulator/Bookmarks02;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;)V

    .line 115
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->selectTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    .line 117
    iget-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "pagbookmark"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 118
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public onDataPass(Z)V
    .registers 2

    .line 309
    iput-boolean p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->saveIsPending:Z

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 366
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 367
    const-string v0, "Boorkmarks02"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSupportNavigateUp()Z
    .registers 2

    .line 218
    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method

.method public setViewPagerAdapter()V
    .registers 6

    .line 223
    new-instance v0, Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;

    invoke-direct {v0, p0, p0}, Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;-><init>(Lcom/rosteam/gpsemulator/Bookmarks02;Landroidx/fragment/app/FragmentActivity;)V

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v2, Lcom/rosteam/gpsemulator/TabFragment;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/rosteam/gpsemulator/Bookmarks02;->loadFavsFromPref()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/rosteam/gpsemulator/TabFragment;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v2, Lcom/rosteam/gpsemulator/TabFragment;

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/rosteam/gpsemulator/LocationUtils;->loadRutasFromPref(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/rosteam/gpsemulator/TabFragment;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v2, Lcom/rosteam/gpsemulator/TabFragment;

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/rosteam/gpsemulator/LocationUtils;->loadHisFromPref(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/rosteam/gpsemulator/TabFragment;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {v0, v1}, Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;->setData(Ljava/util/ArrayList;)V

    .line 229
    iget-object v1, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 230
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02;->viewPager2:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/rosteam/gpsemulator/Bookmarks02$3;

    invoke-direct {v1, p0}, Lcom/rosteam/gpsemulator/Bookmarks02$3;-><init>(Lcom/rosteam/gpsemulator/Bookmarks02;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method
