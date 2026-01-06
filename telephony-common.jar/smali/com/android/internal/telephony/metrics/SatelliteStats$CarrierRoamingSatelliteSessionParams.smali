.class public Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CarrierRoamingSatelliteSessionParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAverageDownlinkBandwidthKbps:I

.field private final blacklist mAverageUplinkBandwidthKbps:I

.field private final blacklist mAvgDurationOfSatelliteConnectionSec:I

.field private final blacklist mCarrierId:I

.field private final blacklist mCountOfDataConnections:I

.field private final blacklist mCountOfDataDisconnections:I

.field private final blacklist mCountOfDataStalls:I

.field private final blacklist mCountOfIncomingMms:I

.field private final blacklist mCountOfIncomingSms:I

.field private final blacklist mCountOfOutgoingMms:I

.field private final blacklist mCountOfOutgoingSms:I

.field private final blacklist mIsMultiSim:Z

.field private final blacklist mIsNbIotNtn:Z

.field private final blacklist mIsNtnRoamingInHomeCountry:Z

.field private final blacklist mLastFailCauses:[I

.field private final blacklist mMaxDownlinkBandwidthKbps:I

.field private final blacklist mMaxUplinkBandwidthKbps:I

.field private final blacklist mMinDownlinkBandwidthKbps:I

.field private final blacklist mMinUplinkBandwidthKbps:I

.field private final blacklist mNumberOfSatelliteConnections:I

.field private final blacklist mPerAppSatelliteDataConsumedBytes:[J

.field private final blacklist mRsrpAvg:I

.field private final blacklist mRsrpMedian:I

.field private final blacklist mRssnrAvg:I

.field private final blacklist mRssnrMedian:I

.field private final blacklist mSatelliteConnectionGapAvgSec:I

.field private final blacklist mSatelliteConnectionGapMaxSec:I

.field private final blacklist mSatelliteConnectionGapMinSec:I

.field private final blacklist mSatelliteDataConsumedBytes:J

.field private final blacklist mSatelliteSupportedApps:[Ljava/lang/String;

.field private final blacklist mSatelliteSupportedUids:[I

.field private final blacklist mServiceDataPolicy:I

.field private final blacklist mSupportedSatelliteServices:[I

.field private final blacklist mTotalSatelliteModeTimeSec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAverageDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageDownlinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAverageUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageUplinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDataConnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataConnections:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDataDisconnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataDisconnections:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDataStalls(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataStalls:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastFailCauses(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mLastFailCauses:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxDownlinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxUplinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinDownlinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinUplinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPerAppSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mPerAppSatelliteDataConsumedBytes:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRsrpAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRsrpMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssnrAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssnrMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSupportedApps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedApps:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSupportedUids(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedUids:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceDataPolicy(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedSatelliteServices(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    return-object p0
.end method

.method private constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1951
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCarrierId:I

    .line 1952
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmIsNtnRoamingInHomeCountry(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNtnRoamingInHomeCountry:Z

    .line 1953
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmTotalSatelliteModeTimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mTotalSatelliteModeTimeSec:I

    .line 1954
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmNumberOfSatelliteConnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mNumberOfSatelliteConnections:I

    .line 1955
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmAvgDurationOfSatelliteConnectionSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAvgDurationOfSatelliteConnectionSec:I

    .line 1957
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteConnectionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    .line 1958
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteConnectionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    .line 1959
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteConnectionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    .line 1960
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRsrpAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    .line 1961
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRsrpMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    .line 1962
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRssnrAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    .line 1963
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmRssnrMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    .line 1964
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    .line 1965
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    .line 1966
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfIncomingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    .line 1967
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfOutgoingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    .line 1968
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSupportedSatelliteServices(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    .line 1969
    iget p1, p2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mServiceDataPolicy:I

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    .line 1970
    iget-wide v0, p2, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteDataConsumedBytes:J

    iput-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    .line 1972
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsMultiSim:Z

    .line 1973
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmIsNbIotNtn(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNbIotNtn:Z

    .line 1974
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfDataConnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataConnections:I

    .line 1975
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmLastFailCauses(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mLastFailCauses:[I

    .line 1976
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfDataDisconnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataDisconnections:I

    .line 1977
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmCountOfDataStalls(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataStalls:I

    .line 1978
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmAverageUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageUplinkBandwidthKbps:I

    .line 1979
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmAverageDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageDownlinkBandwidthKbps:I

    .line 1980
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmMinUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinUplinkBandwidthKbps:I

    .line 1981
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmMaxUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxUplinkBandwidthKbps:I

    .line 1982
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmMinDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinDownlinkBandwidthKbps:I

    .line 1983
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmMaxDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxDownlinkBandwidthKbps:I

    .line 1984
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteSupportedApps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedApps:[Ljava/lang/String;

    .line 1985
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmSatelliteSupportedUids(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedUids:[I

    .line 1986
    invoke-static {p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->-$$Nest$fgetmPerAppSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mPerAppSatelliteDataConsumedBytes:[J

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)V

    return-void
.end method


# virtual methods
.method public blacklist getAverageDownlinkBandwidthKbps()I
    .locals 0

    .line 2094
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageDownlinkBandwidthKbps:I

    return p0
.end method

.method public blacklist getAverageUplinkBandwidthKbps()I
    .locals 0

    .line 2090
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageUplinkBandwidthKbps:I

    return p0
.end method

.method public blacklist getAvgDurationOfSatelliteConnectionSec()I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAvgDurationOfSatelliteConnectionSec:I

    return p0
.end method

.method public blacklist getCarrierId()I
    .locals 0

    .line 1990
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCarrierId:I

    return p0
.end method

.method public blacklist getCountOfDataConnections()I
    .locals 0

    .line 2074
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataConnections:I

    return p0
.end method

.method public blacklist getCountOfDataDisconnections()I
    .locals 0

    .line 2082
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataDisconnections:I

    return p0
.end method

.method public blacklist getCountOfDataStalls()I
    .locals 0

    .line 2086
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataStalls:I

    return p0
.end method

.method public blacklist getCountOfIncomingMms()I
    .locals 0

    .line 2046
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    return p0
.end method

.method public blacklist getCountOfIncomingSms()I
    .locals 0

    .line 2038
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    return p0
.end method

.method public blacklist getCountOfOutgoingMms()I
    .locals 0

    .line 2050
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    return p0
.end method

.method public blacklist getCountOfOutgoingSms()I
    .locals 0

    .line 2042
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    return p0
.end method

.method public blacklist getIsNtnRoamingInHomeCountry()Z
    .locals 0

    .line 1994
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNtnRoamingInHomeCountry:Z

    return p0
.end method

.method public blacklist getLastFailCauses()[I
    .locals 0

    .line 2078
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mLastFailCauses:[I

    return-object p0
.end method

.method public blacklist getMaximumDownlinkBandwidthKbps()I
    .locals 0

    .line 2110
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxDownlinkBandwidthKbps:I

    return p0
.end method

.method public blacklist getMaximumUplinkBandwidthKbps()I
    .locals 0

    .line 2102
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxUplinkBandwidthKbps:I

    return p0
.end method

.method public blacklist getMinimumDownlinkBandwidthKbps()I
    .locals 0

    .line 2106
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinDownlinkBandwidthKbps:I

    return p0
.end method

.method public blacklist getMinimumUplinkBandwidthKbps()I
    .locals 0

    .line 2098
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinUplinkBandwidthKbps:I

    return p0
.end method

.method public blacklist getNumberOfSatelliteConnections()I
    .locals 0

    .line 2002
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mNumberOfSatelliteConnections:I

    return p0
.end method

.method public blacklist getPerAppSatelliteDataConsumedBytes()[J
    .locals 0

    .line 2122
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mPerAppSatelliteDataConsumedBytes:[J

    return-object p0
.end method

.method public blacklist getRsrpAvg()I
    .locals 0

    .line 2022
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    return p0
.end method

.method public blacklist getRsrpMedian()I
    .locals 0

    .line 2026
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    return p0
.end method

.method public blacklist getRssnrAvg()I
    .locals 0

    .line 2030
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    return p0
.end method

.method public blacklist getRssnrMedian()I
    .locals 0

    .line 2034
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    return p0
.end method

.method public blacklist getSatelliteConnectionGapAvgSec()I
    .locals 0

    .line 2014
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    return p0
.end method

.method public blacklist getSatelliteConnectionGapMaxSec()I
    .locals 0

    .line 2018
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    return p0
.end method

.method public blacklist getSatelliteConnectionGapMinSec()I
    .locals 0

    .line 2010
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    return p0
.end method

.method public blacklist getSatelliteDataConsumedBytes()J
    .locals 2

    .line 2062
    iget-wide v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    return-wide v0
.end method

.method public blacklist getSatelliteSupportedApps()[Ljava/lang/String;
    .locals 0

    .line 2114
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedApps:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSatelliteSupportedUids()[I
    .locals 0

    .line 2118
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedUids:[I

    return-object p0
.end method

.method public blacklist getServiceDataPolicy()I
    .locals 0

    .line 2058
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    return p0
.end method

.method public blacklist getSupportedSatelliteServices()[I
    .locals 0

    .line 2054
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    return-object p0
.end method

.method public blacklist getTotalSatelliteModeTimeSec()I
    .locals 0

    .line 1998
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mTotalSatelliteModeTimeSec:I

    return p0
.end method

.method public blacklist isMultiSim()Z
    .locals 0

    .line 2066
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsMultiSim:Z

    return p0
.end method

.method public blacklist isNbIotNtn()Z
    .locals 0

    .line 2070
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNbIotNtn:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierRoamingSatelliteSessionParams(carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCarrierId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isNtnRoamingInHomeCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNtnRoamingInHomeCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", totalSatelliteModeTimeSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mTotalSatelliteModeTimeSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numberOfSatelliteConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mNumberOfSatelliteConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", avgDurationOfSatelliteConnectionSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAvgDurationOfSatelliteConnectionSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteConnectionGapMinSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMinSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteConnectionGapAvgSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapAvgSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteConnectionGapMaxSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteConnectionGapMaxSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrpAvg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpAvg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsrpMedian="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRsrpMedian:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssnrAvg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrAvg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rssnrMedian="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mRssnrMedian:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingSms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingSms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingSms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfIncomingMms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfIncomingMms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfOutgoingMms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfOutgoingMms:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", supportedSatelliteServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSupportedSatelliteServices:[I

    .line 2509
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", serviceDataPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mServiceDataPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SatelliteDataConsumedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteDataConsumedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsMultiSim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNbIotNtn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mIsNbIotNtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDataConnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastFailCauses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mLastFailCauses:[I

    .line 2515
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDataDisconnections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataDisconnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countOfDataStalls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mCountOfDataStalls:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", averageUplinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageUplinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", averageDownlinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mAverageDownlinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minUplinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinUplinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxUplinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxUplinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minDownlinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMinDownlinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxDownlinkBandwidthKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mMaxDownlinkBandwidthKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteSupportedApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedApps:[Ljava/lang/String;

    .line 2524
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", satelliteSupportedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mSatelliteSupportedUids:[I

    .line 2525
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", perAppSatelliteDataConsumedBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;->mPerAppSatelliteDataConsumedBytes:[J

    .line 2526
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
