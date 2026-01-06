.class public abstract Lcom/android/internal/telephony/Connection;
.super Lcom/android/internal/telephony/ConnectionBase;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialState;,
        Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;,
        Lcom/android/internal/telephony/Connection$PostDialListener;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$Capability;,
        Lcom/android/internal/telephony/Connection$ListenerBase;
    }
.end annotation


# static fields
.field public static final blacklist ADHOC_CONFERENCE_ADDRESS:Ljava/lang/String; = "tel:conf-factory"

.field public static final blacklist AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final blacklist AUDIO_QUALITY_STANDARD:I = 0x1

.field private static greylist LOG_TAG:Ljava/lang/String; = "Connection"

.field public static final blacklist THRESHOLD:F = 0.01f


# instance fields
.field protected greylist-max-r mAddress:Ljava/lang/String;

.field private blacklist mAllowAddCallDuringVideoCall:Z

.field private blacklist mAllowHoldingVideoCall:Z

.field private blacklist mAnsweringDisconnectsActiveCall:Z

.field protected blacklist mAudioCodec:I

.field protected blacklist mAudioCodecBandwidthKhz:F

.field protected blacklist mAudioCodecBitrateKbps:F

.field private blacklist mAudioModeIsVoip:Z

.field private blacklist mAudioQuality:I

.field private blacklist mCallRadioTech:I

.field private blacklist mCallSubstate:I

.field protected blacklist mCause:I

.field protected greylist-max-r mCnapName:Ljava/lang/String;

.field protected greylist-max-r mCnapNamePresentation:I

.field protected blacklist mConnectTime:J

.field protected blacklist mConnectTimeReal:J

.field private blacklist mConnectionCapabilities:I

.field protected blacklist mConvertedNumber:Ljava/lang/String;

.field protected blacklist mCreateTime:J

.field protected greylist-max-r mDialString:Ljava/lang/String;

.field protected greylist-max-r mDuration:J

.field private blacklist mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

.field private blacklist mExtras:Landroid/os/Bundle;

.field protected blacklist mForwardedNumber:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasKnownUserIntentEmergency:Z

.field protected blacklist mHoldingStartTime:J

.field protected blacklist mIsAdhocConference:Z

.field private blacklist mIsEmergencyCall:Z

.field protected greylist-max-r mIsIncoming:Z

.field private blacklist mIsNetworkIdentifiedEmergencyCall:Z

.field private blacklist mIsPulledCall:Z

.field public blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mNextPostDialChar:I

.field protected blacklist mNumberConverted:Z

.field protected greylist-max-r mNumberPresentation:I

.field protected blacklist mNumberVerificationStatus:I

.field protected blacklist mOrigConnection:Lcom/android/internal/telephony/Connection;

