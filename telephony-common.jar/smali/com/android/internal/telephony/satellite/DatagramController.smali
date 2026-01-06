.class public Lcom/android/internal/telephony/satellite/DatagramController;
.super Ljava/lang/Object;
.source "DatagramController.java"


# static fields
.field public static final blacklist BOOLEAN_TYPE_WAIT_FOR_DEVICE_ALIGNMENT_IN_DEMO_DATAGRAM:I = 0x1

.field private static final blacklist DEBUG:Z

.field public static final blacklist MAX_DATAGRAM_ID:J

.field public static final blacklist ROUNDING_UNIT:I = 0xa

.field public static final blacklist SATELLITE_ALIGN_TIMEOUT:J

.field public static final blacklist TIMEOUT_TYPE_ALIGN:I = 0x1

.field public static final blacklist TIMEOUT_TYPE_DATAGRAM_DELAY_IN_DEMO_MODE:I = 0x4

.field public static final blacklist TIMEOUT_TYPE_DATAGRAM_WAIT_FOR_CONNECTED_STATE:I = 0x2

.field public static final blacklist TIMEOUT_TYPE_WAIT_FOR_DATAGRAM_SENDING_RESPONSE:I = 0x3

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/DatagramController;


# instance fields
.field private blacklist mAlignTimeoutDuration:J

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

.field private final blacklist mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

.field private blacklist mDatagramType:I

.field private blacklist mDatagramWaitTimeForConnectedState:J

.field private blacklist mDatagramWaitTimeForConnectedStateForLastMessage:J

.field private final blacklist mDemoModeDatagramList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteDatagram;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIsDemoMode:Z

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mModemImageSwitchingDuration:J

.field private blacklist mPersistentLogger:Landroid/telephony/PersistentLogger;

.field private final blacklist mPointingAppController:Lcom/android/internal/telephony/satellite/PointingAppController;

.field private blacklist mReceiveDatagramTransferState:I

.field private blacklist mReceiveErrorCode:I

.field private blacklist mReceivePendingCount:I

.field private blacklist mReceiveSubId:I

.field private blacklist mSatelltieModemState:I

.field private blacklist mSendDatagramTransferState:I

.field private blacklist mSendErrorCode:I

.field private blacklist mSendPendingCount:I

.field private blacklist mSendSubId:I

.field private blacklist mWaitForDeviceAlignmentInDemoDatagram:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mplogd(Lcom/android/internal/telephony/satellite/DatagramController;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    .line 66
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/android/internal/telephony/satellite/DatagramController;->MAX_DATAGRAM_ID:J

    .line 68
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/satellite/DatagramController;->SATELLITE_ALIGN_TIMEOUT:J

    .line 80
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/satellite/DatagramController;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/PointingAppController;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramType:I

    .line 88
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendDatagramTransferState:I

    .line 91
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendPendingCount:I

    .line 93
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendErrorCode:I

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveDatagramTransferState:I

    .line 101
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceivePendingCount:I

    .line 103
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveErrorCode:I

    .line 107
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mIsDemoMode:Z

    .line 108
    sget-wide v0, Lcom/android/internal/telephony/satellite/DatagramController;->SATELLITE_ALIGN_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mAlignTimeoutDuration:J

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    .line 161
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mContext:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 163
    iput-object p4, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPointingAppController:Lcom/android/internal/telephony/satellite/PointingAppController;

    .line 167
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move-result-object p4

    iput-object p4, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    .line 172
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/DatagramController;)Lcom/android/internal/telephony/satellite/DatagramReceiver;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    .line 175
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getDatagramWaitForConnectedStateTimeoutMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramWaitTimeForConnectedState:J

    .line 176
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getSatelliteModemImageSwitchingDurationMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mModemImageSwitchingDuration:J

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getWaitForDeviceAlignmentInDemoDatagramFromResources()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mWaitForDeviceAlignmentInDemoDatagram:Z

    .line 180
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getDatagramWaitForConnectedStateForLastMessageTimeoutMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramWaitTimeForConnectedStateForLastMessage:J

    .line 181
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDemoModeDatagramList:Ljava/util/List;

    .line 182
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->getPersistentLogger(Landroid/content/Context;)Landroid/telephony/PersistentLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    return-void
.end method

.method private blacklist getDatagramWaitForConnectedStateForLastMessageTimeoutMillis()J
    .locals 2

    .line 617
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e006d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getDatagramWaitForConnectedStateTimeoutMillis()J
    .locals 2

    .line 607
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e006e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/DatagramController;
    .locals 1

    .line 123
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramController;->sInstance:Lcom/android/internal/telephony/satellite/DatagramController;

    if-nez v0, :cond_0

    .line 124
    const-string v0, "DatagramController was not yet initialized."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->loge(Ljava/lang/String;)V

    .line 126
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramController;->sInstance:Lcom/android/internal/telephony/satellite/DatagramController;

    return-object v0
