.class public Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;
.super Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;
.source "ResponseManageLocationAndTC.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addressId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address-id"
    .end annotation
.end field

.field public aidExpiration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aid-expiration"
    .end annotation
.end field

.field public locationStatus:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location-status"
    .end annotation
.end field

.field public serverData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server-data"
    .end annotation
.end field

.field public serverUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "server-url"
    .end annotation
.end field

.field public serviceStatus:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service-status"
    .end annotation
.end field

.field public tcStatus:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tc-status"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;-><init>(Landroid/os/Parcel;)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 21
    .local v0, "locationStatusVal":B
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move-object v5, v3

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 23
    .local v5, "tcStatusVal":B
    if-ne v5, v4, :cond_2

    move-object v1, v3

    goto :goto_3

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_4
    iput-object v3, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serviceStatus:Ljava/lang/Integer;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/NSDSResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 39
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->locationStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->tcStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    :goto_1
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serviceStatus:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 52
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 53
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serviceStatus:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    :goto_2
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->serverUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->addressId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseManageLocationAndTC;->aidExpiration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
