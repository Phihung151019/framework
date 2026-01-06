.class public Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist SIM_CHANGED:I = 0x2

.field public static final greylist SIM_INSERTED:I = 0x3

.field public static final greylist SIM_REMOVED:I = 0x1


# instance fields
.field public greylist changeOperation:I

.field public greylist changeTime:J

.field public greylist currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

.field public greylist previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->readFromParcel(Landroid/os/Parcel;)V

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    new-instance v0, Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/deviceinfo/SimInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->changeOperation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->previousSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/knox/deviceinfo/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/samsung/android/knox/deviceinfo/SimChangeInfo;->currentSimInfo:Lcom/samsung/android/knox/deviceinfo/SimInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/deviceinfo/SimInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
