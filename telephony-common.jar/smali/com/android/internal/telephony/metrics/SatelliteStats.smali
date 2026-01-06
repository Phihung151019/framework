.class public Lcom/android/internal/telephony/metrics/SatelliteStats;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;,
        Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SatelliteStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;


# instance fields
.field private final blacklist mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;
    .locals 2

    .line 58
    sget-object v0, Lcom/android/internal/telephony/metrics/SatelliteStats;->sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/internal/telephony/metrics/SatelliteStats;->TAG:Ljava/lang/String;

    const-string v1, "SatelliteStats created."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-class v0, Lcom/android/internal/telephony/metrics/SatelliteStats;

    monitor-enter v0

    .line 61
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/metrics/SatelliteStats;->sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;

    .line 62
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 64
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/metrics/SatelliteStats;->sInstance:Lcom/android/internal/telephony/metrics/SatelliteStats;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist onCarrierRoamingSatelliteControllerStatsMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)V
    .locals 2

    monitor-enter p0

    .line 3503
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;-><init>()V

    .line 3504
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmConfigDataSource(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->configDataSource:I

    .line 3505
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmCountOfEntitlementStatusQueryRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfEntitlementStatusQueryRequest:I

    .line 3506
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmCountOfSatelliteConfigUpdateRequest(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteConfigUpdateRequest:I

    .line 3507
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->-$$Nest$fgetmCountOfSatelliteNotificationDisplayed(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteNotificationDisplayed:I

    .line 3508
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapMinSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMinSec:I

    .line 3509
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapAvgSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapAvgSec:I

    .line 3510
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getSatelliteSessionGapMaxSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->satelliteSessionGapMaxSec:I

    .line 3511
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->carrierId:I

    .line 3512
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isDeviceEntitled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isDeviceEntitled:Z

    .line 3513
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isMultiSim:Z

    .line 3514
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->getCountOfSatelliteSessions()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->countOfSatelliteSessions:I

    .line 3515
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteControllerStatsParams;->isNbIotNtn()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;->isNbIotNtn:Z

    .line 3517
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCarrierRoamingSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteControllerStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3518
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

.method public declared-synchronized blacklist onCarrierRoamingSatelliteSessionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)V
    .locals 3

    monitor-enter p0

    .line 3461
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;-><init>()V

    .line 3462
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    .line 3463
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getIsNtnRoamingInHomeCountry()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    .line 3464
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getTotalSatelliteModeTimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    .line 3465
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getNumberOfSatelliteConnections()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    .line 3466
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->getAvgDurationOfSatelliteConnectionSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    .line 3467
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteConnectionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    .line 3468
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteConnectionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    .line 3469
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteConnectionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    .line 3470
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRsrpAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    .line 3471
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRsrpMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    .line 3472
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRssnrAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    .line 3473
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmRssnrMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    .line 3474
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfIncomingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    .line 3475
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfOutgoingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    .line 3476
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfIncomingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    .line 3477
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfOutgoingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    .line 3478
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSupportedSatelliteServices(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    .line 3479
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmServiceDataPolicy(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    .line 3480
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    .line 3481
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    .line 3482
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->isNbIotNtn()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    .line 3483
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfDataConnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataConnections:I

    .line 3484
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmLastFailCauses(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    .line 3485
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfDataDisconnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataDisconnections:I

    .line 3486
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmCountOfDataStalls(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataStalls:I

    .line 3487
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmAverageUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageUplinkBandwidthKbps:I

    .line 3488
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmAverageDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageDownlinkBandwidthKbps:I

    .line 3489
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmMinUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minUplinkBandwidthKbps:I

    .line 3490
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmMaxUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxUplinkBandwidthKbps:I

    .line 3491
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmMinDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minDownlinkBandwidthKbps:I

    .line 3492
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmMaxDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxDownlinkBandwidthKbps:I

    .line 3493
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteSupportedApps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    .line 3494
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmSatelliteSupportedUids(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    .line 3495
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->-$$Nest$fgetmPerAppSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[J

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    .line 3497
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addCarrierRoamingSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3498
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

.method public declared-synchronized blacklist onSatelliteAccessControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;)V
    .locals 3

    monitor-enter p0

    .line 3557
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;-><init>()V

    .line 3558
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getAccessControlType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    .line 3559
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getLocationQueryTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    .line 3560
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getOnDeviceLookupTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    .line 3561
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getTotalCheckingTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    .line 3562
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getIsAllowed()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    .line 3563
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getIsEmergency()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    .line 3564
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    .line 3565
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getCountryCodes()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    .line 3566
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getConfigDataSource()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    .line 3567
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    .line 3568
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->getTriggeringEvent()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    .line 3569
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteAccessControllerParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    .line 3571
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteAccessControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3572
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

.method public declared-synchronized blacklist onSatelliteConfigUpdaterMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;)V
    .locals 2

    monitor-enter p0

    .line 3545
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;-><init>()V

    .line 3546
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getConfigVersion()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->configVersion:I

    .line 3547
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getOemConfigResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->oemConfigResult:I

    .line 3548
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getCarrierConfigResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->carrierConfigResult:I

    .line 3549
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteConfigUpdaterParams;->getCount()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;->count:I

    .line 3551
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteConfigUpdaterStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteConfigUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3552
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

.method public declared-synchronized blacklist onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V
    .locals 2

    monitor-enter p0

    .line 3301
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;-><init>()V

    .line 3303
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteServiceEnablementsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsSuccess:I

    .line 3305
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteServiceEnablementsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteServiceEnablementsFail:I

    .line 3306
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramSuccess:I

    .line 3307
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramFail:I

    .line 3308
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramSuccess:I

    .line 3309
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramFail:I

    .line 3310
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeSosSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsSuccess:I

    .line 3311
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeSosSmsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeSosSmsFail:I

    .line 3313
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeLocationSharingSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingSuccess:I

    .line 3315
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeLocationSharingFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeLocationSharingFail:I

    .line 3316
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfProvisionSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionSuccess:I

    .line 3317
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfProvisionFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfProvisionFail:I

    .line 3318
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDeprovisionSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionSuccess:I

    .line 3319
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDeprovisionFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDeprovisionFail:I

    .line 3320
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getTotalServiceUptimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalServiceUptimeSec:I

    .line 3321
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getTotalBatteryConsumptionPercent()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryConsumptionPercent:I

    .line 3322
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getTotalBatteryChargedTimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->totalBatteryChargedTimeSec:I

    .line 3324
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeSatelliteServiceEnablementsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsSuccess:I

    .line 3326
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeSatelliteServiceEnablementsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeSatelliteServiceEnablementsFail:I

    .line 3328
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeOutgoingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramSuccess:I

    .line 3329
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeOutgoingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeOutgoingDatagramFail:I

    .line 3331
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramSuccess:I

    .line 3332
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDemoModeIncomingDatagramFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDemoModeIncomingDatagramFail:I

    .line 3333
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeKeepAliveSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveSuccess:I

    .line 3334
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDatagramTypeKeepAliveFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDatagramTypeKeepAliveFail:I

    .line 3335
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfAllowedSatelliteAccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfAllowedSatelliteAccess:I

    .line 3336
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfDisallowedSatelliteAccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfDisallowedSatelliteAccess:I

    .line 3337
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteAccessCheckFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAccessCheckFail:I

    .line 3338
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->isProvisioned()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isProvisioned:Z

    .line 3339
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierId:I

    .line 3341
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSatelliteAllowedStateChangedEvents()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSatelliteAllowedStateChangedEvents:I

    .line 3342
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfSuccessfulLocationQueries()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfSuccessfulLocationQueries:I

    .line 3343
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfFailedLocationQueries()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfFailedLocationQueries:I

    .line 3345
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfP2PSmsAvailableNotificationShown()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationShown:I

    .line 3347
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfP2PSmsAvailableNotificationRemoved()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfP2PSmsAvailableNotificationRemoved:I

    .line 3348
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->isNtnOnlyCarrier()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->isNtnOnlyCarrier:Z

    .line 3349
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getVersionSatelliteAccessConfig()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->versionOfSatelliteAccessConfig:I

    .line 3351
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSosSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsSuccess:I

    .line 3353
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSosSmsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSosSmsFail:I

    .line 3355
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramTypeSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsSuccess:I

    .line 3356
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfOutgoingDatagramTypeSmsFail()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfOutgoingDatagramTypeSmsFail:I

    .line 3358
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSmsSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsSuccess:I

    .line 3359
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCountOfIncomingDatagramTypeSmsFail()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->countOfIncomingDatagramTypeSmsFail:I

    .line 3361
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getCarrierRoamingSatelliteConfigVersion()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->carrierRoamingSatelliteConfigVersion:I

    .line 3362
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;->getMaxAllowedDataMode()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;->maxAllowedDataMode:I

    .line 3365
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteControllerStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3366
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

.method public declared-synchronized blacklist onSatelliteEntitlementMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;)V
    .locals 2

    monitor-enter p0

    .line 3530
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;-><init>()V

    .line 3531
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    .line 3532
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    .line 3533
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getEntitlementStatus()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    .line 3534
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getIsRetry()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    .line 3535
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getCount()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    .line 3536
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getIsAllowedServiceEntitlement()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    .line 3537
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getEntitlementServiceType()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    .line 3538
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteEntitlementParams;->getEntitlementDataPolicy()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    .line 3540
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteEntitlementStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3541
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

.method public declared-synchronized blacklist onSatelliteIncomingDatagramMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;)V
    .locals 3

    monitor-enter p0

    .line 3400
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;-><init>()V

    .line 3401
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    .line 3402
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getDatagramSizeBytes()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    .line 3403
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getDatagramTransferTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    .line 3404
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getIsDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    .line 3405
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    .line 3406
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteIncomingDatagramParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    .line 3408
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteIncomingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3409
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

.method public declared-synchronized blacklist onSatelliteOutgoingDatagramMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;)V
    .locals 3

    monitor-enter p0

    .line 3414
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;-><init>()V

    .line 3415
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getDatagramType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    .line 3416
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    .line 3417
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getDatagramSizeBytes()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    .line 3418
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getDatagramTransferTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    .line 3419
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getIsDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    .line 3420
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    .line 3421
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteOutgoingDatagramParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    .line 3423
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteOutgoingDatagramStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3424
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

.method public declared-synchronized blacklist onSatelliteProvisionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;)V
    .locals 2

    monitor-enter p0

    .line 3428
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;-><init>()V

    .line 3429
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getResultCode()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->resultCode:I

    .line 3430
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getProvisioningTimeSec()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->provisioningTimeSec:I

    .line 3431
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getIsProvisionRequest()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isProvisionRequest:Z

    .line 3432
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getIsCanceled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isCanceled:Z

    .line 3433
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->carrierId:I

    .line 3434
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteProvisionParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;->isNtnOnlyCarrier:Z

    .line 3436
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteProvisionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteProvision;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3437
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

.method public declared-synchronized blacklist onSatelliteSessionMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;)V
    .locals 3

    monitor-enter p0

    .line 3370
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;-><init>()V

    .line 3372
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getSatelliteServiceInitializationResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceInitializationResult:I

    .line 3373
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getSatelliteTechnology()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteTechnology:I

    const/4 v1, 0x1

    .line 3374
    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->count:I

    .line 3375
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getTerminationResult()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->satelliteServiceTerminationResult:I

    .line 3376
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getInitializationProcessingTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->initializationProcessingTimeMillis:J

    .line 3377
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getTerminationProcessingTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->terminationProcessingTimeMillis:J

    .line 3378
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getSessionDuration()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->sessionDurationSeconds:I

    .line 3379
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramSuccess:I

    .line 3380
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfOutgoingDatagramFailed()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfOutgoingDatagramFailed:I

    .line 3381
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfIncomingDatagramSuccess()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramSuccess:I

    .line 3382
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfOutgoingDatagramFailed()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfIncomingDatagramFailed:I

    .line 3383
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getIsDemoMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isDemoMode:Z

    .line 3384
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getMaxNtnSignalStrengthLevel()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxNtnSignalStrengthLevel:I

    .line 3385
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->carrierId:I

    .line 3387
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfSatelliteNotificationDisplayed()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfSatelliteNotificationDisplayed:I

    .line 3388
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfAutoExitDueToScreenOff()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToScreenOff:I

    .line 3389
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getCountOfAutoExitDueToTnNetwork()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->countOfAutoExitDueToTnNetwork:I

    .line 3390
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getIsEmergency()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isEmergency:Z

    .line 3391
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->isNtnOnlyCarrier()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->isNtnOnlyCarrier:Z

    .line 3392
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSessionParams;->getMaxInactivityDurationSec()I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;->maxInactivityDurationSec:I

    .line 3394
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteSessionStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3395
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

.method public declared-synchronized blacklist onSatelliteSosMessageRecommender(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;)V
    .locals 2

    monitor-enter p0

    .line 3442
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;-><init>()V

    .line 3443
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isDisplaySosMessageSent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    .line 3444
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getCountOfTimerStarted()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    .line 3445
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isImsRegistered()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    .line 3446
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getCellularServiceState()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    .line 3447
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isMultiSim()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    .line 3448
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getRecommendingHandoverType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    .line 3449
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isSatelliteAllowedInCurrentLocation()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    .line 3450
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isWifiConnected()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    .line 3451
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->getCarrierId()I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    .line 3452
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteSosMessageRecommenderParams;->isNtnOnlyCarrier()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    const/4 p1, 0x1

    .line 3453
    iput p1, v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    .line 3455
    iget-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats;->mAtomsStorage:Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addSatelliteSosMessageRecommenderStats(Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3456
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

.method public declared-synchronized blacklist resetCarrierRoamingSatelliteControllerStats()V
    .locals 1

    monitor-enter p0

    .line 3524
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->getOrCreateInstance()Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;

    move-result-object v0

    .line 3525
    invoke-virtual {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteControllerStats;->resetSessionGapLists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3526
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
