.class public Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;
.super Ljava/lang/Object;
.source "DataStallRecoveryStats.java"


# static fields
.field private static final blacklist INLINE_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final blacklist REFRESH_DURATION_IN_MILLIS:J


# instance fields
.field private blacklist mBand:I

.field private blacklist mCarrierId:I

.field private blacklist mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

.field private blacklist mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

.field private blacklist mConvertedMccMnc:I

.field private blacklist mDnsConsecutiveTimeouts:I

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIfaceName:Ljava/lang/String;

.field private blacklist mInternetLinkStatus:I

.field private blacklist mIsMultiSim:Z

.field private blacklist mIsOpportunistic:Z

.field private blacklist mLinkDownBandwidthKbps:I

.field private blacklist mLinkUpBandwidthKbps:I

.field private blacklist mMetricsReflashTime:J

.field private blacklist mNetworkProbesResult:I

.field private blacklist mNetworkProbesType:I

.field private blacklist mNetworkRegState:I

.field private blacklist mNetworkValidationResult:I

.field private blacklist mOtherNetworkRegState:I

.field private blacklist mOtherSignalStrength:I

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPhoneId:I

.field private blacklist mRat:I

.field private blacklist mSignalStrength:I

.field private final blacklist mTag:Ljava/lang/String;

.field private blacklist mTcpMetricsCollectionPeriodMillis:I

.field private blacklist mTcpPacketFailRate:I

