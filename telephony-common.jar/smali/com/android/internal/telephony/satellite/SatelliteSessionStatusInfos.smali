.class public Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;
.super Ljava/lang/Object;
.source "SatelliteSessionStatusInfos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;
    }
.end annotation


# static fields
.field public static final blacklist SATELLITE_ENABLE_TYPE_ESOS:I = 0x1

.field public static final blacklist SATELLITE_ENABLE_TYPE_LOCSHAR:I = 0x2

.field public static final blacklist SATELLITE_ENABLE_TYPE_P2P:I = 0x3

.field public static final blacklist SATELLITE_END_CAUSE_E911_TRIGGERED:I = 0x6

.field public static final blacklist SATELLITE_END_CAUSE_HYSTERESIS_TIMEOUT:I = 0x9

.field public static final blacklist SATELLITE_END_CAUSE_MODEM_OFF:I = 0x7

.field public static final blacklist SATELLITE_END_CAUSE_NOT_IN_ALLOWED_REGION:I = 0x8

.field public static final blacklist SATELLITE_END_CAUSE_NOT_SUPPORTED:I = 0x4

.field public static final blacklist SATELLITE_END_CAUSE_P2P_INACTIVITY:I = 0x2

.field public static final blacklist SATELLITE_END_CAUSE_RADIO_OFF:I = 0x5

.field public static final blacklist SATELLITE_END_CAUSE_SCREEN_OFF:I = 0x1

.field public static final blacklist SATELLITE_END_CAUSE_TN_FOUND:I = 0x3

.field public static final blacklist SATELLITE_END_CAUSE_USER:I = 0x0

.field public static final blacklist SATELLITE_SERVICE_TYPE_SKYLO:I = 0x1

.field public static final blacklist SATELLITE_SERVICE_TYPE_SPACEX:I = 0x0

.field public static final blacklist SATELLITE_SERVICE_TYPE_TIANTONG:I = 0x2

.field public static final blacklist SATELLITE_TN_SCAN_STATE_IDLE:I = 0x0

.field public static final blacklist SATELLITE_TN_SCAN_STATE_START:I = 0x1

.field public static final blacklist SATELLITE_TN_SCAN_STATE_SUCCESS:I = 0x2

.field private static final blacklist sSatelliteSessionStatusInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCountOfIncomingTiantongSms:I

.field private blacklist mCountOfOutgoingTiantongSms:I

.field private blacklist mPciList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRsrpList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRsrqList:Ljava/util/List;
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

.field private blacklist mSatelliteAverageRsrp:I

.field private blacklist mSatelliteAverageRsrq:I

.field private blacklist mSatelliteAverageRssnr:I

.field private blacklist mSatelliteConnectionMeanTime:I

.field private blacklist mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

.field private blacklist mSatelliteConnectionTimesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteEmergenySosCount:I

.field private blacklist mSatelliteEmergenySosFailCount:I

.field private blacklist mSatelliteEnableCause:I

.field private blacklist mSatelliteEndCause:I

.field private blacklist mSatelliteId:I

.field private blacklist mSatelliteInitializeTime:I

.field private blacklist mSatelliteIsRoaming:Z

.field private blacklist mSatelliteLocationSharingCount:I

.field private blacklist mSatelliteMaxGapTimeDuringSession:I

.field private blacklist mSatelliteMeanGapTimeDuringSession:I

.field private blacklist mSatelliteMedianRsrp:I

.field private blacklist mSatelliteMedianRsrq:I

.field private blacklist mSatelliteMedianRssnr:I

.field private blacklist mSatelliteMinGapTimeDuringSession:I

.field private blacklist mSatelliteMmsReceivedCount:I

.field private blacklist mSatelliteMmsSentCount:I

.field private blacklist mSatelliteNumberOfPci:I

.field private blacklist mSatelliteRegisteredPlmnString:Ljava/lang/String;

.field private blacklist mSatelliteRegisteredServiceType:I

.field private blacklist mSatelliteRegisteredTac:I

.field private blacklist mSatelliteSimPlmnString:Ljava/lang/String;

.field private blacklist mSatelliteSmsReceivedCount:I

.field private blacklist mSatelliteSmsSentCount:I

.field private blacklist mSatelliteTerrestrialNetworkScanState:I

.field private blacklist mSatelliteTerrestrialNetworkSearchingReqCount:I

.field private blacklist mSatelliteTerrestrialNetworkSuccessCount:I

