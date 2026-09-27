.class Lcom/rosteam/gpsemulator/busqueda$4;
.super Ljava/lang/Object;
.source "busqueda.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/busqueda;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rosteam/gpsemulator/busqueda;

.field final synthetic val$deleteText:Landroid/widget/ImageView;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$searchProgress:Landroid/widget/ProgressBar;

.field final synthetic val$searchText:Landroid/widget/EditText;

.field final synthetic val$textError:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/rosteam/gpsemulator/busqueda;Landroid/widget/EditText;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iput-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchProgress:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$deleteText:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p6, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$textError:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6

    .line 136
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_5e

    const/16 p1, 0x42

    if-ne p2, p1, :cond_5e

    .line 138
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$searchText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4a

    .line 140
    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "lastSearch"

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    iget-object p2, p2, Lcom/rosteam/gpsemulator/busqueda;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    const-string p2, "[-+]?\\d{1,3}([.]\\d+)?, *[-+]?\\d{1,3}([.]\\d+)?"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 144
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 146
    const-string v0, "[-+]?\\d{1,3}([.]\\d+)?\u3001 *[-+]?\\d{1,3}([.]\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/rosteam/gpsemulator/busqueda$4$1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/rosteam/gpsemulator/busqueda$4$1;-><init>(Lcom/rosteam/gpsemulator/busqueda$4;Ljava/util/regex/Matcher;Ljava/util/regex/Matcher;Ljava/lang/String;)V

    new-array p1, p3, [Ljava/lang/Object;

    .line 243
    invoke-virtual {v1, p1}, Lcom/rosteam/gpsemulator/busqueda$4$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5c

    .line 246
    :cond_4a
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$textError:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/rosteam/gpsemulator/busqueda$4;->val$textError:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$4;->this$0:Lcom/rosteam/gpsemulator/busqueda;

    sget p3, Lcom/rosteam/gpsemulator/R$string;->enter_name:I

    invoke-virtual {p2, p3}, Lcom/rosteam/gpsemulator/busqueda;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5c
    const/4 p1, 0x1

    return p1

    :cond_5e
    return p3
.end method
