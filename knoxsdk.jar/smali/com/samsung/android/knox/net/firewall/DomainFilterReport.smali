.class public Lcom/samsung/android/knox/net/firewall/DomainFilterReport;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/net/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist mDomainUrl:Ljava/lang/String;

.field public greylist mPackageName:Ljava/lang/String;

.field public greylist mTimeStamp:J


# direct methods
.method static constructor greylist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterReport$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mDomainUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mPackageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mTimeStamp:J

    iput-object p4, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mDomainUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist getDomainUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mDomainUrl:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;->mDomainUrl:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
