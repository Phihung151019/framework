.class public Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;
.super Ljava/lang/Object;
.source "VoiceCallSessionStats.java"


# static fields
.field private static final blacklist CALL_DURATION_MAP:Landroid/util/SparseIntArray;

.field private static final blacklist CONCURRENT_CALL_ANOMALY_UUID:Ljava/util/UUID;

.field private static final blacklist CS_CODEC_MAP:Landroid/util/SparseIntArray;

.field private static final blacklist IMS_CODEC_MAP:Landroid/util/SparseIntArray;

.field private static final blacklist TAG:Ljava/lang/String; = "VoiceCallSessionStats"


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

.field private final blacklist mCallProtos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCodecUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

.field private final blacklist mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPhoneId:I

.field private final blacklist mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

.field private final blacklist mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

.field private final blacklist mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private final blacklist mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$4tDijKUl-WOslq2fJCCgBnps8FQ(Lcom/android/internal/telephony/Connection;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 138
    invoke-static {}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->buildGsmCdmaCodecMap()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CS_CODEC_MAP:Landroid/util/SparseIntArray;

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->buildImsCodecMap()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->IMS_CODEC_MAP:Landroid/util/SparseIntArray;

    .line 144
    invoke-static {}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->buildCallDurationMap()Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CALL_DURATION_MAP:Landroid/util/SparseIntArray;

    .line 147
    const-string v0, "76780b5a-623e-48a4-be3f-925e05177c9c"

    .line 148
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CONCURRENT_CALL_ANOMALY_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    .line 173
    new-instance v0, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    .line 180
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    .line 181
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getDeviceStateHelper()Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getVonrHelper()Lcom/android/internal/telephony/metrics/VonrHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    .line 189
    iput p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    .line 190
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 191
    iput-object p3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 192
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getInstance(I)Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->start(Lcom/android/internal/telephony/Phone;)V

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    return-void
.end method

.method private blacklist acceptCall(Lcom/android/internal/telephony/Connection;)V
    .locals 2

    .line 451
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 452
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "acceptCall: resetting setup info, connectionId=%d"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 455
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    return-void

    .line 457
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "acceptCall: untracked connection, connectionId=%d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist addCall(Lcom/android/internal/telephony/Connection;)V
    .locals 11

    .line 468
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 469
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 470
    const-string p1, "addCall: already tracked connection, connectionId=%d, connectionInfo=%s"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 475
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    .line 476
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 477
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v3, v2, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v3

    .line 478
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    .line 479
    new-instance v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v5}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    .line 481
    iget-object v6, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    invoke-virtual {v6}, Lcom/android/internal/telephony/metrics/VonrHelper;->updateVonrEnabledState()V

    .line 483
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    .line 484
    iput v1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 485
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getDirection(Lcom/android/internal/telephony/Connection;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    const/4 v6, 0x1

    .line 486
    iput-boolean v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    .line 487
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 488
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v7

    iput v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    .line 489
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getVendorDisconnectCause()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 490
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    const/4 v7, 0x0

    .line 491
    iput v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    .line 492
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    const-wide/16 v8, 0x0

    .line 493
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    .line 494
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    .line 495
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 496
    iget v10, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    iput v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    .line 497
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->isMultiSim()Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    .line 498
    iget v10, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    invoke-static {v10}, Lcom/android/internal/telephony/metrics/SimSlotState;->isEsim(I)Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    .line 499
    iget-object v10, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v10

    iput v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    .line 500
    iput-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    .line 501
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    .line 502
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    .line 503
    iput-boolean v7, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    .line 504
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isEmergencyCall()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isNetworkIdentifiedEmergencyCall()Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    move v10, v7

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v6

    :goto_1
    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    .line 505
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->isNetworkRoaming(Landroid/telephony/ServiceState;)Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    .line 506
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    .line 507
    iput v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v6, v7

    .line 508
    :goto_2
    iput-boolean v6, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    .line 509
    iget-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isHandoverInProgress(IZ)Z

    move-result v3

    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    .line 511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isCrossSimCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    .line 512
    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtStart:Z

    .line 513
    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    .line 514
    iput-boolean v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    .line 517
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getDirection(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 519
    iput-wide v8, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    goto :goto_3

    .line 521
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v3

    iput-wide v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    .line 525
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAudioCodec()I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->audioQualityToCodec(II)I

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    .line 527
    iput-wide v3, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 530
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    iput p1, v5, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    const/4 v1, 0x3

    if-le p1, v1, :cond_6

    .line 532
    sget-object p1, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CONCURRENT_CALL_ANOMALY_UUID:Ljava/util/UUID;

    const-string v1, "Anomalous number of concurrent calls"

    invoke-static {p1, v1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 535
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 538
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatTracker(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private static blacklist audioQualityToCodec(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 921
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "audioQualityToCodec: unknown bearer %d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 919
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->IMS_CODEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0

    .line 917
    :cond_1
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CS_CODEC_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method private static blacklist buildCallDurationMap()Landroid/util/SparseIntArray;
    .locals 3

    .line 1050
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const v1, 0xea60

    const/4 v2, 0x1

    .line 1052
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x493e0

    const/4 v2, 0x2

    .line 1055
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x927c0

    const/4 v2, 0x3

    .line 1058
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x1b7740

    const/4 v2, 0x4

    .line 1061
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x36ee80

    const/4 v2, 0x5

    .line 1064
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private static blacklist buildGsmCdmaCodecMap()Landroid/util/SparseIntArray;
    .locals 6

    .line 1011
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x1

    .line 1012
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    .line 1013
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const/16 v2, 0x8

    .line 1014
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    const/16 v3, 0x9

    .line 1015
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xa

    const/4 v5, 0x5

    .line 1016
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x6

    .line 1017
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x7

    .line 1018
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1020
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private static blacklist buildImsCodecMap()Landroid/util/SparseIntArray;
    .locals 2

    .line 1025
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v1, 0x1

    .line 1026
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    .line 1027
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    .line 1028
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    .line 1029
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x5

    .line 1030
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x6

    .line 1031
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x7

    .line 1032
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x8

    .line 1033
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x9

    .line 1034
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xa

    .line 1035
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xb

    .line 1036
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xc

    .line 1037
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xd

    .line 1038
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xe

    .line 1039
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0xf

    .line 1040
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x10

    .line 1041
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x11

    .line 1042
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x12

    .line 1043
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x13

    .line 1044
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x14

    .line 1045
    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-object v0
.end method

.method private blacklist checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V
    .locals 6

    .line 641
    iget-wide v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isSetupFinished(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->convertCallStateEnumToInt(Lcom/android/internal/telephony/Call$State;)I

    move-result v0

    iput v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    .line 643
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    iget-wide v4, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    sub-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    .line 644
    iput-wide v2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    .line 648
    :cond_0
    iget-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 649
    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    .line 651
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v2, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v0

    .line 653
    iput v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    .line 654
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isCrossSimCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    .line 657
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->resetCodecList(Lcom/android/internal/telephony/Connection;)V

    :cond_1
    return-void
.end method

.method private static blacklist classifyCallDuration(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 931
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->CALL_DURATION_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 932
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 933
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method private blacklist convertCallStateEnumToInt(Lcom/android/internal/telephony/Call$State;)I
    .locals 0

    .line 1109
    sget-object p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x9

    return p0

    :pswitch_1
    const/16 p0, 0x8

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x1

    return p0

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method private blacklist finalizeMainCodecQuality(I)I
    .locals 9

    .line 836
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    .line 840
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 843
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 p1, 0x5

    .line 847
    new-array p1, p1, [J

    move v2, v1

    move v3, v2

    .line 848
    :goto_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 849
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 850
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getCodecQuality(I)I

    move-result v2

    .line 851
    aget-wide v7, p1, v2

    add-long/2addr v7, v5

    aput-wide v7, p1, v2

    int-to-long v2, v3

    add-long/2addr v2, v5

    long-to-int v3, v2

    move v2, v4

    goto :goto_0

    .line 854
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Time per codec quality = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    mul-int/lit8 v3, v3, 0x46

    .line 860
    div-int/lit8 v3, v3, 0x64

    int-to-long v2, v3

    const-wide/16 v4, 0x0

    const/4 p0, 0x4

    :goto_1
    if-ltz p0, :cond_3

    .line 862
    aget-wide v6, p1, p0

    add-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    return p0

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private blacklist finishCall(I)V
    .locals 8

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_0

    .line 545
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "finishCall: could not find call to be removed, connectionId=%d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 550
    :cond_0
    iget-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    if-nez v1, :cond_1

    .line 551
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->convertCallStateEnumToInt(Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    .line 555
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 556
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    .line 559
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getSignalStrength(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    .line 562
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finalizeMainCodecQuality(I)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    .line 565
    iput-wide v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    .line 568
    iget-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 569
    const-string p1, ""

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 573
    :cond_2
    iget p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    if-gtz p1, :cond_3

    .line 574
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    .line 578
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    .line 581
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mDeviceStateHelper:Lcom/android/internal/telephony/metrics/DeviceStateHelper;

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/DeviceStateHelper;->getFoldState()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->foldState:I

    .line 583
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mVonrHelper:Lcom/android/internal/telephony/metrics/VonrHelper;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/VonrHelper;->getVonrEnabled(I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->vonrEnabled:Z

    .line 585
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isBusinessCallSupported()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->supportsBusinessCallComposer:Z

    .line 587
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getCallComposerStatusForPhone()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callComposerStatus:I

    .line 589
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mSatelliteController:Lcom/android/internal/telephony/satellite/SatelliteController;

    if-eqz p1, :cond_4

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isInSatelliteModeForCarrierRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isNtn:Z

    .line 592
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addVoiceCallSession(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    .line 595
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->hasCalls()Z

    move-result p1

    if-nez p1, :cond_5

    .line 596
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->conclude(J)V

    .line 597
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addVoiceCallRatUsage(Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;)V

    .line 598
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->clear()V

    :cond_5
    return-void
.end method

.method private blacklist finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V
    .locals 7

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    const/4 v1, 0x2

    .line 696
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 697
    iget v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 698
    iget v1, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    .line 699
    iget-object p2, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/internal/telephony/metrics/ImsStats;->filterExtraMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 700
    invoke-static {p3, p4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->classifyCallDuration(J)I

    move-result p2

    iput p2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    .line 701
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p2, :cond_0

    .line 702
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 704
    invoke-virtual {p2}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getCallAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 706
    iget-boolean v2, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 708
    invoke-interface {p2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p3

    iget p4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 707
    invoke-static {p2, p3, p4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v4

    iget v5, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    iget v6, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    const/4 v3, 0x1

    .line 706
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;->onCallTerminated(ZZIII)V

    .line 713
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishCall(I)V

    return-void
.end method

.method private static blacklist getBearer(Lcom/android/internal/telephony/Connection;)I
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 736
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getBearer: unknown phoneType=%d"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method private blacklist getCallComposerStatusForPhone()I
    .locals 2

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 969
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 973
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 974
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallComposerStatus()I

    move-result p0

    return p0
.end method

.method private blacklist getCodecQuality(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist getConnectionId(Lcom/android/internal/telephony/Connection;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method private blacklist getConnectionIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 618
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 619
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static blacklist getDirection(Lcom/android/internal/telephony/Connection;)I
    .locals 0

    .line 722
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist getImsConnectionIds()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 627
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 628
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget v2, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 630
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private blacklist getServiceState()Landroid/telephony/ServiceState;
    .locals 0

    .line 717
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSignalStrength(I)I
    .locals 1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 744
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getSignalStrengthWifi()I

    move-result p0

    return p0

    .line 746
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getSignalStrengthCellular()I

    move-result p0

    return p0
.end method

.method private blacklist getSignalStrengthCellular()I
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method

.method private blacklist getSignalStrengthWifi()I
    .locals 5

    .line 752
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 753
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 754
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result v0

    .line 758
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getMaxSignalLevel()I

    move-result p0

    mul-int/lit8 v2, v0, 0x4

    .line 760
    div-int/2addr v2, p0

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    return v1
.end method

.method private static blacklist getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 792
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    if-eqz v0, :cond_3

    .line 794
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/ImsStats;->getImsVoiceRadioTech()I

    move-result v0

    const/4 v2, 0x2

    .line 796
    invoke-static {p1, v2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result v2

    if-eqz v0, :cond_3

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    if-eqz v2, :cond_3

    .line 805
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getVoiceRat(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    if-ne v0, v3, :cond_2

    return v0

    :cond_2
    return v2

    .line 818
    :cond_3
    invoke-static {p1, v1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getRat(Landroid/telephony/ServiceState;I)I

    move-result p0

    return p0
.end method

.method private blacklist hasCalls()Z
    .locals 0

    .line 637
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isBusinessCallSupported()Z
    .locals 4

    .line 978
    const-string v0, "supports_business_call_composer_bool"

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 979
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 983
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    .line 986
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I[Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    :catch_0
    const-string p0, "CarrierConfigLoader is not available."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 991
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 994
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    return v2
.end method

.method private blacklist isCrossSimCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 0

    .line 953
    instance-of p0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz p0, :cond_0

    .line 954
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isCrossSimCall()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isCrossSimCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    .line 960
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 961
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private blacklist isHandoverInProgress(IZ)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    const/16 p1, 0x200

    goto :goto_0

    :cond_1
    const/16 p1, 0x40

    .line 779
    :goto_0
    iget p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getInstance(I)Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/DataConnectionStateTracker;->getDataState(I)I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private static blacklist isSetupFinished(Lcom/android/internal/telephony/Call;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 904
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$1;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static varargs blacklist logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1003
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static varargs blacklist loge(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1007
    sget-object v0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist resetCodecList(Lcom/android/internal/telephony/Connection;)V
    .locals 4

    .line 823
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 824
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 827
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    .line 828
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 829
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private blacklist setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3

    .line 603
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 604
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez p0, :cond_0

    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onRttStarted: untracked connection, connectionId=%d"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 610
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    if-eq v1, p1, :cond_2

    .line 611
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onRttStarted: connection bearer mismatch but proceeding, connectionId=%d"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x1

    .line 613
    iput-boolean p1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    return-void
.end method

.method private blacklist updateHandoverState(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V
    .locals 0

    const/4 p0, 0x5

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    .line 1104
    iput-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    return-void

    :cond_0
    const/4 p0, 0x1

    .line 1100
    iput-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    return-void
.end method

.method private blacklist updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V
    .locals 4

    .line 681
    iget v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eq v0, p2, :cond_1

    .line 682
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    .line 683
    iget-boolean v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-nez v0, :cond_0

    .line 684
    iget-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    .line 686
    :cond_0
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eqz p2, :cond_1

    .line 688
    iput p2, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    .line 691
    :cond_1
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->isCrossSimCall(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    iput-boolean p0, p1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    return-void
.end method

.method private blacklist updateRatTracker(Landroid/telephony/ServiceState;)V
    .locals 8

    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v4

    .line 667
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mRatUsage:Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionIds()Ljava/util/Set;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/metrics/VoiceCallRatTracker;->add(IIJLjava/util/Set;)V

    move v0, v1

    .line 669
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 671
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v3, p1, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v3

    .line 672
    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    const/16 v4, 0x12

    if-ne v3, v4, :cond_0

    move v3, v1

    goto :goto_1

    .line 675
    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Landroid/telephony/ServiceState;)I

    move-result v3

    :goto_1
    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist updateVoiceCallSessionBearerState(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 6

    .line 1073
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1078
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_1

    and-int/lit16 v2, v0, 0x200

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 1084
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1085
    iget-object v3, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 1086
    iget v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 1087
    iget-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-nez v4, :cond_2

    if-eqz v1, :cond_2

    .line 1088
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateHandoverState(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    .line 1090
    :cond_2
    iget-boolean v4, v3, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-eqz v4, :cond_3

    and-int/lit16 v4, v0, 0x200

    if-eqz v4, :cond_3

    .line 1091
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getState()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateHandoverState(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected blacklist getTimeMillis()J
    .locals 2

    .line 999
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized blacklist onAudioCodecChanged(Lcom/android/internal/telephony/Connection;I)V
    .locals 5

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_0

    .line 326
    const-string p2, "onAudioCodecChanged: untracked connection, connectionId=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 329
    :cond_0
    :try_start_1
    iget v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->audioQualityToCodec(II)I

    move-result p2

    .line 330
    iget-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p2

    or-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    goto :goto_0

    .line 335
    :cond_1
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getTimeMillis()J

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 337
    iget-object p2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCodecUsage:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onCallStateChanged(Lcom/android/internal/telephony/Call;)V
    .locals 5

    monitor-enter p0

    .line 377
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 378
    invoke-static {v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    .line 379
    iget-object v4, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v4, :cond_0

    .line 381
    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 383
    :cond_0
    const-string v2, "onCallStateChanged: untracked connection, connectionId=%d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 386
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onImsAcceptCall(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 280
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->acceptCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 282
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onImsCallReceived(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 272
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 275
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onImsCallStartFailed(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    monitor-enter p0

    .line 287
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onImsCallTerminated(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
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

.method public declared-synchronized blacklist onImsCallTerminated(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_1

    .line 294
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getImsConnectionIds()Ljava/util/List;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 296
    const-string v0, "onImsCallTerminated: ending IMS call w/ conn=null"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 299
    :cond_0
    const-string p2, "onImsCallTerminated: %d IMS calls w/ conn=null"

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V

    goto :goto_0

    .line 306
    :cond_2
    const-string v1, "onImsCallTerminated: untracked connection, connectionId=%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v1

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishImsCall(ILandroid/telephony/ims/ImsReasonInfo;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onImsDial(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 264
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->hasRttTextStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 267
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onMultipartyChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V
    .locals 3

    monitor-enter p0

    .line 358
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_0

    .line 361
    const-string p2, "onMultipartyChange: untracked connection, connectionId=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 364
    :cond_0
    :try_start_1
    const-string v1, "onMultipartyChange: isMultiparty=%b, connectionId=%d"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 1

    monitor-enter p0

    .line 442
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->hasCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateVoiceCallSessionBearerState(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 445
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onRilAcceptCall(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 200
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 201
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->acceptCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onRilCallListChanged(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/GsmCdmaConnection;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 215
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result v1

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v2

    if-nez v2, :cond_1

    .line 219
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 222
    :cond_1
    const-string v0, "onRilCallListChanged: skip adding disconnected connection, connectionId=%d"

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 230
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->checkCallSetup(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-static {v0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getBearer(Lcom/android/internal/telephony/Connection;)I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 235
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPreciseDisconnectCause()I

    move-result v3

    iput v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    .line 236
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVendorDisconnectCause()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 237
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->classifyCallDuration(J)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 241
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getCallAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 243
    iget-boolean v4, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 245
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    iget v6, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    invoke-static {v0, v5, v6}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v6

    iget v7, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    iget v8, v2, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    const/4 v5, 0x0

    .line 243
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$CallAnalytics;->onCallTerminated(ZZIII)V

    .line 251
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->finishCall(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 257
    :cond_4
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onRilDial(Lcom/android/internal/telephony/Connection;)V
    .locals 0

    monitor-enter p0

    .line 207
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->addCall(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
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

.method public declared-synchronized blacklist onRilSrvccStateChanged(I)V
    .locals 6

    monitor-enter p0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getHandoverConnection()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 394
    :cond_0
    const-string v0, "onRilSrvccStateChanged: ImsPhone is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getImsConnectionIds()Ljava/util/List;

    move-result-object v0

    .line 399
    const-string v1, "onRilSrvccStateChanged: ImsPhone has no handover, we have %d"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 402
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats$$ExternalSyntheticLambda0;-><init>()V

    .line 403
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 404
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    goto/16 :goto_5

    .line 424
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    goto :goto_2

    .line 419
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    iget-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    goto :goto_3

    .line 409
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 411
    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    .line 412
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 415
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 414
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getVoiceRatWithVoNRFix(Lcom/android/internal/telephony/Phone;Landroid/telephony/ServiceState;I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatAtEnd(Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 430
    :cond_5
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

.method public declared-synchronized blacklist onRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    monitor-enter p0

    .line 316
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->setRttStarted(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
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

.method public declared-synchronized blacklist onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    monitor-enter p0

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->hasCalls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->updateRatTracker(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 437
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized blacklist onVideoStateChange(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;I)V
    .locals 3

    monitor-enter p0

    .line 344
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->getConnectionId(Lcom/android/internal/telephony/Connection;)I

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->mCallProtos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_0

    .line 347
    const-string p2, "onVideoStateChange: untracked connection, connectionId=%d"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->loge(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 350
    :cond_0
    :try_start_1
    const-string v1, "onVideoStateChange: video state=%d, connectionId=%d"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 352
    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    :cond_1
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