.end method

.method private blacklist getSatelliteModemImageSwitchingDurationMillis()J
    .locals 2

    .line 612
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e014d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private blacklist getWaitForDeviceAlignmentInDemoDatagram()Z
    .locals 0

    .line 669
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mWaitForDeviceAlignmentInDemoDatagram:Z

    return p0
.end method

.method private blacklist getWaitForDeviceAlignmentInDemoDatagramFromResources()Z
    .locals 2

    .line 675
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11102b4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWaitForDeviceAlignmentInDemoDatagram: ex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isMockModemAllowed()Z
    .locals 1

    .line 590
    sget-boolean p0, Lcom/android/internal/telephony/satellite/DatagramController;->DEBUG:Z

    if-nez p0, :cond_1

    const-string p0, "persist.radio.allow_mock_modem"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 685
    const-string v0, "DatagramController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 689
    const-string v0, "DatagramController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/PointingAppController;)Lcom/android/internal/telephony/satellite/DatagramController;
    .locals 1

    .line 141
    sget-object v0, Lcom/android/internal/telephony/satellite/DatagramController;->sInstance:Lcom/android/internal/telephony/satellite/DatagramController;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/android/internal/telephony/satellite/DatagramController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/satellite/DatagramController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/satellite/PointingAppController;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/DatagramController;->sInstance:Lcom/android/internal/telephony/satellite/DatagramController;

    .line 145
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/satellite/DatagramController;->sInstance:Lcom/android/internal/telephony/satellite/DatagramController;

    return-object p0
.end method

