.class Lcom/rosteam/gpsemulator/Bookmarks02$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "Bookmarks02.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/Bookmarks02;->cargarBannerAdmob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

.field final synthetic val$adViewAdMob:Lcom/google/android/gms/ads/AdView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/Bookmarks02;Lcom/google/android/gms/ads/AdView;)V
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

    .line 138
    iput-object p1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$2;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/Bookmarks02$2;->val$adViewAdMob:Lcom/google/android/gms/ads/AdView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 141
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 142
    const-string p1, "Bookmarks"

    const-string v0, "cargarBannerAdmob FAILED"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    .line 148
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 149
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$2;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/Bookmarks02;->bannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 150
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    iget-object v1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$2;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/Bookmarks02;->bannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget-object v0, p0, Lcom/rosteam/gpsemulator/Bookmarks02$2;->this$0:Lcom/rosteam/gpsemulator/Bookmarks02;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/Bookmarks02;->bannerContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/rosteam/gpsemulator/Bookmarks02$2;->val$adViewAdMob:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
