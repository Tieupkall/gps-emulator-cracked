.class public Lcom/rosteam/gpsemulator/utils/RegUbic;
.super Ljava/lang/Object;
.source "RegUbic.java"


# instance fields
.field public bearing:F

.field public cadenaPref:Ljava/lang/String;

.field public ciudadpais:Ljava/lang/String;

.field public id:I

.field public lat:D

.field public lng:D

.field public modo:I

.field public name:Ljava/lang/String;

.field public pined:Z

.field public pinnedPlaceholder:Z

.field public prefName:Ljava/lang/String;

.field public puntos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field public zoom:F


# direct methods
.method public constructor <init>(Ljava/lang/String;DDF)V
    .registers 8

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->bearing:F

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    .line 23
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->pinnedPlaceholder:Z

    .line 26
    iput-object p1, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    .line 28
    iput-wide p4, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    .line 29
    iput p6, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDFFZ)V
    .registers 10

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->pinnedPlaceholder:Z

    .line 33
    iput-object p1, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->ciudadpais:Ljava/lang/String;

    .line 34
    iput-wide p2, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->lat:D

    .line 35
    iput-wide p4, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->lng:D

    .line 36
    iput p6, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    .line 37
    iput p7, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->bearing:F

    .line 38
    iput-boolean p8, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;FFZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;FFZ)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->pinnedPlaceholder:Z

    .line 42
    iput-object p1, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->name:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->modo:I

    .line 44
    iput-object p3, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->puntos:Ljava/util/List;

    .line 45
    iput p4, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->zoom:F

    .line 46
    iput p5, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->bearing:F

    .line 47
    iput-boolean p6, p0, Lcom/rosteam/gpsemulator/utils/RegUbic;->pined:Z

    return-void
.end method
