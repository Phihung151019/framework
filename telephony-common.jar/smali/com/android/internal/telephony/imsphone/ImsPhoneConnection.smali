.class public Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
.super Lcom/android/internal/telephony/ConnectionExt;
.source "ImsPhoneConnection.java"

# interfaces
.implements Lcom/android/ims/internal/ImsVideoCallProviderWrapper$ImsVideoProviderWrapperCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;
    }
.end annotation


# static fields
.field static final blacklist PAUSE_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private blacklist mConferenceConnectTime:J

.field private blacklist mDisconnectTime:J

.field private greylist-max-r mDisconnected:Z

.field private blacklist mDtmfToneDelay:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerMessenger:Landroid/os/Messenger;

.field private greylist-max-r mImsCall:Lcom/android/ims/ImsCall;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

.field private blacklist mIsBusinessComposerFeatureEnabled:Z

.field private blacklist mIsEmergency:Z

.field private blacklist mIsHeldByRemote:Z

.field private blacklist mIsLocalVideoCapable:Z

.field private blacklist mIsMergeInProcess:Z

.field private blacklist mIsRttEnabledForCall:Z

.field private blacklist mIsWpsCall:Z

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private greylist-max-r mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private greylist-max-r mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

.field private blacklist mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mPreciseDisconnectCause:I

.field private blacklist mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

.field private blacklist mRttTextStream:Landroid/telecom/Connection$RttTextStream;

.field private blacklist mShouldIgnoreVideoStateChanges:Z

.field private blacklist mUusInfo:Lcom/android/internal/telephony/UUSInfo;


