.class Lcom/rosteam/gpsemulator/MainActivity$98;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->habilitarPRO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6002
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 6006
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-boolean v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    if-nez v0, :cond_5f

    .line 6007
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/rosteam/gpsemulator/MainActivity;->noAds:Z

    .line 6008
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "noads"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6009
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "numerofavoritos"

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 6010
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6012
    :try_start_26
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 6013
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6014
    iget-object v1, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6015
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->topBannerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6016
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->purchaseFromDrawerLyt:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6017
    iget-object v0, p0, Lcom/rosteam/gpsemulator/MainActivity$98;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/MainActivity;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->requestLayout()V

    .line 6018
    const-string v0, "myGPS"

    const-string v1, "eliminamos banner"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception v0

    .line 6020
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    return-void
.end method