.field private blacklist mSatelliteTotalConnectionTime:I

.field private blacklist mSatelliteTotalDurationOfSession:I

.field private blacklist mSessionStartTimeSec:I

.field private final blacklist mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->sSatelliteSessionStatusInfos:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->resetSatelliteSessionStatusInfos()V

    .line 262
    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    return-void
.end method

.method private blacklist addPciToList(Landroid/telephony/CellIdentity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 355
    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 356
    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mPciList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mPciList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
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

    .line 768
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 773
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

    .line 777
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    div-int/2addr v0, p0

    return v0
.end method

.method private blacklist getAvgDurationOfSatelliteConnection()I
    .locals 6

    .line 726
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$$ExternalSyntheticLambda0;-><init>()V

    .line 731
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$$ExternalSyntheticLambda1;-><init>()V

    .line 732
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 733
    invoke-interface {v0}, Ljava/util/stream/LongStream;->average()Ljava/util/OptionalDouble;

    move-result-object v0

    .line 736
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    .line 737
    invoke-virtual {v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 738
    invoke-virtual {v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->getDuration()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    const-wide/16 v4, 0x3e8

    .line 741
    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTotalConnectionTime:I

    .line 742
    invoke-virtual {v0}, Ljava/util/OptionalDouble;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/util/OptionalDouble;->getAsDouble()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    :goto_1
    double-to-int p0, v0

    return p0
.end method

.method private blacklist getCellSignalStrengthLte(Lcom/android/internal/telephony/Phone;)Landroid/telephony/CellSignalStrengthLte;
    .locals 1

    .line 710
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    .line 711
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    .line 712
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellSignalStrength;

    .line 713
    instance-of v0, p1, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v0, :cond_0

    .line 714
    check-cast p1, Landroid/telephony/CellSignalStrengthLte;

    return-object p1

    .line 718
    :cond_1
    new-instance p0, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {p0}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    return-object p0
.end method

.method private blacklist getElapsedRealtime()J
    .locals 2

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private blacklist getElapsedRealtimeInSec()I
    .locals 4

    .line 795
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getElapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static blacklist getInstance(I)Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;
    .locals 2

    .line 267
    sget-object v0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->sSatelliteSessionStatusInfos:Landroid/util/SparseArray;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 272
    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;

    monitor-exit v0

    return-object p0

    .line 273
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

    .line 781
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 784
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 786
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 789
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 790
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2

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

    .line 791
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

    .line 722
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

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

    .line 746
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 747
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 750
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 751
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    .line 753
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    .line 754
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    .line 755
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    .line 757
    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 758
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->getStartTime()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 759
    invoke-virtual {v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->getEndTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 761
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private blacklist isSatelliteSessionConnected()Z
    .locals 0

    .line 803
    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSessionStartTimeSec:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 0

    .line 840
    const-string p0, "SatelliteSessionStatusInfos"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 0

    .line 844
    const-string p0, "SatelliteSessionStatusInfos"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist resetSatelliteSessionStatusInfos()V
    .locals 3

    const/4 v0, 0x0

    .line 583
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTotalConnectionTime:I

    .line 584
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEnableCause:I

    .line 585
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEndCause:I

    .line 586
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosCount:I

    .line 587
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosFailCount:I

    .line 588
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMaxGapTimeDuringSession:I

    .line 589
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMeanGapTimeDuringSession:I

    .line 590
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMinGapTimeDuringSession:I

    .line 591
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteInitializeTime:I

    .line 592
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteLocationSharingCount:I

    .line 593
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionMeanTime:I

    .line 594
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMmsReceivedCount:I

    .line 595
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMmsSentCount:I

    .line 596
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredPlmnString:Ljava/lang/String;

    .line 597
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteIsRoaming:Z

    const v2, 0x7fffffff

    .line 598
    iput v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRsrp:I

    .line 599
    iput v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRsrp:I

    .line 600
    iput v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRsrq:I

    .line 601
    iput v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRsrq:I

    .line 602
    iput v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRssnr:I

    .line 603
    iput v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRssnr:I

    .line 604
    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSimPlmnString:Ljava/lang/String;

    .line 605
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSmsReceivedCount:I

    .line 606
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSmsSentCount:I

    .line 607
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredTac:I

    .line 608
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkScanState:I

    .line 609
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSearchingReqCount:I

    .line 610
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSuccessCount:I

    .line 611
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTotalDurationOfSession:I

    .line 612
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredServiceType:I

    .line 613
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteNumberOfPci:I

    .line 615
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfOutgoingTiantongSms:I

    .line 616
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfIncomingTiantongSms:I

    .line 618
    iput v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteId:I

    .line 619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrpList:Ljava/util/List;

    .line 620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrqList:Ljava/util/List;

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRssnrList:Ljava/util/List;

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mPciList:Ljava/util/List;

    .line 624
    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSessionStartTimeSec:I

    const/4 v0, 0x0

    .line 625
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    return-void
.end method

.method private blacklist sendBigDataForSessionStatus(Landroid/content/Context;)V
    .locals 3

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    const-string v1, "com.samsung.intent.action.BIG_DATA_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "feature"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string v1, "bigdata_info"

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBigDataForSessionStatus - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    .line 283
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 284
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->resetSatelliteSessionStatusInfos()V

    return-void
.end method

.method private blacklist updateBigData()V
    .locals 8

    .line 668
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSessionStartTimeSec:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getElapsedRealtimeInSec()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSessionStartTimeSec:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 670
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getNumberOfSatelliteConnections()I

    move-result v2

    .line 672
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getSatelliteConnectionGapList(I)Ljava/util/List;

    move-result-object v3

    .line 676
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 677
    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 678
    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v7, v4

    move v4, v1

    move v1, v7

    goto :goto_1

    :cond_1
    move v4, v1

    .line 680
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberOfSatelliteConnections= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,avgDurationOfSatelliteConnectionSec= "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getAvgDurationOfSatelliteConnection()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 680
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteTotalDurationOfSession(I)V

    .line 686
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMaxGapTimeDuringSession(I)V

    .line 688
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMinGapTimeDuringSession(I)V

    .line 690
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getAvg(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMeanGapTimeDuringSession(I)V

    .line 692
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getAvgDurationOfSatelliteConnection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteConnectionMeanTime(I)V

    .line 693
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrpList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getAvg(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteAverageRsrp(I)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrpList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getMedian(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMedianRsrp(I)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrqList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getAvg(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteAverageRsrq(I)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrqList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getMedian(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMedianRsrq(I)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRssnrList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getAvg(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteAverageRssnr(I)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRssnrList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getMedian(Ljava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteMedianRssnr(I)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mPciList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteNumberOfPci(I)V

    .line 702
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isSupportTiantong()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->isSatelliteSessionConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfOutgoingTiantongSms:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteSmsSentCount(I)V

    .line 704
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfIncomingTiantongSms:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteSmsReceivedCount(I)V

    :cond_2
    return-void
.end method

.method private blacklist updatePlmnAndRoaming(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    .line 416
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_0

    .line 418
    const-string p1, "ServiceState is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void

    .line 423
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NetworkRegistrationInfo;

    .line 424
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getRegisteredPlmn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteRegisteredPlmnString(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    .line 430
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionInfoInternal(I)Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;

    move-result-object p1

    if-nez p1, :cond_3

    .line 432
    const-string p1, "SubscriptionInfoInternal is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void

    .line 435
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/subscription/SubscriptionInfoInternal;->getMcc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredPlmnString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le v0, v2, :cond_4

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredPlmnString:Ljava/lang/String;

    .line 439
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v0}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 437
    :cond_4
    const-string v0, ""

    .line 441
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 442
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteIsRoaming(Z)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteIsRoaming(Z)V

    .line 447
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePlmnAndRoaming: mSatelliteIsRoaming="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteIsRoaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSatelliteRegisteredCountry="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist updateTac(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 299
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_0

    .line 301
    const-string p1, "ServiceState is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void

    .line 306
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkRegistrationInfo;

    .line 307
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 310
    check-cast v0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteRegisteredTac(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public blacklist onConnectionEnd()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;->setEndTime(J)V

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimesList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 408
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    return-void

    .line 410
    :cond_0
    const-string v0, "onConnectionEnd: mSatelliteConnectionTimes is null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onConnectionStart(Lcom/android/internal/telephony/Phone;)V
    .locals 3

    .line 394
    new-instance v0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;-><init>(J)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionTimes:Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos$SatelliteConnectionTimes;

    .line 395
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->updatePlmnAndRoaming(Lcom/android/internal/telephony/Phone;)V

    .line 396
    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredServiceType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteInitializeTime:I

    if-nez p1, :cond_1

    .line 398
    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSessionStartTimeSec:I

    if-lez p1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getElapsedRealtimeInSec()I

    move-result p1

    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSessionStartTimeSec:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 400
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteInitializeTime(I)V

    :cond_1
    return-void
.end method

.method public blacklist onIncomingTiantongSms(I)V
    .locals 2

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->isSatelliteSessionConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfIncomingTiantongSms:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfIncomingTiantongSms:I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingTiantongSms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfIncomingTiantongSms:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onOutgoingTiantongSms(I)V
    .locals 2

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->isSatelliteSessionConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfOutgoingTiantongSms:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfOutgoingTiantongSms:I

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOutgoingTiantongSms: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", count="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mCountOfOutgoingTiantongSms:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onSatelliteEmergencySosFail()V
    .locals 1

    .line 467
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->isSatelliteSessionConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosFailCount:I

    return-void
.end method

.method public blacklist onSatelliteEmergencySosSent()V
    .locals 1

    .line 460
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->isSatelliteSessionConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 463
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosCount:I

    return-void
.end method

.method public blacklist onServiceStateChanged(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 317
    iget v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredServiceType:I

    if-eqz v0, :cond_0

    goto :goto_1

    .line 321
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_1

    .line 323
    const-string p1, "ServiceState is null"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void

    .line 328
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NetworkRegistrationInfo;

    .line 329
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isNonTerrestrialNetwork()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 331
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->addPciToList(Landroid/telephony/CellIdentity;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist onSessionEnd(Landroid/content/Context;)V
    .locals 0

    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onConnectionEnd()V

    .line 365
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->updateBigData()V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->sendBigDataForSessionStatus(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 367
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteIsRoaming(Z)V

    return-void
.end method

.method public blacklist onSessionStart(Lcom/android/internal/telephony/Phone;I)V
    .locals 1

    .line 288
    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getElapsedRealtimeInSec()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSessionStartTimeSec:I

    const/4 v0, 0x0

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->setSatelliteIsRoaming(Z)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->onConnectionStart(Lcom/android/internal/telephony/Phone;)V

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->updateTac(Lcom/android/internal/telephony/Phone;)V

    .line 294
    iput p2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredServiceType:I

    .line 295
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mPciList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public blacklist onSignalStrength(Lcom/android/internal/telephony/Phone;)V
    .locals 4

    .line 371
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getCellSignalStrengthLte(Lcom/android/internal/telephony/Phone;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object p1

    .line 372
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result v0

    .line 373
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v1

    .line 374
    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result p1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    .line 376
    const-string p1, "onSignalStrength: rsrp unavailable"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    if-ne v1, v2, :cond_1

    .line 380
    const-string p1, "onSignalStrength: rsrq unavailable"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    if-ne p1, v2, :cond_2

    .line 384
    const-string p1, "onSignalStrength: rssnr unavailable"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void

    .line 387
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrpList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRsrqList:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mRssnrList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalStrength : rsrp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rsrq="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rssnr="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setSatelliteAverageRsrp(I)V
    .locals 0

    .line 514
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRsrp:I

    return-void
.end method

.method public blacklist setSatelliteAverageRsrq(I)V
    .locals 0

    .line 522
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRsrq:I

    return-void
.end method

.method public blacklist setSatelliteAverageRssnr(I)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRssnr:I

    return-void
.end method

.method public blacklist setSatelliteConnectionMeanTime(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionMeanTime:I

    return-void
.end method

.method public blacklist setSatelliteEnableCause(I)V
    .locals 0

    .line 452
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEnableCause:I

    return-void
.end method

.method public blacklist setSatelliteEndCause(I)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEndCause:I

    return-void
.end method

.method public blacklist setSatelliteId(I)V
    .locals 0

    .line 579
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteId:I

    return-void
.end method

.method public blacklist setSatelliteInitializeTime(I)V
    .locals 0

    .line 486
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteInitializeTime:I

    return-void
.end method

.method public blacklist setSatelliteIsRoaming(Z)V
    .locals 0

    .line 510
    iput-boolean p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteIsRoaming:Z

    return-void
.end method

.method public blacklist setSatelliteLocationSharingCount(I)V
    .locals 0

    .line 490
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteLocationSharingCount:I

    return-void
.end method

.method public blacklist setSatelliteMaxGapTimeDuringSession(I)V
    .locals 0

    .line 474
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMaxGapTimeDuringSession:I

    return-void
.end method

.method public blacklist setSatelliteMeanGapTimeDuringSession(I)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMeanGapTimeDuringSession:I

    return-void
.end method

.method public blacklist setSatelliteMedianRsrp(I)V
    .locals 0

    .line 518
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRsrp:I

    return-void
.end method

.method public blacklist setSatelliteMedianRsrq(I)V
    .locals 0

    .line 526
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRsrq:I

    return-void
.end method

.method public blacklist setSatelliteMedianRssnr(I)V
    .locals 0

    .line 534
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRssnr:I

    return-void
.end method

.method public blacklist setSatelliteMinGapTimeDuringSession(I)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMinGapTimeDuringSession:I

    return-void
.end method

.method public blacklist setSatelliteMmsReceivedCount(I)V
    .locals 0

    .line 498
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMmsReceivedCount:I

    return-void
.end method

.method public blacklist setSatelliteMmsSentCount(I)V
    .locals 0

    .line 502
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMmsSentCount:I

    return-void
.end method

.method public blacklist setSatelliteNumberOfPci(I)V
    .locals 0

    .line 575
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteNumberOfPci:I

    return-void
.end method

.method public blacklist setSatelliteRegisteredPlmnString(Ljava/lang/String;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredPlmnString:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSatelliteRegisteredTac(I)V
    .locals 0

    .line 550
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredTac:I

    return-void
.end method

.method public blacklist setSatelliteSimPlmnString(Ljava/lang/String;)V
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSimPlmnString:Ljava/lang/String;

    return-void
.end method

.method public blacklist setSatelliteSmsReceivedCount(I)V
    .locals 0

    .line 542
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSmsReceivedCount:I

    return-void
.end method

.method public blacklist setSatelliteSmsSentCount(I)V
    .locals 0

    .line 546
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSmsSentCount:I

    return-void
.end method

.method public blacklist setSatelliteTerrestrialNetworkStateChange(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 555
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkScanState:I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 558
    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkScanState:I

    if-nez v1, :cond_2

    .line 559
    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSearchingReqCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSearchingReqCount:I

    .line 560
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkScanState:I

    return-void

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 563
    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkScanState:I

    if-ne v1, v0, :cond_2

    .line 564
    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSuccessCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSuccessCount:I

    .line 565
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkScanState:I

    :cond_2
    return-void
.end method

.method public blacklist setSatelliteTotalDurationOfSession(I)V
    .locals 0

    .line 571
    iput p1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTotalDurationOfSession:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 632
    const-string v1, "{\"CONN_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->getNumberOfSatelliteConnections()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    const-string v1, "\",\"CONN_T\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTotalConnectionTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    const-string v1, "\",\"ENABLE_CAUSE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEnableCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, "\",\"END_CAUSE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEndCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    const-string v1, "\",\"ESOS_TX_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteEmergenySosFailCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, "\",\"GAP_MAX_T\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMaxGapTimeDuringSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    const-string v1, "\",\"GAP_MEAN_T\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMeanGapTimeDuringSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, "\",\"GAP_MIN_T\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMinGapTimeDuringSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, "\",\"INIT_T\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteInitializeTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 641
    const-string v1, "\",\"LOC_SHAR_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteLocationSharingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    const-string v1, "\",\"MEAN_T\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteConnectionMeanTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 643
    const-string v1, "\",\"MMX_RX_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMmsReceivedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, "\",\"MMX_TX_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMmsSentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, "\",\"PLMN\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredPlmnString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v1, "\",\"ROAM\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteIsRoaming:Z

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string v1, "\",\"RSRP_AVG\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 648
    const-string v1, "\",\"RSRP_MED\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    const-string v1, "\",\"RSRQ_AVG\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, "\",\"RSRQ_MED\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, "\",\"RSSNR_AVG\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteAverageRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 652
    const-string v1, "\",\"RSSNR_MED\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteMedianRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, "\",\"SIM_PLMN\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSimPlmnString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v1, "\",\"SMS_RX_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSmsReceivedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    const-string v1, "\",\"SMS_TX_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteSmsSentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 656
    const-string v1, "\",\"TAC\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredTac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    const-string v1, "\",\"TN_SCAN_CNT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSuccessCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTerrestrialNetworkSearchingReqCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v1, "\",\"TTIME\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteTotalDurationOfSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    const-string v1, "\",\"TYPE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteRegisteredServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    const-string v1, "\",\"PCI_N\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteNumberOfPci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 662
    const-string v1, "\",\"SATID\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/satellite/SatelliteSessionStatusInfos;->mSatelliteId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
