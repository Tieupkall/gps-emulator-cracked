.class Lcom/rosteam/gpsemulator/TabFragment$4;
.super Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;
.source "TabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/TabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/TabFragment;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/TabFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-direct {p0}, Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(I)V
    .registers 5

    .line 105
    invoke-super {p0, p1}, Lcom/rosteam/gpsemulator/ItemAdapter$ItemAdapterClickListener;->onClicked(I)V

    .line 107
    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v0}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 108
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$mlimpiarPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V

    .line 109
    iget-object p1, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {p1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgettipo(Lcom/rosteam/gpsemulator/TabFragment;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$mreescribirPrefs(Lcom/rosteam/gpsemulator/TabFragment;I)V

    return-void

    .line 111
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "valores: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->prefName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object v1, v1, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rePIN"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/TabFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    invoke-static {v1}, Lcom/rosteam/gpsemulator/LocationUtils;->rutaToString(Lcom/rosteam/gpsemulator/utils/RegUbic;)Ljava/lang/String;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/rosteam/gpsemulator/TabFragment$4;->this$0:Lcom/rosteam/gpsemulator/TabFragment;

    invoke-static {v2}, Lcom/rosteam/gpsemulator/TabFragment;->-$$Nest$fgetdata(Lcom/rosteam/gpsemulator/TabFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rosteam/gpsemulator/utils/RegUbic;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/utils/RegUbic;->prefName:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
