.class public Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;
.super Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;
.source "ResponseGetMsisdnAuthStatus.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isRealTMOID:Ljava/lang/Boolean;

.field public msisdns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus$1;

    invoke-direct {v0}, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus$1;-><init>()V

    sput-object v0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;-><init>(Landroid/os/Parcel;)V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 15
    .local v0, "isRealTMOIDVal":B
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->isRealTMOID:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_2

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    .line 18
    iget-object v1, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    const-class v2, Lcom/sec/vsim/ericssonnsds/data/PendingMSISDN;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    goto :goto_2

    .line 20
    :cond_2
    iput-object v3, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    .line 22
    :goto_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 31
    invoke-super {p0, p1, p2}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 32
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->isRealTMOID:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->isRealTMOID:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/data/ResponseGetMsisdnAuthStatus;->msisdns:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 43
    :goto_1
    return-void
.end method
