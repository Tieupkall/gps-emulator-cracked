.class Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PinnedAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/rosteam/gpsemulator/utils/RegUbic;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;


# direct methods
.method public constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;)V"
        }
    .end annotation

    .line 6119
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 p1, 0x0

    .line 6120
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 6125
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    if-nez p2, :cond_17

    .line 6127
    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$PinnedAdapter;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->ctw:Landroid/view/ContextThemeWrapper;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/rosteam/gpsemulator/R$layout;->pinned_row:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 6129
    :cond_17
    sget p3, Lcom/rosteam/gpsemulator/R$id;->pin_name:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 6130
    sget v0, Lcom/rosteam/gpsemulator/R$id;->icon_pinned_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 6131
    iget-object v1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 6132
    iget-object v1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6133
    sget p3, Lcom/rosteam/gpsemulator/R$drawable;->pinned_route:I

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_40

    .line 6135
    :cond_36
    iget-object v1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6136
    sget p3, Lcom/rosteam/gpsemulator/R$drawable;->pinned_location:I

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6138
    :goto_40
    iget-boolean p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->pinnedPlaceholder:Z

    if-eqz p1, :cond_48

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_48
    return-object p2
.end method
