.class Lcom/rosteam/gpsemulator/busqueda$4$1;
.super Landroid/os/AsyncTask;
.source "busqueda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/busqueda$4;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end field

.field miDestination:Lcom/google/android/gms/maps/model/LatLng;

.field final synthetic this$1:Lcom/rosteam/gpsemulator/busqueda$4;

.field final synthetic val$matcher:Ljava/util/regex/Matcher;

.field final synthetic val$matcher2:Ljava/util/regex/Matcher;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/busqueda$4;Ljava/util/regex/Matcher;Ljava/util/regex/Matcher;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher:Ljava/util/regex/Matcher;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher2:Ljava/util/regex/Matcher;

    iput-object p4, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 151
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->addresses:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 161
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    const-string v0, "move"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_40

    .line 162
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 163
    iget-object v2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 164
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v3, p1

    float-to-double v5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->miDestination:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0

    .line 166
    :cond_40
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher2:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 167
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher2:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    const-string v3, "\u3001"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 168
    iget-object v2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$matcher2:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 169
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    float-to-double v3, p1

    float-to-double v5, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->miDestination:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0

    .line 172
    :cond_7c
    new-instance p1, Landroid/location/Geocoder;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    invoke-virtual {v0}, Lcom/rosteam/gpsemulator/busqueda;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 174
    :try_start_89
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$text:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->addresses:Ljava/util/List;

    if-eqz p1, :cond_a8

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9d

    .line 177
    const-string p1, "select"

    return-object p1

    .line 178
    :cond_9d
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->addresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_a8

    .line 179
    const-string p1, "notfound"
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_a7} :catch_aa

    return-object p1

    :cond_a8
    const/4 p1, 0x0

    return-object p1

    :catch_aa
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    const-string p1, "nointernet"

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 8

    .line 192
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->val$deleteText:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    check-cast p1, Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 196
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_12f

    .line 197
    :cond_2b
    const-string v0, "notfound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 198
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$textError:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$textError:Landroid/widget/TextView;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->place_not_found:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_12f

    .line 200
    :cond_45
    const-string v0, "nointernet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 201
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$textError:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$textError:Landroid/widget/TextView;

    sget v0, Lcom/rosteam/gpsemulator/R$string;->internet_connection_needed:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_12f

    .line 203
    :cond_5f
    const-string v0, "select"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 204
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 206
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->addresses:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    move v0, v1

    .line 207
    :goto_7f
    iget-object v2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->addresses:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_af

    .line 208
    iget-object v2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->addresses:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 209
    iget-object v2, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object v2, v2, Lcom/rosteam/gpsemulator/busqueda;->datos:Ljava/util/ArrayList;

    new-instance v3, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;

    iget-object v4, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->addresses:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;-><init>(ILandroid/location/Address;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 212
    :cond_af
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->searchAdapter:Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;

    invoke-virtual {p1}, Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;->notifyDataSetChanged()V

    .line 214
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->listResultados:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda;->searchAdapter:Lcom/rosteam/gpsemulator/busqueda$SearchListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 215
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->listResultados:Landroid/widget/ListView;

    new-instance v0, Lcom/rosteam/gpsemulator/busqueda$4$1$1;

    invoke-direct {v0, p0}, Lcom/rosteam/gpsemulator/busqueda$4$1$1;-><init>(Lcom/rosteam/gpsemulator/busqueda$4$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_12f

    .line 233
    :cond_d6
    const-string v0, "move"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12f

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->val$text:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "+"

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->miDestination:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->miDestination:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "+15"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    const-string v2, "cadena"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->miActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 238
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda;->miActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 240
    :cond_12f
    :goto_12f
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/rosteam/gpsemulator/busqueda$4$1;->this$1:Lcom/rosteam/gpsemulator/busqueda$4;

    iget-object v0, v0, Lcom/rosteam/gpsemulator/busqueda$4;->val$deleteText:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
