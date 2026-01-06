.class public Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
.super Ljava/lang/Object;
.source "CarrierRoamingSatelliteSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;,
        Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;,
        Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CarrierRoamingSatelliteSessionStats"

.field private static final blacklist sCarrierRoamingSatelliteSessionStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAverageDownlinkBandwidthKbps:I

.field private blacklist mAverageUplinkBandwidthKbps:I

.field private blacklist mCarrierId:I

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCountOfDataConnections:I

.field private blacklist mCountOfDataDisconnections:I

.field private blacklist mCountOfDataStalls:I

.field private blacklist mCountOfIncomingMms:I

.field private blacklist mCountOfIncomingSms:I

.field private blacklist mCountOfOutgoingMms:I

.field private blacklist mCountOfOutgoingSms:I

.field private blacklist mCurrentState:I

.field private blacklist mDataStallIntentReceiver:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;

.field private blacklist mDataUsageOnSessionStartBytes:J

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mFailCauseIndex:I

.field private blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private blacklist mIncomingMessageId:J

.field private blacklist mIsNtnRoamingInHomeCountry:Z

.field private blacklist mLastFailCauses:[I

.field private blacklist mMaxDownlinkBandwidthKbps:I

.field private blacklist mMaxUplinkBandwidthKbps:I

.field private blacklist mMinDownlinkBandwidthKbps:I

.field private blacklist mMinUplinkBandwidthKbps:I

.field private final blacklist mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private blacklist mNetworkcapabilities:Landroid/net/NetworkCapabilities;

.field private blacklist mPerAppDataUsageOnSessionStartMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPerAppSatelliteDataConsumedBytesArray:[J

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRsrpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRssnrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteAppUidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSatelliteAppsPackageNameArray:[Ljava/lang/String;

.field private blacklist mSatelliteAppsUidArray:[I

.field private blacklist mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

.field private blacklist mSatelliteConnectionTimesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteDataConsumedBytes:J

.field private blacklist mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

.field private blacklist mServiceDataPolicy:I

.field private blacklist mSessionStartTimeSec:I

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private blacklist mSumOfDownlinkBandwidthKbps:I

.field private blacklist mSumOfUplinkBandwidthKbps:I

.field private blacklist mSupportedSatelliteServices:[I

.field private blacklist mTelephonyListener:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDataStalls(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataStalls:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCurrentState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkcapabilities(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mNetworkcapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCountOfDataStalls(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataStalls:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkcapabilities(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mNetworkcapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleConnection(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->handleConnection()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisconnection(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->handleDisconnection()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartDataConnectionTracker(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->startDataConnectionTracker()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstoreFailCause(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->storeFailCause(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateLinkBandwidthForConnection(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->updateLinkBandwidthForConnection()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->sCarrierRoamingSatelliteSessionStats:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 5

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    .line 105
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    .line 106
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPerAppDataUsageOnSessionStartMap:Ljava/util/Map;

    .line 107
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteAppUidMap:Ljava/util/Map;

    const/4 v2, 0x5

    .line 108
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mLastFailCauses:[I

    const/4 v3, 0x0

    .line 109
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataConnections:I

    .line 110
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataDisconnections:I

    .line 111
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCurrentState:I

    .line 112
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mFailCauseIndex:I

    .line 113
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataStalls:I

    .line 114
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfDownlinkBandwidthKbps:I

    .line 115
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfUplinkBandwidthKbps:I

    .line 116
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mAverageUplinkBandwidthKbps:I

    .line 117
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mAverageDownlinkBandwidthKbps:I

    const v4, 0x7fffffff

    .line 118
    iput v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinUplinkBandwidthKbps:I

    .line 119
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxUplinkBandwidthKbps:I

    .line 120
    iput v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxDownlinkBandwidthKbps:I

    .line 121
    iput v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinDownlinkBandwidthKbps:I

    .line 122
    new-instance v4, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/internal/telephony/DisplayInfoController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    .line 128
    iput-object v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteAppsPackageNameArray:[Ljava/lang/String;

    const/4 v4, 0x1

    .line 129
    new-array v4, v4, [J

    aput-wide v0, v4, v3

    iput-object v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPerAppSatelliteDataConsumedBytesArray:[J

    .line 131
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteAppsUidArray:[I

    .line 133
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;-><init>(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create new CarrierRoamingSatelliteSessionStats. subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->initializeParams()V

    .line 293
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 295
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getInstance(I)Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    return-void
.end method

.method private blacklist getAvg(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 957
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 962
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 966
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private blacklist getAvgDurationOfSatelliteConnection()I
    .locals 4

    .line 921
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 925
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    .line 926
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda0;-><init>()V

    .line 927
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$$ExternalSyntheticLambda1;-><init>()V

    .line 928
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    .line 929
    invoke-interface {p0}, Ljava/util/stream/LongStream;->average()Ljava/util/OptionalDouble;

    move-result-object p0

    .line 931
    invoke-virtual {p0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    double-to-int p0, v0

    return p0
.end method

.method private blacklist getCellSignalStrengthLte(Lcom/android/internal/telephony/Phone;)Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .line 905
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    .line 906
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    .line 907
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrength;

    .line 908
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v0, :cond_0

    .line 909
    check-cast p1, Landroid/telephony/CellSignalStrengthLte;

    return-object p1

    .line 913
    :cond_1
    new-instance p0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    return-object p0
.end method

.method private blacklist getDataUsage()J
    .locals 9

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 395
    :cond_0
    const-class v3, Landroid/app/usage/NetworkStatsManager;

    .line 396
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/usage/NetworkStatsManager;

    if-eqz v3, :cond_1

    .line 399
    new-instance v0, Landroid/net/NetworkTemplate$Builder;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 401
    iget-object v5, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/PhoneInternalInterface;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "subscriber id for data consumed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 404
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 405
    invoke-static {v5}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkTemplate$Builder;->setSubscriberIds(Ljava/util/Set;)Landroid/net/NetworkTemplate$Builder;

    .line 407
    invoke-virtual {v0, v4}, Landroid/net/NetworkTemplate$Builder;->setMeteredness(I)Landroid/net/NetworkTemplate$Builder;

    .line 408
    invoke-virtual {v0}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 410
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    .line 412
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method private blacklist getElapsedRealtime()J
    .locals 2

    .line 989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getElapsedRealtimeInSec()I
    .locals 4

    .line 985
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
    .locals 2

    .line 301
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->sCarrierRoamingSatelliteSessionStats:Landroid/util/SparseArray;

    monitor-enter v0

    .line 302
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 306
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    monitor-exit v0

    return-object p0

    .line 307
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist getMedian(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 970
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 973
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 975
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 978
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 979
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2

    .line 980
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 v0, p0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 981
    :cond_2
    div-int/lit8 p0, p0, 0x2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private blacklist getNumberOfSatelliteConnections()I
    .locals 0

    .line 917
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private blacklist getSatelliteConnectionGapList(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 935
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 936
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 939
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 940
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 941
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 942
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 944
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 945
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 948
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 950
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private blacklist handleConnection()V
    .locals 2

    .line 269
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataConnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataConnections:I

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection established. Total connections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 271
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCurrentState:I

    return-void
.end method

.method private blacklist handleDisconnection()V
    .locals 2

    .line 275
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataDisconnections:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataDisconnections:I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection lost. Total disconnections: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataDisconnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCurrentState:I

    return-void
.end method

.method private blacklist initializeParams()V
    .locals 3

    const/4 v0, -0x1

    .line 888
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCarrierId:I

    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 890
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    .line 891
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    .line 892
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    .line 893
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    const-wide/16 v1, 0x0

    .line 894
    iput-wide v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    .line 896
    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    const/4 v0, 0x0

    .line 897
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    .line 899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    .line 900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    .line 901
    const-string v0, "initializeParams"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist isNtnConnected()Z
    .locals 0

    .line 993
    iget p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 1069
    sget-object p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 1073
    sget-object p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist registerDataStallIntentReceiver()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataStallIntentReceiver:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;

    if-nez v0, :cond_0

    .line 340
    const-string v0, "Track data stall status"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 341
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;-><init>(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataStallIntentReceiver:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;

    .line 342
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    const-string v1, "android.intent.action.DATA_STALL_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataStallIntentReceiver:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private blacklist registerForSatelliteDataNetworkCallback()V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist registerTelephonyListener()Z
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 261
    new-instance v2, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;

    iget-object v3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;-><init>(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mTelephonyListener:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;

    .line 262
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;->register(Landroid/telephony/TelephonyManager;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist reportMetrics(I)V
    .locals 8

    .line 817
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtimeInSec()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 818
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getNumberOfSatelliteConnections()I

    move-result v2

    .line 821
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getSatelliteConnectionGapList(I)Ljava/util/List;

    move-result-object v3

    .line 824
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 825
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 826
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    move v4, v1

    move v5, v4

    .line 828
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getActiveSubIdList(Z)[I

    move-result-object v6

    array-length v6, v6

    if-le v6, v7, :cond_2

    move v1, v7

    .line 830
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    invoke-direct {v6}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;-><init>()V

    iget v7, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCarrierId:I

    .line 832
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 833
    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setIsNtnRoamingInHomeCountry(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v6

    .line 834
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setTotalSatelliteModeTimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 835
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setNumberOfSatelliteConnections(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 837
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvgDurationOfSatelliteConnection()I

    move-result v2

    .line 836
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setAvgDurationOfSatelliteConnectionSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 838
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteConnectionGapMinSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 839
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvg(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteConnectionGapAvgSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 840
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteConnectionGapMaxSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    .line 841
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvg(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRsrpAvg(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    .line 842
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getMedian(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRsrpMedian(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    .line 843
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getAvg(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRssnrAvg(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    .line 844
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getMedian(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setRssnrMedian(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    .line 845
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfIncomingSms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    .line 846
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfOutgoingSms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    .line 847
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfIncomingMms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    .line 848
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfOutgoingMms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    .line 849
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSupportedSatelliteServices([I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mServiceDataPolicy:I

    .line 850
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setServiceDataPolicy(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    .line 851
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteDataConsumedBytes(J)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 852
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object v0

    .line 853
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isNbIotNtn(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataConnections:I

    .line 854
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfDataConnections(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mLastFailCauses:[I

    .line 855
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setLastFailCauses([I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataDisconnections:I

    .line 856
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfDataDisconnections(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataStalls:I

    .line 857
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setCountOfDataStalls(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mAverageUplinkBandwidthKbps:I

    .line 858
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setAverageUplinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mAverageDownlinkBandwidthKbps:I

    .line 859
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setAverageDownlinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinUplinkBandwidthKbps:I

    .line 860
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setMinimumUplinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxUplinkBandwidthKbps:I

    .line 861
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setMaximumUplinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinDownlinkBandwidthKbps:I

    .line 862
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setMinimumDownlinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxDownlinkBandwidthKbps:I

    .line 863
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setMaximumDownlinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteAppsPackageNameArray:[Ljava/lang/String;

    .line 864
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteSupportedApps([Ljava/lang/String;)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteAppsUidArray:[I

    .line 865
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setSatelliteSupportedUids([I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPerAppSatelliteDataConsumedBytesArray:[J

    .line 866
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->setPerAppSatelliteDataConsumedBytes([J)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;

    move-result-object p1

    .line 867
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;

    move-result-object p1

    .line 868
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onCarrierRoamingSatelliteSessionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)V

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supported satellite services: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last fail causes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mLastFailCauses:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportMetrics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 874
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result p1

    if-nez p1, :cond_3

    .line 876
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteSmsSentCount(I)V

    .line 877
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteSmsReceivedCount(I)V

    .line 878
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMmsSentCount(I)V

    .line 879
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMmsReceivedCount(I)V

    .line 884
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->initializeParams()V

    return-void
.end method

.method private blacklist resetSatelliteDataState()V
    .locals 0

    .line 0
    return-void
.end method

.method private blacklist startDataConnectionTracker()V
    .locals 1

    .line 374
    const-string v0, "Start tracking data disconnection for the cause"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mTelephonyListener:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$TelephonyListenerImpl;

    if-nez v0, :cond_1

    .line 378
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->registerTelephonyListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->registerDataStallIntentReceiver()V

    return-void

    .line 382
    :cond_0
    const-string v0, "fails tor register for precision data connection state change"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->loge(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_1
    const-string v0, "telephony listener is registered"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist storeFailCause(I)V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mLastFailCauses:[I

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mFailCauseIndex:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 282
    rem-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mFailCauseIndex:I

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current fail causes: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mLastFailCauses:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateAvgBandwidthForSession(II)I
    .locals 2

    int-to-double p0, p1

    int-to-double v0, p2

    div-double/2addr p0, v0

    .line 435
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method private blacklist updateLinkBandwidthForConnection()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mNetworkcapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mNetworkcapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v1

    .line 236
    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfUplinkBandwidthKbps:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfUplinkBandwidthKbps:I

    .line 237
    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfDownlinkBandwidthKbps:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfDownlinkBandwidthKbps:I

    if-lez v0, :cond_0

    .line 240
    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxUplinkBandwidthKbps:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxUplinkBandwidthKbps:I

    .line 241
    iget v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinUplinkBandwidthKbps:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinUplinkBandwidthKbps:I

    :cond_0
    if-lez v1, :cond_1

    .line 245
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxDownlinkBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMaxDownlinkBandwidthKbps:I

    .line 246
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinDownlinkBandwidthKbps:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mMinDownlinkBandwidthKbps:I

    :cond_1
    return-void

    .line 249
    :cond_2
    const-string v0, "networkcapabilities found null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateNtnRoamingInHomeCountry(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    .line 997
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 998
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1000
    const-string p1, "ServiceState is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 1005
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/NetworkRegistrationInfo;

    .line 1006
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1007
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1011
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 1012
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1014
    const-string p1, "SubscriptionInfoInternal is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 1017
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getMcc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 1018
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    if-eqz v1, :cond_5

    .line 1019
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    const/4 v2, 0x0

    .line 1021
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1022
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1023
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    goto :goto_1

    .line 1027
    :cond_4
    iput-boolean v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 1030
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateNtnRoamingInHomeCountry: mIsNtnRoamingInHomeCountry="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist onConnectionEnd()V
    .locals 3

    .line 738
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    if-eqz v0, :cond_0

    .line 739
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;->setEndTime(J)V

    .line 740
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimesList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 741
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    return-void

    .line 743
    :cond_0
    const-string v0, "onConnectionEnd: mSatelliteConnectionTimes is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onConnectionStart(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 334
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$SatelliteConnectionTimes;

    .line 335
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->updateNtnRoamingInHomeCountry(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method public blacklist onIncomingSms(I)V
    .locals 2

    .line 768
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onIncomingTiantongSms(I)V

    return-void

    .line 773
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->isNtnConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 776
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingSms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingSms:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onMms(ZJ)V
    .locals 2

    .line 797
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->isNtnConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 801
    iput-wide p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    .line 802
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMms: messageId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", countOfIncomingMms="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfIncomingMms:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 805
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_2

    .line 806
    const-string p1, "onMms: NotifyResponse ignore it."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    .line 807
    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIncomingMessageId:J

    return-void

    .line 810
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    .line 811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onMms: countOfOutgoingMms="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingMms:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onOutgoingSms(I)V
    .locals 2

    .line 783
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteSessionStatusInfos:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onOutgoingTiantongSms(I)V

    return-void

    .line 788
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->isNtnConnected()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 791
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutgoingSms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfOutgoingSms:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onSessionEnd(ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onConnectionEnd()V

    .line 559
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getDataUsage()J

    move-result-wide v0

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update data consumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 561
    iget-wide v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    sub-long/2addr v0, v4

    .line 563
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "satellite data consumed at session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 583
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfDownlinkBandwidthKbps:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataConnections:I

    if-lez v1, :cond_1

    .line 584
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->updateAvgBandwidthForSession(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mAverageDownlinkBandwidthKbps:I

    .line 587
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSumOfUplinkBandwidthKbps:I

    if-lez v0, :cond_2

    iget v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCountOfDataConnections:I

    if-lez v1, :cond_2

    .line 588
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->updateAvgBandwidthForSession(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mAverageUplinkBandwidthKbps:I

    .line 591
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 592
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->handleDisconnection()V

    const v0, 0xffff

    .line 593
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->storeFailCause(I)V

    .line 595
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->reportMetrics(I)V

    .line 596
    iput-boolean p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 597
    new-array p1, p2, [I

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    .line 598
    iput p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mServiceDataPolicy:I

    .line 599
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteDataConsumedBytes:J

    const/4 p1, 0x0

    .line 600
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteAppsPackageNameArray:[Ljava/lang/String;

    .line 601
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSatelliteAppsUidArray:[I

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([II)V

    const/4 p1, 0x1

    .line 602
    new-array p1, p1, [J

    aput-wide v2, p1, p2

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPerAppSatelliteDataConsumedBytesArray:[J

    .line 603
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    .line 604
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->resetSatelliteDataState()V

    return-void
.end method

.method public blacklist onSessionStart(ILcom/android/internal/telephony/Phone;[IILjava/util/List;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/Phone;",
            "[II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;",
            ")V"
        }
    .end annotation

    .line 315
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 316
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mContext:Landroid/content/Context;

    .line 317
    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mCarrierId:I

    .line 318
    iput-object p3, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSupportedSatelliteServices:[I

    .line 319
    iput p4, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mServiceDataPolicy:I

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getElapsedRealtimeInSec()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mSessionStartTimeSec:I

    const/4 p1, 0x0

    .line 321
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mIsNtnRoamingInHomeCountry:Z

    .line 322
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onConnectionStart(Lcom/android/internal/telephony/Phone;)V

    .line 323
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getDataUsage()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "current data consumed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mDataUsageOnSessionStartBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    .line 325
    iput-object p6, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 326
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->registerForSatelliteDataNetworkCallback()V

    return-void
.end method

.method public blacklist onSignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 749
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getCellSignalStrengthLte(Lcom/android/internal/telephony/Phone;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object p1

    .line 750
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    .line 751
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result p1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 753
    const-string p1, "onSignalStrength: rsrp unavailable"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 757
    const-string p1, "onSignalStrength: rssnr unavailable"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRsrpList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->mRssnrList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignalStrength : rsrp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rssnr="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->logd(Ljava/lang/String;)V

    return-void
.end method
