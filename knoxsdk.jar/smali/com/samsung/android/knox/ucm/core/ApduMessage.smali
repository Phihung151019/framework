.class public Lcom/samsung/android/knox/ucm/core/ApduMessage;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ucm/core/ApduMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist errorCode:I

.field public greylist message:[B

.field public greylist messageType:I

.field public greylist status:I


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ucm/core/ApduMessage$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/ucm/core/ApduMessage$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method

.method public constructor greylist <init>(III[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    iput p2, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    iput p3, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    iput-object p4, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->status:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->errorCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget p2, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->messageType:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ApduMessage;->message:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
