.class public Lcom/rosteam/gpsemulator/MainActivity$Group;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Group"
.end annotation


# instance fields
.field public final bearings:Ljava/util/List;

.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public registrosRutas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rosteam/gpsemulator/utils/RegUbic;",
            ">;"
        }
    .end annotation
.end field

.field public string:Ljava/lang/String;

.field final synthetic this$0:Lcom/rosteam/gpsemulator/MainActivity;

.field public final ubicaciones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field public final zoomes:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/rosteam/gpsemulator/MainActivity;Ljava/lang/String;)V
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

    .line 3618
    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$Group;->this$0:Lcom/rosteam/gpsemulator/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3613
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$Group;->children:Ljava/util/List;

    .line 3614
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$Group;->ubicaciones:Ljava/util/List;

    .line 3615
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$Group;->zoomes:Ljava/util/List;

    .line 3616
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$Group;->bearings:Ljava/util/List;

    .line 3617
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/rosteam/gpsemulator/MainActivity$Group;->registrosRutas:Ljava/util/List;

    .line 3619
    iput-object p2, p0, Lcom/rosteam/gpsemulator/MainActivity$Group;->string:Ljava/lang/String;

    return-void
.end method