.field protected blacklist mParticipantsToDial:[Ljava/lang/String;

.field private blacklist mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

.field private blacklist mPhoneType:I

.field private blacklist mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

.field protected blacklist mPostDialString:Ljava/lang/String;

.field public blacklist mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private blacklist mPulledDialogId:I

.field private blacklist mTelecomCallId:Ljava/lang/String;

.field blacklist mUserData:Ljava/lang/Object;

.field private blacklist mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private blacklist mVideoState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor greylist-max-r <init>(I)V
    .locals 2

    .line 347
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ConnectionBase;-><init>(I)V

    const/4 v0, 0x1

    .line 234
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    const/4 v1, 0x0

    .line 239
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mNumberVerificationStatus:I

    .line 246
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 268
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 270
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    const/4 v0, 0x0

    .line 273
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    .line 278
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 279
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->NOT_STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 299
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    .line 305
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 335
    iput-boolean v1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    .line 364
    new-instance v0, Lcom/android/internal/telephony/Connection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/Connection$1;-><init>(Lcom/android/internal/telephony/Connection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

    .line 349
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    return-void
.end method

.method public static blacklist addCapability(II)I
    .locals 0

    .line 0
    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist getEmergencyNumberSourceForEmergencyRouting()I
    .locals 2

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {p0}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result p0

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmergencyNumberSourceForEmergencyRouting: source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public static blacklist removeCapability(II)I
    .locals 0

    .line 0
    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public blacklist addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 0

    .line 1113
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1

    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 965
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract blacklist cancelPostDial()V
.end method

.method protected final blacklist clearPostDialListeners()V
    .locals 0

    .line 974
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 975
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public blacklist clearUserData()V
    .locals 1

    const/4 v0, 0x0

    .line 960
    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public abstract blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract blacklist deflect(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public greylist getAddress()Ljava/lang/String;
    .locals 0

    .line 415
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getAudioCodec()I
    .locals 0

    .line 1685
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    return p0
.end method

.method public blacklist getAudioCodecBandwidthKhz()F
    .locals 0

    .line 1699
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    return p0
.end method

.method public blacklist getAudioCodecBitrateKbps()F
    .locals 0

    .line 1692
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    return p0
.end method

.method public blacklist getAudioModeIsVoip()Z
    .locals 0

    .line 1196
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    return p0
.end method

.method public blacklist getAudioQuality()I
    .locals 0

    .line 1214
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return p0
.end method

.method public abstract greylist getCall()Lcom/android/internal/telephony/Call;
.end method

.method public blacklist getCallRadioTech()I
    .locals 0

    .line 1187
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    return p0
.end method

.method public blacklist getCallSubstate()I
    .locals 0

    .line 1224
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return p0
.end method

.method public blacklist getCnapName()Ljava/lang/String;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCnapNamePresentation()I
    .locals 0

    .line 472
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return p0
.end method

.method public blacklist getConferenceParticipants()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 862
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public greylist getConnectTime()J
    .locals 2

    .line 500
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public blacklist getConnectTimeReal()J
    .locals 2

    .line 528
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public blacklist getConnectionCapabilities()I
    .locals 0

    .line 1139
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    return p0
.end method

.method public blacklist getConnectionExtras()Landroid/os/Bundle;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public blacklist getConvertedNumber()Ljava/lang/String;
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getCreateTime()J
    .locals 2

    .line 489
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public greylist-max-r getDisconnectCause()I
    .locals 0

    .line 580
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return p0
.end method

.method public abstract greylist-max-r getDisconnectTime()J
.end method

.method public greylist-max-r getDurationMillis()J
    .locals 4

    .line 547
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 549
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public blacklist getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;
    .locals 0

    .line 628
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    return-object p0
.end method

.method public blacklist getForwardedNumber()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    return-object p0
.end method

.method public abstract blacklist getHoldDurationMillis()J
.end method

.method public blacklist getHoldingStartTime()J
    .locals 2

    .line 562
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public abstract blacklist getNumberPresentation()I
.end method

.method public blacklist getNumberVerificationStatus()I
    .locals 0

    .line 1706
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mNumberVerificationStatus:I

    return p0
.end method

.method public blacklist getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 0

    .line 1056
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object p0
.end method

.method public blacklist getOrigDialString()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getParticipantsToDial()[Ljava/lang/String;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mParticipantsToDial:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPhoneType()I
    .locals 0

    .line 1609
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    return p0
.end method

.method public blacklist getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
    .locals 0

    .line 994
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    return-object p0
.end method

.method public abstract blacklist getPreciseDisconnectCause()I
.end method

.method public blacklist getPulledDialogId()I
    .locals 0

    .line 1411
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    return p0
.end method

.method public blacklist getRemainingPostDialString()Ljava/lang/String;
    .locals 2

    .line 1002
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 1009
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1006
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public greylist getState()Lcom/android/internal/telephony/Call$State;
    .locals 0

    .line 838
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-nez p0, :cond_0

    .line 841
    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 843
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 0

    .line 852
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method public blacklist getTelecomCallId()Ljava/lang/String;
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object p0
.end method

.method public abstract blacklist getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public greylist getUserData()Ljava/lang/Object;
    .locals 0

    .line 897
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract blacklist getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public blacklist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 0

    .line 1205
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object p0
.end method

.method public blacklist getVideoState()I
    .locals 0

    .line 1131
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return p0
.end method

.method public abstract greylist-max-r hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist hasCapabilities(I)Z
    .locals 0

    .line 1146
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasKnownUserIntentEmergency()Z
    .locals 0

    .line 642
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return p0
.end method

.method public blacklist isActiveCallDisconnectedOnAnswer()Z
    .locals 0

    .line 1353
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    return p0
.end method

.method public blacklist isAdhocConference()Z
    .locals 0

    .line 429
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsAdhocConference:Z

    return p0
.end method

.method public greylist-max-r isAlive()Z
    .locals 0

    .line 880
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result p0

    return p0
.end method

.method public blacklist isConferenceHost()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEmergencyCall()Z
    .locals 0

    .line 618
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    return p0
.end method

.method public greylist isIncoming()Z
    .locals 0

    .line 599
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return p0
.end method

.method public blacklist isMemberOfPeerConference()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract blacklist isMultiparty()Z
.end method

.method public blacklist isNetworkIdentifiedEmergencyCall()Z
    .locals 0

    .line 1640
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsNetworkIdentifiedEmergencyCall:Z

    return p0
.end method

.method public blacklist isPulledCall()Z
    .locals 0

    .line 1396
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    return p0
.end method

.method public blacklist isRinging()Z
    .locals 0

    .line 888
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result p0

    return p0
.end method

.method public blacklist isWifi()Z
    .locals 1

    .line 1177
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result p0

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1090
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 1091
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 1092
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 1093
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 1094
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 1095
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 1096
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 1097
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    .line 1098
    iget v0, p1, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    .line 1099
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 1102
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 1103
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 1104
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hasKnownUserIntentEmergency()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return-void
.end method

.method protected blacklist notifyDisconnect(I)V
    .locals 2

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDisconnect: callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1601
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onDisconnect(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist notifyMediaAttributesChanged()V
    .locals 1

    .line 1299
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1300
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onMediaAttributesChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final blacklist notifyPostDialListeners()V
    .locals 3

    .line 980
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_0

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 982
    invoke-interface {v2}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final blacklist notifyPostDialListenersNextChar(C)V
    .locals 3

    .line 988
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 989
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onAudioModeIsVoipChanged(I)V
    .locals 4

    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioModeIsVoipChanged: conn imsAudioHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1736
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 1737
    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    .line 1739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioModeIsVoipChanged: isVoip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "mAudioModeIsVoip:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1743
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onAudioModeIsVoipChanged(I)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public blacklist onCallPullFailed(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    .line 1526
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1527
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallPullFailed(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onConferenceMergeFailed()V
    .locals 1

    .line 1503
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1504
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1549
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1550
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onDisconnect(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist onExitedEcmMode()V
    .locals 1

    .line 1512
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1513
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onExitedEcmMode()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onHandoverToWifiFailed()V
    .locals 1

    .line 1540
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1541
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onHandoverToWifiFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    .line 1532
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1533
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onRttInitiated()V
    .locals 1

    .line 1583
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1584
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onRttInitiated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onRttModifyRequestReceived()V
    .locals 1

    .line 1571
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1572
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyRequestReceived()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(I)V
    .locals 1

    .line 1577
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1578
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onRttModifyResponseReceived(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onRttTerminated()V
    .locals 1

    .line 1589
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1590
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onRttTerminated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract blacklist proceedAfterWaitChar()V
.end method

.method public abstract blacklist proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public blacklist pullExternalCall()V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist receivedDtmfDigit(C)V
    .locals 1

    .line 1723
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1724
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onReceivedDtmfDigit(C)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist receivedRtpHeaderExtensions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1752
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1753
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onReceivedRtpHeaderExtensions(Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final blacklist removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 0

    .line 1122
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final blacklist removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 0

    .line 970
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist resetConnectionTime()V
    .locals 2

    .line 1616
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mPhoneType:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1618
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 1619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 1620
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    return-void
.end method

.method public blacklist restoreDialedNumberAfterConversion(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1452
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 1453
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 1454
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 1455
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-void
.end method

.method public abstract blacklist separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist setActiveCallDisconnectedOnAnswer(Z)V
    .locals 0

    .line 1365
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAnsweringDisconnectsActiveCall:Z

    return-void
.end method

.method public blacklist setAddress(Ljava/lang/String;I)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 1470
    iput p2, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return-void
.end method

.method public blacklist setAllowAddCallDuringVideoCall(Z)V
    .locals 0

    .line 1373
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    return-void
.end method

.method public blacklist setAllowHoldingVideoCall(Z)V
    .locals 0

    .line 1381
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    return-void
.end method

.method public blacklist setAudioModeIsVoip(Z)V
    .locals 0

    .line 1280
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mAudioModeIsVoip:Z

    return-void
.end method

.method public blacklist setAudioQuality(I)V
    .locals 2

    .line 1289
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 1290
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1291
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setCallRadioTech(I)V
    .locals 1

    .line 1265
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 1268
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallRadioTech:I

    .line 1269
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1270
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onCallRadioTechChanged(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public blacklist setCallSubstate(I)V
    .locals 2

    .line 1421
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 1422
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1423
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setCmcExtras(Landroid/os/Bundle;ZLjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Z",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;)V"
        }
    .end annotation

    .line 1760
    const-string v0, "com.samsung.telephony.extra.CMC_CALL_MANAGE"

    const-string v1, "com.samsung.telephony.extra.CMC_SESSION_ID"

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 1761
    iput-object p2, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    .line 1762
    iget-object p2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1763
    iget-object p2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1764
    iget-object p2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const-string v3, "com.samsung.telephony.extra.CMC_CALL_STATE"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1765
    iget-object p2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1766
    iget-object p2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    const-string v2, "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1768
    const-string p2, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1769
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1771
    :cond_0
    const-string p2, "com.samsung.telephony.extra.CMC_PULLABLE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1772
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1776
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    .line 1779
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1780
    iget-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1783
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setConnectionExtras(Landroid/os/Bundle;)V

    .line 1785
    iget-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    const-string p2, "end"

    const-string v0, "com.samsung.telephony.extra.CMC_CALL_REQUEST_TYPE"

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1786
    iget-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1787
    iget-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1789
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1792
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1793
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1794
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1796
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    if-eqz p3, :cond_8

    .line 1799
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1800
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_8

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    check-cast v0, Landroid/util/Pair;

    .line 1801
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_8
    return-void
.end method

.method public blacklist setConnectTime(J)V
    .locals 0

    .line 509
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-void
.end method

.method public blacklist setConnectTimeReal(J)V
    .locals 0

    .line 518
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-void
.end method

.method public blacklist setConnectionCapabilities(I)V
    .locals 2

    .line 1250
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_0

    .line 1251
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    .line 1252
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1253
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onConnectionCapabilitiesChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setConnectionExtras(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1314
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result p1

    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1318
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionExtras: filtering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " invalid extras."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Connection"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1324
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1327
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    .line 1328
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-nez p1, :cond_2

    .line 1329
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 1331
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionBase;->mCmcExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1335
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1336
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public blacklist setDialString(Ljava/lang/String;)V
    .locals 0

    .line 1474
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-void
.end method

.method public blacklist setEmergencyCallInfo(Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 652
    iget-object v3, v1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/android/internal/telephony/SemCallTrackerHelper;->getEmergencyServiceCategoryFromDialer(Landroid/os/Bundle;)I

    move-result v3

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    const/4 v3, 0x1

    .line 655
    const-string v12, "Connection"

    if-eqz p1, :cond_d

    .line 656
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 658
    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 660
    iget-object v5, v0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    if-eqz v8, :cond_1

    .line 663
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEmergencyCallInfo: Use category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/internal/telephony/SemTelephonyUtils;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from dialer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    new-instance v4, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v5, v0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v6, ""

    const-string v7, ""

    invoke-direct/range {v4 .. v11}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    :cond_1
    if-nez v4, :cond_3

    .line 673
    invoke-static {v13}, Lcom/android/internal/telephony/SemTelephonyHelper;->useOnlyDialedSimEccList(Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 674
    instance-of v5, v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    move v5, v3

    .line 678
    :goto_1
    iget-object v6, v0, Lcom/android/internal/telephony/Connection;->mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

    invoke-interface {v6}, Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eqz v4, :cond_4

    .line 680
    iput-boolean v3, v0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 681
    iput-object v4, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    goto :goto_4

    :cond_4
    if-nez v5, :cond_5

    .line 684
    const-string v4, "setEmergencyCallInfo: don\'t use emergency number of other phone"

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 686
    :cond_5
    array-length v5, v6

    const-string v7, "setEmergencyCallInfo: emergency number is null"

    if-le v5, v3, :cond_a

    .line 689
    array-length v5, v6

    move v8, v2

    :goto_2
    if-ge v8, v5, :cond_9

    aget-object v9, v6, v8

    .line 691
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    if-ne v10, v11, :cond_6

    goto :goto_3

    .line 699
    :cond_6
    invoke-virtual {v9}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 701
    iget-object v4, v0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_8

    .line 706
    iput-boolean v3, v0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 707
    iput-object v4, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    goto :goto_4

    :cond_8
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 712
    :cond_9
    invoke-static {v12, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 715
    :cond_a
    invoke-static {v12, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 718
    :cond_b
    const-string v4, "setEmergencyCallInfo: emergency number tracker is null"

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 721
    :cond_c
    const-string v4, "setEmergencyCallInfo: phone is null"

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 724
    :cond_d
    const-string v4, "setEmergencyCallInfo: call tracker is null"

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->isDomainSelectionSupported()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 728
    iget-object v4, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    if-nez v4, :cond_f

    .line 729
    const-string v4, "setEmergencyCallInfo: create EmergencyNumber"

    invoke-static {v12, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_e

    .line 730
    iget v4, v1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    goto :goto_5

    :cond_e
    move v4, v2

    .line 731
    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 730
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/Connection;->setNonDetectableEmergencyCallInfo(ILjava/util/List;)V

    :cond_f
    if-eqz v1, :cond_13

    .line 734
    iget-object v4, v1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_13

    const-string v5, "use_emergency_routing"

    .line 735
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 737
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v4

    if-eq v4, v3, :cond_13

    .line 739
    iget-object v3, v1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 741
    invoke-virtual {v4}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v4

    .line 739
    const-string v5, "emergency_service_category"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 744
    instance-of v4, v0, Lcom/android/internal/telephony/GsmCdmaConnection;

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 745
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_10

    .line 749
    const-string v0, "setEmergencyCallInfo: specific eccCategory is required"

    invoke-static {v12, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 752
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEmergencyCallInfo: enforce emergency routing eccCategory="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, v1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    const-string v2, "emergency_urns"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 756
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_7

    :cond_11
    :goto_6
    move-object/from16 v18, v1

    goto :goto_8

    .line 757
    :cond_12
    :goto_7
    iget-object v1, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    goto :goto_6

    .line 759
    :goto_8
    new-instance v13, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v1, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 760
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getCountryIso()Ljava/lang/String;

    move-result-object v15

    iget-object v1, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 761
    invoke-virtual {v1}, Landroid/telephony/emergency/EmergencyNumber;->getMnc()Ljava/lang/String;

    move-result-object v16

    .line 764
    invoke-direct {v0}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberSourceForEmergencyRouting()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v17, v3

    invoke-direct/range {v13 .. v20}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    iput-object v13, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 769
    :cond_13
    iget-boolean v1, v0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    if-eqz v1, :cond_14

    .line 770
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEmergencyCallInfo: Set emergency number info to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->emergencyNumberToString(Landroid/telephony/emergency/EmergencyNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method public blacklist setHasKnownUserIntentEmergency(Z)V
    .locals 0

    .line 824
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mHasKnownUserIntentEmergency:Z

    return-void
.end method

.method public blacklist setIsIncoming(Z)V
    .locals 0

    .line 608
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return-void
.end method

.method public blacklist setIsNetworkIdentifiedEmergencyCall(Z)V
    .locals 1

    .line 1629
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsNetworkIdentifiedEmergencyCall:Z

    .line 1630
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1631
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onIsNetworkEmergencyCallChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setIsPulledCall(Z)V
    .locals 0

    .line 1392
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsPulledCall:Z

    return-void
.end method

.method public blacklist setNonDetectableEmergencyCallInfo(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNonDetectableEmergencyCallInfo: eccCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", emergencyUrns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 801
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsEmergencyCall:Z

    .line 802
    new-instance v2, Landroid/telephony/emergency/EmergencyNumber;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, ""

    const-string v5, ""

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CallRoute - Set the non-detectable emergency number info for alternative service. info: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/Connection;->mEmergencyNumberInfo:Landroid/telephony/emergency/EmergencyNumber;

    .line 808
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->emergencyNumberToString(Landroid/telephony/emergency/EmergencyNumber;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 807
    invoke-static {v1, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->setIsNetworkIdentifiedEmergencyCall(Z)V

    return-void
.end method

.method public blacklist setNumberVerificationStatus(I)V
    .locals 0

    .line 1715
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNumberVerificationStatus:I

    return-void
.end method

.method public blacklist setPhoneFactoryProxy(Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPhoneFactoryProxy:Lcom/android/internal/telephony/Connection$PhoneFactoryProxy;

    return-void
.end method

.method public blacklist setPulledDialogId(I)V
    .locals 0

    .line 1407
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mPulledDialogId:I

    return-void
.end method

.method public blacklist setTelecomCallId(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mTelecomCallId:Ljava/lang/String;

    return-void
.end method

.method public blacklist setUserData(Ljava/lang/Object;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public blacklist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 2

    .line 1433
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 1434
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1435
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public greylist-max-r setVideoState(I)V
    .locals 2

    .line 1236
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 1237
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1238
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist shouldAllowAddCallDuringVideoCall()Z
    .locals 0

    .line 1369
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAllowAddCallDuringVideoCall:Z

    return p0
.end method

.method public blacklist shouldAllowHoldingVideoCall()Z
    .locals 0

    .line 1377
    iget-boolean p0, p0, Lcom/android/internal/telephony/Connection;->mAllowHoldingVideoCall:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " callId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " objId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isExternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Connection;->mConnectionCapabilities:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    .line 1654
    const-string v2, "Y"

    goto :goto_0

    :cond_0
    const-string v2, "N"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pres.: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1662
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1663
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " postdial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cnap name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1665
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1666
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1668
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " incoming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1669
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " post dial state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogUtils;->getConnectionExtraLog(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 1674
    const-string v1, " mExtras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1677
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist transfer(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public blacklist updateConferenceParticipants(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 1483
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1484
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist updateMultipartyState(Z)V
    .locals 1

    .line 1494
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 1495
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
