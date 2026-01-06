.class public Lcom/sec/ims/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CALL_STATE_ACTIVE:I = 0x1

.field public static final CALL_STATE_HOLD:I = 0x2

.field public static final CALL_STATE_INVALID:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOG_STATE_CONFIRMED:I = 0x2

.field public static final DIALOG_STATE_REJECTED:I = 0x4

.field public static final DIALOG_STATE_TERMINATED:I = 0x3

.field public static final DIALOG_STATE_TRYING:I = 0x1

.field public static final DIALOG_STATE_UNKNOWN:I = 0x0

.field public static final DIRECTION_INITIATOR:I = 0x0

.field public static final DIRECTION_RECIPIENT:I = 0x1

.field public static final MEDIA_DIRECTION_INACTIVE:I = 0x0

.field public static final MEDIA_DIRECTION_RECVONLY:I = 0x2

.field public static final MEDIA_DIRECTION_SENDONLY:I = 0x1

.field public static final MEDIA_DIRECTION_SENDRECV:I = 0x3

.field public static final STATE_CONNECTED:I = 0x1

.field public static final STATE_DIALING:I = 0x4

.field public static final STATE_DISCONNECTED:I = 0x2

.field public static final STATE_REJECTED:I = 0x3

.field public static final STATE_RINGING:I


# instance fields
.field private mAudioDirection:I

.field private mCallSlot:I

.field private mCallState:I

.field private mCallType:I

.field private mDeviceId:Ljava/lang/String;

.field private mDialogId:Ljava/lang/String;

.field private mDirection:I

.field private mIsExclusive:Z

.field private mIsPullAvailable:Z

.field private mIsVideoPortZero:Z

.field private mLocalDispName:Ljava/lang/String;

.field private mLocalUri:Ljava/lang/String;

.field private mMdmnExtNumber:Ljava/lang/String;

.field private mRemoteDispName:Ljava/lang/String;

.field private mRemoteUri:Ljava/lang/String;

.field private mSessionDescription:Ljava/lang/String;

.field private mSipCallId:Ljava/lang/String;

.field private mSipLocalTag:Ljava/lang/String;

.field private mSipRemoteTag:Ljava/lang/String;

.field private mState:I

.field private mVideoDirection:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Lcom/sec/ims/Dialog$1;

    invoke-direct {v0}, Lcom/sec/ims/Dialog$1;-><init>()V

    sput-object v0, Lcom/sec/ims/Dialog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mState:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mDirection:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mCallType:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mCallState:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    .line 112
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
    iput-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/Dialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/ims/Dialog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIZZ)V
    .locals 1

    move/from16 v0, p18

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    .line 72
    iput-object p7, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    .line 73
    iput-object p8, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    .line 74
    iput-object p9, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    .line 75
    iput-object p10, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    .line 77
    iput p11, p0, Lcom/sec/ims/Dialog;->mState:I

    .line 78
    iput p12, p0, Lcom/sec/ims/Dialog;->mDirection:I

    .line 79
    iput p13, p0, Lcom/sec/ims/Dialog;->mCallType:I

    .line 80
    iput p14, p0, Lcom/sec/ims/Dialog;->mCallState:I

    move/from16 p1, p15

    .line 81
    iput p1, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    move/from16 p1, p16

    .line 82
    iput p1, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    move/from16 p1, p17

    .line 83
    iput p1, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    .line 85
    iput-boolean v0, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    xor-int/lit8 p1, v0, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    move/from16 p1, p19

    .line 87
    iput-boolean p1, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    .line 88
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    return-void
.end method

