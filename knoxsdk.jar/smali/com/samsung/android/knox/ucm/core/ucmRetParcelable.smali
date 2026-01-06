.class public Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist mData:[B

.field public greylist mDataLength:I

.field public greylist mResult:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    iput-object p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    if-eqz p2, :cond_0

    array-length p1, p2

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UCMERRORTESTING: @ucmRetParcelable readFromParcel: dateLength = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ucmRetParcelable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mDataLength:I

    if-lez p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
