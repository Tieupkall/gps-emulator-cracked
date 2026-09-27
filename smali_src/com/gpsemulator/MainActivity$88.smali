.class Lcom/rosteam/gpsemulator/MainActivity$88;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rosteam/gpsemulator/MainActivity;->goPro()V
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

    .line 5582
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$88;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 5584
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$88;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    .line 5585
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$88;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$88;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget p2, p2, Lcom/rosteam/gpsemulator/MainActivity;->cantUsos:I

    const-string v0, "downloads"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5586
    iget-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$88;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    iget-object p1, p1, Lcom/rosteam/gpsemulator/MainActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
