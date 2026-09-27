.class Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState$1;
.super Ljava/lang/Object;
.source "BoardView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;
    .registers 3

    .line 1174
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    invoke-direct {v0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1172
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;
    .registers 2

    .line 1178
    new-array p1, p1, [Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1172
    invoke-virtual {p0, p1}, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState$1;->newArray(I)[Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;

    move-result-object p1

    return-object p1
.end method
