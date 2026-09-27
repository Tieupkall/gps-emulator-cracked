.class public Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "Bookmarks02.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/Bookmarks02;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPager2Adapter"
.end annotation


# instance fields
.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rosteam/gpsemulator/Bookmarks02;


# direct methods
.method public constructor <init>(Lcom/rosteam/gpsemulator/Bookmarks02;Landroidx/fragment/app/FragmentActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    .line 246
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;->fragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 261
    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$ViewPager2Adapter;->fragments:Ljava/util/ArrayList;

    return-void
.end method
