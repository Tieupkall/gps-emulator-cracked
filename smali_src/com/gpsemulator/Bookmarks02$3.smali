.class Lcom/rosteam/gpsemulator/Bookmarks02$3;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "Bookmarks02.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/Bookmarks02;->setViewPagerAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/Bookmarks02;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/Bookmarks02;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$3;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 4

    .line 233
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 234
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$3;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/Bookmarks02;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    const-string v1, "pagbookmark"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