# direct methods
.method public static synthetic blacklist $r8$lambda$MFlQxd8S_fsRvf52bYAhcihi5ac(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->lambda$createRttTextHandler$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDtmfToneDelay(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessNextPostDialChar(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 4

    const/4 v0, 0x5

    .line 220
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;-><init>(I)V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 120
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 140
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->setInitialPhone(Lcom/android/internal/telephony/Phone;)V

    .line 225
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 228
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 229
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 230
    new-instance p3, Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 231
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isMultiparty()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/internal/telephony/Connection;->mIsAdhocConference:Z

    if-eqz p2, :cond_0

    .line 234
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 235
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "oi"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 236
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "cna"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 238
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "oir"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p3

    .line 237
    invoke-static {p3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 240
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    const-string v0, "cnap"

    invoke-virtual {p3, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p3

    .line 239
    invoke-static {p3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p3

    iput p3, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 242
    invoke-virtual {p2}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result p3

    .line 241
    invoke-static {p3}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->toTelecomVerificationStatus(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/Connection;->setNumberVerificationStatus(I)V

    .line 243
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    .line 245
    iput p3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 246
    iput p3, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    :goto_0
    xor-int/lit8 p3, p5, 0x1

    .line 249
    iput-boolean p3, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    const/4 p3, 0x0

    .line 251
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setIsBusinessComposerFeatureEnabled(Lcom/android/internal/telephony/Phone;)V

    .line 260
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    .line 262
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 264
    iget-boolean p2, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    if-eqz p2, :cond_1

    sget-object p2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    .line 263
    :goto_1
    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 268
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11102a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 270
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Connection;->setAudioModeIsVoip(Z)V

    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;ZZLcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)V
    .locals 4

    const/4 v0, 0x5

    .line 278
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;-><init>(I)V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 120
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 125
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 140
    iput v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 145
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 150
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 169
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 174
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 279
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 280
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 282
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 283
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p3, p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance p3, Landroid/os/Messenger;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 286
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p3

    const-string v2, "ImsPhoneConnection"

    if-eqz p3, :cond_1

    if-nez p5, :cond_1

    .line 289
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p3

    iget-object v3, p7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p2, v3}, Lcom/android/internal/telephony/SemCallTrackerHelper;->convertNumberForAssistedDialing(Ljava/lang/String;Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p3

    .line 291
    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 292
    const-string p2, "dialString is changed (Assisted dialing)"

    invoke-static {v2, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p2, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 295
    :cond_0
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p3, 0x80

    .line 296
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/ConnectionBase;->setInternalAttribute(I)V

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getCallTrackerHelper()Lcom/android/internal/telephony/SemCallTrackerHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/internal/telephony/SemCallTrackerHelper;->useFormatDialStringForImsCall()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 302
    const-string p3, "Use formatDialString for ImsCall"

    invoke-static {v2, p3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2, p3, v2}, Lcom/android/internal/telephony/GsmCdmaConnection;->formatDialString(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 307
    :cond_2
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 308
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    .line 312
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    const/4 p2, 0x0

    .line 313
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 314
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 315
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 318
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 319
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 321
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    if-eqz p5, :cond_3

    .line 323
    iget-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p2, p7}, Lcom/android/internal/telephony/Connection;->setEmergencyCallInfo(Lcom/android/internal/telephony/CallTracker;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getEmergencyNumberInfo()Landroid/telephony/emergency/EmergencyNumber;

    move-result-object p2

    if-nez p2, :cond_3

    .line 329
    iget p2, p7, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/Connection;->setNonDetectableEmergencyCallInfo(ILjava/util/List;)V

    .line 333
    :cond_3
    iput-boolean p6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V

    .line 337
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11102a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/Connection;->setAudioModeIsVoip(Z)V

    :cond_4
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;[Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Z)V
    .locals 2

    const/4 p5, 0x5

    .line 346
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/ConnectionExt;-><init>(I)V

    .line 96
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    .line 97
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    const-wide/16 v0, 0x0

    .line 120
    iput-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    const/4 p5, 0x0

    .line 123
    iput p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    .line 125
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    .line 127
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    .line 136
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 140
    iput p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    .line 145
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    .line 150
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 169
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 174
    iput-boolean p5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 347
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createWakeLock(Landroid/content/Context;)V

    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 350
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 351
    new-instance p3, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$MyHandler;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    .line 352
    new-instance p3, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    .line 354
    const-string p3, "tel:conf-factory"

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 355
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mParticipantsToDial:[Ljava/lang/String;

    .line 356
    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsAdhocConference:Z

    .line 358
    iput-boolean p5, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    const/4 p2, 0x0

    .line 359
    iput-object p2, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    .line 360
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 361
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 364
    iput-object p4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 365
    sget-object p2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p4, p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11102a8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->setAudioModeIsVoip(Z)V

    :cond_0
    return-void
.end method

.method private greylist-max-r acquireWakeLock()V
    .locals 2

    .line 848
    const-string v0, "ImsPhoneConnection"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private blacklist applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 2

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLocalCallCapabilities - localProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 393
    invoke-static {p2, v0}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result p2

    .line 396
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    if-nez p0, :cond_0

    .line 397
    const-string p0, "applyLocalCallCapabilities - disabling video (overidden)"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 400
    :cond_0
    iget p0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 p1, 0x3

    if-eq p0, p1, :cond_1

    if-eq p0, v0, :cond_1

    return p2

    .line 404
    :cond_1
    invoke-static {p2, v0}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result p0

    return p0
.end method

.method private static blacklist applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I
    .locals 4

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyRemoteCallCapabilities - remoteProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 413
    invoke-static {p1, v0}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result p1

    const/16 v1, 0x40

    .line 415
    invoke-static {p1, v1}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result p1

    .line 418
    iget v2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 422
    :cond_0
    invoke-static {p1, v0}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result p1

    .line 427
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 428
    invoke-static {p1, v1}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result p0

    return p0

    :cond_1
    return p1
.end method

.method private static blacklist areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    .line 1625
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1627
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1628
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1629
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private blacklist createRttTextHandler()V
    .locals 3

    .line 1427
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/telephony/imsphone/ImsRttTextHandler$NetworkWriter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 1439
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->initialize(Landroid/telecom/Connection$RttTextStream;)V

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createRttTextHandler - rttTextHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist-max-r createWakeLock(Landroid/content/Context;)V
    .locals 2

    .line 841
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 842
    const-string v1, "ImsPhoneConnection"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static blacklist equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    .line 388
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private blacklist fetchDtmfToneDelay(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 866
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 867
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 869
    const-string v0, "ims_dtmf_tone_delay_int"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDtmfToneDelay:I

    :cond_0
    return-void
.end method

.method private blacklist getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1649
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-nez v1, :cond_0

    goto :goto_3

    .line 1655
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    if-nez v1, :cond_1

    .line 1656
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/4 v2, 0x3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    .line 1662
    :pswitch_1
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    const-string v1, "LGT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    .line 1671
    :cond_1
    :goto_0
    iget-object p0, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget p0, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    const/16 p1, 0x12

    if-eq p0, p1, :cond_3

    const/16 p1, 0x13

    if-eq p0, p1, :cond_3

    const/16 p1, 0x14

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v2, 0x6

    if-eq p0, v2, :cond_4

    if-eqz p1, :cond_5

    .line 1683
    :cond_4
    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private varargs blacklist iLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1999
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x1

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->iLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic blacklist lambda$createRttTextHandler$0(Ljava/lang/String;)V
    .locals 3

    .line 1429
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1432
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sendRttMessage"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1434
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsCall;->sendRttMessage(Ljava/lang/String;)V

    return-void

    .line 1436
    :cond_0
    const-string p0, "ImsPhoneConnection"

    const-string p1, "createRttTextHandler: imsCall is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist processNextPostDialChar()V
    .locals 4

    .line 765
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 778
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 782
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processPostDialChar(C)Z

    move-result v1

    if-nez v1, :cond_3

    .line 786
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 788
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processNextPostDialChar: c="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " isn\'t valid!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 771
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    const/4 v0, 0x0

    .line 793
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Connection;->notifyPostDialListenersNextChar(C)V

    .line 796
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPostDialHandler()Lcom/android/internal/telephony/Registrant;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 801
    invoke-virtual {v1}, Lcom/android/internal/telephony/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 803
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 804
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    .line 805
    iput-object p0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 806
    iput-object v2, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 809
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 813
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist processPostDialChar(C)Z
    .locals 4

    .line 719
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 721
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandlerMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 722
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_3

    .line 725
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object p1, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 726
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "KOR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 727
    :cond_1
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 742
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    const/16 v0, 0x3b

    if-ne p1, v0, :cond_4

    .line 745
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    .line 747
    sget-object p1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    :goto_0
    return v1

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V
    .locals 4

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    const/4 v2, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->acquireWakeLock()V

    .line 827
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    if-eq p1, v1, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    .line 834
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    .line 835
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->notifyPostDialListeners()V

    return-void
.end method

.method public static blacklist toTelecomVerificationStatus(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private blacklist updateEmergencyCallFromExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1473
    :cond_0
    const-string v0, "e_call"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 1474
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setIsNetworkIdentifiedEmergencyCall(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateForwardedNumberFromExtras(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1482
    :cond_0
    const-string v0, "android.telephony.ims.extra.FORWARDED_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1484
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1486
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mForwardedNumber:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist updateImsCallRatFromExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1454
    :cond_0
    const-string v0, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "CallRadioTech"

    .line 1455
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "callRadioTech"

    .line 1456
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 1458
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1461
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getNetworkType()I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 1465
    :goto_2
    invoke-static {p1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->setCallRadioTech(I)V

    return-void
.end method

.method private blacklist updateVideoState(I)V
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_0

    .line 1292
    invoke-virtual {v0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->onVideoStateChanged(I)V

    .line 1294
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->setVideoState(I)V

    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onVideoStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V

    return-void
.end method


# virtual methods
.method public blacklist cancelPostDial()V
    .locals 1

    .line 610
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->CANCELLED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    return-void
.end method

.method public blacklist changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-void
.end method

.method public blacklist changeToPausedState()V
    .locals 3

    .line 1897
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 1898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection: changeToPausedState - setting paused bit; newVideoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1899
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1898
    const-string v2, "ImsPhoneConnection"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    const/4 v0, 0x1

    .line 1901
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    return-void
.end method

.method public blacklist changeToUnPausedState()V
    .locals 3

    .line 1905
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    .line 1906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsPhoneConnection: changeToUnPausedState - unsetting paused bit; newVideoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1907
    invoke-static {v0}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1906
    const-string v2, "ImsPhoneConnection"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    const/4 v0, 0x0

    .line 1909
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    return-void
.end method

.method blacklist close()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->close()V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {v0}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->close()V

    const/4 v0, 0x0

    .line 683
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    :cond_1
    return-void
.end method

.method public blacklist consultativeTransfer(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 540
    const-string v1, "consultativeTransfer"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 541
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 540
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 543
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->consultativeTransfer(Lcom/android/ims/ImsCall;)V

    return-void

    .line 545
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no valid ims call to transfer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot transfer call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist deflect(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "deflect"

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->deflect(Ljava/lang/String;)V

    return-void

    .line 508
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no valid ims call to deflect"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot deflect call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 514
    :cond_1
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "phone not ringing"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist dispose()V
    .locals 0

    .line 0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 0

    .line 757
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return-void
.end method

.method public blacklist getAcceptedRtpHeaderExtensions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation

    .line 1939
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getAcceptedRtpHeaderExtensionTypes"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1945
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->getAcceptedRtpHeaderExtensionTypes()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1940
    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic greylist-max-r getCall()Lcom/android/internal/telephony/Call;
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-r getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .locals 0

    .line 441
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    return-object p0
.end method

.method protected blacklist getCallPriority()I
    .locals 1

    .line 1989
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 1991
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isWpsCall()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getConferenceConnectTime()J
    .locals 2

    .line 1032
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-wide v0
.end method

.method public blacklist getDisconnectCause()I
    .locals 2

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisconnectCause: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return p0
.end method

.method public blacklist getDisconnectTime()J
    .locals 2

    .line 446
    iget-wide v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    return-wide v0
.end method

.method public blacklist getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
    .locals 0

    .line 1394
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    if-eqz p0, :cond_0

    .line 1395
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getHoldDurationMillis()J
    .locals 4

    .line 456
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 460
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getHoldingStartTime()J
    .locals 2

    .line 451
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public declared-synchronized blacklist getImsCall()Lcom/android/ims/ImsCall;
    .locals 1

    monitor-enter p0

    .line 913
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist getImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 1962
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public blacklist getIsBusinessComposerFeatureEnabled()Z
    .locals 0

    .line 1564
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    return p0
.end method

.method public blacklist getNumberPresentation()I
    .locals 0

    .line 875
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    return p0
.end method

.method public blacklist getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOrigDialString()Ljava/lang/String;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-r getOwner()Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    return-object p0
.end method

.method public blacklist getPreciseDisconnectCause()I
    .locals 0

    .line 987
    iget p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    return p0
.end method

.method public blacklist getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-eqz v0, :cond_0

    .line 492
    sget-object p0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    return-object p0

    .line 494
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    return-object p0
.end method

.method public blacklist getVendorDisconnectCause()Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist handleMergeComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 1869
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    return-void
.end method

.method public blacklist handleMergeStart()V
    .locals 2

    const/4 v0, 0x1

    .line 1861
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    .line 1862
    const-string v0, "android.telecom.event.MERGE_START"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 554
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void

    .line 557
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "disconnected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hasRttTextStream()Z
    .locals 0

    .line 1404
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isBusinessComposerEnabledByConfig(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    .line 1582
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    .line 1587
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1589
    :goto_0
    const-string p1, "supports_business_call_composer_bool"

    if-eqz p0, :cond_1

    .line 1590
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1593
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    .line 1594
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isBusinessOnlyCallComposerEnabledByUser(Lcom/android/internal/telephony/Phone;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    .line 1603
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1607
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    .line 1609
    const-string p1, "ImsPhoneConnection"

    const-string v0, "isBusinessOnlyCallComposerEnabledByUser: TelephonyManager is null"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1612
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    .line 1613
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_0
    return v2

    :cond_4
    :goto_1
    return p0
.end method

.method public declared-synchronized blacklist isConferenceHost()Z
    .locals 1

    monitor-enter p0

    .line 904
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isConferenceHost()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist isCrossSimCall()Z
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v0, :cond_0

    .line 1766
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    const-string v0, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 1768
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isCrossSimCall()Z

    move-result p0

    return p0
.end method

.method protected blacklist isEmergency()Z
    .locals 0

    .line 1746
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    return p0
.end method

.method public blacklist isHeldByRemote()Z
    .locals 2

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHeldByRemote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    return p0
.end method

.method public blacklist isIncomingCallAutoRejected()Z
    .locals 1

    .line 476
    iget p0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    const/16 v0, 0x51

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isMemberOfPeerConference()Z
    .locals 0

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isConferenceHost()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized greylist-max-r isMultiparty()Z
    .locals 1

    monitor-enter p0

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist isRttEnabledForCall()Z
    .locals 0

    .line 1408
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    return p0
.end method

.method protected blacklist isWpsCall()Z
    .locals 0

    .line 1757
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsWpsCall:Z

    return p0
.end method

.method public blacklist maybeChangeRingbackState()V
    .locals 2

    .line 981
    const-string v0, "ImsPhoneConnection"

    const-string v1, "maybeChangeRingbackState"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->maybeChangeRingbackState(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist maybeInjectBusinessComposerExtras(Landroid/os/Bundle;)V
    .locals 6

    .line 1532
    const-string v0, "android.telecom.extra.ASSERTED_DISPLAY_NAME"

    const-string v1, "android.telephony.ims.extra.ASSERTED_DISPLAY_NAME"

    const-string v2, "android.telecom.extra.IS_BUSINESS_CALL"

    const-string v3, "android.telephony.ims.extra.IS_BUSINESS_CALL"

    if-nez p1, :cond_0

    goto :goto_0

    .line 1538
    :cond_0
    iget-boolean p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    const-string v4, "ImsPhoneConnection"

    if-nez p0, :cond_1

    .line 1539
    const-string p0, "mIBCE: business composer feature is NOT enabled"

    invoke-static {v4, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1543
    :cond_1
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1544
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1545
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 1546
    const-string v3, "mIBCE: EXTRA_IS_BUSINESS_CALL=[%s]"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1550
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1551
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1552
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1553
    const-string v1, "mIBCE: ASSERTED_DISPLAY_NAME=[%s]"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1558
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method blacklist onConnectedInOrOut()V
    .locals 3

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    const-wide/16 v0, 0x0

    .line 695
    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectedInOrOut: connectTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    if-nez v0, :cond_0

    .line 703
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    .line 705
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return-void
.end method

.method public greylist-max-r onDisconnect()Z
    .locals 6

    .line 634
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnectTime:J

    .line 638
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    const/4 v0, 0x1

    .line 639
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mDisconnected:Z

    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyDisconnect(Lcom/android/internal/telephony/Connection;)V

    .line 642
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ConnectionExt;->notifyDisconnect(I)V

    .line 644
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "ImsPhoneConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect: connection is disconnected. cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v1

    goto :goto_0

    .line 650
    :cond_0
    const-string v0, "ImsPhoneConnection"

    const-string v2, "onDisconnect: no parent"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :goto_0
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 665
    :cond_1
    :goto_1
    const-string v0, "close"

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->close()V

    const/4 v0, 0x0

    .line 668
    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 670
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 672
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->releaseWakeLock()V

    return v1
.end method

.method public blacklist onDisconnect(I)Z
    .locals 2

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 625
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect()Z

    move-result p0

    return p0
.end method

.method public blacklist onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 4

    .line 1002
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1008
    :cond_0
    :try_start_0
    const-string v1, "removeParticipants"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/ims/ImsCall;->removeParticipants([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1013
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisconnectConferenceParticipant: no session in place. Failed to disconnect endpoint = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist onHangupLocal()V
    .locals 1

    const/4 v0, 0x3

    .line 617
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return-void
.end method

.method public blacklist onReceiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1782
    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-eqz p1, :cond_1

    .line 1784
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p1

    .line 1785
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    xor-int v1, p1, v0

    and-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    and-int v2, v1, p1

    not-int v2, v2

    and-int/2addr p1, v2

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    .line 1805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveSessionModifyResponse : received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " while paused ; sending new videoState = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1805
    const-string p3, "ImsPhoneConnection"

    invoke-static {p3, p2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->setVideoState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2

    .line 1372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1373
    const-string v1, "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

    .line 1374
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isReceivingRttAudio()Z

    move-result p1

    .line 1373
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1375
    const-string p1, "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onRttMessageReceived(Ljava/lang/String;)V
    .locals 2

    .line 1356
    monitor-enter p0

    .line 1357
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v0, :cond_1

    .line 1358
    const-string v0, "ImsPhoneConnection"

    const-string v1, "onRttMessageReceived: RTT text handler not available. Attempting to create one."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    .line 1361
    const-string p1, "ImsPhoneConnection"

    const-string v0, "onRttMessageReceived: Unable to process incoming message. No textstream available"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1365
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1367
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->sendToInCall(Ljava/lang/String;)V

    return-void

    .line 1367
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method blacklist onStartedHolding()V
    .locals 2

    .line 710
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-void
.end method

.method public blacklist pauseVideo(I)V
    .locals 1

    .line 1822
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    return-void

    .line 1826
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->pauseVideo(II)V

    return-void
.end method

.method public blacklist proceedAfterWaitChar()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WAIT but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 574
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 576
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method public blacklist proceedAfterWildChar(Ljava/lang/String;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    if-eq v0, v1, :cond_0

    .line 582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImsPhoneConnection.proceedAfterWaitChar(): Expected getPostDialState() to be WILD but was "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/Connection;->mPostDialState:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 587
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setPostDialState(Lcom/android/internal/telephony/Connection$PostDialState;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    iget-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mPostDialString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 595
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mNextPostDialChar:I

    .line 605
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->processNextPostDialChar()V

    return-void
.end method

.method blacklist releaseWakeLock()V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 855
    monitor-enter v0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    const-string v1, "ImsPhoneConnection"

    const-string v2, "releaseWakeLock"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 860
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public blacklist resumeVideo(I)V
    .locals 1

    .line 1836
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez v0, :cond_0

    return-void

    .line 1840
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->resumeVideo(II)V

    return-void
.end method

.method public blacklist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 2009
    :try_start_0
    const-string v0, "sendImsCallEvent"

    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2010
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz p0, :cond_0

    .line 2011
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2014
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendConnectionEvent - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist sendRtpHeaderExtensions(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 1924
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    const-string v1, "ImsPhoneConnection"

    if-nez v0, :cond_0

    .line 1925
    const-string p0, "sendRtpHeaderExtensions: Not an IMS call"

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1928
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRtpHeaderExtensions: numExtensions = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extension size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "sendRtpHeaderExtensions"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1932
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->sendRtpHeaderExtensions(Ljava/util/Set;)V

    return-void
.end method

.method public blacklist sendRttModifyResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1339
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sendRttModifyResponse"

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1343
    const-string v2, "ImsPhoneConnection"

    if-nez v1, :cond_1

    .line 1344
    const-string p0, "sendRttModifyResponse failed, imsCall is null"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1347
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/ims/ImsCall;->sendRttModifyResponse(Z)V

    if-eqz v0, :cond_2

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    return-void

    .line 1351
    :cond_2
    const-string p0, "sendRttModifyResponse: foreground call has no connections"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist separate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 563
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string v0, "not supported"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setConferenceConnectTime(J)V
    .locals 0

    .line 1025
    iput-wide p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mConferenceConnectTime:J

    return-void
.end method

.method public blacklist setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V
    .locals 1

    .line 1380
    monitor-enter p0

    .line 1381
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 1382
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz p1, :cond_0

    .line 1383
    const-string p1, "ImsPhoneConnection"

    const-string v0, "setCurrentRttTextStream: Creating a text handler"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1386
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public blacklist setDisconnectCause(I)V
    .locals 2

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDisconnectCause: cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsPhoneConnection"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    return-void
.end method

.method protected blacklist setEmergencyImsConnection(Z)V
    .locals 0

    .line 1752
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsEmergency:Z

    return-void
.end method

.method public declared-synchronized blacklist setImsCall(Lcom/android/ims/ImsCall;)V
    .locals 0

    monitor-enter p0

    .line 917
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist setImsReasonInfo(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 1954
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method public blacklist setIsBusinessComposerFeatureEnabled(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 1569
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isBusinessComposerEnabledByConfig(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isBusinessOnlyCallComposerEnabledByUser(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsBusinessComposerFeatureEnabled:Z

    .line 1573
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1571
    const-string p1, "setIsBusinessComposerFeatureEnabled:  mIsBusinessComposerFeatureEnabled=[%b], phone=[%s]"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsPhoneConnection"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setLocalVideoCapable(Z)V
    .locals 1

    .line 1913
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    .line 1914
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setLocalVideoCapable: mIsLocalVideoCapable = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsLocalVideoCapable:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "; updating local video availability."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsPhoneConnection"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    return-void
.end method

.method public blacklist setPreciseDisconnectCause(I)V
    .locals 0

    .line 991
    iput p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mPreciseDisconnectCause:I

    return-void
.end method

.method public blacklist setRemotelyHeld()V
    .locals 2

    const/4 v0, 0x1

    .line 1876
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 1877
    const-string v0, "android.telecom.event.CALL_REMOTELY_HELD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist setRemotelyUnheld()V
    .locals 2

    const/4 v0, 0x0

    .line 1884
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsHeldByRemote:Z

    .line 1885
    const-string v0, "android.telecom.event.CALL_REMOTELY_UNHELD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/Connection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist setTelephonyMetrics(Lcom/android/internal/telephony/metrics/TelephonyMetrics;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-void
.end method

.method public blacklist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 1

    .line 1734
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ConnectionExt;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    .line 1736
    instance-of v0, p1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v0, :cond_0

    .line 1737
    check-cast p1, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    :cond_0
    return-void
.end method

.method public blacklist startRtt(Landroid/telecom/Connection$RttTextStream;)V
    .locals 3

    .line 1304
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1306
    const-string v1, "rttOn: true"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sendRttModifyRequest"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    .line 1309
    const-string p0, "ImsPhoneConnection"

    const-string p1, "startRtt failed, imsCall is null"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1312
    invoke-virtual {v0, v1}, Lcom/android/ims/ImsCall;->sendRttModifyRequest(Z)V

    .line 1313
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setCurrentRttTextStream(Landroid/telecom/Connection$RttTextStream;)V

    return-void
.end method

.method public blacklist startRttTextProcessing()V
    .locals 2

    .line 1412
    monitor-enter p0

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-nez v0, :cond_0

    .line 1414
    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: no RTT text stream. Ignoring."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1417
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v0, :cond_1

    .line 1418
    const-string v0, "ImsPhoneConnection"

    const-string v1, "startRttTextProcessing: RTT text handler already exists"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    monitor-exit p0

    return-void

    .line 1421
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->createRttTextHandler()V

    .line 1422
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist stopRtt()V
    .locals 3

    .line 1320
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 1322
    const-string v1, "rttOn: false"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "sendRttModifyRequest"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    .line 1325
    const-string p0, "ImsPhoneConnection"

    const-string v0, "stopRtt failed, imsCall is null"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1328
    invoke-virtual {v0, p0}, Lcom/android/ims/ImsCall;->sendRttModifyRequest(Z)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1696
    const-string v1, "[ImsPhoneConnection objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1698
    const-string v1, " telecomCallID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1699
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1700
    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    const-string v1, "ImsPhoneConnection"

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    const-string v1, " isAdhocConf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isAdhocConference()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyLogUtils;->getConnectionExtraLog(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    const-string v1, " ImsCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    monitor-enter p0

    .line 1710
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-nez v1, :cond_1

    .line 1711
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1713
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1715
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1716
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_2

    .line 1719
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1722
    :try_start_1
    const-string v1, " mExtras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1724
    const-string v1, "ImsPhoneConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExtra is changing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1715
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist transfer(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "transfer"

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConfirmationRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    .line 524
    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyLogUtils;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 523
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->iLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsCall:Lcom/android/ims/ImsCall;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall;->transfer(Ljava/lang/String;Z)V

    return-void

    .line 528
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "no valid ims call to transfer"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :catch_0
    new-instance p0, Lcom/android/internal/telephony/CallStateException;

    const-string p1, "cannot transfer call"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-r update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 4

    .line 930
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_6

    .line 935
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isPendingHold()Z

    move-result v0

    const-string v2, "ImsPhoneConnection"

    if-eqz v0, :cond_0

    .line 936
    const-string p0, "update : state is ACTIVE, but call is pending hold, skipping"

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_2

    .line 944
    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionExt;->getPreciseState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_2

    .line 945
    :cond_1
    const-string v0, "update : reject is fail, so recover onHangupLocal"

    invoke-static {v2, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mStateWhenDisconnecting:Lcom/android/internal/telephony/Call$State;

    iput-object v2, v0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    .line 947
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v2, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mStateWhenDisconnecting:Lcom/android/internal/telephony/Call$State;

    .line 948
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mCause:I

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 953
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onConnectedInOrOut()V

    .line 956
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-ne v0, v2, :cond_7

    .line 961
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 962
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .line 963
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 965
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p2, v0, :cond_7

    .line 966
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onStartedHolding()V

    .line 969
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mParent:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    move-result p2

    .line 970
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateAddressDisplay(Lcom/android/ims/ImsCall;)Z

    move-result v0

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z

    move-result v2

    .line 972
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateExtras(Lcom/android/ims/ImsCall;)Z

    move-result p0

    if-nez p2, :cond_9

    if-nez v0, :cond_9

    if-nez v2, :cond_9

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist updateAddressDisplay(Lcom/android/ims/ImsCall;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1048
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1054
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1059
    :cond_1
    const-string v1, "oi"

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1060
    const-string v2, "cna"

    invoke-virtual {p1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1061
    const-string v3, "oir"

    .line 1062
    invoke-virtual {p1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v3

    .line 1061
    invoke-static {v3}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result v3

    .line 1063
    const-string v4, "cnap"

    .line 1064
    invoke-virtual {p1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p1

    .line 1063
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->OIRToPresentation(I)I

    move-result p1

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAddressDisplay: callId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " address = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    const-string v5, "ImsPhoneConnection"

    invoke-static {v5, v1}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-static {v5, v2}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " nump = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " namep = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1066
    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsMergeInProcess:Z

    if-nez v4, :cond_6

    .line 1079
    iget-object v4, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->equalsBaseDialString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 1080
    iput-object v1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    move v0, v5

    .line 1083
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1084
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1085
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    :goto_0
    move v0, v5

    goto :goto_1

    .line 1088
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1089
    iput-object v2, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    goto :goto_0

    .line 1092
    :cond_4
    :goto_1
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    if-eq v1, v3, :cond_5

    .line 1093
    iput v3, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    move v0, v5

    .line 1096
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    if-eq v1, p1, :cond_6

    .line 1097
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v5

    :cond_6
    return v0
.end method

.method blacklist updateExtras(Lcom/android/ims/ImsCall;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1502
    :cond_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1503
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 1505
    const-string v0, "ImsPhoneConnection"

    const-string v1, "Call profile extras are null."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_4

    .line 1509
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateImsCallRatFromExtras(Landroid/os/Bundle;)V

    .line 1510
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateEmergencyCallFromExtras(Landroid/os/Bundle;)V

    .line 1511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateForwardedNumberFromExtras(Landroid/os/Bundle;)V

    .line 1512
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    if-eqz p1, :cond_3

    .line 1514
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1517
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->maybeInjectBusinessComposerExtras(Landroid/os/Bundle;)V

    .line 1519
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setConnectionExtras(Landroid/os/Bundle;)V

    :cond_4
    return v1
.end method

.method public blacklist updateMediaCapabilities(Lcom/android/ims/ImsCall;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1121
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1123
    const-string v2, "ImsPhoneConnection"

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 1124
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    .line 1126
    invoke-static {v1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 1135
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1136
    invoke-static {v5}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1140
    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    .line 1143
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    if-nez v6, :cond_2

    .line 1144
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->updateVideoState(I)V

    move v6, v3

    goto :goto_0

    .line 1147
    :cond_2
    const-string v6, "updateMediaCapabilities - ignoring video state change due to paused state."

    invoke-static {v2, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_2

    move v6, v0

    .line 1151
    :goto_0
    :try_start_2
    invoke-static {v4}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1152
    invoke-static {v5}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1156
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mShouldIgnoreVideoStateChanges:Z

    goto :goto_1

    :catch_0
    move v0, v6

    goto/16 :goto_9

    :cond_3
    move v6, v0

    .line 1160
    :cond_4
    :goto_1
    iget-object v4, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v4, :cond_7

    .line 1161
    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mIsRttEnabledForCall:Z

    if-eqz v4, :cond_5

    .line 1163
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-nez v5, :cond_5

    .line 1164
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaCapabilities -- turning RTT on, profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->startRttTextProcessing()V

    .line 1167
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onRttInitiated()V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1169
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_3
    .catch Lcom/android/ims/ImsException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    move v6, v3

    goto :goto_3

    :catch_1
    move v0, v3

    goto/16 :goto_9

    :cond_5
    if-nez v4, :cond_7

    .line 1170
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    if-eqz v4, :cond_7

    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaCapabilities -- turning RTT off, profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;->tearDown()V

    const/4 v1, 0x0

    .line 1174
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextHandler:Lcom/android/internal/telephony/imsphone/ImsRttTextHandler;

    .line 1175
    iput-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mRttTextStream:Landroid/telecom/Connection$RttTextStream;

    .line 1176
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->onRttTerminated()V

    goto :goto_2

    :cond_6
    move v6, v0

    .line 1184
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionCapabilities()I

    move-result v1

    .line 1187
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isCarrierDowngradeOfVtCallSupported()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_8

    .line 1188
    invoke-static {v1, v5}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result v1

    goto :goto_4

    .line 1192
    :cond_8
    invoke-static {v1, v5}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result v1

    .line 1198
    :goto_4
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 1199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update localCallProfile="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_a

    .line 1201
    invoke-direct {p0, v4, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyLocalCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v1

    .line 1203
    iget v7, v4, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    if-ne v7, v5, :cond_9

    .line 1204
    invoke-static {v1, v3}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result v1

    goto :goto_5

    .line 1206
    :cond_9
    invoke-static {v1, v3}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result v1

    .line 1212
    :cond_a
    :goto_5
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    .line 1213
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update remoteCallProfile="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_c

    .line 1215
    invoke-static {v7, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->applyRemoteCallCapabilities(Landroid/telephony/ims/ImsCallProfile;I)I

    move-result v1

    .line 1217
    iget v8, v7, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    const/4 v9, 0x2

    if-ne v8, v5, :cond_b

    .line 1218
    invoke-static {v1, v9}, Lcom/android/internal/telephony/Connection;->addCapability(II)I

    move-result v1

    goto :goto_6

    .line 1220
    :cond_b
    invoke-static {v1, v9}, Lcom/android/internal/telephony/Connection;->removeCapability(II)I

    move-result v1

    .line 1224
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getConnectionCapabilities()I

    move-result v5

    if-eq v5, v1, :cond_d

    .line 1225
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ConnectionExt;->setConnectionCapabilities(I)V

    move v6, v3

    .line 1229
    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isViLteDataMetered()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1230
    const-string v1, "data is not metered"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1232
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-eqz v1, :cond_f

    const/4 v5, 0x4

    .line 1234
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/Connection;->hasCapabilities(I)Z

    move-result v5

    .line 1233
    invoke-virtual {v1, v5}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->setIsVideoEnabled(Z)V

    :cond_f
    :goto_7
    if-eqz v4, :cond_10

    .line 1241
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iget v5, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    if-eq v1, v5, :cond_10

    .line 1243
    iput v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeAudioCodecIms(ILandroid/telephony/ims/ImsCallSession;)V

    .line 1245
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onAudioCodecChanged(Lcom/android/internal/telephony/Connection;I)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_0

    move p1, v3

    move v0, p1

    goto :goto_8

    :cond_10
    move p1, v0

    move v0, v6

    :goto_8
    if-eqz v4, :cond_12

    .line 1250
    :try_start_5
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1251
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioCodecAttributes()Landroid/telephony/ims/AudioCodecAttributes;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1252
    iget-object v1, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 1253
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioCodecAttributes()Landroid/telephony/ims/AudioCodecAttributes;

    move-result-object v1

    .line 1255
    iget v5, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    .line 1256
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBitrateRangeKbps()Landroid/util/Range;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    .line 1255
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3c23d70a    # 0.01f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    .line 1257
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBitrateRangeKbps()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    move p1, v3

    move v0, p1

    .line 1261
    :cond_11
    iget v5, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    .line 1262
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBandwidthRangeKhz()Landroid/util/Range;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v5, v8

    .line 1261
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v6

    if-lez v5, :cond_12

    .line 1264
    invoke-virtual {v1}, Landroid/telephony/ims/AudioCodecAttributes;->getBandwidthRangeKhz()Landroid/util/Range;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    move p1, v3

    move v0, p1

    :cond_12
    if-eqz p1, :cond_13

    .line 1271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMediaCapabilities: mediate attributes changed: codec = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodec:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitRate="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBitrateKbps:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bandwidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/Connection;->mAudioCodecBandwidthKhz:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->notifyMediaAttributesChanged()V

    .line 1278
    :cond_13
    invoke-direct {p0, v4, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAudioQualityFromCallProfile(Landroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/ImsCallProfile;)I

    move-result p1

    .line 1279
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v1

    if-eq v1, p1, :cond_14

    .line 1280
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/Connection;->setAudioQuality(I)V
    :try_end_5
    .catch Lcom/android/ims/ImsException; {:try_start_5 .. :try_end_5} :catch_2

    return v3

    :catch_2
    :cond_14
    :goto_9
    return v0
.end method

.method public blacklist wasVideoPausedFromSource(I)Z
    .locals 0

    .line 1850
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->mImsVideoCallProviderWrapper:Lcom/android/ims/internal/ImsVideoCallProviderWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1854
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProviderWrapper;->wasVideoPausedFromSource(I)Z

    move-result p0

    return p0
.end method
