.class public Lcom/samsung/android/knox/license/RightsObject;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/license/RightsObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist expiryDate:J

.field private greylist instanceId:Ljava/lang/String;

.field private greylist issueDate:J

.field private greylist licenseType:Ljava/lang/String;

.field private greylist permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist serverUrl:Ljava/lang/String;

.field private greylist state:Ljava/lang/String;

.field private greylist uploadFrequencyTime:J

.field private greylist uploadTime:J


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/license/RightsObject$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/RightsObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/RightsObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/RightsObject;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor greylist <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/RightsObject;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getExpiryDate()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    return-wide v0
.end method

.method public greylist getInstanceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getIssueDate()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    return-wide v0
.end method

.method public greylist getLicenseType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPermissions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public greylist getServerUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getUploadFrequencyTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    return-wide v0
.end method

.method public greylist getUploadTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    return-wide v0
.end method

.method public greylist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public greylist setExpiryDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    return-void
.end method

.method public greylist setInstanceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    return-void
.end method

.method public greylist setIssueDate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    return-void
.end method

.method public greylist setLicenseType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    return-void
.end method

.method public greylist setPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    return-void
.end method

.method public greylist setServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public greylist setState(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    return-void
.end method

.method public greylist setUploadFrequencyTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    return-void
.end method

.method public greylist setUploadTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->instanceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->state:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->issueDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->expiryDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->licenseType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/RightsObject;->permissions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadFrequencyTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/knox/license/RightsObject;->uploadTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/samsung/android/knox/license/RightsObject;->serverUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