.method private convertDirection(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    .line 346
    const-string p0, "initiator"

    return-object p0

    .line 344
    :cond_0
    const-string p0, "recipient"

    return-object p0
.end method

.method private convertMediaDirection(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    .line 361
    const-string p0, "inactive"

    return-object p0

    .line 359
    :cond_0
    const-string p0, "sendrecv"

    return-object p0

    .line 357
    :cond_1
    const-string p0, "recvonly"

    return-object p0

    .line 355
    :cond_2
    const-string p0, "sendonly"

    return-object p0
.end method

.method private convertState(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 335
    const-string p0, "terminated"

    return-object p0

    .line 333
    :cond_0
    const-string p0, "rejected"

    return-object p0

    .line 329
    :cond_1
    const-string p0, "confirmed"

    return-object p0

    .line 327
    :cond_2
    const-string p0, "trying"

    return-object p0
.end method

.method private getMsisdn(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-nez p0, :cond_0

    .line 249
    const-string p0, ""

    return-object p0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getAudioDirection()I
    .locals 0

    .line 202
    iget p0, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    return p0
.end method

.method public getCallSlot()I
    .locals 0

    .line 198
    iget p0, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    return p0
.end method

.method public getCallState()I
    .locals 0

    .line 194
    iget p0, p0, Lcom/sec/ims/Dialog;->mCallState:I

    return p0
.end method

.method public getCallType()I
    .locals 0

    .line 190
    iget p0, p0, Lcom/sec/ims/Dialog;->mCallType:I

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDialogId()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    return-object p0
.end method

.method public getDirection()I
    .locals 0

    .line 186
    iget p0, p0, Lcom/sec/ims/Dialog;->mDirection:I

    return p0
.end method

.method public getLocalDispName()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    return-object p0
.end method

.method public getLocalNumber()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/ims/Dialog;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalUri()Ljava/lang/String;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    return-object p0
.end method

.method public getMdmnExtNumber()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteDispName()Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteNumber()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/ims/Dialog;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteUri()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    return-object p0
.end method

.method public getSessionDescription()Ljava/lang/String;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getSipCallId()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getSipLocalTag()Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    return-object p0
.end method

.method public getSipRemoteTag()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    return-object p0
.end method

.method public getState()I
    .locals 0

    .line 178
    iget p0, p0, Lcom/sec/ims/Dialog;->mState:I

    return p0
.end method

.method public getTelephonyState()I
    .locals 1

    .line 236
    iget p0, p0, Lcom/sec/ims/Dialog;->mState:I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public getVideoDirection()I
    .locals 0

    .line 206
    iget p0, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    return p0
.end method

.method public isExclusive()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    return p0
.end method

.method public isHeld()Z
    .locals 1

    .line 228
    iget p0, p0, Lcom/sec/ims/Dialog;->mCallState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPullAvailable()Z
    .locals 0

    .line 216
    iget-boolean p0, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    return p0
.end method

.method public isVideoPortZero()Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    return p0
.end method

.method public setCallType(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/sec/ims/Dialog;->mCallType:I

    return-void
.end method

.method public setIsExclusive(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    return-void
.end method

.method public setIsPullAvailable(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    return-void
.end method

.method public setMdmnExtNumber(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    return-void
.end method

.method public setSessionDescription(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 182
    iput p1, p0, Lcom/sec/ims/Dialog;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dialog [mDialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSipCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSipLocalTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSipRemoteTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    .line 312
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalDispName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteDispName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/Dialog;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/Dialog;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/Dialog;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/Dialog;->mCallState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCallSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPullAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsVideoPortZero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    .line 318
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMdmnExtNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toXmlString()Ljava/lang/String;
    .locals 9

    .line 376
    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\">"

    const-string v2, "\t\t\t<identity display-name=\""

    const-string v3, "\t\t\t<identity>"

    const-string v4, "</identity>\n"

    if-eqz v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    iget-object v5, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 385
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    :goto_1
    iget v2, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    const-string v3, "</mediaDirection>\n"

    const-string v4, ""

    if-lez v2, :cond_2

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t\t\t\t<mediaType>audio</mediaType>\n\t\t\t\t<mediaDirection>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    .line 390
    invoke-direct {p0, v5}, Lcom/sec/ims/Dialog;->convertMediaDirection(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v4

    .line 393
    :goto_2
    iget v5, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    const-string v6, "\t\t\t</mediaAttributes>\n"

    const-string v7, "\t\t\t<mediaAttributes>\n"

    if-lez v5, :cond_3

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v4

    .line 397
    :goto_3
    iget v5, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    if-lez v5, :cond_4

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\t\t\t\t<mediaType>video</mediaType>\n\t\t\t\t<mediaDirection>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    .line 399
    invoke-direct {p0, v8}, Lcom/sec/ims/Dialog;->convertMediaDirection(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    move-object v3, v4

    .line 402
    :goto_4
    iget v5, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    if-lez v5, :cond_5

    .line 403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    :cond_5
    iget v3, p0, Lcom/sec/ims/Dialog;->mCallState:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    .line 407
    const-string v3, "yes"

    goto :goto_5

    .line 406
    :cond_6
    const-string v3, "no"

    .line 410
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t<dialog id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"\n\t\tcall-id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"\n\t\tlocal-tag=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" remote-tag=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" direction=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/ims/Dialog;->mDirection:I

    .line 414
    invoke-direct {p0, v6}, Lcom/sec/ims/Dialog;->convertDirection(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\">\n\t\t<sa:exclusive>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "</sa:exclusive>\n\t\t<state>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/ims/Dialog;->mState:I

    .line 416
    invoke-direct {p0, v6}, Lcom/sec/ims/Dialog;->convertState(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</state>\n\t\t<local>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t\t\t<target uri=\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\">\n\t\t\t\t<param pname=\"+sip.rendering\" pval=\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"/>\n\t\t\t</target>\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t\t</local>\n\t\t<remote>\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t\t</remote>\n\t\t<calltype>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/Dialog;->mCallType:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</calltype>\n\t\t<callslot>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</callslot>\n\t\t<session-description>"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</session-description>\n\t</dialog>\n"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mDialogId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mSipCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mSipLocalTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mSipRemoteTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mLocalUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mRemoteUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mLocalDispName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mRemoteDispName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mMdmnExtNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/sec/ims/Dialog;->mSessionDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    iget p2, p0, Lcom/sec/ims/Dialog;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget p2, p0, Lcom/sec/ims/Dialog;->mDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget p2, p0, Lcom/sec/ims/Dialog;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget p2, p0, Lcom/sec/ims/Dialog;->mCallState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget p2, p0, Lcom/sec/ims/Dialog;->mCallSlot:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget p2, p0, Lcom/sec/ims/Dialog;->mAudioDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget p2, p0, Lcom/sec/ims/Dialog;->mVideoDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean p2, p0, Lcom/sec/ims/Dialog;->mIsExclusive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-boolean p2, p0, Lcom/sec/ims/Dialog;->mIsPullAvailable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean p0, p0, Lcom/sec/ims/Dialog;->mIsVideoPortZero:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
