.class Lcom/rosteam/gpsemulator/Bookmarks02$1;
.super Ljava/lang/Object;
.source "Bookmarks02.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/Bookmarks02;->onCreate(Landroid/os/Bundle;)V
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

    .line 87
    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$1;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    .line 108
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 109
    sget v0, Lcom/rosteam/gpsemulator/R$id;->nav_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$1;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    sget v0, Lcom/rosteam/gpsemulator/R$id;->nav_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$1;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    .line 90
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 91
    sget v0, Lcom/rosteam/gpsemulator/R$id;->nav_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$1;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget v0, Lcom/rosteam/gpsemulator/R$id;->nav_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$1;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$color;->colorAccent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .registers 5

    .line 99
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object p1

    .line 100
    sget v0, Lcom/rosteam/gpsemulator/R$id;->nav_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$1;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-virtual {v1}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/rosteam/gpsemulator/R$color;->gris_unselected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    sget v0, Lcom/rosteam/gpsemulator/R$id;->nav_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$1;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/Bookmarks02;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/rosteam/gpsemulator/R$color;->gris_unselected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
