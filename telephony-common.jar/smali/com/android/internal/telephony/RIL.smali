.class public Lcom/android/internal/telephony/RIL;
.super Lcom/android/internal/telephony/BaseCommands;
.source "RIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;,
        Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;,
        Lcom/android/internal/telephony/RIL$RilHandler;
    }
.end annotation


# static fields
.field private static final blacklist FEATURES_TO_SERVICES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FOR_ACK_WAKELOCK:I = 0x1

.field public static final blacklist FOR_WAKELOCK:I = 0x0

.field static final blacklist HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final blacklist INVALID_WAKELOCK:I = -0x1

.field public static final blacklist MAX_SERVICE_IDX:I = 0x7

.field public static final blacklist MIN_SERVICE_IDX:I

.field public static final blacklist RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field public static final blacklist RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

.field static blacklist sRilTimeHistograms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final blacklist mAckWakeLockTimeout:I

.field volatile blacklist mAckWlSequenceNum:I

.field private blacklist mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field private final blacklist mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

.field private final blacklist mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataIndication:Lcom/android/internal/telephony/DataIndication;

.field private blacklist mDataResponse:Lcom/android/internal/telephony/DataResponse;

.field private final blacklist mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDisabledRadioServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHalVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/HalVersion;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImsIndication:Lcom/android/internal/telephony/ImsIndication;

.field private blacklist mImsResponse:Lcom/android/internal/telephony/ImsResponse;

.field private blacklist mIsCellularSupported:Z

.field blacklist mIsRadioProxyInitialized:Z

.field blacklist mIsRadioVersion20Cached:Ljava/lang/Boolean;