.field private final blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$aoGCXJeyDX1zB04MCobYr77fYZ8(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;IZIIZI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->lambda$uploadMetrics$1(IZIIZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nLTFX4c0EwxODovRRzhHn5_Exew(Ljava/lang/Runnable;)V
    .locals 0

    .line 142
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDnsConsecutiveTimeouts(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mDnsConsecutiveTimeouts:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkValidationResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkValidationResult:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTcpPacketFailRate(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpPacketFailRate:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDnsConsecutiveTimeouts(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mDnsConsecutiveTimeouts:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIfaceName(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInternetLinkStatus(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkProbesResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesResult:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkProbesType(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkValidationResult(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkValidationResult:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTcpMetricsCollectionPeriodMillis(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpMetricsCollectionPeriodMillis:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTcpPacketFailRate(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpPacketFailRate:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendDataStallInfo(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->sendDataStallInfo()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 93
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->REFRESH_DURATION_IN_MILLIS:J

    .line 142
    new-instance v0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->INLINE_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 4

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 108
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mMetricsReflashTime:J

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    const/4 v2, -0x1

    .line 111
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    .line 112
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    .line 113
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    .line 114
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    .line 116
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    .line 117
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    .line 119
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    .line 122
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    .line 123
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    .line 126
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    .line 129
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    .line 130
    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    .line 133
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesResult:I

    .line 134
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesType:I

    .line 135
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkValidationResult:I

    .line 136
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpMetricsCollectionPeriodMillis:I

    .line 137
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpPacketFailRate:I

    .line 138
    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mDnsConsecutiveTimeouts:I

    .line 140
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 141
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DSRS-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 153
    iput-object p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 158
    new-instance p2, Landroid/os/HandlerThread;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-thread"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 160
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mHandler:Landroid/os/Handler;

    .line 163
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 165
    new-instance p2, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;

    .line 166
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/NetworkTypeController$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    invoke-direct {p2, p0, v3}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$1;-><init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;Ljava/util/concurrent/Executor;)V

    .line 165
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 186
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/ConnectivityDiagnosticsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityDiagnosticsManager;

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 187
    new-instance p1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$2;-><init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;)V

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 212
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 214
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    const/16 p3, 0xc

    .line 215
    invoke-virtual {p2, p3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 216
    invoke-virtual {p2, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 217
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    sget-object p3, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->INLINE_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    .line 212
    invoke-virtual {p1, p2, p3, v1}, Landroid/net/ConnectivityDiagnosticsManager;->registerConnectivityDiagnosticsCallback(Landroid/net/NetworkRequest;Ljava/util/concurrent/Executor;Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 222
    :catch_0
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsManager:Landroid/net/ConnectivityDiagnosticsManager;

    .line 223
    iput-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConnectivityDiagnosticsCallback:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityDiagnosticsCallback;

    return-void
.end method

.method private static blacklist getIsOpportunistic(Lcom/android/internal/telephony/Phone;)Z
    .locals 1

    .line 387
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 457
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method private blacklist isScreenOn()Z
    .locals 5

    .line 464
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 466
    const-string v0, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 469
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 472
    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private synthetic blacklist lambda$uploadMetrics$1(IZIIZI)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v6, p1

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set recovery action to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    .line 251
    :try_start_0
    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->refreshMetricsData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    iget v3, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    iget v4, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    iget v5, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    iget-boolean v7, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    iget-boolean v8, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    iget v9, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    iget v13, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    iget v14, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    iget v15, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    iget v0, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    iget v2, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    iget v10, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    iget v11, v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    move/from16 v19, v2

    const/16 v2, 0x13b

    move/from16 v12, p4

    move/from16 v16, p5

    move/from16 v18, p6

    move/from16 v17, v0

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-static/range {v2 .. v21}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(IIIIIZZIZIIIIIZIIIII)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upload stats: Action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Recovered:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Duration:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", First validation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Duration of action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 253
    const-string v2, "The metrics data cannot be refreshed."

    invoke-direct {v1, v2, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 0

    .line 545
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist refreshMetricsData()V
    .locals 5

    .line 301
    const-string v0, "Refreshes the metrics data."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->logd(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mMetricsReflashTime:J

    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    .line 312
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid MCCMNC format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    .line 315
    iput v3, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    goto :goto_0

    .line 318
    :cond_0
    iput v3, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    .line 322
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateBandwidths()V

    .line 325
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateRatAndBand()V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->getIsOpportunistic(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    .line 331
    invoke-static {}, Lcom/android/internal/telephony/metrics/SimSlotState;->getCurrentState()Lcom/android/internal/telephony/metrics/SimSlotState;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/metrics/SimSlotState;->numActiveSims:I

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    .line 334
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateNetworkRegState()V

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->updateDsdsInfo()V

    return-void
.end method

.method private blacklist sendDataStallInfo()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 428
    const-string v0, "skip send data stall info - pool signal strength"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    .line 430
    :cond_0
    const-string v0, "com.salab.issuetracker"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    const-string v0, "skip send data stall info - issuetracker is not installed"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 434
    const-string v0, "skip send data stall info - screen off"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    .line 436
    :cond_2
    const-string v0, "ril.testmode"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "labtest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    const-string v0, "skip send data stall info - lab test"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    .line 439
    :cond_3
    const-string v0, "ril.cpreset"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 440
    const-string v0, "skip send data stall info - Bad Network while Radio is not available"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->isTestbedSim()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 443
    const-string v0, "skip send data stall info - 00101 sim case"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->log(Ljava/lang/String;)V

    return-void

    .line 447
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 448
    const-string v1, "com.salab.issuetracker.intent.CONTROL_SILENT_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    const-string v1, "duration"

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 451
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private blacklist updateBandwidths()V
    .locals 2

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 347
    const-string v0, "Interface name is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 353
    const-string v0, "DataNetworkController is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 357
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataNetworkByInterface(Ljava/lang/String;)Lcom/android/internal/telephony/data/DataNetwork;

    move-result-object v0

    if-nez v0, :cond_2

    .line 359
    const-string v0, "DataNetwork is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 362
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetwork;->getNetworkCapabilities()Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_3

    .line 364
    const-string v0, "NetworkCapabilities is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 368
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    .line 369
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    return-void
.end method

.method private blacklist updateDsdsInfo()V
    .locals 6

    const/4 v0, 0x0

    .line 405
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    .line 406
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    .line 408
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 409
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 410
    :cond_0
    invoke-static {v3}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->getIsOpportunistic(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 411
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    .line 412
    invoke-interface {v3}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private blacklist updateNetworkRegState()V
    .locals 3

    const/4 v0, 0x0

    .line 393
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 397
    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    :cond_0
    return-void
.end method

.method private blacklist updateRatAndBand()V
    .locals 3

    const/4 v0, 0x0

    .line 373
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    .line 374
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 377
    const-string v0, "ServiceState is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;)V

    return-void

    .line 381
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->getBand(Lcom/android/internal/telephony/Phone;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    return-void
.end method


# virtual methods
.method public blacklist getDataStallRecoveryMetricsData(IZIIIII)Landroid/os/Bundle;
    .locals 4

    .line 502
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mMetricsReflashTime:J

    sub-long/2addr v0, v2

    .line 503
    sget-wide v2, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->REFRESH_DURATION_IN_MILLIS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 506
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->refreshMetricsData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 508
    const-string v1, "The metrics data cannot be refreshed."

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 512
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 514
    const-string v1, "Action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    const-string p1, "IsRecovered"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    const-string p1, "Duration"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    const-string p1, "Reason"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    const-string p1, "DurationOfAction"

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    const-string p1, "ValidationCount"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    const-string p1, "ActionValidationCount"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 521
    const-string p1, "PhoneId"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 522
    const-string p1, "CarrierId"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mCarrierId:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 523
    const-string p1, "MccMnc"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mConvertedMccMnc:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 524
    const-string p1, "SignalStrength"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    const-string p1, "Band"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 526
    const-string p1, "Rat"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    iget-boolean p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    const-string p2, "IsOpportunistic"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 528
    iget-boolean p1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    const-string p2, "IsMultiSim"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 529
    const-string p1, "NetworkRegState"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 530
    const-string p1, "OtherSignalStrength"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 531
    const-string p1, "OtherNetworkRegState"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 532
    const-string p1, "InternetLinkStatus"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    const-string p1, "LinkDownBandwidthKbps"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    const-string p1, "LinkUpBandwidthKbps"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    const-string p1, "NetworkProbesResult"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesResult:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    const-string p1, "NetworkProbesType"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkProbesType:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    const-string p1, "NetworkValidationResult"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkValidationResult:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    const-string p1, "TcpMetricsCollectionPeriodMillis"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpMetricsCollectionPeriodMillis:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 539
    const-string p1, "TcpPacketFailRate"

    iget p2, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mTcpPacketFailRate:I

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const-string p1, "DnsConsecutiveTimeouts"

    iget p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mDnsConsecutiveTimeouts:I

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataStallRecoveryStats {Phone id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Signal strength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Band:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", RAT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Opportunistic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsOpportunistic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Multi-SIM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mIsMultiSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Network reg state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mNetworkRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Other signal strength:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Other network reg state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mOtherNetworkRegState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Link status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mInternetLinkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Link down bandwidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkDownBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Link up bandwidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mLinkUpBandwidthKbps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist uploadMetrics(IZIIZI)V
    .locals 9

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/metrics/DataStallRecoveryStats$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/metrics/DataStallRecoveryStats;IZIIZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
