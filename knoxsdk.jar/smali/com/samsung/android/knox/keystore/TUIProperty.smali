.class public Lcom/samsung/android/knox/keystore/TUIProperty;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/TUIProperty;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist loginExpirationPeriod:I

.field public greylist loginRetry:I

.field public greylist pin:[B

.field public greylist secretImage:[B


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/keystore/TUIProperty$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/TUIProperty$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/TUIProperty;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/TUIProperty;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginRetry:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->loginExpirationPeriod:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->pin:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p0, p0, Lcom/samsung/android/knox/keystore/TUIProperty;->secretImage:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
