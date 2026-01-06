.class public Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseManageConnectivity.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public certificate:Ljava/lang/String;

.field public deviceConfig:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-config"
    .end annotation
.end field

.field public epdgAddresses:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "epdg-addresses"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public serviceNames:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/ServiceName;",
            ">;"
        }
    .end annotation
.end field

.field public sessionCookie:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session-cookie"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_0
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    .line 29
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    .line 31
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 33
    :cond_1
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    .line 35
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    sget-object v3, Lcom/sec/vsim/ericssonnsds/data/ServiceName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    goto :goto_2

    .line 39
    :cond_2
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    .line 41
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    goto :goto_3

    .line 44
    :cond_3
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    .line 46
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    goto :goto_4

    .line 49
    :cond_4
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    .line 51
    :goto_4
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 60
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 62
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->certificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 72
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->epdgAddresses:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 78
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->serviceNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 80
    :goto_2
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_3

    .line 83
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 84
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    :goto_3
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 87
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_4

    .line 89
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 90
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageConnectivity;->sessionCookie:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    :goto_4
    return-void
.end method