.field blacklist mLastNITZTimeInfo:[Ljava/lang/Object;

.field blacklist mLastRadioPowerResult:I

.field private final blacklist mLinkedServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

.field private blacklist mMessagingResponse:Lcom/android/internal/telephony/MessagingResponse;

.field private blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field private blacklist mMockModem:Lcom/android/internal/telephony/MockModem;

.field private blacklist mModemIndication:Lcom/android/internal/telephony/ModemIndication;

.field private blacklist mModemResponse:Lcom/android/internal/telephony/ModemResponse;

.field private blacklist mNetworkIndication:Lcom/android/internal/telephony/NetworkIndication;

.field private blacklist mNetworkResponse:Lcom/android/internal/telephony/NetworkResponse;

.field private blacklist mPduTest:Lcom/android/internal/telephony/PduTest;

.field final blacklist mPhoneId:Ljava/lang/Integer;

.field private blacklist mRILDefaultWorkSource:Landroid/os/WorkSource;

.field private blacklist mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

.field private blacklist mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

.field private volatile blacklist mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

.field private final blacklist mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

.field private blacklist mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

.field greylist-max-r mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

.field private final blacklist mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSimIndication:Lcom/android/internal/telephony/SimIndication;

.field private blacklist mSimResponse:Lcom/android/internal/telephony/SimResponse;

.field greylist-max-r mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mVoiceIndication:Lcom/android/internal/telephony/VoiceIndication;

.field private blacklist mVoiceResponse:Lcom/android/internal/telephony/VoiceResponse;

.field public final greylist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field blacklist mWakeLockCount:I

.field final blacklist mWakeLockTimeout:I

.field volatile blacklist mWlSequenceNum:I


# direct methods
.method public static synthetic blacklist $r8$lambda$0RH-LhxhVUhytZ-a8ECNhNOCprA(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4768
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->stopKeepalive(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1i_yRCaYgNUpGT-1iMbcSJDephc(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2904
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioDataProxy;->getDataCallList(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1zns2NZIHXT2oXL8w3Rde0wMd18(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 2984
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setBandMode(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2HnnYeYb9J2Fyu378cHJCXO7XDU(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$setPreferredNetworkType$71(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2LsnXy3lDEvOwdaaX5oevspVCss(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1631
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1632
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1633
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1631
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPuk2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2Pxw0KOqthmnwW9tRsb2QDQObCA(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5014
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getSimPhonebookCapacity(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$2SsXABi-8ZT-bCnIMeoEzNMgdzI(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V
    .locals 0

    .line 2280
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p10}, Lcom/android/internal/telephony/RadioDataProxy;->setupDataCall(IILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3kRogRiV6txP33U0K9GdMNFmglc(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 2395
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setClir(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3v1jbJD-JgzYuSuxLo3frKD0QZc(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/RIL;->lambda$sendImsGsmSms$115(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4Ry-DiVI9tkmCXd1T-mCO0Z58pU(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2707
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAvailableNetworks(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5-WllZqagVEInqrGZuMaKkacDf0(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0

    .line 3066
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3067
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3066
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->sendEnvelopeWithStatus(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5EXMdxQMf3VReGz0wCDsey9lptg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5636
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isSatelliteEnabledForCarrier(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5OyMrkr_oxnp0qYEsG_8KBcsVK8(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2886
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getClip(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5TN_m-E43rJZw8Um2uDpnmwzYEg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 5577
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5XA8JoEZ2u3VzsTJ-lNekxmlf1M(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V
    .locals 1

    .line 2190
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->sendDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5dud6wWRX4AAbC8Ah6s3CTIglsI(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4934
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->startHandover(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$7qrDCricy4Qqq_NEEROzXXBJGjs(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 1942
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->hangup(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$817UmLX7JIqfRMjw9y30WhV4MMs(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1684
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1685
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1686
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1687
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1684
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->changeIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$87-OflRPRGta8va7m8PoHvhfMWs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2622
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2623
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2624
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2625
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2622
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioNetworkProxy;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8OrNGglapaUEvaDydjDxPt7nlfc(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5545
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isSecurityAlgorithmsUpdatedEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8PTn9GkJbXrhHX_9Onp14Qa8CTc(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2004
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->switchWaitingOrHoldingAndActive(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8a5R0b5ALIXeEWRY4vjOEiL7Qq8(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$setAllowedNetworkTypesBitmap$73(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8bUJqMKLWIciQ-OnWsO03d-ECK8(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4976
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioDataProxy;->getSlicingConfig(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$8lLUWtYpbNpGFqAE8n_CAMRr6qI(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;)V
    .locals 0

    .line 1736
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1737
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1736
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->supplySimDepersonalization(ILcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$95wNT_o3fHtkZWMGosHOC8T3oPc(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4893
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioDataProxy;->allocatePduSessionId(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9IMM4Ky4FHYEW5RTP_JSoCFZu0g(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2358
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->cancelPendingUssd(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9LFr3SRVJJENVIELrY71cPS8W9c(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2868
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getMute(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9e0YIouyFgoBjFal5HT-ZbLYeaQ(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4342
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioModemProxy;->nvResetConfig(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AHscGU6PGkRqKBkbmTVROzyukaw(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3453
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getTtyMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AI9EXhXsCmv27UdfvPKL6_RbuEQ(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;ZZZ)V
    .locals 0

    .line 2170
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioModemProxy;->setRadioPower(IZZZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ASvPvmyY4dTpJ3KZWW2cJYZJ7qY(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V
    .locals 0

    .line 1867
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioVoiceProxy;->dial(ILjava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$BmP1ombq1TbWf00zlWn-ZHaYVL8(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2315
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2316
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2317
    invoke-static {p8}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 2318
    invoke-static {p9}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 2319
    invoke-static {p10}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 2315
    invoke-virtual/range {p0 .. p10}, Lcom/android/internal/telephony/RadioSimProxy;->iccIoForApp(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CTwcpF43vqYAlX3wa7VPMrmSYXw(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 4794
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->enableUiccApplications(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D1QJagXtDxeNdHcEKTQK5xmX_YQ(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 2458
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->getCallWaiting(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$D7y9zFOHwMOVXpzm7WilPIw5Srw(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 5609
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSatelliteEnabledForCarrier(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E2-yFtK2MsrhKX3QkqHGc0B8u9Y(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2793
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->stopDtmf(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E8Tg8t8Zi4sv-fdxTt536yJ31f0(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2040
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->rejectCall(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E8WU1d18QM-7IkfzDEx1M_1el9U(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V
    .locals 1

    .line 2775
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->startDtmf(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EPx7h1XdG8teiexwR4699Fq7rls(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;III)V
    .locals 0

    .line 5213
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioImsProxy;->sendAnbrQuery(IIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EiKJ0ogCHt-ogi1m99Mjx49le3s(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 1755
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getCurrentCalls(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EoGAGbykphkQ67LXlUKqIGDsgrs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 5288
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->cancelEmergencyNetworkScan(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ErNupRcn2tqrZf0RopgKpvA-RRI(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4601
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getAllowedCarriers(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EtPZXE2UzkJgQ7uW9f9Z2qjR6lk(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4066
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setCellInfoListRate(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FURavH37Ci4qcGbfmKdzrXqfRD0(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 5059
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setUsageSetting(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$G5zaB9-z-OPmYU7erNZArzr34Qo(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1580
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1581
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1582
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1580
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPukForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GRpz8uObYDTAxLiHmC7EAfE8CVg(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/SrvccConnection;)V
    .locals 0

    .line 5102
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertToHalSrvccCall([Lcom/android/internal/telephony/SrvccConnection;)[Landroid/hardware/radio/ims/SrvccCall;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->setSrvccCallInfo(I[Landroid/hardware/radio/ims/SrvccCall;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Gux6X4Arq3GMx4Gkya5zzNTbjJw(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4819
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->areUiccApplicationsEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GvMEwCW3l6W0GwboiF0FeU6nWIQ(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZI)V
    .locals 0

    .line 3633
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->acknowledgeLastIncomingCdmaSms(IZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HkR25dQ7ZrcKFKfFFW8JYsNGqLM(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2597
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2598
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2599
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2600
    invoke-static {p6}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 2597
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/RadioSimProxy;->setFacilityLockForApp(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$HvoF4pK-3HDQnbD_79vOI_NkBsg(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZI)V
    .locals 0

    .line 2497
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->acknowledgeLastIncomingGsmSms(IZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Iggpef-4OmxF_Ow-T7no8rd5GJY(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4425
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4426
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4427
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 4425
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->requestIccSimAuthentication(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IzuOcm2bXMnN9sXaMg-O0_5Ftmk(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->lambda$sendCdmaSMSExpectMore$89(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$K-RZrxVp3W8S_KeftNF0CeotnWo(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)V
    .locals 0

    .line 5034
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->updateSimPhonebookRecords(ILcom/android/internal/telephony/uicc/SimPhonebookRecord;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KdaGJbRrZvCyWngxKjnOgtTcKM8(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5310
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->exitEmergencyMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$L20ywnbQar6PZFZH5i_aRh48FoE(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3653
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioMessagingProxy;->getGsmBroadcastConfig(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$M11-WjzSK6JQKJ3m7HHY912tVZw(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1554
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1555
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1554
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPinForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MK489wJmVOcfjZlsgtvNSzX7Mjs(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZLjava/lang/String;)V
    .locals 0

    .line 4007
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 4008
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4007
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MPZKyvY-LbqM8UGS4dRxLP7_Kzg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2077
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getSignalStrength(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NDPjBshHMZ8WwmQQsZXuf90cHcA(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/ims/ImsRegistration;)V
    .locals 0

    .line 5134
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->updateImsRegistrationInfo(ILandroid/hardware/radio/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NWAB2fi0zeDXoUCIMuyaoteoxJs(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3513
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getPreferredVoicePrivacy(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NdZnRyyXhhgGVUL9XxSa8apkwR4(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0

    .line 1708
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1709
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1708
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OQUv52ymN2GzZrr3Bxxi6boHC-c(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/ImsiEncryptionInfo;)V
    .locals 0

    .line 4730
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->setCarrierInfoForImsiEncryption(ILandroid/telephony/ImsiEncryptionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OwO2XDwJkNBZihkHjXueXH1Xc3c(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1657
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 1658
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1659
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1660
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1657
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioSimProxy;->changeIccPinForApp(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P15-zvlnOv3il_EoZGDp5ZvRU4A(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 4383
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->setDataAllowed(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PZRYBD9_QZa7BqQOaB8-VdzeonM(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->lambda$deactivateDataCall$44(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PbZOCVNhY-lxH4QlNtA4f_uAs_0(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0

    .line 3024
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->sendEnvelope(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Pnw4IB5XsA_mHcCwcZma5rCU14k(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2831
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getBasebandVersion(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Q1zgzL9Gs25x4ene6zvhceqZ7aE(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 1781
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioModemProxy;->enableModem(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QN6buGvu51QPtsabpbC2tWh2FmI(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 3945
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->reportSmsMemoryStatus(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Qh_jNuU6gd6f4PfG9AhQdg9NPxo(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V
    .locals 0

    .line 5384
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertImsCallInfo(Ljava/util/List;)[Landroid/hardware/radio/ims/ImsCall;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->updateImsCallStatus(I[Landroid/hardware/radio/ims/ImsCall;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QnGJ4HDAmst5ccSPGWohbn9jpp4(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2059
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getLastCallFailCause(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R1-ZezaDFsH01YmZ6WHIHo_xVDE(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/RIL;->lambda$sendImsCdmaSms$116(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RJJuZpmW4SJhbU0lJcoHaPB-xjg(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 5195
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->triggerEpsFallback(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RKPzRCSHNriyJUtFeV09IyDTy0Y(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$getModemActivityInfo$134(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ROUPzmSYbGFvyY_pk_va7q9NndQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3221
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAllowedNetworkTypesBitmap(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RZaS2YufS64KoznAdfscY4pzRPU(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4486
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getRadioCapability(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Rw0PSx5iCifdbTeP-7xYpMFdcAE(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/RIL;->lambda$sendSMS$30(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UAHHkW_X8pimgs1feA13C8bEiro(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 3698
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->setGsmBroadcastActivation(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$UIEMfRI9wqup6bInLBxILYdvvzY(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V
    .locals 0

    .line 4199
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->iccOpenLogicalChannel(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WJTNWSXA7iTvRVT5jaYytc_XR3g(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIIILjava/lang/String;Z)V
    .locals 0

    .line 4252
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p9}, Lcom/android/internal/telephony/RadioSimProxy;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WKUmeOri64iVC4eDsK8ZDoa5_LI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 5518
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSecurityAlgorithmsUpdatedEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WLwBERvKe_L0QKdYh3JJWmoq9ng(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2756
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->stopNetworkScan(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Wh1xVeajF9CT1XJ_TNJjD7Y5AE0(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4995
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getSimPhonebookRecords(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WibymfhlpHEX_yRmmpqhdzMZsRM(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2944
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2945
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2946
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2944
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioMessagingProxy;->writeSmsToSim(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WyOvTiqg5QH1PEhUsFUN0mAA20g(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V
    .locals 0

    .line 2102
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->getVoiceRegistrationState(ILcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X6nJI-99rdD3aP7T5LWH2q2Lw2k(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2145
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getOperator(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$X81PUjF7DAXg_2Q8erCOBolbS80(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 3472
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setTtyMode(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XCcfst-vm96khmg-t-Q7HTkB_c4(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 5175
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioImsProxy;->stopImsTraffic(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XaEH3gBTBd4iqQpacDcjXWiGnwI(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 1842
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getModemStackStatus(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YN1gfSgJKoOdDJDrc5M6umqGSlc(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2022
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->conference(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z3m-tovS0q75Oym5h7UZsQSTGu8(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4709
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->setSimCardPower(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Z4dBU9V0-rsDO1vvNLR4w638kbg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V
    .locals 0

    .line 2127
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->getDataRegistrationState(ILcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZGHIQZyHONntlyIJFd-9hWZV6rs(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3849
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getDeviceIdentity(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZrZuMsHX05le24Iv9vpcbU4kYdQ(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/RIL;->lambda$sendSMSExpectMore$31(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ZyfSf1zYKRxRR379D0GGAwd3kPA(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V
    .locals 0

    .line 1899
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/RadioVoiceProxy;->emergencyDial(ILjava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_E0ueja0SYQnOPL-6XKpRB2abCE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;ZI)V
    .locals 0

    .line 2477
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioVoiceProxy;->setCallWaiting(IZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b0Y4CM3bVMtCjo0n_1p9532PzEY(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4914
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->releasePduSessionId(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$b1M5-uZldo2soLUFF-HU1kGn7EQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4027
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getVoiceRadioTechnology(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bL2LsLHMpSYT9WOYHuE6LKquUSs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 5407
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setN1ModeEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bM4o7ZMFfbvA19gQXrd3aHfUpng(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3264
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isNrDualConnectivityEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bgiX7Iyar9jTSRM1GaXYp2SJMdI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3138
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAllowedNetworkTypesBitmap(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cBsZKhMr795F9rQHJEt7JYalh5M(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 2965
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->deleteSmsOnSim(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cFKYd6PGyrOEL8dQNnsChzbjuKM(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;IIII)V
    .locals 0

    .line 5155
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertImsTrafficType(I)I

    move-result p3

    .line 5156
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertImsTrafficDirection(I)I

    move-result p5

    .line 5155
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioImsProxy;->startImsTraffic(IIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cas5Osn4aKFs5HDKjiNvx-IQ_HY(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3867
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getImei(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cbMnz5xCxfgQHHLj041oOyxu8MQ(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;->lambda$setAllowedCarriers$135(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dH1sNswe1ZXNhYvhqyuipAcgOnQ(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0

    .line 1923
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->getImsiForApp(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dSoRg0Xe_CxSLS4Oz4-6CUAbJWA(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 5236
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setEmergencyMode(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dwK04GOXJ6EPYvPKuct3zM2g_rM(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5082
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getUsageSetting(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$eTKAEjsYi31sU1kP1fXpcU2PDB0(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;[Landroid/telephony/data/DataProfile;)V
    .locals 0

    .line 4449
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->setDataProfile(I[Landroid/telephony/data/DataProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$e_etNWbn2VxJnQz4RAaS6HqGt_o(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4105
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getImsRegistrationState(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$f8F55UIV_LgxBMeyLb_c-gubY4E(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 3830
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->deleteSmsOnRuim(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fxAPXytDu-JsL7L5BNTIjmmBs6Q(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;IJ)V
    .locals 0

    .line 4537
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioDataProxy;->setDataThrottling(IBJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g5d4zfDVwMEWCbQVyOrmvqPegAE(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4467
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->requestShutdown(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gSog1z1Xh_auV4udQOuBMNVwvsA(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 2850
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setMute(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gh4_mb-bwd3xWxFI0HwukutIxFY(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IIILjava/lang/String;I)V
    .locals 0

    .line 2437
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/RadioVoiceProxy;->setCallForward(IIIILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gkdmti-EAGWqOpXf0s11mjp7vH0(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2666
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNetworkSelectionModeAutomatic(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gsjGuOTn5gLaJY5cr6fZriZsIXg(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IZ)V
    .locals 0

    .line 4217
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->iccCloseLogicalChannel(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gzQJNGwUy96wbhR4F-wkT-O3PPk(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIII)V
    .locals 0

    .line 4364
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioSimProxy;->setUiccSubscription(IIIII)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$h9M6YtzscRpX7FueBSyLPtDo_2c(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 3368
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setVoNrEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hbGdV0RZR2ifGxdq0_GQbdXek-8(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0

    .line 3924
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->setSmscAddress(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hwVqExXu0iuWsY3inxR-IgouuGs(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5490
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isCellularIdentifierTransparencyEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$iNn5JncT29SEMH_XvhKYUQQaCuU(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 1530
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->getIccCardStatus(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ibMn4qghfJ5ttK-ZckDh1f2u2iE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0

    .line 2340
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->sendUssd(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ier8TD0iHUMR4vXgjS--3RsUwoQ(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3964
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioSimProxy;->reportStkServiceIsRunning(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jC9pXr-NdozZl31JzHuUZp7FWAM(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->lambda$sendCdmaSms$90(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jFow9Vgr_2hA4yVcjiNRmjE8ofY(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3333
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->isVoNrEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jUetrKkWMQZ2nwVdHGz-pJo29cA(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V
    .locals 0

    .line 4663
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSignalStrengthReportingCriteria(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jczgfnAjeuV4L1WJT0qUGHhm0dE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 1963
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->hangupWaitingOrBackground(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jrpy8EiBBCNjngPeuNNU9ExopEE(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V
    .locals 0

    .line 1803
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSystemSelectionChannels(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jtXSVtFLSFT8ru0qInuJfuHrqYU(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 1984
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->hangupForegroundResumeBackground(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k9Co0r-B3F7pJ6MZgvOsamzMocQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 3241
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setLocationUpdates(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kTuFzRL_Lapy5vy-eUB6zvIR7kk(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2376
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getClir(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$lWAWzTEXPORzUQmn6dkw9Zpo0Fw(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4954
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->cancelHandover(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$laeOVObSsxgGOLk426O2pnHG0tQ(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 2645
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getNetworkSelectionMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$m9U-W9B3PxPTpMnQjggQd-OYPCw(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 3493
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->setPreferredVoicePrivacy(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mA0tOfAJ3dMFkK-LWUOYDup4THo(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V
    .locals 0

    .line 2687
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2688
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2687
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNetworkSelectionModeManual(ILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mCTh7Ac5szg6veM7q3Rtb7kjrpA(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 2813
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->separateConnection(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mc1XOofl40-lWPvhmRhqm8Ys7Hw(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 2925
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setSuppServiceNotifications(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n8U3CcZBoBSLlMRbTYknbDoXxUI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 3297
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNrDualConnectivityState(IB)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$n9EXWufh5lCmtBI3LTS3dQa27AQ(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V
    .locals 0

    .line 3045
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 3046
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3045
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioSimProxy;->sendTerminalResponseToSim(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$naK0phUae06BNL9lGRFSjWaAKZk(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I[B)V
    .locals 0

    .line 3809
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->writeSmsToRuim(II[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oY2vB3l-Iy2BCS88jzS7jxKo4ME(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2566
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 2567
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2568
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2569
    invoke-static {p5}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 2566
    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioSimProxy;->getFacilityLockForApp(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oeDXIqcmCu6WJ-p4CKXqMuRZvrI(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;II)V
    .locals 0

    .line 3560
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioVoiceProxy;->sendBurstDtmf(ILjava/lang/String;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pUp5fbbRJKxiyfgMSD-aQ6WFMfU(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5429
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isN1ModeEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pWf20FeSu72RVNJldNVBVHcWDHU(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4403
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioModemProxy;->getHardwareConfig(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qVDUNiEAbZ-8cdL08MNmO_W6cbI(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3004
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAvailableBandModes(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qaUkNQjw-_GRqycoI2N_umxA8kU(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V
    .locals 0

    .line 2737
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioNetworkProxy;->startNetworkScan(ILandroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r-IunojOentWwCin4ADSaldJmHk(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V
    .locals 0

    .line 3677
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioMessagingProxy;->setGsmBroadcastConfig(I[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$r1bsRqXZzQmVeE3PUSBWXZlMFNk(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3905
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioMessagingProxy;->getSmscAddress(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rA9oyKKZ_0q4O3EJ0FFhyZS-bew(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;[II)V
    .locals 0

    .line 5263
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 5264
    invoke-static {p2, p3}, Lcom/android/internal/telephony/RILUtils;->convertEmergencyNetworkScanTrigger([II)Landroid/hardware/radio/network/EmergencyNetworkScanTrigger;

    move-result-object p2

    .line 5263
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->triggerEmergencyNetworkScan(ILandroid/hardware/radio/network/EmergencyNetworkScanTrigger;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rLXwNp5tn7Q_ofLRWBOJ2cN-b9g(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V
    .locals 0

    .line 4641
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setIndicationFilter(II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rbsLSOwCKO1Q6TjDSKkBZ-LNvgE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 4851
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioVoiceProxy;->handleStkCallSetupRequestFromSim(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rxkNq_CbaqHFGHdg33x0QAt17gM(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIILjava/lang/String;)V
    .locals 0

    .line 4176
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/RadioSimProxy;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sfMV4JNorXJO4zZo61DmStDBXw0(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 1824
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getSystemSelectionChannels(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sfrG2X1BJa441j_qr1ekjyFDPNA(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;IZ)V
    .locals 0

    .line 4620
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioModemProxy;->sendDeviceState(IIZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tCvkG70cCrzwA-09DUobswVMhaE(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 5362
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->isNullCipherAndIntegrityEnabled(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$uOwFGQQREj2wkPHXiOxkn0MBf8w(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3086
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->explicitCallTransfer(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ujjDW3rB72bqzf_mlsHyjDYRPHE(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;)V
    .locals 0

    .line 2416
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RadioVoiceProxy;->getCallForwardStatus(IIILjava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vYmUVpuCBMDSAEEyCEXCF__3lhk(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->lambda$acceptCall$43(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wEyop62IOGDFf7HtvQ7V7lj5OcI(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/RadioCapability;)V
    .locals 0

    .line 4506
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioModemProxy;->setRadioCapability(ILcom/android/internal/telephony/RadioCapability;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wPNfCWu1hiySolUthpxXwRToA28(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1606
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1607
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1606
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioSimProxy;->supplyIccPin2ForApp(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$x6uTQpprYvYvPbc_vc3_Gx2V9oE(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 5460
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setCellularIdentifierTransparencyEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xA8dMP5xOhcAX3-sEQ_uZ8huXoU(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/data/DataProfile;)V
    .locals 0

    .line 4085
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioDataProxy;->setInitialAttachApn(ILandroid/telephony/data/DataProfile;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xH5_x2jcdkDZ7CRoyCWD4Zkwnoo(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;III[I[II)V
    .locals 0

    .line 4687
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/RadioNetworkProxy;->setLinkCapacityReportingCriteria(IIII[I[II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xMTQiRx9xp2QREN_4u10Fkfyq74(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V
    .locals 0

    .line 5337
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RadioNetworkProxy;->setNullCipherAndIntegrityEnabled(IZ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xqlms7y3vbXaPLXgzYs5DAhaiBo(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 3887
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->exitEmergencyCallbackMode(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$yoLPx-DDIT0lZpB76fsVjAbopUg(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4872
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getBarringInfo(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z_4-DkJt-IMTmPGnp6CRqMA9SDg(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 0

    .line 4750
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual/range {p0 .. p5}, Lcom/android/internal/telephony/RadioDataProxy;->startKeepalive(IILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$znhkZ99ee_07DL5N31_oXyK31b4(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 4046
    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getCellInfoList(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkedServices(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mLinkedServices:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetrics(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/metrics/TelephonyMetrics;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioBugDetector(Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioBugDetector;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceCookies(Lcom/android/internal/telephony/RIL;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mclearWakeLock(Lcom/android/internal/telephony/RIL;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdecrementWakeLock(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindAndRemoveRequestFromList(Lcom/android/internal/telephony/RIL;I)Lcom/android/internal/telephony/RILRequest;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetProxyAndRequestList(Lcom/android/internal/telephony/RIL;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetProxyAndRequestListAll(Lcom/android/internal/telephony/RIL;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestListAll()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smserviceToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 9

    .line 161
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    .line 167
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    .line 170
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_2:Lcom/android/internal/telephony/HalVersion;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_3:Lcom/android/internal/telephony/HalVersion;

    .line 176
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 182
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v5, 0x6

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    .line 185
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v6, 0x0

    invoke-direct {v0, v2, v6}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    .line 188
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    .line 191
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    .line 194
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v4}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    .line 220
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    .line 316
    const-string v0, "slot2"

    const-string v7, "slot3"

    const-string v8, "slot1"

    filled-new-array {v8, v0, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    .line 318
    new-array v0, v4, [Ljava/util/Map$Entry;

    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.hardware.telephony.calling"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v0, v6

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "android.hardware.telephony.data"

    invoke-static {v5, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v4

    aput-object v4, v0, v1

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "android.hardware.telephony.messaging"

    invoke-static {v4, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x7

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "android.hardware.telephony.ims"

    invoke-static {v2, v1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v0, v3

    .line 318
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/RIL;->FEATURES_TO_SERVICES:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILjava/lang/Integer;Landroid/util/SparseArray;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RadioServiceProxy;",
            ">;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ")V"
        }
    .end annotation

    .line 1172
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/BaseCommands;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance p3, Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-direct {p3}, Lcom/android/internal/telephony/SemClientWakelockTracker;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    .line 200
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v0, 0x0

    .line 1192
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 215
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 216
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 218
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    .line 224
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    .line 226
    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    const/4 v2, 0x0

    .line 228
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    .line 232
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 251
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    .line 260
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 262
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 267
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 284
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    .line 285
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    .line 286
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 295
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 311
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mLinkedServices:Landroid/util/SparseArray;

    .line 1173
    iput-object p6, p0, Lcom/android/internal/telephony/RIL;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 1178
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL: init allowedNetworkTypes="

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cdmaSubscription="

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, -0x1

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1182
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    .line 1183
    iput v2, p0, Lcom/android/internal/telephony/BaseCommands;->mCdmaSubscription:I

    .line 1184
    iput p2, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 1185
    iput v0, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    if-nez p4, :cond_0

    move p2, v0

    goto :goto_0

    .line 1186
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1187
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioBugDetectionEnabled()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1188
    new-instance p4, Lcom/android/internal/telephony/RadioBugDetector;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p4, p1, p2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 1191
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioVersion2_0()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1192
    sget-object p2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    .line 1194
    :cond_2
    sget-object p2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    if-eqz p5, :cond_10

    .line 1203
    :goto_2
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 1205
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_4

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move p2, v0

    goto :goto_4

    :cond_4
    :goto_3
    move p2, p4

    :goto_4
    iput-boolean p2, p0, Lcom/android/internal/telephony/RIL;->mIsCellularSupported:Z

    .line 1207
    new-instance p2, Lcom/android/internal/telephony/RadioResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RadioResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    .line 1208
    new-instance p2, Lcom/android/internal/telephony/RadioIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RadioIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    .line 1209
    new-instance p2, Lcom/android/internal/telephony/DataResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/DataResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mDataResponse:Lcom/android/internal/telephony/DataResponse;

    .line 1210
    new-instance p2, Lcom/android/internal/telephony/DataIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/DataIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mDataIndication:Lcom/android/internal/telephony/DataIndication;

    .line 1211
    new-instance p2, Lcom/android/internal/telephony/ImsResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mImsResponse:Lcom/android/internal/telephony/ImsResponse;

    .line 1212
    new-instance p2, Lcom/android/internal/telephony/ImsIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ImsIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mImsIndication:Lcom/android/internal/telephony/ImsIndication;

    .line 1213
    new-instance p2, Lcom/android/internal/telephony/MessagingResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/MessagingResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mMessagingResponse:Lcom/android/internal/telephony/MessagingResponse;

    .line 1214
    new-instance p2, Lcom/android/internal/telephony/MessagingIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/MessagingIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

    .line 1215
    new-instance p2, Lcom/android/internal/telephony/ModemResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ModemResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mModemResponse:Lcom/android/internal/telephony/ModemResponse;

    .line 1216
    new-instance p2, Lcom/android/internal/telephony/ModemIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/ModemIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mModemIndication:Lcom/android/internal/telephony/ModemIndication;

    .line 1217
    new-instance p2, Lcom/android/internal/telephony/NetworkResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/NetworkResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mNetworkResponse:Lcom/android/internal/telephony/NetworkResponse;

    .line 1218
    new-instance p2, Lcom/android/internal/telephony/NetworkIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/NetworkIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mNetworkIndication:Lcom/android/internal/telephony/NetworkIndication;

    .line 1219
    new-instance p2, Lcom/android/internal/telephony/SimResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SimResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mSimResponse:Lcom/android/internal/telephony/SimResponse;

    .line 1220
    new-instance p2, Lcom/android/internal/telephony/SimIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/SimIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mSimIndication:Lcom/android/internal/telephony/SimIndication;

    .line 1221
    new-instance p2, Lcom/android/internal/telephony/VoiceResponse;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/VoiceResponse;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mVoiceResponse:Lcom/android/internal/telephony/VoiceResponse;

    .line 1222
    new-instance p2, Lcom/android/internal/telephony/VoiceIndication;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/VoiceIndication;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mVoiceIndication:Lcom/android/internal/telephony/VoiceIndication;

    .line 1223
    new-instance p2, Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RIL$RilHandler;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    .line 1224
    new-instance p2, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;-><init>(Lcom/android/internal/telephony/RIL;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    move p2, v0

    :goto_5
    const/4 p3, 0x7

    if-gt p2, p3, :cond_8

    if-eqz p2, :cond_7

    .line 1228
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1229
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :catch_1
    move-exception p3

    goto :goto_6

    .line 1231
    :cond_5
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {p3, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :goto_6
    if-eqz p5, :cond_6

    .line 1240
    :goto_7
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    invoke-direct {p6, p0, p2}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;-><init>(Lcom/android/internal/telephony/RIL;I)V

    invoke-virtual {p3, p2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 1238
    :cond_6
    throw p3

    .line 1242
    :cond_7
    :goto_8
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    new-instance p6, Ljava/util/HashSet;

    invoke-direct {p6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p3, p2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1243
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    new-instance p6, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {p6, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {p3, p2, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_8
    if-nez p5, :cond_9

    .line 1246
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioDataProxy;-><init>()V

    invoke-virtual {p2, p4, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1247
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioMessagingProxy;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1248
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioModemProxy;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1249
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioNetworkProxy;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1250
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioSimProxy;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1251
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioVoiceProxy;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {p2, v1, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1252
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    new-instance p6, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-direct {p6}, Lcom/android/internal/telephony/RadioImsProxy;-><init>()V

    invoke-virtual {p2, p3, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_9

    .line 1254
    :cond_9
    iput-object p5, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    .line 1257
    :goto_9
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 1258
    const-string p6, "*telephony-radio*"

    invoke-virtual {p2, p4, p6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p6

    iput-object p6, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1259
    invoke-virtual {p6, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1260
    const-string p6, "RILJ_ACK_WL"

    invoke-virtual {p2, p4, p6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1261
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1262
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const p4, 0xea60

    .line 1263
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    .line 1264
    invoke-static {}, Landroid/internal/telephony/sysprop/TelephonyProperties;->wake_lock_timeout()Ljava/util/Optional;

    move-result-object p2

    const/16 p4, 0xc8

    .line 1265
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    .line 1266
    iput v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 1267
    new-instance p2, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1268
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p4, p1}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    .line 1269
    new-instance p1, Landroid/os/WorkSource;

    invoke-direct {p1}, Landroid/os/WorkSource;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 1271
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_a

    .line 1272
    new-instance p1, Lcom/android/internal/telephony/PduTest;

    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/android/internal/telephony/RIL;->mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

    iget-object p6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    invoke-direct {p1, p2, p0, p4, p6}, Lcom/android/internal/telephony/PduTest;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/MessagingIndication;I)V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL;->mPduTest:Lcom/android/internal/telephony/PduTest;

    .line 1286
    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->validateFeatureFlags()V

    :goto_a
    if-gt v0, p3, :cond_e

    .line 1291
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioVersion2_0()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not initializing "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (not supported)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    if-nez v0, :cond_c

    .line 1297
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_4/IRadio;

    goto :goto_b

    :cond_c
    if-nez p5, :cond_d

    .line 1301
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    .line 1306
    :cond_d
    :goto_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HAL version of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 1307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1312
    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/TelephonyDevController;->getInstance()Lcom/android/internal/telephony/TelephonyDevController;

    if-nez p5, :cond_f

    .line 1316
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyDevController;->registerRIL(Lcom/android/internal/telephony/CommandsInterface;)V

    :cond_f
    return-void

    .line 1200
    :cond_10
    throw p2
.end method

.method public constructor greylist <init>(Landroid/content/Context;IILjava/lang/Integer;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1166
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;Landroid/util/SparseArray;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    return-void
.end method

.method private greylist-max-r acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V
    .locals 7

    .line 5961
    monitor-enter p1

    .line 5962
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 5963
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to acquire wakelock for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5964
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    .line 6013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Acquiring Invalid Wakelock type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    .line 6014
    monitor-exit p1

    return-void

    .line 6003
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6004
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6005
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    .line 6007
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6008
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mAckWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 6009
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget p0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6010
    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    .line 5969
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5970
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5971
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 5972
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    .line 5978
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    .line 5979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->getWorkSourceClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "RILJ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    goto :goto_0

    :catchall_2
    move-exception p0

    goto :goto_2

    .line 5980
    :cond_3
    invoke-virtual {v0}, Landroid/os/WorkSource;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 5981
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 5982
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5983
    array-length v4, v0

    if-lt v4, v3, :cond_4

    .line 5984
    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v5

    aget-object v0, v0, v2

    invoke-virtual {v4, v5, v0}, Landroid/os/WorkSource;->set(ILjava/lang/String;)V

    .line 5987
    :cond_4
    :goto_0
    iget-object v0, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    .line 5989
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SemClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5990
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 5991
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 5994
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    iget-object v2, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v6, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/android/internal/telephony/SemClientWakelockTracker;->startTracking(Ljava/lang/String;III)V

    .line 5997
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5998
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWlSequenceNum:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 5999
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget p0, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    int-to-long v3, p0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6000
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 6016
    :goto_1
    :try_start_4
    iput p2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 6017
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    .line 6000
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    .line 6017
    :goto_3
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method private blacklist addRequest(Lcom/android/internal/telephony/RILRequest;)V
    .locals 5

    const/4 v0, 0x0

    .line 1406
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 1407
    const-string v0, "RIL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 1409
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const-wide/32 v3, 0x200000

    .line 1407
    invoke-static {v3, v4, v0, v1, v2}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1411
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    .line 1412
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1413
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V
    .locals 5

    .line 6144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6145
    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    .line 6147
    sget-object v0, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6148
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyHistogram;

    if-nez v1, :cond_0

    .line 6151
    new-instance v1, Landroid/telephony/TelephonyHistogram;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/telephony/TelephonyHistogram;-><init>(III)V

    .line 6153
    sget-object v2, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6155
    :cond_0
    :goto_0
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyHistogram;->addTimeTaken(I)V

    .line 6156
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1461
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    return p0
.end method

.method private blacklist canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z
    .locals 6

    .line 1467
    instance-of v0, p2, Lcom/android/internal/telephony/RadioDataProxy;

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 1469
    :cond_0
    instance-of v0, p2, Lcom/android/internal/telephony/RadioMessagingProxy;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 1471
    :cond_1
    instance-of v0, p2, Lcom/android/internal/telephony/RadioModemProxy;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 1473
    :cond_2
    instance-of v0, p2, Lcom/android/internal/telephony/RadioNetworkProxy;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 1475
    :cond_3
    instance-of v0, p2, Lcom/android/internal/telephony/RadioSimProxy;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 1477
    :cond_4
    instance-of v0, p2, Lcom/android/internal/telephony/RadioVoiceProxy;

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_0

    .line 1479
    :cond_5
    instance-of v0, p2, Lcom/android/internal/telephony/RadioImsProxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    if-eqz p2, :cond_c

    .line 1482
    invoke-virtual {p2}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_1

    .line 1492
    :cond_7
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, p4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1494
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2, p4}, [Ljava/lang/Object;

    move-result-object p1

    .line 1493
    const-string p2, "%s not supported on service %s < %s."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    .line 1497
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 1496
    invoke-static {p3, v4, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1498
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    return v3

    :cond_9
    if-eqz p5, :cond_b

    .line 1503
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/HalVersion;->greater(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1505
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2, p5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1504
    const-string p2, "%s not supported on service %s > %s."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p3, :cond_a

    .line 1508
    invoke-static {v1}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 1507
    invoke-static {p3, v4, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1509
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    return v3

    :cond_b
    return v2

    .line 1484
    :cond_c
    :goto_1
    invoke-static {v0}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 1483
    const-string p2, "Unable to complete %s because service %s is not available."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    if-eqz p3, :cond_d

    .line 1487
    invoke-static {v2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object p0

    .line 1486
    invoke-static {p3, v4, p0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1488
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_d
    return v3
.end method

.method private greylist-max-r clearRequestList(IZ)V
    .locals 9

    .line 6107
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6108
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_0

    .line 6110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearRequestList  mWakeLockCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mRequestList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 6115
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RILRequest;

    if-eqz p2, :cond_1

    .line 6117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6120
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->getSerial()I

    move-result v5

    iget v6, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget-wide v7, v3, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingRequestTimeout(IIJ)V

    const/4 v4, 0x0

    .line 6122
    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 6123
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 6124
    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6126
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 6127
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private greylist-max-r clearWakeLock(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 6081
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 6082
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit p1

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6083
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTE: mWakeLockCount is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at time of clearing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6084
    iput v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 6085
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6086
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockTracker;->stopTrackingAll()V

    .line 6087
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    .line 6088
    monitor-exit p1

    return v0

    .line 6089
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6091
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p1

    .line 6092
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p1

    return v1

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 6093
    :cond_2
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6094
    monitor-exit p1

    return v0

    .line 6095
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method private greylist-max-r decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V
    .locals 9

    .line 6040
    monitor-enter p1

    .line 6041
    :try_start_0
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_4

    .line 6072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 6043
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6044
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    iget v5, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    iget v6, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    .line 6046
    iget v7, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    const/4 v8, 0x0

    if-le v7, v2, :cond_1

    sub-int/2addr v7, v2

    goto :goto_0

    :cond_1
    move v7, v8

    .line 6044
    :goto_0
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/SemClientWakelockTracker;->stopTracking(Ljava/lang/String;III)V

    .line 6051
    iget-object v3, p1, Lcom/android/internal/telephony/RILRequest;->mClientId:Ljava/lang/String;

    .line 6053
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/SemClientWakelockTracker;->isClientActive(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6054
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    iget-object v4, p1, Lcom/android/internal/telephony/RILRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/WorkSource;->remove(Landroid/os/WorkSource;)Z

    .line 6055
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 6058
    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    if-le v3, v2, :cond_3

    sub-int/2addr v3, v2

    .line 6059
    iput v3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    goto :goto_2

    .line 6061
    :cond_3
    iput v8, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    .line 6062
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 6064
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    .line 6074
    :cond_4
    :goto_4
    iput v1, p1, Lcom/android/internal/telephony/RILRequest;->mWakeLockType:I

    .line 6075
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private blacklist emergencyDial(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 11

    move-object/from16 v0, p6

    .line 1873
    const-class v1, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1874
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v10, "emergencyDial"

    invoke-direct {p0, v10, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xcd

    .line 1878
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 1886
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    const-string v1, "> "

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmask()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1889
    invoke-static {p2}, Lcom/android/internal/telephony/TelephonyLogUtils;->emergencyNumberSourceToString(Landroid/telephony/emergency/EmergencyNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " routing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {p2}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1887
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1893
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1898
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda168;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda168;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v4, v10, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private greylist findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;
    .locals 2

    .line 6133
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6134
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    if-eqz v1, :cond_0

    .line 6136
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6138
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 0

    if-nez p1, :cond_0

    .line 5944
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static blacklist getOutgoingSmsMessageId(Landroid/os/Message;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 2222
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2225
    :cond_0
    check-cast p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-wide v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static greylist-max-r getResponseForTimedOutRILRequest(Lcom/android/internal/telephony/RILRequest;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 499
    :cond_0
    iget p0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 v1, 0x87

    if-eq p0, v1, :cond_1

    return-object v0

    .line 501
    :cond_1
    new-instance v2, Landroid/telephony/ModemActivityInfo;

    .line 502
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result p0

    new-array v7, p0, [I

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    return-object v2
.end method

.method public static blacklist getServiceHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 6633
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6632
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_4:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6631
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6630
    :cond_2
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6629
    :cond_3
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6628
    :cond_4
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public static blacklist getTelephonyRILTimingHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    monitor-enter v0

    .line 328
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 329
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 330
    new-instance v3, Landroid/telephony/TelephonyHistogram;

    sget-object v4, Lcom/android/internal/telephony/RIL;->sRilTimeHistograms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyHistogram;

    invoke-direct {v3, v4}, Landroid/telephony/TelephonyHistogram;-><init>(Landroid/telephony/TelephonyHistogram;)V

    .line 331
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 333
    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 1430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 1432
    iput-boolean p1, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 1437
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1438
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist isRadioBugDetectionEnabled()Z
    .locals 2

    .line 1391
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enable_radio_bug_detection"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isRadioServiceSupported(I)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1338
    :cond_0
    const-string v1, ""

    packed-switch p1, :pswitch_data_0

    move-object p1, v1

    goto :goto_0

    .line 1358
    :pswitch_0
    sget-object p1, Landroid/hardware/radio/ims/IRadioIms;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_0

    .line 1356
    :pswitch_1
    sget-object p1, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_0

    .line 1353
    :pswitch_2
    sget-object p1, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_0

    .line 1350
    :pswitch_3
    sget-object p1, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_0

    .line 1347
    :pswitch_4
    sget-object p1, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_0

    .line 1344
    :pswitch_5
    sget-object p1, Landroid/hardware/radio/messaging/IRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    goto :goto_0

    .line 1341
    :pswitch_6
    sget-object p1, Landroid/hardware/radio/data/IRadioData;->DESCRIPTOR:Ljava/lang/String;

    .line 1362
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1363
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist isRadioVersion2_0()Z
    .locals 3

    .line 1322
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_2

    .line 1324
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1325
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1328
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioVersion20Cached:Ljava/lang/Boolean;

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isVoNrEnabled()Z
    .locals 2

    .line 3306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.radio.is_vonr_enabled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$acceptCall$43(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2515
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RadioVoiceProxy;->acceptCall(I)V

    .line 2516
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilAnswer(II)V

    return-void
.end method

.method private synthetic blacklist lambda$deactivateDataCall$44(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2537
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/android/internal/telephony/RadioDataProxy;->deactivateDataCall(III)V

    .line 2538
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilDeactivateDataCall(IIII)V

    return-void
.end method

.method private synthetic blacklist lambda$getModemActivityInfo$134(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4557
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RadioModemProxy;->getModemActivityInfo(I)V

    .line 4558
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4559
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private synthetic blacklist lambda$sendCdmaSMSExpectMore$89(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3583
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendCdmaSmsExpectMore(I[B)V

    .line 3584
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/HalVersion;

    sget-object p3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3585
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x2

    .line 3587
    invoke-static {p4}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v5

    const/4 v3, 0x2

    .line 3585
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$sendCdmaSms$90(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3608
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendCdmaSms(I[B)V

    .line 3609
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v5, 0x2

    .line 3610
    invoke-static {p4}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    const/4 v4, 0x2

    .line 3609
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$sendImsCdmaSms$116(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4146
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendImsSms(ILjava/lang/String;Ljava/lang/String;[BII)V

    move-object p1, p0

    .line 4147
    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 p4, 0x2

    .line 4148
    invoke-static {p6}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide p5

    const/4 p3, 0x3

    .line 4147
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$sendImsGsmSms$115(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4125
    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendImsSms(ILjava/lang/String;Ljava/lang/String;[BII)V

    move-object p1, p0

    .line 4126
    iget-object p0, p1, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p1, p1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 p4, 0x1

    .line 4127
    invoke-static {p7}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide p5

    const/4 p3, 0x3

    .line 4126
    invoke-virtual/range {p0 .. p6}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$sendSMS$30(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2209
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendSms(ILjava/lang/String;Ljava/lang/String;)V

    .line 2210
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v5, 0x1

    .line 2211
    invoke-static {p5}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    const/4 v4, 0x1

    .line 2210
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$sendSMSExpectMore$31(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2249
    iget v0, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    invoke-virtual {p1, v0, p3, p4}, Lcom/android/internal/telephony/RadioMessagingProxy;->sendSmsExpectMore(ILjava/lang/String;Ljava/lang/String;)V

    .line 2250
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v5, 0x1

    .line 2251
    invoke-static {p5}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    const/4 v4, 0x1

    .line 2250
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSendSms(IIIIJ)V

    return-void
.end method

.method private synthetic blacklist lambda$setAllowedCarriers$135(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4581
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/4 v0, 0x5

    .line 4582
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    .line 4581
    invoke-virtual {p1, p2, p3, p0}, Lcom/android/internal/telephony/RadioSimProxy;->setAllowedCarriers(ILandroid/telephony/CarrierRestrictionRules;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method private synthetic blacklist lambda$setAllowedNetworkTypesBitmap$73(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3201
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->setAllowedNetworkTypesBitmap(II)V

    return-void
.end method

.method private synthetic blacklist lambda$setPreferredNetworkType$71(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3118
    iget p2, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget p0, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/RadioNetworkProxy;->setPreferredNetworkTypeBitmap(II)V

    return-void
.end method

.method private blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;
    .locals 0

    .line 1417
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object p1
.end method

.method private varargs blacklist obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;
    .locals 0

    .line 1424
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1425
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->addRequest(Lcom/android/internal/telephony/RILRequest;)V

    return-object p1
.end method

.method private blacklist processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 5898
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p1, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    move v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeOnRilSolicitedResponse(IIIILjava/lang/Object;)V

    if-nez p3, :cond_0

    .line 5900
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5902
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    :cond_1
    return-void
.end method

.method private blacklist processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V
    .locals 6

    .line 5855
    const-string v0, "RIL"

    const-wide/32 v1, 0x200000

    const-string v3, "< "

    if-nez p2, :cond_0

    .line 5856
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5858
    invoke-static {v3, p4}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5860
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5862
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5865
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->isLogOrTrace()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " error "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5869
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5871
    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 5873
    :cond_1
    invoke-virtual {p1, p2, p4}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 5875
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method private blacklist processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;
    .locals 4

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 5717
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5718
    :try_start_0
    iget-object p4, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/telephony/RILRequest;

    .line 5719
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_0

    .line 5721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected solicited ack response! sn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    return-object p4

    .line 5723
    :cond_0
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5724
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_1

    .line 5725
    iget v0, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v0, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    .line 5728
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Ack from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " < "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 5729
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5728
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object p4

    :catchall_0
    move-exception p0

    .line 5719
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 5735
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->findAndRemoveRequestFromList(I)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5737
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "processResponse: Unexpected response! serial: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 5741
    :cond_3
    const-string p2, "RIL"

    iget v1, v0, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, p2, v1}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    .line 5744
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->addToRilHistogram(Lcom/android/internal/telephony/RILRequest;)V

    .line 5745
    iget-object p2, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-eqz p2, :cond_4

    .line 5746
    iget v1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {p2, v1, p3}, Lcom/android/internal/telephony/RadioBugDetector;->detectRadioBug(II)V

    :cond_4
    const/4 p2, 0x2

    if-ne p4, p2, :cond_5

    .line 5749
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->sendAck(I)V

    .line 5751
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response received from "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5752
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Sending ack to ril.cpp"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5751
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5762
    :cond_5
    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/4 p4, 0x3

    const/4 v1, 0x0

    if-eq p1, p4, :cond_7

    const/4 p4, 0x5

    if-eq p1, p4, :cond_7

    const/16 p4, 0x81

    if-eq p1, p4, :cond_6

    goto :goto_0

    .line 5774
    :cond_6
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    goto :goto_0

    .line 5765
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p1, :cond_8

    .line 5767
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ON enter sim puk fakeSimStatusChanged: reg count="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5768
    invoke-virtual {p4}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5767
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5770
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_8
    :goto_0
    if-eqz p3, :cond_a

    .line 5780
    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    if-eq p1, p2, :cond_9

    const/4 p2, 0x4

    if-eq p1, p2, :cond_9

    const/16 p2, 0x2b

    if-eq p1, p2, :cond_9

    const/4 p2, 0x6

    if-eq p1, p2, :cond_9

    const/4 p2, 0x7

    if-eq p1, p2, :cond_9

    goto :goto_1

    .line 5786
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p1, :cond_c

    .line 5788
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ON some errors fakeSimStatusChanged: reg count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 5789
    invoke-virtual {p2}, Lcom/android/internal/telephony/RegistrantList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5788
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5791
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mIccStatusChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    return-object v0

    .line 5797
    :cond_a
    iget p1, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    const/16 p2, 0xe

    if-eq p1, p2, :cond_b

    goto :goto_1

    .line 5799
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 5800
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz p1, :cond_c

    .line 5801
    const-string p1, "testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5802
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    :cond_c
    :goto_1
    return-object v0
.end method

.method private blacklist radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .locals 1

    .line 1447
    :try_start_0
    invoke-interface {p4}, Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 1455
    invoke-direct {p0, p1, p3, p2}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p4

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " RuntimeException: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 1452
    iget p3, p2, Lcom/android/internal/telephony/RILRequest;->mSerial:I

    const/16 p4, 0x27

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    const/4 p1, 0x0

    .line 1453
    invoke-direct {p0, p2, p4, v0, p1}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized blacklist resetProxyAndRequestList(I)V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 568
    :try_start_0
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 570
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Null service proxy for service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/RadioServiceProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    .line 582
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 586
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    .line 588
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 590
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    if-nez p1, :cond_4

    .line 593
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_4/IRadio;

    goto :goto_5

    :cond_4
    :goto_3
    if-gt v1, v0, :cond_7

    if-nez v1, :cond_5

    goto :goto_4

    .line 598
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    .line 600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null service proxy for service "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_4

    .line 603
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 606
    :cond_7
    :goto_5
    monitor-exit p0

    return-void

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized blacklist resetProxyAndRequestListAll()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 612
    :try_start_0
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 614
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RadioServiceProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    .line 617
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 622
    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/BaseCommands;->setRadioState(IZ)V

    .line 624
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 626
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/RIL;->clearRequestList(IZ)V

    :goto_2
    if-gt v0, v2, :cond_3

    if-nez v0, :cond_2

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_4/IRadio;

    goto :goto_3

    .line 632
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 635
    :cond_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static greylist retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 9

    .line 6181
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0xb

    if-eq p0, v1, :cond_19

    const/16 v1, 0x73

    if-eq p0, v1, :cond_19

    const/16 v1, 0x75

    if-eq p0, v1, :cond_19

    const/16 v1, 0x403

    if-eq p0, v1, :cond_1

    const/16 v1, 0x26

    if-eq p0, v1, :cond_19

    const/16 v1, 0x27

    if-eq p0, v1, :cond_19

    goto :goto_0

    .line 6185
    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v1, :cond_2

    return-object v0

    .line 6206
    :cond_2
    :goto_0
    instance-of v0, p1, [I

    const-string v1, "}"

    const-string v2, ", "

    const-string v3, "{"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    .line 6207
    check-cast p1, [I

    .line 6208
    array-length v0, p1

    .line 6209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_4

    const/16 v3, 0xdf

    if-ne p0, v3, :cond_3

    .line 6217
    aget p0, p1, v4

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6219
    :cond_3
    aget p0, p1, v4

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v5, v0, :cond_4

    .line 6223
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v5, 0x1

    aget v3, p1, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v5, p0

    goto :goto_1

    .line 6226
    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6227
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6228
    :cond_5
    instance-of v0, p1, [Ljava/lang/String;

    const-string v6, "RILJ"

    if-eqz v0, :cond_8

    .line 6229
    check-cast p1, [Ljava/lang/String;

    .line 6230
    array-length v0, p1

    .line 6231
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v0, :cond_7

    const/16 v3, 0x62

    if-ne p0, v3, :cond_6

    .line 6236
    aget-object p0, p1, v4

    invoke-static {v6, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6238
    :cond_6
    aget-object p0, p1, v4

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    if-ge v5, v0, :cond_7

    .line 6241
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, v5, 0x1

    aget-object v3, p1, v5

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, p0

    goto :goto_2

    .line 6244
    :cond_7
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6245
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 v0, 0x98

    if-ne p0, v0, :cond_9

    .line 6247
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6248
    check-cast p1, Landroid/hardware/radio/modem/ImeiInfo;

    .line 6250
    iget-object v0, p1, Landroid/hardware/radio/modem/ImeiInfo;->imei:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6251
    iget v0, p1, Landroid/hardware/radio/modem/ImeiInfo;->type:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6252
    iget-object p1, p1, Landroid/hardware/radio/modem/ImeiInfo;->svn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6254
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6255
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/16 v0, 0x9

    .line 6256
    const-string v7, "] "

    const-string v8, "["

    if-ne p0, v0, :cond_b

    .line 6257
    check-cast p1, Ljava/util/ArrayList;

    .line 6258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6259
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v4, v0, :cond_a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Lcom/android/internal/telephony/DriverCall;

    .line 6260
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 6262
    :cond_a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6263
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/16 v0, 0x4b

    if-ne p0, v0, :cond_d

    .line 6265
    check-cast p1, Ljava/util/ArrayList;

    .line 6266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6267
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v4, v0, :cond_c

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    check-cast v2, Landroid/telephony/NeighboringCellInfo;

    .line 6268
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 6270
    :cond_c
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6271
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const/16 v0, 0x21

    if-ne p0, v0, :cond_f

    .line 6273
    check-cast p1, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 6274
    array-length p0, p1

    .line 6275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_5
    if-ge v4, p0, :cond_e

    .line 6277
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 6279
    :cond_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6280
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/16 v0, 0x7c

    if-ne p0, v0, :cond_11

    .line 6282
    check-cast p1, Ljava/util/ArrayList;

    .line 6283
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6284
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v4, v0, :cond_10

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Lcom/android/internal/telephony/HardwareConfig;

    .line 6285
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 6287
    :cond_10
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    const/16 v0, 0xeb

    if-eq p0, v0, :cond_17

    const/16 v0, 0x454

    if-ne p0, v0, :cond_12

    goto/16 :goto_8

    :cond_12
    const/16 v0, 0x14

    if-eq p0, v0, :cond_15

    const/16 v0, 0x15

    if-ne p0, v0, :cond_13

    goto :goto_7

    .line 6341
    :cond_13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "toString"

    new-array v1, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v0, :cond_14

    .line 6347
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 6344
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6349
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [convertToString]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6307
    :cond_15
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6309
    sget-boolean p1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz p1, :cond_16

    .line 6310
    const-string p1, " ci: [0-9]{1,9}"

    const-string v0, " ci: <MASKED>"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " lac: [0-9]{1,5}"

    const-string v0, " lac: <MASKED>"

    .line 6311
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " cid: [0-9]{1,9}"

    const-string v0, " cid: <MASKED>"

    .line 6312
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " tac: [0-9]{1,8}"

    const-string v0, " tac: <MASKED>"

    .line 6313
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " nci: [0-9]{1,11}"

    const-string v0, " nci: <MASKED>"

    .line 6314
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " pci: [0-9]{1,4}"

    const-string v0, " pci: <MASKED>"

    .line 6315
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " networkId: [0-9]{1,5}"

    const-string v0, " networkId: <MASKED>"

    .line 6316
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " systemId: [0-9]{1,5}"

    const-string v0, " systemId: <MASKED>"

    .line 6317
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " baseStationId: [0-9]{1,5}"

    const-string v0, " baseStationId: <MASKED>"

    .line 6318
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " longitude: -?[0-9]{1,10}"

    const-string v0, " longitude: <MASKED>"

    .line 6319
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " latitude: -?[0-9]{1,10}"

    const-string v0, " latitude: <MASKED>"

    .line 6320
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.ci = [0-9]{1,9}"

    const-string v0, ".ci = <MASKED>"

    .line 6321
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.lac = [0-9]{1,5}"

    const-string v0, ".lac = <MASKED>"

    .line 6322
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.cid = [0-9]{1,9}"

    const-string v0, ".cid = <MASKED>"

    .line 6323
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.tac = [0-9]{1,8}"

    const-string v0, ".tac = <MASKED>"

    .line 6324
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.nci = [0-9]{1,11}"

    const-string v0, ".nci = <MASKED>"

    .line 6325
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.pci = [0-9]{1,4}"

    const-string v0, ".pci = <MASKED>"

    .line 6326
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.networkId = [0-9]{1,5}"

    const-string v0, ".networkId = <MASKED>"

    .line 6327
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.systemId = [0-9]{1,5}"

    const-string v0, ".systemId = <MASKED>"

    .line 6328
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.baseStationId = [0-9]{1,5}"

    const-string v0, ".baseStationId = <MASKED>"

    .line 6329
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.longitude = -?[0-9]{1,10}"

    const-string v0, ".longitude = <MASKED>"

    .line 6330
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\.latitude = -?[0-9]{1,10}"

    const-string v0, ".latitude = <MASKED>"

    .line 6331
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_16
    return-object p0

    .line 6290
    :cond_17
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6291
    check-cast p1, [Ljava/lang/Object;

    .line 6292
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6293
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6294
    aget-object p1, p1, v5

    if-eqz p1, :cond_18

    .line 6295
    check-cast p1, Landroid/telephony/ims/feature/ConnectionFailureInfo;

    .line 6296
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6297
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;->getCauseCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6298
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;->getWaitTimeMillis()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 6300
    :cond_18
    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6302
    :goto_9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6303
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    return-object v0
.end method

.method private blacklist sendAck(I)V
    .locals 5

    const/4 v0, 0x0

    .line 5911
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v2, 0x320

    invoke-static {v2, v0, v1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    const/4 v1, 0x1

    .line 5913
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RIL;->acquireWakeLock(Lcom/android/internal/telephony/RILRequest;I)V

    .line 5914
    const-string v1, "sendAck: "

    const-string v2, "sendAck"

    if-nez p1, :cond_1

    .line 5915
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_4/IRadio;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5918
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/radio/V1_4/IRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v3, 0x0

    .line 5920
    invoke-direct {p0, v3, v2, p1}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 5924
    :cond_0
    const-string p1, "Error trying to send ack, radioProxy = null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 5927
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v3

    .line 5928
    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5930
    :try_start_1
    invoke-virtual {v3}, Lcom/android/internal/telephony/RadioServiceProxy;->responseAcknowledgement()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    .line 5932
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/telephony/RIL;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 5933
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    .line 5936
    :cond_2
    const-string p1, "Error trying to send ack, serviceProxy is empty"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 5939
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->release()V

    return-void
.end method

.method private static blacklist serviceToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 6656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6654
    :pswitch_0
    const-string p0, "IMS"

    return-object p0

    .line 6652
    :pswitch_1
    const-string p0, "VOICE"

    return-object p0

    .line 6650
    :pswitch_2
    const-string p0, "SIM"

    return-object p0

    .line 6648
    :pswitch_3
    const-string p0, "NETWORK"

    return-object p0

    .line 6646
    :pswitch_4
    const-string p0, "MODEM"

    return-object p0

    .line 6644
    :pswitch_5
    const-string p0, "MESSAGING"

    return-object p0

    .line 6642
    :pswitch_6
    const-string p0, "DATA"

    return-object p0

    .line 6640
    :pswitch_7
    const-string p0, "RADIO"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setVoNrEnabled(Z)V
    .locals 2

    .line 3302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.radio.is_vonr_enabled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist validateFeatureFlags()V
    .locals 8

    .line 1371
    iget-object v0, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1372
    sget-object v1, Lcom/android/internal/telephony/RIL;->FEATURES_TO_SERVICES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1373
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1374
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1376
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1377
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v5

    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 1380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Feature "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is declared, but service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1380
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    :cond_1
    if-nez v4, :cond_0

    if-eqz v5, :cond_0

    .line 1384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is available, but feature "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not declared"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist acceptCall(Landroid/os/Message;)V
    .locals 4

    .line 2503
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2504
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "acceptCall"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x28

    .line 2508
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2514
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda52;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPdu(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 3991
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3992
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "acknowledgeIncomingGsmSmsWithPdu"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x6a

    .line 3997
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4005
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZLjava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V
    .locals 4

    .line 3617
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3618
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "acknowledgeLastIncomingCdmaSms"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x58

    .line 3623
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3631
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda73;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda73;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZI)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V
    .locals 4

    .line 2483
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2484
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "acknowledgeLastIncomingGsmSms"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x25

    .line 2489
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 2492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cause = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2496
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda136;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda136;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ZI)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist allocatePduSessionId(Landroid/os/Message;)V
    .locals 4

    .line 4881
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4882
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "allocatePduSessionId"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd7

    .line 4886
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4892
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda125;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda125;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist areUiccApplicationsEnabled(Landroid/os/Message;)V
    .locals 4

    .line 4805
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4806
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "areUiccApplicationsEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd1

    .line 4811
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4818
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda49;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist canToggleUiccApplicationsEnablement()Z
    .locals 4

    .line 4828
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4829
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    .line 4828
    const-string v3, "canToggleUiccApplicationsEnablement"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    return p0
.end method

.method public blacklist cancelEmergencyNetworkScan(ZLandroid/os/Message;)V
    .locals 4

    .line 5273
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5274
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "cancelEmergencyNetworkScan"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe7

    .line 5279
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resetScan="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5287
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda26;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist cancelHandover(Landroid/os/Message;I)V
    .locals 4

    .line 4943
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4944
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "cancelHandover"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xda

    .line 4948
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4953
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda162;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda162;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist cancelPendingUssd(Landroid/os/Message;)V
    .locals 4

    .line 2346
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2347
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "cancelPendingUssd"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1e

    .line 2351
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2357
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda155;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda155;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 2607
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2608
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "changeBarringPassword"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2c

    .line 2612
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2617
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "facility = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2621
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda157;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda157;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist changeIccPin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1639
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist changeIccPin2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1666
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist changeIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 1671
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1672
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "changeIccPin2ForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 1676
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1679
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " oldPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aid = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1683
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda120;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda120;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist changeIccPinForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 1644
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1645
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "changeIccPinForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    .line 1649
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1652
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " oldPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " newPin = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aid = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1656
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda1;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist checkRecoverCachedAllowedNetworkTypesBitmask(I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 6663
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getAllowedNetworkTypesBitmap(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public blacklist conference(Landroid/os/Message;)V
    .locals 4

    .line 2010
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2011
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "conference"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x10

    .line 2015
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda104;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda104;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist deactivateDataCall(IILandroid/os/Message;)V
    .locals 8

    .line 2522
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioDataProxy;

    .line 2523
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "deactivateDataCall"

    invoke-direct {p0, v7, v3, p3, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x29

    .line 2527
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2531
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cid = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " reason = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2533
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->deactivateDataReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2531
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2536
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda17;

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;II)V

    const/4 p0, 0x1

    invoke-direct {v2, p0, v4, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist deleteSmsOnRuim(ILandroid/os/Message;)V
    .locals 4

    .line 3816
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3817
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "deleteSmsOnRuim"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x61

    .line 3821
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3829
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda68;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda68;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist deleteSmsOnSim(ILandroid/os/Message;)V
    .locals 4

    .line 2952
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2953
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "deleteSmsOnSim"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x40

    .line 2957
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2964
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    .line 1762
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/RIL;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move-object p2, p3

    move p3, p4

    move p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 1850
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/RIL;->emergencyDial(Ljava/lang/String;Landroid/telephony/emergency/EmergencyNumber;ZILcom/android/internal/telephony/UUSInfo;Landroid/os/Message;)V

    return-void

    :cond_0
    move p4, p5

    move-object p5, p6

    move-object p6, p7

    .line 1854
    const-class p2, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1855
    sget-object p3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string p7, "dial"

    invoke-direct {p0, p7, p2, p6, p3}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    const/16 p3, 0xa

    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, p3, p6, v0}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1863
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    move-object p6, p5

    move p5, p4

    move-object p4, p1

    .line 1866
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda56;

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda56;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)V

    const/4 p2, 0x6

    invoke-direct {p0, p2, p3, p7, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 6560
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RIL: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6563
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6565
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6567
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLock="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mWakeLockTimeout="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLockTimeout:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6570
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter p1

    .line 6571
    :try_start_0
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6572
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mWakeLockCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/RIL;->mWakeLockCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6573
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6574
    :try_start_2
    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 6575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestList count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 6577
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    .line 6582
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->elapsedTime(J)J

    move-result-wide v3

    .line 6583
    invoke-static {v3, v4, v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v3

    .line 6584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6587
    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6588
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mLastNITZTimeInfo="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mLastRadioPowerResult="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " mTestingEmergencyCall="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6591
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/SemClientWakelockTracker;->dumpClientRequestTracker(Ljava/io/PrintWriter;)V

    return-void

    :catchall_1
    move-exception p0

    .line 6573
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    .line 6587
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public blacklist enableModem(ZLandroid/os/Message;)V
    .locals 4

    .line 1768
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 1769
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "enableModem"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x92

    .line 1773
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1780
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda82;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda82;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist enableUiccApplications(ZLandroid/os/Message;)V
    .locals 4

    .line 4780
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4781
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "enableUiccApplications"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd0

    .line 4785
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4793
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda137;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda137;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4

    .line 3873
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3874
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "exitEmergencyCallbackMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x63

    .line 3879
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3886
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda160;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist exitEmergencyMode(Landroid/os/Message;)V
    .locals 4

    .line 5297
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5298
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "exitEmergencyMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe8

    .line 5302
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5309
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda24;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist explicitCallTransfer(Landroid/os/Message;)V
    .locals 4

    .line 3073
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3074
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "explicitCallTransfer"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x48

    .line 3078
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3085
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda50;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda50;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getAllowedCarriers(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4588
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4589
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getAllowedCarriers"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x89

    .line 4594
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4593
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4597
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4600
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda12;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmap(Landroid/os/Message;)V
    .locals 4

    .line 3207
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3208
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getAllowedNetworkTypesBitmap"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xdf

    .line 3213
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3220
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda148;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda148;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getAvailableNetworks(Landroid/os/Message;)V
    .locals 4

    .line 2694
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2695
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getAvailableNetworks"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x30

    .line 2699
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2706
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda139;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda139;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getBarringInfo(Landroid/os/Message;)V
    .locals 4

    .line 4860
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4861
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getBarringInfo"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd3

    .line 4865
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4871
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda41;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getBasebandVersion(Landroid/os/Message;)V
    .locals 4

    .line 2819
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 2820
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getBasebandVersion"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x33

    .line 2824
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2830
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda100;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda100;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getCDMASubscription(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getCLIR(Landroid/os/Message;)V
    .locals 4

    .line 2364
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2365
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getCLIR"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1f

    .line 2369
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2375
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda16;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getCdmaBroadcastConfig(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getCdmaSubscriptionSource(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist getCellInfoList(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4033
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4034
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getCellInfoList"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x6d

    .line 4039
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4038
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4042
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4045
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda46;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda46;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getClientRequestStats()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .line 6595
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ClientWakelockTracker;->getClientRequestStats()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;
    .locals 1

    .line 755
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/HalVersion;

    return-object p0
.end method

.method public blacklist getCurrentCalls(Landroid/os/Message;)V
    .locals 4

    .line 1743
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1744
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getCurrentCalls"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x9

    .line 1748
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1754
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda128;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda128;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getDataCallList(Landroid/os/Message;)V
    .locals 4

    .line 2892
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 2893
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getDataCallList"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x39

    .line 2897
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2903
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda77;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda77;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getDataRegistrationState(Landroid/os/Message;)V
    .locals 5

    .line 2108
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2109
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getDataRegistrationState"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2114
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x15

    invoke-direct {p0, v3, p1, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2121
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    .line 2123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataRegistrationState: overrideHalVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2126
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda40;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda40;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getDeviceIdentity(Landroid/os/Message;)V
    .locals 7

    .line 3836
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioModemProxy;

    .line 3837
    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getDeviceIdentity"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x62

    .line 3842
    iget-object p1, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    .line 3845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3848
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda18;

    invoke-direct {p1, v3, p0}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    const-string v2, "getDeviceIdentity"

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getGsmBroadcastConfig(Landroid/os/Message;)V
    .locals 4

    .line 3639
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3640
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getGsmBroadcastConfig"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x59

    .line 3645
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3652
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda118;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda118;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getHalVersion(I)Lcom/android/internal/telephony/HalVersion;
    .locals 2

    .line 6610
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    if-nez v0, :cond_1

    .line 6612
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6613
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    .line 6615
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public blacklist getHardwareConfig(Landroid/os/Message;)V
    .locals 4

    .line 4389
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4390
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getHardwareConfig"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x7c

    .line 4394
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4402
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda32;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getIMSI(Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1906
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/RIL;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1911
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1912
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getIMSIForApp"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb

    .line 1916
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1922
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda146;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getIccCardStatus(Landroid/os/Message;)V
    .locals 4

    .line 1518
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1519
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getIccCardStatus"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1523
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1529
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda69;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda69;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getImei(Landroid/os/Message;)V
    .locals 4

    .line 3855
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 3856
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getImei"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x98

    .line 3860
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3866
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda122;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda122;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getImsRegistrationState(Landroid/os/Message;)V
    .locals 7

    .line 4091
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4092
    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getImsRegistrationState"

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 p0, 0x70

    .line 4097
    iget-object p1, v1, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, p0, v4, p1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    .line 4101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4104
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda22;

    invoke-direct {p1, v3, p0}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    const-string v2, "getImsRegistrationState"

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getLastCallFailCause(Landroid/os/Message;)V
    .locals 4

    .line 2046
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2047
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getLastCallFailCause"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x12

    .line 2051
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2058
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda84;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda84;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getModemActivityInfo(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4544
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4545
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getModemActivityInfo"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x87

    .line 4550
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4549
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4553
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4556
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda129;

    invoke-direct {p2, p0, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda129;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-eqz p0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/internal/telephony/MockModem;->getServiceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 735
    :cond_0
    const-string p0, "default"

    return-object p0
.end method

.method public blacklist getModemStatus(Landroid/os/Message;)V
    .locals 4

    .line 1830
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 1831
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getModemStatus"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x93

    .line 1835
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1841
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda72;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda72;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getMute(Landroid/os/Message;)V
    .locals 4

    .line 2856
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2857
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getMute"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x36

    .line 2861
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2867
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda71;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda71;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getNetworkSelectionMode(Landroid/os/Message;)V
    .locals 4

    .line 2631
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2632
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getNetworkSelectionMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2d

    .line 2637
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2644
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getOperator(Landroid/os/Message;)V
    .locals 4

    .line 2133
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2134
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getOperator"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x16

    .line 2138
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2144
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda38;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda38;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getPreferredNetworkType(Landroid/os/Message;)V
    .locals 4

    .line 3124
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3125
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getPreferredNetworkType"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x4a

    .line 3130
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3137
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda83;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda83;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getPreferredVoicePrivacy(Landroid/os/Message;)V
    .locals 4

    .line 3499
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3500
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getPreferredVoicePrivacy"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x53

    .line 3505
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3512
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getRadioBugDetector()Lcom/android/internal/telephony/RadioBugDetector;
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    if-nez v0, :cond_0

    .line 479
    new-instance v0, Lcom/android/internal/telephony/RadioBugDetector;

    iget-object v1, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/RadioBugDetector;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    .line 481
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRadioBugDetector:Lcom/android/internal/telephony/RadioBugDetector;

    return-object p0
.end method

.method public blacklist getRadioCapability(Landroid/os/Message;)V
    .locals 4

    .line 4473
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4474
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getRadioCapability"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x82

    .line 4478
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4485
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda105;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda105;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public declared-synchronized blacklist getRadioProxy()Landroid/hardware/radio/V1_4/IRadio;
    .locals 6

    monitor-enter p0

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 762
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 763
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 765
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v2

    .line 766
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsCellularSupported:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 768
    monitor-exit p0

    return-object v2

    .line 771
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-eqz v0, :cond_3

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    .line 776
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioProxy: mRadioProxy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 779
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    .line 782
    :try_start_5
    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 783
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 782
    invoke-static {v3, v0}, Landroid/hardware/radio/V1_6/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 784
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 788
    :catch_1
    :try_start_6
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_5

    .line 790
    :try_start_7
    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 791
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 790
    invoke-static {v3, v0}, Landroid/hardware/radio/V1_5/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 792
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 797
    :catch_2
    :cond_5
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v3, :cond_6

    .line 799
    :try_start_9
    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 800
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    .line 799
    invoke-static {v3, v0}, Landroid/hardware/radio/V1_4/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 801
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 806
    :catch_3
    :cond_6
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v3, :cond_7

    .line 807
    const-string v3, "IRadio <1.4 is no longer supported."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 810
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-eqz v3, :cond_8

    .line 811
    iget-boolean v3, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    if-nez v3, :cond_9

    .line 812
    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 813
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 814
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v4

    .line 813
    invoke-interface {v0, v3, v4, v5}, Landroid/hardware/radio/V1_4/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    invoke-interface {v0, v1, v3}, Landroid/hardware/radio/V1_4/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto :goto_1

    .line 818
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioProxy: set mRadioProxy for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 820
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 821
    monitor-exit p0

    return-object v2

    .line 825
    :goto_0
    :try_start_b
    iput-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadioProxy getService/setResponseFunctions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 829
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-nez v0, :cond_a

    .line 831
    const-string v0, "getRadioProxy: mRadioProxy == null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 834
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0
.end method

.method public declared-synchronized blacklist getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;
    .locals 8

    monitor-enter p0

    .line 876
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_0
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    .line 877
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-eq p1, v0, :cond_1

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioServiceProxy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 881
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not supported\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 882
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 886
    :cond_2
    :try_start_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/RIL;->mIsCellularSupported:Z

    if-nez v1, :cond_3

    .line 888
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RadioServiceProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 891
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RadioServiceProxy;

    .line 892
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    .line 893
    monitor-exit p0

    return-object v1

    .line 897
    :cond_4
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 899
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is disabled\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 900
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 898
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 901
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p1

    goto/16 :goto_8

    :cond_5
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 996
    :pswitch_0
    :try_start_5
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v3, :cond_6

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/ims/IRadioIms;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 999
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 997
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    .line 1001
    :cond_6
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    .line 1004
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioImsProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 1005
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 1007
    invoke-static {v0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioIms;

    move-result-object v0

    .line 1004
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioImsProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/ims/IRadioIms;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 981
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_7

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/voice/IRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 984
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_1

    :cond_7
    const/4 v3, 0x6

    .line 986
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_d

    .line 989
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioVoiceProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 990
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 992
    invoke-static {v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v0

    .line 989
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/voice/IRadioVoice;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 966
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_8

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/sim/IRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 969
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2

    :cond_8
    const/4 v3, 0x5

    .line 971
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_d

    .line 974
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 975
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 977
    invoke-static {v0}, Landroid/hardware/radio/sim/IRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v0

    .line 974
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/sim/IRadioSim;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 951
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_9

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/network/IRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 954
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3

    :cond_9
    const/4 v3, 0x4

    .line 956
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_d

    .line 959
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioNetworkProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 960
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 962
    invoke-static {v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v0

    .line 959
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/network/IRadioNetwork;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 936
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_a

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/modem/IRadioModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 939
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_4

    :cond_a
    const/4 v3, 0x3

    .line 941
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_d

    .line 944
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioModemProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 945
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 947
    invoke-static {v0}, Landroid/hardware/radio/modem/IRadioModem$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v0

    .line 944
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/modem/IRadioModem;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 921
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_b

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/messaging/IRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 924
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5

    :cond_b
    const/4 v3, 0x2

    .line 926
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_d

    .line 929
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioMessagingProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 930
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 932
    invoke-static {v0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessaging;

    move-result-object v0

    .line 929
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioMessagingProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/messaging/IRadioMessaging;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 906
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-nez v0, :cond_c

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/hardware/radio/data/IRadioData;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 909
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_6

    .line 911
    :cond_c
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_d

    .line 914
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/android/internal/telephony/RadioDataProxy;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/HalVersion;

    .line 916
    invoke-static {v0}, Landroid/hardware/radio/data/IRadioData$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioData;

    move-result-object v0

    .line 914
    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/RadioDataProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/data/IRadioData;)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    :cond_d
    :goto_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-eqz v0, :cond_e

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_4/IRadio;)V

    .line 1019
    :cond_e
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 1020
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_f

    .line 1022
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1025
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    .line 1024
    invoke-static {v4, v2}, Landroid/hardware/radio/V1_6/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_6/IRadio;

    move-result-object v4

    .line 1023
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_4/IRadio;)V
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1030
    :catch_1
    :cond_f
    :try_start_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 1031
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_10

    .line 1033
    :try_start_8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1036
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    .line 1035
    invoke-static {v4, v2}, Landroid/hardware/radio/V1_5/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_5/IRadio;

    move-result-object v4

    .line 1034
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_4/IRadio;)V
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1041
    :catch_2
    :cond_10
    :try_start_9
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 1042
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_11

    .line 1044
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1047
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    .line 1046
    invoke-static {v4, v2}, Landroid/hardware/radio/V1_4/IRadio;->getService(Ljava/lang/String;Z)Landroid/hardware/radio/V1_4/IRadio;

    move-result-object v4

    .line 1045
    invoke-virtual {v1, v0, v4}, Lcom/android/internal/telephony/RadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Landroid/hardware/radio/V1_4/IRadio;)V
    :try_end_a
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1052
    :catch_3
    :cond_11
    :try_start_b
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    .line 1053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1054
    const-string v0, "IRadio <1.4 is no longer supported."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 1057
    :cond_12
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1058
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_13

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_9

    .line 1097
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 1098
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioImsProxy;->getAidl()Landroid/hardware/radio/ims/IRadioIms;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/ims/IRadioIms;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1097
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1099
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioImsProxy;->getAidl()Landroid/hardware/radio/ims/IRadioIms;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mImsResponse:Lcom/android/internal/telephony/ImsResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mImsIndication:Lcom/android/internal/telephony/ImsIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/ims/IRadioIms;->setResponseFunctions(Landroid/hardware/radio/ims/IRadioImsResponse;Landroid/hardware/radio/ims/IRadioImsIndication;)V

    goto/16 :goto_9

    .line 1091
    :pswitch_8
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1092
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/voice/IRadioVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1091
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1093
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioVoiceProxy;->getAidl()Landroid/hardware/radio/voice/IRadioVoice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mVoiceResponse:Lcom/android/internal/telephony/VoiceResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mVoiceIndication:Lcom/android/internal/telephony/VoiceIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/voice/IRadioVoice;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    goto/16 :goto_9

    .line 1085
    :pswitch_9
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1086
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/sim/IRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1085
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1087
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioSimProxy;->getAidl()Landroid/hardware/radio/sim/IRadioSim;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mSimResponse:Lcom/android/internal/telephony/SimResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mSimIndication:Lcom/android/internal/telephony/SimIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/sim/IRadioSim;->setResponseFunctions(Landroid/hardware/radio/sim/IRadioSimResponse;Landroid/hardware/radio/sim/IRadioSimIndication;)V

    goto/16 :goto_9

    .line 1079
    :pswitch_a
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1080
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/network/IRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1079
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1081
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioNetworkProxy;->getAidl()Landroid/hardware/radio/network/IRadioNetwork;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mNetworkResponse:Lcom/android/internal/telephony/NetworkResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mNetworkIndication:Lcom/android/internal/telephony/NetworkIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/network/IRadioNetwork;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    goto/16 :goto_9

    .line 1073
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 1074
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/modem/IRadioModem;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1073
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1075
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioModemProxy;->getAidl()Landroid/hardware/radio/modem/IRadioModem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mModemResponse:Lcom/android/internal/telephony/ModemResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mModemIndication:Lcom/android/internal/telephony/ModemIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/modem/IRadioModem;->setResponseFunctions(Landroid/hardware/radio/modem/IRadioModemResponse;Landroid/hardware/radio/modem/IRadioModemIndication;)V

    goto/16 :goto_9

    .line 1067
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 1068
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioMessagingProxy;->getAidl()Landroid/hardware/radio/messaging/IRadioMessaging;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/messaging/IRadioMessaging;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1067
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1069
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioMessagingProxy;->getAidl()Landroid/hardware/radio/messaging/IRadioMessaging;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMessagingResponse:Lcom/android/internal/telephony/MessagingResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mMessagingIndication:Lcom/android/internal/telephony/MessagingIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging;->setResponseFunctions(Landroid/hardware/radio/messaging/IRadioMessagingResponse;Landroid/hardware/radio/messaging/IRadioMessagingIndication;)V

    goto/16 :goto_9

    .line 1061
    :pswitch_d
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 1062
    invoke-virtual {v0}, Lcom/android/internal/telephony/RadioDataProxy;->getAidl()Landroid/hardware/radio/data/IRadioData;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/radio/data/IRadioData;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1061
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RIL$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    .line 1063
    move-object p1, v1

    check-cast p1, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioDataProxy;->getAidl()Landroid/hardware/radio/data/IRadioData;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDataResponse:Lcom/android/internal/telephony/DataResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mDataIndication:Lcom/android/internal/telephony/DataIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/data/IRadioData;->setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V

    goto/16 :goto_9

    .line 1104
    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/HalVersion;

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 1107
    iget-boolean p1, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    if-nez p1, :cond_17

    .line 1108
    iput-boolean v2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 1109
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_4/IRadio;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioProxyDeathRecipient:Lcom/android/internal/telephony/RIL$RadioProxyDeathRecipient;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mServiceCookies:Landroid/util/SparseArray;

    .line 1110
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 1109
    invoke-interface {p1, v0, v2, v3}, Landroid/hardware/radio/V1_4/IRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1111
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->getHidl()Landroid/hardware/radio/V1_4/IRadio;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRadioResponse:Lcom/android/internal/telephony/RadioResponse;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRadioIndication:Lcom/android/internal/telephony/RadioIndication;

    invoke-interface {p1, v0, v2}, Landroid/hardware/radio/V1_4/IRadio;->setResponseFunctions(Landroid/hardware/radio/V1_0/IRadioResponse;Landroid/hardware/radio/V1_0/IRadioIndication;)V

    goto/16 :goto_9

    .line 1105
    :cond_14
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "serviceProxy shouldn\'t be HIDL with HAL 2.0"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 1116
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1118
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as disabled\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 1121
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1119
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    goto :goto_9

    .line 1123
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRadioServiceProxy: set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/internal/telephony/RIL;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    .line 1125
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as disabled (unsupported)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1124
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_9

    .line 1130
    :goto_8
    :try_start_c
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->clear()V

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceProxy getService/setResponseFunctions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    .line 1134
    :cond_17
    :goto_9
    invoke-virtual {v1}, Lcom/android/internal/telephony/RadioServiceProxy;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1136
    const-string p1, "getRadioServiceProxy: serviceProxy == null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1139
    :cond_18
    monitor-exit p0

    return-object v1

    :goto_a
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/telephony/RadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 844
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 845
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 847
    :cond_0
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    .line 848
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 850
    :cond_1
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 853
    :cond_2
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    .line 854
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 856
    :cond_3
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    .line 857
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 859
    :cond_4
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    .line 860
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 862
    :cond_5
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object p0

    return-object p0

    .line 865
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRadioServiceProxy: unrecognized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getRilHandler()Lcom/android/internal/telephony/RIL$RilHandler;
    .locals 0

    .line 6029
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    return-object p0
.end method

.method public blacklist getRilRequestList()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/RILRequest;",
            ">;"
        }
    .end annotation

    .line 6035
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public blacklist getSignalStrength(Landroid/os/Message;)V
    .locals 4

    .line 2065
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2066
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSignalStrength"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x13

    .line 2070
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2076
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda93;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda93;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSimPhonebookCapacity(Landroid/os/Message;)V
    .locals 4

    .line 5001
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 5002
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSimPhonebookCapacity"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x95

    .line 5006
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5013
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda164;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSimPhonebookRecords(Landroid/os/Message;)V
    .locals 4

    .line 4982
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4983
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSimPhonebookRecords"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x96

    .line 4987
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4994
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda147;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda147;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSlicingConfig(Landroid/os/Message;)V
    .locals 4

    .line 4963
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4964
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSlicingConfig"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe0

    .line 4968
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4975
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda143;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda143;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSmscAddress(Landroid/os/Message;)V
    .locals 4

    .line 3893
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3894
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSmscAddress"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x64

    .line 3898
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3904
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda86;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda86;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getSystemSelectionChannels(Landroid/os/Message;)V
    .locals 4

    .line 1809
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1810
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getSystemSelectionChannels"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xdb

    .line 1815
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getSystemSelectionChannels"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1823
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda134;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda134;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getUsageSetting(Landroid/os/Message;)V
    .locals 4

    .line 5070
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5071
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getUsageSetting"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe4

    .line 5075
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5081
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getVoiceRadioTechnology(Landroid/os/Message;)V
    .locals 4

    .line 4014
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4015
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getVoiceRadioTechnology"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x6c

    .line 4020
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4026
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda78;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda78;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getVoiceRegistrationState(Landroid/os/Message;)V
    .locals 5

    .line 2083
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2084
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "getVoiceRegistrationState"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2089
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v3, 0x14

    invoke-direct {p0, v3, p1, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v1

    .line 2098
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceRegistrationState: overrideHalVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2101
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda21;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/HalVersion;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist getWakeLock(I)Landroid/os/PowerManager$WakeLock;
    .locals 0

    if-nez p1, :cond_0

    .line 6023
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public blacklist handleCallSetupRequestFromSim(ZLandroid/os/Message;)V
    .locals 4

    .line 4837
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 4838
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "handleCallSetupRequestFromSim"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x47

    .line 4843
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4850
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda80;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda80;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist hangupConnection(ILandroid/os/Message;)V
    .locals 4

    .line 1929
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1930
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "hangupConnection"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xc

    .line 1934
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsmIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1941
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda117;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda117;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-r hangupForegroundResumeBackground(Landroid/os/Message;)V
    .locals 4

    .line 1970
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1971
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "hangupForegroundResumeBackground"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe

    .line 1976
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1983
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda34;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda34;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist-max-r hangupWaitingOrBackground(Landroid/os/Message;)V
    .locals 4

    .line 1949
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1950
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "hangupWaitingOrBackground"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd

    .line 1955
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 1959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1962
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda37;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda37;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccCloseLogicalChannel(IZLandroid/os/Message;)V
    .locals 4

    .line 4205
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4206
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "iccCloseLogicalChannel"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x74

    .line 4210
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " channel = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEs10 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4216
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda151;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda151;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IZ)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p9

    .line 2289
    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    .line 2295
    const-class v2, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2296
    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v15, "iccIOForApp"

    invoke-direct {v0, v15, v4, v1, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1c

    .line 2300
    iget-object v3, v0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    .line 2303
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v2, "> iccIO: "

    if-eqz v1, :cond_1

    .line 2304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " command = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileId = 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " p1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " p2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " p3 =  data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " aid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p9

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2304
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v12, p7

    move-object/from16 v14, p9

    .line 2309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 2310
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2309
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2314
    :goto_0
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda96;

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v11, p6

    move-object/from16 v13, p8

    invoke-direct/range {v3 .. v14}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda96;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-direct {v0, v1, v5, v15, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 5

    .line 4182
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4183
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "iccOpenLogicalChannel"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x73

    .line 4187
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4190
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v3, "> "

    if-eqz v1, :cond_1

    .line 4191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " p2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    .line 4194
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4198
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannel(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 12

    move-object/from16 v0, p7

    .line 4155
    const-class v1, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4156
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v11, "iccTransmitApduBasicChannel"

    invoke-direct {p0, v11, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x72

    .line 4161
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 4165
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v1, "> "

    if-eqz v0, :cond_1

    .line 4166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " cla = 0x%02X ins = 0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v2, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, " p1 = 0x%02X p2 = 0x%02X p3 = 0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4166
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p6

    .line 4171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4175
    :goto_0
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda11;

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v4, v11, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;ZLandroid/os/Message;)V
    .locals 13

    move-object/from16 v1, p9

    if-lez p1, :cond_2

    .line 4229
    const-class v2, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4230
    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v12, "iccTransmitApduLogicalChannel"

    invoke-direct {p0, v12, v2, v1, v3}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/16 v3, 0x75

    .line 4235
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v3, v1, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4239
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v4, "> "

    if-eqz v1, :cond_1

    .line 4240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4241
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " channel = %d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " cla = 0x%02X ins = 0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, " p1 = 0x%02X p2 = 0x%02X p3 = 0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEs10Command = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p8

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " data = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p7

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4240
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v10, p7

    move/from16 v11, p8

    .line 4247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4251
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda113;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v11}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda113;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIIIIILjava/lang/String;Z)V

    const/4 v2, 0x5

    invoke-direct {p0, v2, v3, v12, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    .line 4225
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid channel in iccTransmitApduLogicalChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist isCellularIdentifierTransparencyEnabled(Landroid/os/Message;)V
    .locals 4

    .line 5469
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5470
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isCellularIdentifierTransparencyEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf6

    .line 5478
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5485
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method blacklist isLogOrTrace()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist isLogvOrTrace()Z
    .locals 2

    const-wide/32 v0, 0x200000

    .line 6493
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p0

    return p0
.end method

.method public blacklist isN1ModeEnabled(Landroid/os/Message;)V
    .locals 4

    .line 5416
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5417
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isN1ModeEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf2

    .line 5421
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5428
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isNrDualConnectivityEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 3250
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3251
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isNrDualConnectivityEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd6

    .line 3257
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3256
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3263
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda30;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isNullCipherAndIntegrityEnabled(Landroid/os/Message;)V
    .locals 4

    .line 5348
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5349
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isNullCipherAndIntegrityEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf5

    .line 5354
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5361
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda54;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda54;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isSatelliteEnabledForCarrier(ILandroid/os/Message;)V
    .locals 4

    .line 5618
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    const/4 v1, 0x4

    .line 5619
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5620
    const-string v0, "isSatelliteEnabledForCarrier: SatelliteModemInterface is used."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5621
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->requestIsSatelliteEnabledForCarrier(ILandroid/os/Message;)V

    return-void

    :cond_0
    const/16 v2, 0xfd

    .line 5626
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5634
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda66;

    invoke-direct {p1, v0, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda66;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const-string v0, "isSatelliteEnabledForCarrier"

    invoke-direct {p0, v1, p2, v0, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isSecurityAlgorithmsUpdatedEnabled(Landroid/os/Message;)V
    .locals 4

    .line 5527
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5528
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isSecurityAlgorithmsUpdatedEnabled"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf9

    .line 5536
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5543
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist isVoNrEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 4

    .line 3314
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3316
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "isVoNrEnabled"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3317
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isVoNrEnabled()Z

    move-result p0

    if-eqz p1, :cond_0

    .line 3319
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p1, p0, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3320
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xe2

    .line 3326
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3325
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3332
    new-instance p2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda119;

    invoke-direct {p2, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda119;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, p2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method greylist-max-r makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;
    .locals 7

    .line 6173
    new-instance v0, Lcom/android/internal/telephony/RadioCapability;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/RadioCapability;-><init>(IIIILjava/lang/String;I)V

    .line 6175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Faking RIL_REQUEST_GET_RADIO_CAPABILITY response using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist notifyBarringInfoChanged(Landroid/telephony/BarringInfo;)V
    .locals 2

    .line 6599
    iput-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mLastBarringInfo:Landroid/telephony/BarringInfo;

    .line 6600
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method greylist notifyRegistrantsCdmaInfoRec(Lcom/android/internal/telephony/cdma/CdmaInformationRecords;)V
    .locals 0

    .line 0
    return-void
.end method

.method blacklist notifyRegistrantsImeiMappingChanged(Landroid/hardware/radio/modem/ImeiInfo;)V
    .locals 2

    .line 6450
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mImeiInfoRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_0

    .line 6451
    new-instance v0, Landroid/os/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method greylist-max-r notifyRegistrantsRilConnectionChanged(I)V
    .locals 3

    .line 6380
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mRilVersion:I

    .line 6382
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6383
    invoke-interface {p0, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 6387
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6388
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6391
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/BaseCommands;->mRilConnectedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    if-eqz p0, :cond_2

    .line 6392
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v0, v1, v2, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_2
    return-void
.end method

.method public blacklist nvReadItem(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist nvResetConfig(ILandroid/os/Message;)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 4329
    :cond_0
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4330
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "nvResetConfig"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x79

    .line 4334
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resetType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4341
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda140;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda140;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist nvWriteCdmaPrl([BLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist nvWriteItem(ILjava/lang/String;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 0

    .line 0
    return-void
.end method

.method public declared-synchronized blacklist onSlotActiveStatusChange(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1144
    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x7

    if-gt v0, p1, :cond_2

    if-nez v0, :cond_0

    .line 1149
    invoke-virtual {p0}, Lcom/android/internal/telephony/RIL;->getRadioProxy()Landroid/hardware/radio/V1_4/IRadio;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1151
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(I)Lcom/android/internal/telephony/RadioServiceProxy;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1156
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    const/4 p1, 0x1

    .line 1157
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1159
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method blacklist processIndication(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 5650
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->sendAck(I)V

    .line 5651
    const-string p1, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method blacklist processRequestAck(I)V
    .locals 2

    .line 5659
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    .line 5660
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RILRequest;

    .line 5661
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 5663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processRequestAck: Unexpected solicited ack response! serial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLogw(Ljava/lang/String;)V

    return-void

    .line 5665
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RIL;->decrementWakeLock(Lcom/android/internal/telephony/RILRequest;)V

    .line 5667
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Ack < "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 5661
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 2

    .line 5709
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->serial:I

    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 3

    .line 5681
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->serial:I

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 1

    .line 5850
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 1

    .line 5820
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 1

    .line 5835
    iget v0, p2, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/V1_6/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDoneInternal(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .locals 2

    .line 5889
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request not supported, falling back"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5893
    :cond_0
    iget v0, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iget p2, p2, Landroid/hardware/radio/V1_0/RadioResponseInfo;->type:I

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseCleanUp(Lcom/android/internal/telephony/RILRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public blacklist processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;
    .locals 3

    .line 5695
    iget v0, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->serial:I

    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->type:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponseInternal(IIII)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    return-object p0
.end method

.method public blacklist queryAvailableBandMode(Landroid/os/Message;)V
    .locals 4

    .line 2990
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2991
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryAvailableBandMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x42

    .line 2996
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3003
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda64;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda64;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCLIP(Landroid/os/Message;)V
    .locals 4

    .line 2874
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2875
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryCLIP"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x37

    .line 2879
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2885
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda60;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda60;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 2402
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2403
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "queryCallForwardStatus"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x21

    .line 2407
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2411
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " cfReason = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " serviceClass = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2415
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda48;

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda48;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCallWaiting(ILandroid/os/Message;)V
    .locals 4

    .line 2444
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2445
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryCallWaiting"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x23

    .line 2449
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2457
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda114;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda114;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 2545
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist queryFacilityLockForApp(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9

    .line 2551
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2552
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "queryFacilityLockForApp"

    invoke-direct {p0, v8, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2a

    .line 2556
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2560
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " facility = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " serviceClass = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " appId = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2565
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist queryTTYMode(Landroid/os/Message;)V
    .locals 4

    .line 3441
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3442
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "queryTTYMode"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x51

    .line 3446
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3452
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist rejectCall(Landroid/os/Message;)V
    .locals 4

    .line 2028
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2029
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "rejectCall"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x11

    .line 2033
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2039
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda29;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist releasePduSessionId(Landroid/os/Message;I)V
    .locals 4

    .line 4902
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4903
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "releasePduSessionId"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd8

    .line 4907
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4913
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda87;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda87;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist reportSmsMemoryStatus(ZLandroid/os/Message;)V
    .locals 4

    .line 3930
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3931
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "reportSmsMemoryStatus"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x66

    .line 3936
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " available = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3944
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda107;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda107;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist reportStkServiceIsRunning(Landroid/os/Message;)V
    .locals 4

    .line 3951
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 3952
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "reportStkServiceIsRunning"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x67

    .line 3956
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 3960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3963
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda92;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda92;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist requestIccSimAuthentication(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 4410
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4411
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "requestIccSimAuthentication"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7d

    .line 4416
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4421
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4424
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda35;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda35;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist requestShutdown(Landroid/os/Message;)V
    .locals 4

    .line 4455
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4456
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "requestShutdown"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x81

    .line 4460
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4466
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda115;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda115;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method greylist riljLog(Ljava/lang/String;)V
    .locals 5

    .line 6459
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->getRilLocalLogIdentifier(Ljava/lang/String;)I

    move-result v0

    .line 6460
    const-string v1, "]"

    const-string v2, " [PHONE"

    const-string v3, "RILJ"

    if-eqz v0, :cond_1

    .line 6461
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "][GCCT"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6463
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6465
    invoke-virtual {p0}, Lcom/android/internal/telephony/SemPhoneInternal;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6467
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->writeFlowLogFromRilRequest(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 6473
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLoge(Ljava/lang/String;)V
    .locals 1

    .line 6477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method blacklist riljLogw(Ljava/lang/String;)V
    .locals 1

    .line 6485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [PHONE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RILJ"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist sendAnbrQuery(IIILandroid/os/Message;)V
    .locals 8

    .line 5201
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5202
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "sendAnbrQuery"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xed

    .line 5206
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 5209
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5212
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda159;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda159;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;III)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 8

    .line 3541
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3542
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "sendBurstDtmf"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x55

    .line 3546
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 3554
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " dtmfString = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3555
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " on = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " off = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 3554
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3559
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda42;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;II)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendCDMAFeatureCode(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist sendCdmaSMSExpectMore([BLandroid/os/Message;)V
    .locals 8

    .line 3568
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3569
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "sendCdmaSMSExpectMore"

    invoke-direct {p0, v7, v3, p2, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x94

    .line 3574
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 3579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3582
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda135;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda135;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendCdmaSms([BLandroid/os/Message;)V
    .locals 8

    .line 3595
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3596
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "sendCdmaSms"

    invoke-direct {p0, v7, v3, p2, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x57

    .line 3600
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3607
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda166;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BLandroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendDeviceState(IZLandroid/os/Message;)V
    .locals 4

    .line 4607
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4608
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendDeviceState"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8a

    .line 4612
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 4615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4619
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda103;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda103;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;IZ)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendDtmf(CLandroid/os/Message;)V
    .locals 4

    .line 2177
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2178
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendDtmf"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x18

    .line 2182
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2189
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda141;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda141;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 3010
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 3011
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendEnvelope"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x45

    .line 3015
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3023
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda67;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda67;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendEnvelopeWithStatus(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 3052
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 3053
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendEnvelopeWithStatus"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x6b

    .line 3057
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3065
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda61;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda61;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendImsCdmaSms([BIILandroid/os/Message;)V
    .locals 10

    .line 4133
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 4134
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v9, "sendImsCdmaSms"

    invoke-direct {p0, v9, v3, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x71

    .line 4138
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 4142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4145
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda36;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda36;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[BIILandroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v9, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendImsGsmSms(Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V
    .locals 10

    .line 4112
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 4113
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v9, "sendImsGsmSms"

    invoke-direct {p0, v9, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x71

    .line 4117
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4124
    new-instance v0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda138;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda138;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Message;)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, v3, v9, v0}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    .line 2196
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2197
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "sendSMS"

    invoke-direct {p0, v8, v3, p3, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x19

    .line 2201
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2208
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda106;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda106;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendSMSExpectMore(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    .line 2235
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2236
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "sendSMSExpectMore"

    invoke-direct {p0, v8, v3, p3, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1a

    .line 2240
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2248
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda97;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    const/4 p0, 0x2

    invoke-direct {v2, p0, v4, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 3030
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 3031
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendTerminalResponse"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x46

    .line 3035
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " contents = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    move-object v3, p1

    goto :goto_0

    .line 3041
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertToCensoredTerminalResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3039
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3044
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda81;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda81;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 2325
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2326
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "sendUSSD"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x1d

    .line 2330
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ussd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*******"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2339
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda109;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist separateConnection(ILandroid/os/Message;)V
    .locals 4

    .line 2799
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2800
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "separateConnection"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x34

    .line 2804
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " gsmIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2812
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda130;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;Landroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4566
    const-string v0, "Carrier restriction cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4568
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4569
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setAllowedCarriers"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x88

    .line 4574
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 4573
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4577
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " params: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4580
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;

    invoke-direct {p3, p0, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda99;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/CarrierRestrictionRules;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmap(ILandroid/os/Message;)V
    .locals 7

    .line 3147
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3148
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    .line 3149
    const-string v2, "set_preferred_network_mode"

    if-eq v1, p1, :cond_1

    if-nez p1, :cond_0

    int-to-long v3, v1

    const-wide/32 v5, -0x804c

    and-long/2addr v3, v5

    long-to-int v1, v3

    .line 3153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllowedNetworkTypesBitmap - networkTypeBitmask convert failed. networkTypeBitmask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3154
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> convertNetworkTypesBitmask: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3155
    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 3159
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    move p1, v1

    .line 3165
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3168
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result p1

    .line 3167
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/RIL;->setPreferredNetworkType(ILandroid/os/Message;)V

    return-void

    .line 3172
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAllowedNetworkTypesBitmap - networkTypeBitmask: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 3173
    invoke-static {v5, v6}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3174
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 3177
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3180
    :cond_3
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3181
    const-string v1, "setAllowedNetworkTypesBitmap"

    invoke-direct {p0, v1, v0, p2, v4}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/16 v2, 0xde

    .line 3186
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p2, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " networkTypeBitmask: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3195
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3194
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3198
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 3200
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda132;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda132;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    invoke-direct {p0, v3, p2, v1, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setBandMode(ILandroid/os/Message;)V
    .locals 4

    .line 2971
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2972
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setBandMode"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x41

    .line 2976
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bandMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2983
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCLIR(ILandroid/os/Message;)V
    .locals 4

    .line 2382
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2383
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCLIR"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x20

    .line 2387
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " clirMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2394
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V
    .locals 11

    move-object/from16 v0, p6

    .line 2423
    const-class v1, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2424
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v10, "setCallForward"

    invoke-direct {p0, v10, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x22

    .line 2428
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cfReason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " timeSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2436
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda76;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda76;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;IIILjava/lang/String;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, v4, v10, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCallWaiting(ZILandroid/os/Message;)V
    .locals 4

    .line 2464
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2465
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCallWaiting"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x24

    .line 2469
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 2472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " serviceClass = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2476
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;ZI)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryption(Landroid/telephony/ImsiEncryptionInfo;Landroid/os/Message;)V
    .locals 4

    .line 4716
    const-string v0, "ImsiEncryptionInfo cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4717
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4718
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCarrierInfoForImsiEncryption"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8d

    .line 4723
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4729
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda74;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/ImsiEncryptionInfo;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastActivation(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCdmaBroadcastConfig([Lcom/android/internal/telephony/cdma/CdmaSmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCdmaSubscriptionSource(ILandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public blacklist setCellInfoListRate(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4052
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4053
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCellInfoListRate"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x6e

    .line 4058
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 4057
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4061
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rateInMillis = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4065
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda167;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda167;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCellularIdentifierTransparencyEnabled(ZLandroid/os/Message;)V
    .locals 4

    .line 5438
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5439
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setCellularIdentifierTransparencyEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf7

    .line 5447
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5455
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda150;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda150;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V
    .locals 2

    .line 742
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCompatVersion with equal or greater one, ignored, halVersion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", oldVersion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    return-void

    .line 749
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mCompatOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setDataAllowed(ZLandroid/os/Message;)V
    .locals 4

    .line 4370
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4371
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setDataAllowed"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x7b

    .line 4375
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " allowed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4382
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda89;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setDataProfile([Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .locals 6

    .line 4433
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4434
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setDataProfile"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x80

    .line 4438
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with data profiles : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4443
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 4444
    const-string v5, "DataProfile is null"

    invoke-static {v4, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4448
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda63;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda63;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;[Landroid/telephony/data/DataProfile;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setDataThrottling(Landroid/os/Message;Landroid/os/WorkSource;IJ)V
    .locals 8

    .line 4522
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4523
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "setDataThrottling"

    invoke-direct {p0, v7, v2, p1, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xdd

    .line 4528
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 4527
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4531
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " dataThrottlingAction = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " completionWindowMillis "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4536
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda101;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;IJ)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setEmergencyMode(ILandroid/os/Message;)V
    .locals 4

    .line 5222
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5223
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setEmergencyMode"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe5

    .line 5227
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5232
    invoke-static {p1}, Lcom/android/internal/telephony/emergency/EmergencyConstants;->emergencyModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5231
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5235
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda33;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda33;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    .line 2577
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setFacilityLockForApp(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 11

    move-object/from16 v0, p6

    .line 2583
    const-class v1, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioSimProxy;

    .line 2584
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v10, "setFacilityLockForApp"

    invoke-direct {p0, v10, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2b

    .line 2588
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 2591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " facility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lockstate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " serviceClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2596
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda126;

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda126;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v4, v10, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setGsmBroadcastActivation(ZLandroid/os/Message;)V
    .locals 4

    .line 3683
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3684
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setGsmBroadcastActivation"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x5b

    .line 3689
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " activate = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3697
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda79;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda79;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setGsmBroadcastConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 4

    .line 3659
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3660
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setGsmBroadcastConfig"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x5a

    .line 3665
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " configs : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3671
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 3672
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3676
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda165;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda165;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setInitialAttachApn(Landroid/telephony/data/DataProfile;Landroid/os/Message;)V
    .locals 4

    .line 4072
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4073
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setInitialAttachApn"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x6f

    .line 4077
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4084
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda149;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/data/DataProfile;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteria(III[I[IILandroid/os/Message;)V
    .locals 12

    move-object/from16 v0, p7

    .line 4672
    const-class v1, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4673
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v11, "setLinkCapacityReportingCriteria"

    invoke-direct {p0, v11, v3, v0, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xcb

    .line 4678
    iget-object v2, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v4

    .line 4682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4685
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;

    move v5, p1

    move v6, p2

    move v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;III[I[II)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v4, v11, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setLocationUpdates(ZLandroid/os/WorkSource;Landroid/os/Message;)V
    .locals 3

    .line 3227
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3228
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setLocationUpdates"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x4c

    .line 3233
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p2

    .line 3232
    invoke-direct {p0, v1, p3, p2}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3236
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3240
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda161;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda161;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    .line 648
    const-string v4, "Binding to MockModemService"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 649
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    .line 651
    new-instance v4, Lcom/android/internal/telephony/MockModem;

    iget-object v5, p0, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, p1, v6}, Lcom/android/internal/telephony/MockModem;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    .line 654
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRadioProxy:Landroid/hardware/radio/V1_4/IRadio;

    if-eqz v4, :cond_0

    .line 655
    const-string v4, "Disable HIDL service"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 656
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    invoke-virtual {v4}, Lcom/android/internal/telephony/MockModem;->bindAllMockModemService()V

    move v4, v2

    :goto_0
    if-gt v4, v0, :cond_6

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 667
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/MockModem;->getServiceBinder(I)Landroid/os/IBinder;

    move-result-object v6

    add-int/2addr v5, v3

    if-nez v6, :cond_3

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Retry("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") Service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    const-wide/16 v7, 0x12c

    .line 673
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-nez v6, :cond_4

    const/16 v7, 0xa

    if-lt v5, v7, :cond_2

    :cond_4
    if-nez v6, :cond_5

    .line 680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/internal/telephony/RIL;->serviceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bind fail"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/RIL;->riljLoge(Ljava/lang/String;)V

    move v4, v2

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v4, v3

    :goto_2
    if-eqz v4, :cond_8

    .line 687
    iput-boolean v2, p0, Lcom/android/internal/telephony/RIL;->mIsRadioProxyInitialized:Z

    .line 689
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    .line 690
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    goto :goto_3

    :cond_7
    move v4, v3

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    if-nez v4, :cond_10

    :cond_9
    if-eqz v4, :cond_a

    .line 695
    const-string p1, "Unbinding to MockModemService"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 697
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object v5, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 698
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 701
    :cond_b
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    if-eqz p1, :cond_10

    .line 702
    iput-object v1, p0, Lcom/android/internal/telephony/RIL;->mMockModem:Lcom/android/internal/telephony/MockModem;

    move p1, v2

    :goto_4
    if-gt p1, v0, :cond_f

    if-nez p1, :cond_d

    .line 705
    invoke-direct {p0}, Lcom/android/internal/telephony/RIL;->isRadioVersion2_0()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 706
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 708
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 711
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->isRadioServiceSupported(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 712
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 714
    :cond_e
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_UNSUPPORTED:Lcom/android/internal/telephony/HalVersion;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 720
    :cond_f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    .line 721
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/RIL;->resetProxyAndRequestList(I)V

    :cond_10
    return v4
.end method

.method public blacklist setMute(ZLandroid/os/Message;)V
    .locals 4

    .line 2837
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2838
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setMute"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x35

    .line 2842
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enableMute = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2849
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda85;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda85;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setN1ModeEnabled(ZLandroid/os/Message;)V
    .locals 4

    .line 5393
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5394
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setN1ModeEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf1

    .line 5398
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5406
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda43;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4

    .line 2651
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2652
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2e

    .line 2657
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2664
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManual(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 4

    .line 2672
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2673
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNetworkSelectionModeManual"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2f

    .line 2678
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 2682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " operatorNumeric = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ran = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2686
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda28;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda28;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityState(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 3282
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3283
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNrDualConnectivityState"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd5

    .line 3289
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3288
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3292
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enable = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3296
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda75;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda75;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setNullCipherAndIntegrityEnabled(ZLandroid/os/Message;)V
    .locals 4

    .line 5322
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5323
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setNullCipherAndIntegrityEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xef

    .line 5328
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5335
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda108;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda108;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 1397
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/BaseCommands;->setOnNITZTime(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1400
    iget-object p1, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 1401
    iget-object p1, p0, Lcom/android/internal/telephony/BaseCommands;->mNITZTimeRegistrant:Lcom/android/internal/telephony/Registrant;

    new-instance p2, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mLastNITZTimeInfo:[Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public blacklist setPhoneType(I)V
    .locals 2

    .line 6546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPhoneType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " old value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6547
    iput p1, p0, Lcom/android/internal/telephony/BaseCommands;->mPhoneType:I

    return-void
.end method

.method public blacklist setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 4

    .line 3093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkType - networkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3094
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3096
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3098
    const-string v2, "set_preferred_network_mode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3101
    :cond_0
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 3102
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setPreferredNetworkType"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x49

    .line 3107
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " networkType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3114
    invoke-static {p1}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 3115
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeSetPreferredNetworkType(II)V

    .line 3117
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda98;

    invoke-direct {p1, p0, v0, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda98;-><init>(Lcom/android/internal/telephony/RIL;Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setPreferredVoicePrivacy(ZLandroid/os/Message;)V
    .locals 4

    .line 3478
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3479
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setPreferredVoicePrivacy"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x52

    .line 3484
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3492
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda47;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda47;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setRadioCapability(Lcom/android/internal/telephony/RadioCapability;Landroid/os/Message;)V
    .locals 4

    .line 4492
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioModemProxy;

    .line 4493
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setRadioCapability"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x83

    .line 4497
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " RadioCapability = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4502
    invoke-virtual {p1}, Lcom/android/internal/telephony/RadioCapability;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4501
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4505
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/RadioCapability;)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public greylist setRadioPower(ZZZLandroid/os/Message;)V
    .locals 8

    .line 2153
    const-class v0, Lcom/android/internal/telephony/RadioModemProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioModemProxy;

    .line 2154
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "setRadioPower"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x17

    .line 2158
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    if-eqz p1, :cond_1

    .line 2161
    const-string p4, "RILJ"

    const-string v0, "!@Boot_SVC: setRadioPower on"

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " forEmergencyCall= "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " preferredForEmergencyCall="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2169
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda110;-><init>(Lcom/android/internal/telephony/RadioModemProxy;Lcom/android/internal/telephony/RILRequest;ZZZ)V

    const/4 p1, 0x3

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSatelliteEnabledForCarrier(IZLandroid/os/Message;)V
    .locals 4

    .line 5588
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    const/4 v1, 0x4

    .line 5589
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5590
    const-string v0, "setSatelliteEnabledForCarrier: SatelliteModemInterface is used."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5591
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->requestSetSatelliteEnabledForCarrier(IZLandroid/os/Message;)V

    return-void

    :cond_0
    const/16 v2, 0xfc

    .line 5596
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 5600
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " satelliteEnabled="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5604
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda144;

    invoke-direct {p1, v0, p3, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda144;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const-string p2, "setSatelliteEnabledForCarrier"

    invoke-direct {p0, v1, p3, p2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5555
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    const/4 v1, 0x4

    .line 5556
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_3:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5557
    const-string v0, "setSatellitePlmn: SatelliteModemInterface is used."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5558
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->setSatellitePlmn(ILjava/util/List;Ljava/util/List;Landroid/os/Message;)V

    return-void

    :cond_0
    const/16 v2, 0xfb

    .line 5563
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p4, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p4

    .line 5567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p4, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simSlot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " carrierPlmnList="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " allSatellitePlmnList="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5572
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda59;

    invoke-direct {p1, v0, p4, p2, p3}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda59;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;Ljava/util/List;)V

    const-string p2, "setSatellitePlmn"

    invoke-direct {p0, v1, p4, p2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSecurityAlgorithmsUpdatedEnabled(ZLandroid/os/Message;)V
    .locals 4

    .line 5499
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5500
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_2:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSecurityAlgorithmsUpdatedEnabled"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf8

    .line 5508
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5516
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda62;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteria(Ljava/util/List;Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 4648
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4649
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSignalStrengthReportingCriteria"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xca

    .line 4654
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4661
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda158;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda158;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSimCardPower(ILandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 3

    .line 4695
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4696
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSimCardPower"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8c

    .line 4701
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 4700
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4704
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4708
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 3911
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3912
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSmscAddress"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x65

    .line 3916
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " address = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3923
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda152;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda152;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSrvccCallInfo([Lcom/android/internal/telephony/SrvccConnection;Landroid/os/Message;)V
    .locals 4

    .line 5088
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5089
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSrvccCallInfo"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe9

    .line 5093
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5101
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/SrvccConnection;)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSuppServiceNotifications(ZLandroid/os/Message;)V
    .locals 4

    .line 2910
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2911
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSuppServiceNotifications"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x3e

    .line 2916
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2924
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda65;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda65;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 1788
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1789
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setSystemSelectionChannels"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd2

    .line 1794
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " setSystemSelectionChannels= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1802
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setTTYMode(ILandroid/os/Message;)V
    .locals 4

    .line 3459
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3460
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setTTYMode"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x50

    .line 3464
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ttyMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3471
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda116;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda116;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 9

    .line 4349
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 4350
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "setUiccSubscription"

    invoke-direct {p0, v8, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7a

    .line 4354
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4358
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " slot = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " appIndex = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " subId = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " subStatus = "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4363
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIII)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setUnsolResponseFilter(ILandroid/os/Message;)V
    .locals 4

    .line 4626
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 4627
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setUnsolResponseFilter"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8b

    .line 4632
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4640
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda112;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda112;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setUsageSetting(Landroid/os/Message;I)V
    .locals 4

    .line 5047
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5048
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setUsageSetting"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe3

    .line 5052
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 5055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5058
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda58;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda58;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setVoNrEnabled(ZLandroid/os/Message;Landroid/os/WorkSource;)V
    .locals 4

    .line 3343
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RIL;->setVoNrEnabled(Z)V

    .line 3344
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 3346
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "setVoNrEnabled"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3352
    invoke-virtual {p0, v3, p3}, Lcom/android/internal/telephony/RIL;->isNrDualConnectivityEnabled(Landroid/os/Message;Landroid/os/WorkSource;)V

    if-eqz p2, :cond_0

    .line 3354
    invoke-static {p2, v3, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 3355
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0xe1

    .line 3361
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/RIL;->getDefaultWorkSourceIfInvalid(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p3

    .line 3360
    invoke-direct {p0, v1, p2, p3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 3364
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 3367
    new-instance p3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda133;

    invoke-direct {p3, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda133;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;Z)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, p3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist setupDataCall(ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    .line 2259
    const-class v2, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/telephony/RadioDataProxy;

    .line 2260
    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v15, "setupDataCall"

    invoke-direct {v0, v15, v4, v1, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x1b

    .line 2264
    iget-object v3, v0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v0, v2, v1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v5

    .line 2267
    const-string v1, "RILJ"

    const-string v2, "!@Boot_SVC : setupDataCall"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2271
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/RILUtils;->setupDataReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",accessNetworkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    invoke-static/range {p1 .. p1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",dataProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",allowRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",linkProperties="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p5

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",pduSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sliceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p7

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",trafficDescriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p8

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",matchAllRuleAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p9

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2270
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2279
    new-instance v3, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;

    move/from16 v6, p1

    move/from16 v9, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda19;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/telephony/data/DataProfile;ZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;Z)V

    const/4 v1, 0x1

    invoke-direct {v0, v1, v5, v15, v3}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startDtmf(CLandroid/os/Message;)V
    .locals 4

    .line 2762
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2763
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "startDtmf"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x31

    .line 2767
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 2771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2774
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda70;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda70;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;C)V

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startHandover(Landroid/os/Message;I)V
    .locals 4

    .line 4923
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4924
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "startHandover"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xd9

    .line 4928
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 4930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4933
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda90;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda90;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startImsTraffic(IIIILandroid/os/Message;)V
    .locals 9

    .line 5141
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5142
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "startImsTraffic"

    invoke-direct {p0, v8, v2, p5, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xeb

    .line 5146
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 5149
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5154
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda145;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda145;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;IIII)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startNattKeepalive(ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V
    .locals 9

    .line 4737
    const-string v0, "KeepaliveRequest cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4738
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4739
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v8, "startNattKeepalive"

    invoke-direct {p0, v8, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x90

    .line 4743
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 4746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4749
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;

    move v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda31;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;ILandroid/net/KeepalivePacketData;ILandroid/os/Message;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, v3, v8, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .locals 8

    .line 2719
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2720
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "startNetworkScan"

    invoke-direct {p0, v7, v2, p2, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8e

    .line 2724
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getCompatVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object v5

    .line 2726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNetworkScan: overrideHalVersion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2729
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v0, p2, v1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;[Ljava/lang/Object;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2736
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda91;

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda91;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Landroid/telephony/NetworkScanRequest;Lcom/android/internal/telephony/HalVersion;Landroid/os/Message;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopDtmf(Landroid/os/Message;)V
    .locals 4

    .line 2781
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 2782
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopDtmf"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x32

    .line 2786
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2792
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda127;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda127;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopImsTraffic(ILandroid/os/Message;)V
    .locals 4

    .line 5162
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5163
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopImsTraffic"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xec

    .line 5167
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5174
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda131;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda131;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopNattKeepalive(ILandroid/os/Message;)V
    .locals 4

    .line 4756
    const-class v0, Lcom/android/internal/telephony/RadioDataProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioDataProxy;

    .line 4757
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopNattKeepalive"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x91

    .line 4761
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 4764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 4767
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda45;-><init>(Lcom/android/internal/telephony/RadioDataProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist stopNetworkScan(Landroid/os/Message;)V
    .locals 4

    .line 2744
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 2745
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "stopNetworkScan"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8f

    .line 2749
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2755
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda95;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1536
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1588
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/telephony/RIL;->supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPin2ForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1593
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1594
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "supplyIccPin2ForApp"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 1598
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1605
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda142;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda142;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPinForApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1541
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1542
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "supplyIccPinForApp"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 1546
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " aid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1553
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1561
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    const/4 v0, 0x0

    .line 1613
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RIL;->supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public blacklist supplyIccPuk2ForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    .line 1618
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1619
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "supplyIccPuk2ForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v8, 0x5

    invoke-direct {p0, v8, p4, v0}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1626
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "> "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v0}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " aid = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1630
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda163;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda163;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyIccPukForApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 1566
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1567
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "supplyIccPukForApp"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 1571
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 1573
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "> "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " isPukEmpty = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " aid = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1575
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1579
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda121;

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda121;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V
    .locals 4

    .line 1693
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 1694
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "supplyNetworkDepersonalization"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 1699
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " netpin = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1707
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda123;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda123;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist supplySimDepersonalization(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    .line 1716
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mHalVersion:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_5:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne v0, p1, :cond_0

    .line 1718
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/RIL;->supplyNetworkDepersonalization(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .line 1721
    :cond_0
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 1722
    const-string v3, "supplySimDepersonalization"

    invoke-direct {p0, v3, v0, p3, v2}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/16 v2, 0xd4

    .line 1727
    iget-object v4, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v2, p3, v4}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 1731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " controlKey = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " persoType"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1735
    new-instance v2, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda156;

    invoke-direct {v2, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda156;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3, v3, v2}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActive(Landroid/os/Message;)V
    .locals 4

    .line 1990
    const-class v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioVoiceProxy;

    .line 1991
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "switchWaitingOrHoldingAndActive"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf

    .line 1996
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p1

    .line 2000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2003
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/RadioVoiceProxy;Lcom/android/internal/telephony/RILRequest;)V

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist testingEmergencyCall()V
    .locals 1

    .line 6555
    const-string v0, "testingEmergencyCall"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6556
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public blacklist triggerEmergencyNetworkScan([IILandroid/os/Message;)V
    .locals 4

    .line 5247
    const-class v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioNetworkProxy;

    .line 5248
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "triggerEmergencyNetworkScan"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xe6

    .line 5253
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 5257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p3, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " networkType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5258
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->accessNetworkTypesToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", scanType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5259
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->scanTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5257
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5262
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda111;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda111;-><init>(Lcom/android/internal/telephony/RadioNetworkProxy;Lcom/android/internal/telephony/RILRequest;[II)V

    const/4 p1, 0x4

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist triggerEpsFallback(ILandroid/os/Message;)V
    .locals 4

    .line 5181
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5182
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "triggerEpsFallback"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xee

    .line 5186
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5194
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda88;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda88;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;I)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method greylist unsljLog(I)V
    .locals 3

    .line 6498
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v0

    .line 6500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UNSL]< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6503
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    const-wide/32 p0, 0x200000

    .line 6505
    const-string v1, "RIL"

    invoke-static {p0, p1, v1, v0}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogMore(ILjava/lang/String;)V
    .locals 2

    .line 6510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6515
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    const-wide/32 p0, 0x200000

    .line 6517
    const-string v0, "RIL"

    invoke-static {p0, p1, v0, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    .line 6522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6527
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    const-wide/32 p0, 0x200000

    .line 6529
    const-string v0, "RIL"

    invoke-static {p0, p1, v0, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method greylist unsljLogvRet(ILjava/lang/Object;)V
    .locals 2

    .line 6534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/RIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6539
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mClientWakelockTracker:Lcom/android/internal/telephony/SemClientWakelockTracker;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLoggingUnsol(I)V

    const-wide/32 p0, 0x200000

    .line 6541
    const-string v0, "RIL"

    invoke-static {p0, p1, v0, p2}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateCachedAllowedNetworkTypesBitmask(II)V
    .locals 2

    if-nez p1, :cond_0

    .line 6668
    iget v0, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    if-eq v0, p2, :cond_0

    .line 6669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCachedAllowedNetworkTypesBitmask - error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", networkTypesBitmask: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6670
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mAllowedNetworkTypesBitmask: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 6671
    invoke-static {p1}, Lcom/android/internal/telephony/SemTelephonyUtils;->toReadableNetworkTypeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 6672
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6673
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 6675
    iput p2, p0, Lcom/android/internal/telephony/BaseCommands;->mAllowedNetworkTypesBitmask:I

    .line 6677
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyHelper;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6679
    const-string p2, "set_preferred_network_mode"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6680
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->notifyPreferredNetworkTypeChaged()V

    :cond_0
    return-void
.end method

.method public blacklist updateImsCallStatus(Ljava/util/List;Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 5371
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5372
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "updateImsCallStatus"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xf0

    .line 5376
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5383
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda57;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda57;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Ljava/util/List;)V

    const/4 p1, 0x7

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist updateImsRegistrationInfo(IIIILandroid/os/Message;)V
    .locals 4

    .line 5112
    const-class v0, Lcom/android/internal/telephony/RadioImsProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioImsProxy;

    .line 5113
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "updateImsRegistrationInfo"

    invoke-direct {p0, v2, v0, p5, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xea

    .line 5117
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p5

    .line 5121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p5, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", radioTech="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", suggested="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cap="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5126
    new-instance v1, Landroid/hardware/radio/ims/ImsRegistration;

    invoke-direct {v1}, Landroid/hardware/radio/ims/ImsRegistration;-><init>()V

    .line 5128
    invoke-static {p1}, Lcom/android/internal/telephony/RILUtils;->convertImsRegistrationState(I)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/ims/ImsRegistration;->regState:I

    .line 5129
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertImsRegistrationTech(I)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/ims/ImsRegistration;->accessNetworkType:I

    .line 5130
    iput p3, v1, Landroid/hardware/radio/ims/ImsRegistration;->suggestedAction:I

    .line 5131
    invoke-static {p4}, Lcom/android/internal/telephony/RILUtils;->convertImsCapability(I)I

    move-result p1

    iput p1, v1, Landroid/hardware/radio/ims/ImsRegistration;->capabilities:I

    .line 5133
    new-instance p1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda154;

    invoke-direct {p1, v0, p5, v1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda154;-><init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/ims/ImsRegistration;)V

    const/4 p2, 0x7

    invoke-direct {p0, p2, p5, v2, p1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist updateSimPhonebookRecord(Lcom/android/internal/telephony/uicc/SimPhonebookRecord;Landroid/os/Message;)V
    .locals 4

    .line 5020
    const-class v0, Lcom/android/internal/telephony/RadioSimProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioSimProxy;

    .line 5021
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_6:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "updateSimPhonebookRecord"

    invoke-direct {p0, v2, v0, p2, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x97

    .line 5025
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    .line 5029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5030
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/SimPhonebookRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5029
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 5033
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda153;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda153;-><init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Lcom/android/internal/telephony/uicc/SimPhonebookRecord;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method blacklist writeMetricsCallRing([C)V
    .locals 1

    .line 6356
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilCallRing(I[C)V

    return-void
.end method

.method blacklist writeMetricsModemRestartEvent(Ljava/lang/String;)V
    .locals 2

    .line 6365
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeModemRestartEvent(ILjava/lang/String;)V

    .line 6368
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    .line 6369
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ModemRestartStats;->onModemRestart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method blacklist writeMetricsSrvcc(I)V
    .locals 2

    .line 6360
    iget-object v0, p0, Lcom/android/internal/telephony/RIL;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeRilSrvcc(II)V

    .line 6361
    iget-object p0, p0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onRilSrvccStateChanged(I)V

    return-void
.end method

.method public blacklist writeSmsToRuim(I[BLandroid/os/Message;)V
    .locals 4

    .line 3795
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 3796
    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v2, "writeSmsToRuim"

    invoke-direct {p0, v2, v0, p3, v1}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x60

    .line 3800
    iget-object v3, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p3

    .line 3808
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda55;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda55;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;I[B)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3, v2, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 8

    .line 2931
    const-class v0, Lcom/android/internal/telephony/RadioMessagingProxy;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RIL;->getRadioServiceProxy(Ljava/lang/Class;)Lcom/android/internal/telephony/RadioServiceProxy;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/telephony/RadioMessagingProxy;

    .line 2932
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    const-string v7, "writeSmsToSim"

    invoke-direct {p0, v7, v2, p4, v0}, Lcom/android/internal/telephony/RIL;->canMakeRequest(Ljava/lang/String;Lcom/android/internal/telephony/RadioServiceProxy;Landroid/os/Message;Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3f

    .line 2936
    iget-object v1, p0, Lcom/android/internal/telephony/RIL;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, p4, v1}, Lcom/android/internal/telephony/RIL;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    .line 2943
    new-instance v1, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda102;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda102;-><init>(Lcom/android/internal/telephony/RadioMessagingProxy;Lcom/android/internal/telephony/RILRequest;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1, v3, v7, v1}, Lcom/android/internal/telephony/RIL;->radioServiceInvokeHelper(ILcom/android/internal/telephony/RILRequest;Ljava/lang/String;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
