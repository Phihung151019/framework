.class public Lcom/android/internal/telephony/satellite/DatagramDispatcher;
.super Landroid/os/Handler;
.source "DatagramDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;,
        Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;
    }
.end annotation


# static fields
.field private static final blacklist TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

.field private static blacklist mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

.field private final blacklist mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

.field private blacklist mDemoTimeoutDuration:J

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsAligned:Z

.field private blacklist mIsDemoMode:Z

.field private blacklist mIsEmergencyCommunicationEstablished:Z

.field private final blacklist mIsMtSmsPollingThrottled:Landroid/util/SparseBooleanArray;

.field private blacklist mLastSendRequestDatagramType:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mModemState:I

.field private final blacklist mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPendingSmsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private blacklist mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

.field private blacklist mSendingInProgress:Z

.field private final blacklist mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

.field private final blacklist mShouldPollMtSms:Landroid/util/SparseBooleanArray;

.field private blacklist mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mSmsStartTimeMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWaitTimeForDatagramSendingForLastMessageResponse:J

.field private blacklist mWaitTimeForDatagramSendingResponse:J


# direct methods
.method public static synthetic blacklist $r8$lambda$OnFzZaxmtCEarSG8mTm04C364dU(Ljava/lang/String;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$eU590pND9iff8njzkw1rxsTWVXI(Ljava/lang/String;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$lxn47FuHUsSU7td0B89uAqoaPfM(Ljava/lang/String;)I
    .locals 0

    .line 1422
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$nrxLYJk2saPxVzIhl9o7xn22vJ0(Ljava/lang/String;)I
    .locals 0

    .line 1363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$yVNEDUTzdfpOei2ojryNrcANNKY(J)J
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 506
    sget-wide v0, Lcom/android/internal/telephony/satellite/DatagramController;->MAX_DATAGRAM_ID:J

    rem-long/2addr p0, v0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/DatagramDispatcher;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)V
    .locals 4

    .line 213
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 96
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    .line 97
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 102
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    .line 105
    sget-object v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    .line 108
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    .line 118
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 126
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 134
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    .line 137
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsStartTimeMap:Ljava/util/LinkedHashMap;

    .line 142
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 144
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    const/4 v0, -0x1

    .line 146
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    .line 164
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Landroid/util/SparseBooleanArray;

    .line 170
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Landroid/util/SparseBooleanArray;

    .line 214
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    .line 215
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 216
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 217
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    .line 218
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->getInstance()Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    .line 219
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 221
    monitor-enter v1

    .line 222
    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getWaitForDatagramSendingResponseTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getWaitForDatagramSendingResponseForLastMessageTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingForLastMessageResponse:J

    return-void

    :catchall_0
    move-exception p0

    .line 223
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist abortSendingPendingDatagrams(II)V
    .locals 0

    .line 731
    const-string p1, "abortSendingPendingDatagrams()"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 732
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendErrorCodeAndCleanupPendingDatagrams(Ljava/util/LinkedHashMap;I)V

    .line 733
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendErrorCodeAndCleanupPendingDatagrams(Ljava/util/LinkedHashMap;I)V

    .line 734
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendErrorCodeAndCleanupPendingSms(Ljava/util/LinkedHashMap;I)V

    return-void
.end method

.method private blacklist allowCheckMessageInNotConnected()Z
    .locals 1

    .line 1578
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110233

    .line 1579
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private blacklist allowMtSmsPolling()Z
    .locals 7

    .line 1532
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 1533
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v1

    .line 1535
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isP2PSmsDisallowedOnCarrierRoamingNtn(I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowMtSmsPolling: P2P SMS disallowed, subId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1549
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 1551
    iget-boolean v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    .line 1552
    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    const/4 v5, 0x7

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    .line 1555
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 1558
    const-string v0, "allowMtSmsPolling: polling is throttled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    :cond_3
    if-nez v3, :cond_4

    .line 1563
    const-string v0, "allowMtSmsPolling: not aligned"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    :cond_4
    if-nez v4, :cond_5

    .line 1567
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowCheckMessageInNotConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1568
    const-string v0, "allowMtSmsPolling: not in service and allow_check_message_in_not_connected is disabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v2

    .line 1573
    :cond_5
    const-string v0, "allowMtSmsPolling: return true"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return v6

    :catchall_0
    move-exception p0

    .line 1555
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist cleanUpResources()V
    .locals 8

    .line 944
    const-string v0, "cleanUpResources"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 945
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 946
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    .line 948
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v3

    .line 949
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 950
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 953
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/16 v7, 0xf

    const/4 v5, 0x3

    .line 950
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 955
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 v1, 0xf

    .line 959
    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->abortSendingPendingDatagrams(II)V

    .line 962
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopSatelliteAlignedTimer()V

    .line 963
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopDatagramWaitForConnectedStateTimer()V

    .line 964
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopWaitForDatagramSendingResponseTimer()V

    .line 965
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopWaitForSimulatedPollDatagramsDelayTimer()V

    .line 966
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    const/4 v1, 0x0

    .line 967
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 968
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    .line 969
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    const/4 v1, -0x1

    .line 970
    iput v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    .line 978
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/DatagramDispatcher;
    .locals 1

    .line 195
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    if-nez v0, :cond_0

    .line 196
    const-string v0, "DatagramDispatcher was not yet initialized."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->loge(Ljava/lang/String;)V

    .line 198
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    return-object v0
.end method

.method private blacklist getMtSmsPollingThrottleMillis()J
    .locals 2

    .line 1445
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0107

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getWaitForDatagramSendingResponseForLastMessageTimeoutMillis()J
    .locals 2

    .line 1084
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0193

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getWaitForDatagramSendingResponseTimeoutMillis()J
    .locals 2

    .line 1079
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e0194

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist handleCmdSendMtSmsPollingMessage()V
    .locals 4

    .line 1457
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1463
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v1

    .line 1464
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMtSmsPollingMessage: mShouldPollMtSms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1467
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1470
    :cond_0
    const-string v2, "sendMtSmsPollingMessage"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1471
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowCheckMessageInNotConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1476
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1480
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1481
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1482
    iget-boolean v2, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v2, :cond_2

    .line 1483
    const-string v1, "sendMtSmsPollingMessage: mPendingSmsMap already has the polling message."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1485
    monitor-exit v0

    return-void

    .line 1488
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1490
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1492
    const-string v0, "sendMtSmsPollingMessage: satellitePhone is null."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 1497
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1499
    const-string v0, "sendMtSmsPollingMessage: smsDispatchersController is null."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 1503
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsDispatchersController;->sendMtSmsPollingMessage()V

    return-void

    .line 1488
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist handleEventDatagramWaitForConnectedStateTimedOut(I)V
    .locals 8

    .line 1042
    const-string v0, "Timed out to wait for satellite connected before sending datagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    .line 1043
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1044
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v3

    .line 1046
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1049
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/16 v7, 0x12

    const/4 v5, 0x3

    move v4, p1

    .line 1046
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1051
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 p1, 0x12

    .line 1055
    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->abortSendingPendingDatagrams(II)V

    .line 1057
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist handleEventSatelliteAligned()V
    .locals 3

    .line 589
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isSatelliteAlignedTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopSatelliteAlignedTimer()V

    .line 592
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    if-nez v0, :cond_0

    .line 593
    const-string v0, "handleEventSatelliteAligned: mSendSatelliteDatagramRequest is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 595
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    const/4 v2, 0x1

    .line 597
    iput-boolean v2, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->skipCheckingSatelliteAligned:Z

    const/4 v1, 0x2

    .line 598
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 600
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 601
    invoke-static {v0, v1, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 602
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 603
    const-string v0, "handleEventSatelliteAligned: EVENT_SEND_SATELLITE_DATAGRAM_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist handleEventSatelliteAlignedTimeout(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V
    .locals 3

    .line 610
    const-string v0, "handleEventSatelliteAlignedTimeout"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 611
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 612
    new-instance v1, Landroid/telephony/satellite/SatelliteManager$SatelliteException;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Landroid/telephony/satellite/SatelliteManager$SatelliteException;-><init>(I)V

    const/4 v2, 0x2

    .line 615
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 616
    invoke-static {p0, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 617
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist handleEventSendSmsDone(IJZ)V
    .locals 11

    .line 1378
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1379
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    if-nez v0, :cond_0

    .line 1382
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleEventSendSmsDone there is no pendingSms for messageId="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1383
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    .line 1386
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1387
    iget-boolean v3, v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_1

    move v7, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    move v7, v3

    .line 1390
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventSendSmsDone subId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " messageId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " success="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " datagramType="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v3, 0x5

    if-eqz p4, :cond_2

    .line 1395
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1397
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v8, 0x2

    move v6, p1

    .line 1395
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1398
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    if-ne v7, v4, :cond_3

    .line 1400
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startMtSmsPollingThrottle()V

    .line 1403
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v6, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_2
    move v6, p1

    .line 1407
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1409
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v10, 0x5

    const/4 v8, 0x3

    .line 1407
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1410
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    .line 1413
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-nez p1, :cond_7

    .line 1414
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsStartTimeMap:Ljava/util/LinkedHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 1415
    new-instance p2, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;-><init>()V

    const/4 p3, 0x1

    .line 1416
    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramDirection(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object p2

    .line 1417
    invoke-virtual {p2, v7}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramType(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object p2

    if-eqz p4, :cond_4

    move v3, v2

    .line 1418
    :cond_4
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setResultCode(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object p2

    .line 1419
    iget-object p3, v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    if-nez p3, :cond_5

    goto :goto_2

    .line 1420
    :cond_5
    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {p4}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda1;-><init>()V

    .line 1421
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p3

    new-instance p4, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {p4}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda2;-><init>()V

    .line 1422
    invoke-interface {p3, p4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p3

    .line 1423
    invoke-interface {p3}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    .line 1419
    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramSizeBytes(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object p2

    const-wide/16 p3, 0x0

    if-eqz p1, :cond_6

    .line 1424
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, p3

    if-lez v0, :cond_6

    .line 1425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr p3, v2

    .line 1424
    :cond_6
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object p1

    .line 1425
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->build()Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;

    move-result-object p1

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    .line 1426
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->sendBigDataForSatelliteDatagram(Landroid/content/Context;)V

    .line 1430
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result p1

    if-lez p1, :cond_8

    .line 1431
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    goto :goto_3

    .line 1433
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1437
    :goto_3
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist handleEventWaitForDatagramSendingResponseTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V
    .locals 14

    .line 1101
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1102
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out to wait for the response of the request to send the datagram "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v0

    const/4 v2, 0x6

    .line 1107
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1106
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->abortSendingSatelliteDatagrams(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 1108
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1111
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v3, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v4, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 1113
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/16 v7, 0x18

    const/4 v5, 0x3

    .line 1111
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1114
    iget-object v8, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v9, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v10, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1120
    iget-object v0, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1123
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V

    .line 1125
    iget v0, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v3, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v3, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    :goto_0
    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->abortSendingPendingDatagrams(II)V

    .line 1133
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist handleEventWaitForSimulatedPollDatagramsDelayTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V
    .locals 3

    .line 1180
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v0, :cond_0

    .line 1181
    const-string v0, "handleEventWaitForSimulatedPollDatagramsDelayTimedOut"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    iget-object v2, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/satellite/DatagramController;->pushDemoModeDatagram(ILandroid/telephony/satellite/SatelliteDatagram;)V

    .line 1183
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$1;-><init>(Lcom/android/internal/telephony/satellite/DatagramDispatcher;)V

    .line 1189
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/satellite/DatagramController;->pollPendingSatelliteDatagrams(ILjava/util/function/Consumer;)V

    return-void

    .line 1191
    :cond_0
    const-string p1, "Unexpected EVENT_WAIT_FOR_SIMULATED_POLL_DATAGRAMS_DELAY_TIMED_OUT in non-demo mode"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isEnabledMtSmsPolling()Z
    .locals 1

    .line 1441
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101a8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private blacklist isSatelliteAlignedTimerStarted()Z
    .locals 1

    const/4 v0, 0x3

    .line 621
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 1583
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 1587
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)Lcom/android/internal/telephony/satellite/DatagramDispatcher;
    .locals 1

    .line 185
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    .line 188
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    return-object p0
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .locals 1

    .line 1593
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 1595
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .locals 1

    .line 1607
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 1609
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist plogw(Ljava/lang/String;)V
    .locals 1

    .line 1600
    const-string v0, "DatagramDispatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 1602
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V
    .locals 8

    .line 826
    iget-wide v0, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    sub-long/2addr v0, v4

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 829
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-nez v4, :cond_3

    .line 830
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    invoke-direct {v4}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;-><init>()V

    const/4 v5, 0x1

    .line 831
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramDirection(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v4

    iget v6, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 832
    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramType(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v4

    .line 833
    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setResultCode(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v4

    .line 834
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->getDatagramRoundedSizeBytes()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramSizeBytes(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v4

    .line 835
    iget-wide v6, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    cmp-long v6, v6, v2

    if-lez v6, :cond_1

    .line 836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramStartTime:J

    sub-long/2addr v2, v6

    .line 835
    :cond_1
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v2

    .line 836
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->build()Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    .line 837
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->sendBigDataForSatelliteDatagram(Landroid/content/Context;)V

    .line 839
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteSessionStatusInfos()Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 840
    iget v3, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    if-ne v3, v5, :cond_3

    if-nez p2, :cond_2

    .line 842
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onSatelliteEmergencySosSent()V

    goto :goto_1

    .line 844
    :cond_2
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onSatelliteEmergencySosFail()V

    .line 849
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    invoke-direct {v3}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;-><init>()V

    iget v4, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 851
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setDatagramType(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v3

    .line 852
    invoke-virtual {v3, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setResultCode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v3

    .line 853
    invoke-virtual {p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->getDatagramRoundedSizeBytes()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setDatagramSizeBytes(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v3

    .line 856
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    .line 857
    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setIsDemoMode(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v3

    .line 858
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatelliteCarrierId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v3

    .line 859
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/satellite/SatelliteController;->isNtnOnlyCarrier()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;

    move-result-object v3

    .line 860
    invoke-virtual {v3}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;

    move-result-object v3

    .line 849
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteOutgoingDatagramMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;)V

    if-nez p2, :cond_4

    .line 862
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    iget v2, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    iget-boolean v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {p2, v2, v3}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramSuccessCount(IZ)V

    .line 864
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfSuccessfulOutgoingDatagram(IJ)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramFailCount(IZ)V

    .line 869
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    iget p1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfFailedOutgoingDatagram(II)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void
.end method

.method private blacklist reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V
    .locals 6

    .line 803
    iget-boolean v0, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const/4 v1, 0x0

    if-nez p2, :cond_2

    .line 811
    iget-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsStartTimeMap:Ljava/util/LinkedHashMap;

    iget-wide v2, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsStartTimeMap:Ljava/util/LinkedHashMap;

    iget-wide v4, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long v4, v2, p1

    .line 814
    :cond_1
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramSuccessCount(IZ)V

    .line 815
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {p0, v0, v4, v5}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfSuccessfulOutgoingDatagram(IJ)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void

    .line 818
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mControllerMetricsStats:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->reportOutgoingDatagramFailCount(IZ)V

    .line 819
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSessionMetricsStats:Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;->addCountOfFailedOutgoingDatagram(II)Lcom/android/internal/telephony/satellite/metrics/SessionMetricsStats;

    return-void
.end method

.method private blacklist sendErrorCodeAndCleanupPendingDatagrams(Ljava/util/LinkedHashMap;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;",
            ">;I)V"
        }
    .end annotation

    .line 705
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 708
    :cond_0
    const-string v0, "sendErrorCodeAndCleanupPendingDatagrams: cleaning up resources"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 713
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 714
    invoke-direct {p0, v1, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V

    .line 715
    iget-object v1, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private blacklist sendErrorCodeAndCleanupPendingSms(Ljava/util/LinkedHashMap;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;",
            ">;I)V"
        }
    .end annotation

    .line 1321
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    const-string p1, "sendErrorCodeAndCleanupPendingSms: pendingSmsMap is empty."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 1325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendErrorCodeAndCleanupPendingSms: cleaning up resources. pendingSmsMap size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 1328
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1330
    const-string p2, "sendErrorCodeAndCleanupPendingSms: satellitePhone is null."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    .line 1336
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1338
    const-string p2, "sendErrorCodeAndCleanupPendingSms: smsDispatchersController is null."

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    .line 1344
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1345
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1346
    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/SmsDispatchersController;->onSendCarrierRoamingNbIotNtnTextError(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    .line 1348
    invoke-direct {p0, v2, p2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendSmsCompleted(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;I)V

    .line 1353
    iget-boolean v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-nez v3, :cond_3

    .line 1354
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsStartTimeMap:Ljava/util/LinkedHashMap;

    iget-wide v4, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1355
    new-instance v4, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    invoke-direct {v4}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;-><init>()V

    const/4 v5, 0x1

    .line 1356
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramDirection(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v4

    .line 1357
    iget-boolean v5, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x7

    goto :goto_1

    :cond_4
    const/4 v5, 0x6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramType(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v4

    .line 1359
    invoke-virtual {v4, p2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setResultCode(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v4

    .line 1360
    iget-object v2, v2, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->texts:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    .line 1361
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda3;-><init>()V

    .line 1362
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v5, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda4;-><init>()V

    .line 1363
    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    .line 1364
    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    .line 1360
    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramSizeBytes(I)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v2

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_6

    .line 1365
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_6

    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1365
    :cond_6
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->setDatagramTransferTimeMillis(J)Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;

    move-result-object v2

    .line 1366
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos$Builder;->build()Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    .line 1367
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteDatagramInfos;->sendBigDataForSatelliteDatagram(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1370
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsStartTimeMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1374
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private blacklist sendPendingDatagrams()V
    .locals 9

    .line 651
    const-string v0, "sendPendingDatagrams()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    const-string v0, "sendPendingDatagrams: modem is receiving datagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 658
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingDatagramCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 659
    const-string v0, "sendPendingDatagrams: no pending datagrams to send"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 663
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 665
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 666
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    .line 667
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    .line 671
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 673
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 674
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v3, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 675
    const-string v0, "sendPendingDatagrams: wait for satellite connected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 676
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v3, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v4, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v6

    const/4 v7, 0x0

    const/16 v5, 0x8

    .line 676
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 681
    iget v0, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    return-void

    :cond_4
    const/4 v2, 0x1

    .line 686
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 688
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v4, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 690
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 688
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 691
    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    :cond_5
    return-void
.end method

.method private blacklist sendPendingMessages()V
    .locals 1

    .line 630
    const-string v0, "sendPendingMessages"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingDatagramCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 634
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingDatagrams()V

    return-void

    .line 639
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 640
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingSms()V

    :cond_1
    return-void
.end method

.method private blacklist sendPendingSms()V
    .locals 7

    .line 1263
    const-string v0, "sendPendingSms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1266
    const-string v0, "sendPendingSms: modem is receiving datagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 1270
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    .line 1272
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 1276
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1277
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1278
    iget-boolean v1, v0, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1280
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1281
    const-string v0, "sendPendingSms: wait for satellite connected"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    move v3, v1

    .line 1282
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1285
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 1282
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1287
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    return-void

    :cond_3
    move v3, v1

    const/4 v1, 0x1

    .line 1291
    iput-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1292
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1295
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1292
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 v1, 0x8

    .line 1296
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1298
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPendingSms: mSendingInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pendingSmsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 795
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    .line 797
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 798
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private blacklist shouldPollMtSms()Z
    .locals 2

    .line 1450
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    .line 1451
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1452
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isEnabledMtSmsPolling()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1453
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist shouldProcessEventSendSatelliteDatagramDone(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)Z
    .locals 3

    .line 1090
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1091
    :try_start_0
    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1094
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1096
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist shouldSendDatagramToModemInDemoMode()Z
    .locals 3

    .line 1061
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0

    .line 1066
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mContext:Landroid/content/Context;

    .line 1067
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111023c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1069
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldSendDatagramToModemInDemoMode: id= 17891900, ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist startDatagramWaitForConnectedStateTimer(I)V
    .locals 3

    .line 991
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isDatagramWaitForConnectedStateTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    const-string p1, "DatagramWaitForConnectedStateTimer is already started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 996
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    .line 995
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 998
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isLastSosMessage(I)Z

    move-result p1

    .line 997
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->getDatagramWaitTimeForConnectedState(Z)J

    move-result-wide v1

    .line 995
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startMtSmsPollingThrottle()V
    .locals 3

    .line 1508
    const-string v0, "startMtSmsPollingThrottle"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1514
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v0

    .line 1515
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1516
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1518
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getMtSmsPollingThrottleMillis()J

    move-result-wide v1

    .line 1516
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startSatelliteAlignedTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V
    .locals 2

    .line 573
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isSatelliteAlignedTimerStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string p1, "Satellite aligned timer was already started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 577
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendSatelliteDatagramRequest:Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    const/4 v0, 0x3

    .line 579
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getSatelliteAlignedTimeoutDuration()J

    move-result-wide v0

    .line 578
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startWaitForDatagramSendingResponseTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V
    .locals 5

    const/4 v0, 0x5

    .line 1023
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1024
    const-string p1, "WaitForDatagramSendingResponseTimer was already started"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void

    .line 1027
    :cond_0
    iget v1, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isLastSosMessage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingForLastMessageResponse:J

    goto :goto_0

    .line 1029
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    .line 1030
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startWaitForDatagramSendingResponseTimer: datagramType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", waitTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->logd(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist startWaitForSimulatedPollDatagramsDelayTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V
    .locals 2

    .line 1164
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v0, :cond_0

    .line 1165
    const-string v0, "startWaitForSimulatedPollDatagramsDelayTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 1167
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1168
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getDemoTimeoutDuration()J

    move-result-wide v0

    .line 1166
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1170
    :cond_0
    const-string p1, "Should not start WaitForSimulatedPollDatagramsDelayTimer in non-demo mode"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist stopDatagramWaitForConnectedStateTimer()V
    .locals 1

    const/4 v0, 0x4

    .line 1002
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopSatelliteAlignedTimer()V
    .locals 1

    const/4 v0, 0x3

    .line 625
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopWaitForDatagramSendingResponseTimer()V
    .locals 1

    const/4 v0, 0x5

    .line 1037
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private blacklist stopWaitForSimulatedPollDatagramsDelayTimer()V
    .locals 1

    const/4 v0, 0x7

    .line 1175
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 0

    const/4 p0, 0x0

    .line 879
    sput-object p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sInstance:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    return-void
.end method

.method blacklist getDemoTimeoutDuration()J
    .locals 2

    .line 1197
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    return-wide v0
.end method

.method public blacklist getPendingDatagramCount()I
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 758
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPendingMessagesCount()I
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingDatagramCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingSmsCount()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    .line 748
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPendingSmsCount()I
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 767
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 768
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getPendingUserMessagesCount()I
    .locals 5

    .line 773
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 777
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 778
    iget v3, v3, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 782
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    add-int/2addr v2, p0

    .line 783
    monitor-exit v0

    return v2

    .line 784
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist getSatelliteAlignedTimeoutDuration()J
    .locals 2

    .line 585
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getSatelliteAlignedTimeoutDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 289
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 479
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DatagramDispatcherHandler: unexpected message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    return-void

    .line 473
    :pswitch_1
    const-string v1, "CMD_SEND_MT_SMS_POLLING_MESSAGE"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 474
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleCmdSendMtSmsPollingMessage()V

    return-void

    .line 450
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 452
    iget-object v2, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 457
    :try_start_0
    iget-object v4, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsMtSmsPollingThrottled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 459
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 465
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowMtSmsPolling()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    .line 467
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 459
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 436
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SomeArgs;

    .line 437
    iget-object v2, v1, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 438
    iget-object v3, v1, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 439
    iget-object v5, v1, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 441
    :try_start_2
    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventSendSmsDone(IJZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 443
    invoke-virtual {v1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/android/internal/telephony/SomeArgs;->recycle()V

    .line 444
    throw v0

    .line 413
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 414
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSatellitePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_1

    .line 416
    const-string v1, "CMD_SEND_SMS: satellitePhone is null."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 421
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSmsDispatchersController()Lcom/android/internal/telephony/SmsDispatchersController;

    move-result-object v2

    if-nez v2, :cond_2

    .line 423
    const-string v1, "CMD_SEND_SMS: smsDispatchersController is null."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->ploge(Ljava/lang/String;)V

    return-void

    .line 428
    :cond_2
    iget-object v0, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSmsStartTimeMap:Ljava/util/LinkedHashMap;

    iget-wide v3, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SmsDispatchersController;->sendCarrierRoamingNbIotNtnText(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V

    return-void

    .line 407
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 408
    iget-object v1, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventWaitForSimulatedPollDatagramsDelayTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V

    return-void

    .line 393
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventWaitForDatagramSendingResponseTimedOut(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V

    return-void

    .line 403
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventDatagramWaitForConnectedStateTimedOut(I)V

    return-void

    .line 398
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventSatelliteAlignedTimeout(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V

    return-void

    .line 315
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 316
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 317
    const-string v4, "sendDatagram"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getSatelliteError(Landroid/os/AsyncResult;Ljava/lang/String;)I

    move-result v10

    .line 318
    iget-object v1, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 321
    iget-object v4, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 322
    :try_start_3
    iget-boolean v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v5, :cond_4

    if-nez v10, :cond_4

    .line 323
    iget-boolean v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->skipCheckingSatelliteAligned:Z

    if-eqz v5, :cond_3

    .line 324
    const-string v5, "Satellite was already aligned. No need to check alignment again"

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    goto :goto_0

    :catchall_2
    move-exception v0

    goto/16 :goto_4

    .line 326
    :cond_3
    iget-object v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget-boolean v6, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/satellite/DatagramController;->waitForAligningToSatellite(Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 327
    const-string v1, "Satellite is not aligned in demo mode, wait for the alignment."

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 328
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startSatelliteAlignedTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V

    .line 329
    monitor-exit v4

    return-void

    .line 332
    :cond_4
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_SEND_SATELLITE_DATAGRAM_DONE error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mIsDemoMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 342
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldProcessEventSendSatelliteDatagramDone(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " was already processed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogw(Ljava/lang/String;)V

    .line 344
    monitor-exit v4

    return-void

    .line 347
    :cond_5
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopWaitForDatagramSendingResponseTimer()V

    .line 348
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 351
    invoke-direct {v0, v1, v10}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->reportSendDatagramCompleted(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;I)V

    .line 353
    iget v3, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-static {v3}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 354
    iget-object v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v10, :cond_7

    const/4 v3, 0x1

    .line 356
    iput-boolean v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    goto :goto_1

    .line 359
    :cond_6
    iget-object v3, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    iget-wide v5, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    if-nez v10, :cond_8

    .line 364
    iget-object v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v6, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v7, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 366
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v8, 0x2

    .line 364
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 367
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startWaitForSimulatedPollDatagramsDelayTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;)V

    goto :goto_2

    .line 370
    :cond_8
    iget-object v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v6, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v7, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 372
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v9

    const/4 v8, 0x3

    .line 370
    invoke-virtual/range {v5 .. v10}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 375
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 377
    iget-object v1, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 379
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    goto :goto_3

    .line 381
    :cond_9
    iget-object v11, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    iget v12, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->subId:I

    iget v13, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 386
    iget-object v0, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->callback:Ljava/util/function/Consumer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 388
    :goto_3
    monitor-exit v4

    return-void

    :goto_4
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 291
    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CMD_SEND_SATELLITE_DATAGRAM mIsDemoMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", shouldSendDatagramToModemInDemoMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldSendDatagramToModemInDemoMode()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 294
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;

    .line 295
    iget-object v2, v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 297
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->setDatagramStartTime()V

    const/4 v4, 0x2

    .line 298
    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 300
    iget-object v4, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 301
    :try_start_4
    iget-boolean v5, v0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz v5, :cond_a

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldSendDatagramToModemInDemoMode()Z

    move-result v5

    if-nez v5, :cond_a

    .line 302
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 303
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getDemoTimeoutDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_6

    .line 305
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteModemInterface;

    move-result-object v3

    iget-object v5, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagram:Landroid/telephony/satellite/SatelliteDatagram;

    iget v6, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    .line 307
    invoke-static {v6}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v6

    iget-boolean v7, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->needFullScreenPointingUI:Z

    .line 305
    invoke-virtual {v3, v5, v6, v7, v1}, Lcom/android/internal/telephony/satellite/SatelliteModemInterface;->sendSatelliteDatagram(Landroid/telephony/satellite/SatelliteDatagram;ZZLandroid/os/Message;)V

    .line 309
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startWaitForDatagramSendingResponseTimer(Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;)V

    .line 311
    :goto_5
    monitor-exit v4

    return-void

    :goto_6
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist isDatagramWaitForConnectedStateTimerStarted()Z
    .locals 1

    const/4 v0, 0x4

    .line 1007
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isEmergencyCommunicationEstablished()Z
    .locals 1

    .line 984
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_0
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsEmergencyCommunicationEstablished:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 986
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 890
    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mModemState:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 896
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 893
    :cond_1
    :goto_0
    const-string v1, "onSatelliteModemStateChanged: cleaning up resources"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 894
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->cleanUpResources()V

    .line 900
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v1

    const/4 v2, 0x7

    if-ne p1, v2, :cond_3

    .line 913
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isDatagramWaitForConnectedStateTimerStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 914
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->stopDatagramWaitForConnectedStateTimer()V

    .line 915
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    :cond_3
    const/4 v2, 0x6

    if-ne p1, v2, :cond_4

    .line 927
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldPollMtSms:Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->shouldPollMtSms()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 930
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowMtSmsPolling()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0xb

    .line 932
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    .line 930
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist onSendSmsDone(IJZ)V
    .locals 1

    .line 1310
    invoke-static {}, Lcom/android/internal/telephony/SomeArgs;->obtain()Lcom/android/internal/telephony/SomeArgs;

    move-result-object v0

    .line 1311
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1312
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1313
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 1314
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist retrySendingDatagrams()V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendPendingMessages()V

    .line 544
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist sendSatelliteDatagram(IILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/function/Consumer;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/telephony/satellite/SatelliteDatagram;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 503
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    .line 505
    sget-object v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mNextDatagramId:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndUpdate(Ljava/util/function/LongUnaryOperator;)J

    move-result-wide v3

    .line 507
    new-instance v1, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    move v2, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;-><init>(IJILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/function/Consumer;)V

    move-object v7, v1

    move-wide v1, v3

    .line 510
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 512
    iget-object v8, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 514
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 517
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 521
    const-string v1, "sendDatagram: wait for satellite connected"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 524
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/16 v4, 0x8

    move v2, p1

    move v3, p2

    .line 522
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 525
    iget v1, v7, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    goto :goto_1

    .line 526
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v10, 0x1

    .line 529
    iput-boolean v10, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 532
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    move v2, p1

    move v3, p2

    .line 530
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 533
    invoke-direct {p0, v10, v7, v9}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendRequestAsync(ILjava/lang/Object;Lcom/android/internal/telephony/Phone;)V

    goto :goto_1

    .line 535
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDatagram: mSendingInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPollingInIdleState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 536
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 538
    :goto_1
    monitor-exit v8

    return-void

    :goto_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist sendSms(Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;)V
    .locals 8

    .line 1228
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->startPointingUI()V

    .line 1230
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    .line 1231
    iget-wide v0, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->uniqueMessageId:J

    .line 1232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSms: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " messageId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1234
    iget-object v7, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1236
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    iget-boolean v0, p1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    .line 1239
    :goto_1
    iput v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLastSendRequestDatagramType:I

    .line 1241
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/satellite/DatagramController;->needsWaitingForSatelliteConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1242
    const-string p1, "sendSms: wait for satellite connected"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1243
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1245
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/16 v4, 0x8

    .line 1243
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    .line 1246
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->startDatagramWaitForConnectedStateTimer(I)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 1247
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1248
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    .line 1249
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1251
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getPendingMessagesCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1249
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/satellite/DatagramController;->updateSendStatus(IIIII)V

    const/16 v0, 0x8

    .line 1253
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1255
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendSms: mSendingInProgress="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mSendingInProgress:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPollingInIdleState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDatagramController:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 1256
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1255
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    .line 1258
    :goto_2
    monitor-exit v7

    return-void

    :goto_3
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist setDemoMode(Z)V
    .locals 1

    .line 553
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDemoMode: mIsDemoMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceAlignedWithSatellite: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsAligned:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 565
    iget-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->handleEventSatelliteAligned()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 566
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->allowMtSmsPolling()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xb

    .line 568
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    .line 566
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected blacklist setShouldSendDatagramToModemInDemoMode(Ljava/lang/Boolean;)V
    .locals 2

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setShouldSendDatagramToModemInDemoMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    .line 1148
    const-string v1, "null"

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1151
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_2

    .line 1154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1155
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mShouldSendDatagramToModemInDemoMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 1157
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method blacklist setTimeoutDatagramDelayInDemoMode(ZJ)V
    .locals 2

    .line 1204
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mIsDemoMode:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1208
    sget-object p2, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->TIMEOUT_DATAGRAM_DELAY_IN_DEMO_MODE:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    goto :goto_0

    .line 1210
    :cond_1
    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    .line 1212
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setTimeoutDatagramDelayInDemoMode "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mDemoTimeoutDuration:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " reset="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method blacklist setWaitTimeForDatagramSendingResponse(ZJ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1015
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->getWaitForDatagramSendingResponseTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    return-void

    .line 1017
    :cond_0
    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mWaitTimeForDatagramSendingResponse:J

    return-void
.end method

.method public blacklist updateSessionStatsWithPendingUserMsgCount(Landroid/telephony/satellite/SatelliteSessionStats;)V
    .locals 6

    .line 1614
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1615
    :try_start_0
    const-string v1, "SessionMetricsStats1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPendingEmergencyDatagramsMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 1617
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1615
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    const-string v1, "SessionMetricsStats1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPendingNonEmergencyDatagramsMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    .line 1619
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1618
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const-string v1, "SessionMetricsStats1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPendingSmsMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    .line 1621
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1620
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1624
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 1625
    const-string v3, "SessionMetricsStats1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataGramType1 =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    iget v2, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p1, v2}, Landroid/telephony/satellite/SatelliteSessionStats;->updateCountOfUserMessagesInQueueToBeSent(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    .line 1630
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingNonEmergencyDatagramsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1631
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;

    .line 1632
    const-string v3, "SessionMetricsStats1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataGramType2 =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    iget v2, v2, Lcom/android/internal/telephony/satellite/DatagramDispatcher$SendSatelliteDatagramArgument;->datagramType:I

    invoke-virtual {p1, v2}, Landroid/telephony/satellite/SatelliteSessionStats;->updateCountOfUserMessagesInQueueToBeSent(I)V

    goto :goto_1

    .line 1636
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->mPendingSmsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1637
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;

    .line 1638
    iget-boolean v1, v1, Lcom/android/internal/telephony/SmsDispatchersController$PendingRequest;->isMtSmsPolling:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    goto :goto_3

    :cond_2
    const/4 v1, 0x6

    .line 1640
    :goto_3
    const-string v2, "SessionMetricsStats1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataGramType3 =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    invoke-virtual {p1, v1}, Landroid/telephony/satellite/SatelliteSessionStats;->updateCountOfUserMessagesInQueueToBeSent(I)V

    goto :goto_2

    .line 1643
    :cond_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
