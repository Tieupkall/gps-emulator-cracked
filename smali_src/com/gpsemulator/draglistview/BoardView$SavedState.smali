.class Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BoardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rosteam/gpsemulator/draglistview/BoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentColumn:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1172
    new-instance v0, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState$1;

    invoke-direct {v0}, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState$1;-><init>()V

    sput-object v0, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 1157
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;->currentColumn:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;I)V
    .registers 3

    .line 1152
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1153
    iput p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;->currentColumn:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;ILcom/rosteam/gpsemulator/draglistview/BoardView-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1168
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1169
    iget p2, p0, Lcom/rosteam/gpsemulator/draglistview/BoardView$SavedState;->currentColumn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
