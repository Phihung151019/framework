.class public Lcom/samsung/android/knox/EnrollData;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist TAG:Ljava/lang/String; = "EnrollData"


# instance fields
.field public greylist comment:Ljava/lang/String;

.field public greylist constrainedState:I

.field public greylist downloadUrl:Ljava/lang/String;

.field public greylist pkgName:Ljava/lang/String;

.field public greylist policyBitMask:I

.field public greylist signature:[B

.field public greylist targetPkgName:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/EnrollData$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnrollData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnrollData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/EnrollData;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getComment()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getConstrainedState()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    return p0
.end method

.method public greylist getDownloadUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPolicyBitMask()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    return p0
.end method

.method public greylist getSignature()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    return-object p0
.end method

.method public greylist getTargetPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public greylist setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    iput-object p4, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    iput-object p6, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    iput-object p7, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->comment:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->policyBitMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/EnrollData;->constrainedState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->downloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/EnrollData;->signature:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/EnrollData;->targetPkgName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
