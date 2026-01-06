.class public Lcom/sec/ims/IMSRegistrationInfo;
.super Ljava/lang/Object;
.source "IMSRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IMSRegistrationInfo$ECMP_MODE;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/IMSRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mECMPMode:I

.field private mEPDGStatus:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mExpiryTime:I

.field private mFeatureMask:I

.field private mFeatureTags:Ljava/lang/String;

.field private mIMSCkIk:Ljava/lang/String;

.field private mLimitedMode:I

.field private mLocalProfileUri:Ljava/lang/String;

.field private mNetworkType:I

.field private mRegisterRetryOver:I

.field private mURIfromPAU:Ljava/lang/String;

.field private mURIfromPAU2nd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 252
    new-instance v0, Lcom/sec/ims/IMSRegistrationInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/IMSRegistrationInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/IMSRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/sec/ims/IMSRegistrationInfo;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;IILjava/lang/String;II)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 54
    iput p3, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    .line 55
    iput p4, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 56
    iput p5, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 57
    iput-object p6, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 58
    iput p7, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 59
    iput p8, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 60
    iput-object p9, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 61
    iput p10, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 62
    iput p11, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    return-void
.end method

.method private final initialize()V
    .locals 3

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    .line 85
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    const/4 v2, -0x1

    .line 86
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    .line 87
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    .line 88
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 89
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    .line 90
    iput v2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    .line 91
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    .line 93
    iput v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    .line 94
    iput-object v0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/ims/IMSRegistrationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 211
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/IMSRegistrationInfo;

    .line 213
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 214
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 218
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    .line 221
    :cond_1
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 222
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sec/ims/IMSRegistrationInfo;->clone()Lcom/sec/ims/IMSRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getECMPMode()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    return p0
.end method

.method public getEPDGStatus()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getExpiryTime()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    return p0
.end method

.method public getFeatureMask()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    return p0
.end method

.method public getFeatureTags()Ljava/lang/String;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-object p0
.end method

.method public getIMSCkIk()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    return-object p0
.end method

.method public getLimitedMode()I
    .locals 0

    .line 150
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    return p0
.end method

.method public getLocalProfileUri()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkType()I
    .locals 0

    .line 126
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    return p0
.end method

.method public getPAssociatedUri()Ljava/lang/String;
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    return-object p0
.end method

.method public getPAssociatedUri2nd()Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    return-object p0
.end method

.method public getRegisterRetryOver()I
    .locals 0

    .line 174
    iget p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    return p0
.end method

.method public setECMPMode(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    return-void
.end method

.method public setEPDGStatus(I)V
    .locals 0

    .line 178
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setExpiryTime(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    return-void
.end method

.method public setFeatureMask(I)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    return-void
.end method

.method public setFeatureTags(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    return-void
.end method

.method public setIMSCkIk(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    return-void
.end method

.method public setLimitedMode(I)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    return-void
.end method

.method public setLocalProfileUri(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    return-void
.end method

.method public setPAssociatedUri(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    return-void
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    return-void
.end method

.method public setRegisterRetryOver(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 235
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLocalProfileUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mExpiryTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mNetworkType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mECMPMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mIMSCkIk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mLimitedMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mRegisterRetryOver:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mEPDGStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Lcom/sec/ims/IMSRegistrationInfo;->mURIfromPAU2nd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p0, p0, Lcom/sec/ims/IMSRegistrationInfo;->mFeatureTags:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
