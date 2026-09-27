.class Lcom/rosteam/gpsemulator/busqueda$ItemSearch;
.super Ljava/lang/Object;
.source "busqueda.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/busqueda;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemSearch"
.end annotation


# instance fields
.field address:Landroid/location/Address;

.field nombre:Ljava/lang/String;

.field tipo:I


# direct methods
.method public constructor <init>(ILandroid/location/Address;)V
    .registers 3

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput p1, p0, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->tipo:I

    .line 329
    iput-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->address:Landroid/location/Address;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput p1, p0, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->tipo:I

    .line 333
    iput-object p2, p0, Lcom/rosteam/gpsemulator/busqueda$ItemSearch;->nombre:Ljava/lang/String;

    return-void
.end method