.method private blacklist notifyDatagramTransferStateChangedToSessionController(I)V
    .locals 3

    .line 594
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteSessionController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 596
    const-string p1, "notifyDatagramTransferStateChangeToSessionController: SatelliteSessionController is not initialized yet"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->ploge(Ljava/lang/String;)V

    return-void

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendDatagramTransferState:I

    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveDatagramTransferState:I

    invoke-virtual {v0, v2, p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionController;->onDatagramTransferStateChanged(III)V

    .line 602
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist plogd(Ljava/lang/String;)V
    .locals 1

    .line 693
    const-string v0, "DatagramController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 695
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist ploge(Ljava/lang/String;)V
    .locals 1

    .line 700
    const-string v0, "DatagramController"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPersistentLogger:Landroid/telephony/PersistentLogger;

    if-eqz p0, :cond_0

    .line 702
    invoke-virtual {p0, v0, p1}, Landroid/telephony/PersistentLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private blacklist retryPollPendingDatagramsInDemoMode()V
    .locals 3

    .line 634
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mIsDemoMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->isSendingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDemoModeDatagramList:Ljava/util/List;

    .line 636
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    new-instance v1, Lcom/android/internal/telephony/satellite/DatagramController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/DatagramController$1;-><init>(Lcom/android/internal/telephony/satellite/DatagramController;)V

    .line 646
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->getSelectedSatelliteSubId()I

    move-result v2

    .line 645
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/satellite/DatagramController;->pollPendingSatelliteDatagrams(ILjava/util/function/Consumer;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 649
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist shouldSuppressDatagramTransferStateUpdate(I)Z
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteAttachRequired()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 292
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 294
    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    const/4 p1, 0x6

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    .line 296
    monitor-exit v0

    return p0

    .line 298
    :cond_1
    monitor-exit v0

    return v2

    .line 299
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist getDatagramWaitTimeForConnectedState(Z)J
    .locals 5

    .line 505
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 506
    :try_start_0
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramWaitTimeForConnectedStateForLastMessage:J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 507
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramWaitTimeForConnectedState:J

    .line 508
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDatagramWaitTimeForConnectedState: isLastSosMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", timeout="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", modemState="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/DatagramController;->logd(Ljava/lang/String;)V

    .line 510
    iget p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    .line 514
    :cond_1
    monitor-exit v0

    return-wide v1

    .line 512
    :cond_2
    :goto_1
    iget-wide p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mModemImageSwitchingDuration:J

    add-long/2addr v1, p0

    monitor-exit v0

    return-wide v1

    .line 515
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist getReceivePendingCount()I
    .locals 0

    .line 342
    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceivePendingCount:I

    return p0
.end method

.method blacklist getSatelliteAlignedTimeoutDuration()J
    .locals 2

    .line 500
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mAlignTimeoutDuration:J

    return-wide v0
.end method

.method public blacklist isEmergencyCommunicationEstablished()Z
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->isEmergencyCommunicationEstablished()Z

    move-result p0

    return p0
.end method

.method public blacklist isPollingInIdleState()Z
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_0
    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveDatagramTransferState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 446
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isReceivingDatagrams()Z
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveDatagramTransferState:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 400
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isSendingInIdleState()Z
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendDatagramTransferState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 439
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist needsWaitingForSatelliteConnected(I)Z
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteController;->isSatelliteAttachRequired()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 412
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const/4 v3, 0x6

    if-ne p1, v1, :cond_1

    .line 414
    iget v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    if-ne v1, v3, :cond_1

    .line 416
    monitor-exit v0

    return v2

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mContext:Landroid/content/Context;

    .line 419
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x1110233

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v4, 0x7

    if-ne p1, v4, :cond_2

    .line 421
    iget p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    if-ne p1, v3, :cond_2

    if-eqz v1, :cond_2

    .line 425
    monitor-exit v0

    return v2

    .line 427
    :cond_2
    iget p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    if-eq p0, v4, :cond_3

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p0, 0x1

    .line 429
    monitor-exit v0

    return p0

    .line 431
    :cond_3
    monitor-exit v0

    return v2

    .line 432
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist onSatelliteModemStateChanged(I)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iput p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSatelltieModemState:I

    .line 360
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->onSatelliteModemStateChanged(I)V

    .line 362
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->onSatelliteModemStateChanged(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 360
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist onSmsReceived(I)V
    .locals 12

    .line 374
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x4

    move-object v0, p0

    move v1, p1

    .line 372
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    move-object v6, v0

    move v7, v1

    .line 377
    invoke-virtual {v6}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v10

    const/4 v11, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x5

    .line 375
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    .line 380
    invoke-virtual {v6}, Lcom/android/internal/telephony/satellite/DatagramController;->getReceivePendingCount()I

    move-result v10

    const/4 v9, 0x0

    .line 378
    invoke-virtual/range {v6 .. v11}, Lcom/android/internal/telephony/satellite/DatagramController;->updateReceiveStatus(IIIII)V

    return-void
.end method

.method public blacklist pollPendingSatelliteDatagrams(ILjava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 223
    const-string v0, "pollPendingSatelliteDatagrams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    .line 224
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->pollPendingSatelliteDatagrams(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public blacklist popDemoModeDatagram()Landroid/telephony/satellite/SatelliteDatagram;
    .locals 3

    .line 471
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mIsDemoMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 476
    :try_start_0
    const-string v2, "popDemoModeDatagram"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDemoModeDatagramList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDemoModeDatagramList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/telephony/satellite/SatelliteDatagram;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    .line 478
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist pushDemoModeDatagram(ILandroid/telephony/satellite/SatelliteDatagram;)V
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mIsDemoMode:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDemoModeDatagramList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pushDemoModeDatagram size="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDemoModeDatagramList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    .line 495
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public blacklist registerForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)I
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->registerForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)I

    move-result p0

    return p0
.end method

.method public blacklist sendSatelliteDatagram(IILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/function/Consumer;)V
    .locals 6
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

    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->sendSatelliteDatagram(IILandroid/telephony/satellite/SatelliteDatagram;ZLjava/util/function/Consumer;)V

    .line 251
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPointingAppController:Lcom/android/internal/telephony/satellite/PointingAppController;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/satellite/PointingAppController;->onSendDatagramRequested(II)V

    return-void
.end method

.method blacklist setDatagramControllerBooleanConfig(ZIZ)Z
    .locals 3

    .line 568
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->isMockModemAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 569
    const-string p0, "Updating boolean config is not allowed"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->loge(Ljava/lang/String;)V

    return v1

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDatagramControllerTimeoutDuration: booleanType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/DatagramController;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_1

    .line 578
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getWaitForDeviceAlignmentInDemoDatagramFromResources()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mWaitForDeviceAlignmentInDemoDatagram:Z

    goto :goto_0

    .line 580
    :cond_1
    iput-boolean p3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mWaitForDeviceAlignmentInDemoDatagram:Z

    :goto_0
    return v0

    .line 583
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid boolean type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->loge(Ljava/lang/String;)V

    return v1
.end method

.method blacklist setDatagramControllerTimeoutDuration(ZIJ)Z
    .locals 3

    .line 526
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->isMockModemAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 527
    const-string p1, "Updating timeout duration is not allowed"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->ploge(Ljava/lang/String;)V

    return v1

    .line 531
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDatagramControllerTimeoutDuration: timeoutMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", timeoutType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_1

    .line 535
    sget-wide p1, Lcom/android/internal/telephony/satellite/DatagramController;->SATELLITE_ALIGN_TIMEOUT:J

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mAlignTimeoutDuration:J

    goto :goto_0

    .line 537
    :cond_1
    iput-wide p3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mAlignTimeoutDuration:J

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    if-eqz p1, :cond_3

    .line 542
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getDatagramWaitForConnectedStateTimeoutMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramWaitTimeForConnectedState:J

    .line 543
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getSatelliteModemImageSwitchingDurationMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mModemImageSwitchingDuration:J

    goto :goto_0

    .line 545
    :cond_3
    iput-wide p3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramWaitTimeForConnectedState:J

    const-wide/16 p1, 0x0

    .line 546
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mModemImageSwitchingDuration:J

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    .line 549
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->setWaitTimeForDatagramSendingResponse(ZJ)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x4

    if-ne p2, v2, :cond_6

    .line 551
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->setTimeoutDatagramDelayInDemoMode(ZJ)V

    :goto_0
    return v0

    .line 553
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid timeout type "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->ploge(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist setDemoMode(Z)V
    .locals 1

    .line 455
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mIsDemoMode:Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->setDemoMode(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->setDemoMode(Z)V

    if-nez p1, :cond_0

    .line 460
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDemoModeDatagramList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 463
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->setDeviceAlignedWithSatellite(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 462
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 465
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDemoMode: mIsDemoMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mIsDemoMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setDeviceAlignedWithSatellite(Z)V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->setDeviceAlignedWithSatellite(Z)V

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->setDeviceAlignedWithSatellite(Z)V

    if-eqz p1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->retryPollPendingDatagramsInDemoMode()V

    :cond_0
    return-void
.end method

.method blacklist setShouldSendDatagramToModemInDemoMode(Z)V
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->setShouldSendDatagramToModemInDemoMode(Ljava/lang/Boolean;)V

    return-void
.end method

.method public blacklist unregisterForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramReceiver:Lcom/android/internal/telephony/satellite/DatagramReceiver;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/satellite/DatagramReceiver;->unregisterForSatelliteDatagram(ILandroid/telephony/satellite/ISatelliteDatagramCallback;)V

    return-void
.end method

.method public blacklist updateReceiveStatus(IIIII)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateReceiveStatus subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " datagramType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " datagramTransferState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " receivePendingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    .line 320
    iput p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveSubId:I

    .line 321
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramType:I

    .line 322
    iput p3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveDatagramTransferState:I

    .line 323
    iput p4, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceivePendingCount:I

    .line 324
    iput p5, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveErrorCode:I

    .line 326
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramController;->notifyDatagramTransferStateChangedToSessionController(I)V

    .line 327
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPointingAppController:Lcom/android/internal/telephony/satellite/PointingAppController;

    iget p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveSubId:I

    iget p3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveDatagramTransferState:I

    iget p4, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceivePendingCount:I

    iget p5, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mReceiveErrorCode:I

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/internal/telephony/satellite/PointingAppController;->updateReceiveDatagramTransferState(IIII)V

    .line 329
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->retryPollPendingDatagramsInDemoMode()V

    .line 330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->isPollingInIdleState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 333
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramDispatcher:Lcom/android/internal/telephony/satellite/DatagramDispatcher;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/DatagramDispatcher;->retrySendingDatagrams()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 330
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist updateSendStatus(IIIII)V
    .locals 8

    .line 265
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSendStatus subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " datagramType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " datagramTransferState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sendPendingCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    .line 271
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramController;->shouldSuppressDatagramTransferStateUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    const-string p1, "Ignore the request to update send status"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/DatagramController;->plogd(Ljava/lang/String;)V

    .line 273
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 276
    :cond_0
    iput p1, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendSubId:I

    .line 277
    iput p2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramType:I

    .line 278
    iput p3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendDatagramTransferState:I

    .line 279
    iput p4, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendPendingCount:I

    .line 280
    iput p5, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendErrorCode:I

    .line 281
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/satellite/DatagramController;->notifyDatagramTransferStateChangedToSessionController(I)V

    .line 282
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mPointingAppController:Lcom/android/internal/telephony/satellite/PointingAppController;

    iget v3, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendSubId:I

    iget v4, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mDatagramType:I

    iget v5, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendDatagramTransferState:I

    iget v6, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendPendingCount:I

    iget v7, p0, Lcom/android/internal/telephony/satellite/DatagramController;->mSendErrorCode:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/satellite/PointingAppController;->updateSendDatagramTransferState(IIIII)V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->retryPollPendingDatagramsInDemoMode()V

    .line 285
    monitor-exit v1

    return-void

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist waitForAligningToSatellite(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 665
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/DatagramController;->getWaitForDeviceAlignmentInDemoDatagram()Z

    move-result p0

    return p0
.end method
