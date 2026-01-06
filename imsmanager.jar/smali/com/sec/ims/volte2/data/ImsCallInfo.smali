.class public Lcom/sec/ims/volte2/data/ImsCallInfo;
.super Ljava/lang/Object;
.source "ImsCallInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/data/ImsCallInfo$CallType;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$BearerState;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Radio;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Direction;,
        Lcom/sec/ims/volte2/data/ImsCallInfo$Qci;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallId:I

.field private mCallType:I

.field private mCmcCallTime:Ljava/lang/String;

.field private mCmcDeviceId:Ljava/lang/String;

.field private mDirection:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mIsConferenceCall:Z

.field private mIsDowngradedAtEstablish:Z

.field private mIsDowngradedVideoCall:Z

.field private mIsSamsungMdmnCall:Z

.field private mNumberPlus:Ljava/lang/String;

.field private mPeerUri:Ljava/lang/String;

.field private mRatInfo:I

.field private mVideoBearerState:I

.field private mVideoNGbrBearerState:I

.field private mVoiceBearerState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Lcom/sec/ims/volte2/data/ImsCallInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/volte2/data/ImsCallInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/volte2/data/ImsCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIZZIIIILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    .line 77
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    .line 80
    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    .line 97
    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    .line 98
    iput p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    .line 99
    iput-boolean p3, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 100
    iput-boolean p4, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    .line 101
    iput p5, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 102
    iput p6, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 103
    iput p7, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 104
    iput p8, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    .line 105
    iput-object p9, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    .line 106
    iput-object p10, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    .line 107
    iput p11, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    .line 108
    iput-boolean p12, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    const/4 v1, -0x1

    .line 65
    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    .line 66
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    const/4 v2, 0x3

    .line 68
    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 69
    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 70
    iput v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 71
    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    .line 72
    const-string v2, ""

    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    .line 75
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    .line 77
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    .line 80
    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    .line 83
    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/volte2/data/ImsCallInfo-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/volte2/data/ImsCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCallId()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    return p0
.end method

.method public getCallType()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    return p0
.end method

.method public getCmcCallTime()Ljava/lang/String;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    return-object p0
.end method

.method public getCmcDeviceId()Ljava/lang/String;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDedicatedBearerState(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 217
    :cond_0
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    return p0

    .line 212
    :cond_1
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    return p0

    .line 208
    :cond_2
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    return p0
.end method

.method public getDirection()I
    .locals 0

    .line 255
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    .line 243
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPeerUri()Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    return-object p0
.end method

.method public getRatInfo()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    return p0
.end method

.method public isConferenceCall()Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    return p0
.end method

.method public isDowngradedAtEstablish()Z
    .locals 0

    .line 239
    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    return p0
.end method

.method public isDowngradedVideoCall()Z
    .locals 0

    .line 235
    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    return p0
.end method

.method public isMOCall()Z
    .locals 1

    .line 259
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isMTCall()Z
    .locals 2

    .line 264
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public isSamsungMdmnCall()Z
    .locals 0

    .line 273
    iget-boolean p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return p0
.end method

.method public setCmcCallTime(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcCallTime:Ljava/lang/String;

    return-void
.end method

.method public setCmcDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setNumberPlus(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mNumberPlus:Ljava/lang/String;

    return-void
.end method

.method public setRatInfo(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    return-void
.end method

.method public setSamsungMdmnCall(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callId: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], callType: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    const-string v2, "UNKNOWN"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    if-eq v1, v3, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CALL_TYPE_VIDEO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "CALL_TYPE_VOICE"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], Direction: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget v1, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    if-eqz v1, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 185
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PULLED_MT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 182
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "PULLED_MO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 179
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 176
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], isDowngradedVideoCall : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "], isDowngradedAtEstablish : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "], VoiceBearerState : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], VideoBearerState : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], VideoNGbrBearerState : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], isConferenceCall : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "], mIsSamsungMdmnCall : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "], mRatInfo : ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedVideoCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsDowngradedAtEstablish:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVoiceBearerState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoBearerState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mVideoNGbrBearerState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mPeerUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsConferenceCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mIsSamsungMdmnCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object p2, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mCmcDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget p0, p0, Lcom/sec/ims/volte2/data/ImsCallInfo;->mRatInfo:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
