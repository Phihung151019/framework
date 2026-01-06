.class public Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
.super Ljava/lang/Object;
.source "SatelliteStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAverageDownlinkBandwidthKbps:I

.field private blacklist mAverageUplinkBandwidthKbps:I

.field private blacklist mAvgDurationOfSatelliteConnectionSec:I

.field private blacklist mCarrierId:I

.field private blacklist mCountOfDataConnections:I

.field private blacklist mCountOfDataDisconnections:I

.field private blacklist mCountOfDataStalls:I

.field private blacklist mCountOfIncomingMms:I

.field private blacklist mCountOfIncomingSms:I

.field private blacklist mCountOfOutgoingMms:I

.field private blacklist mCountOfOutgoingSms:I

.field private blacklist mIsMultiSim:Z

.field private blacklist mIsNbIotNtn:Z

.field private blacklist mIsNtnRoamingInHomeCountry:Z

.field private blacklist mLastFailCauses:[I

.field private blacklist mMaxDownlinkBandwidthKbps:I

.field private blacklist mMaxUplinkBandwidthKbps:I

.field private blacklist mMinDownlinkBandwidthKbps:I

.field private blacklist mMinUplinkBandwidthKbps:I

.field private blacklist mNumberOfSatelliteConnections:I

.field private blacklist mPerAppSatelliteDataConsumedBytes:[J

.field private blacklist mRsrpAvg:I

.field private blacklist mRsrpMedian:I

.field private blacklist mRssnrAvg:I

.field private blacklist mRssnrMedian:I

.field private blacklist mSatelliteConnectionGapAvgSec:I

.field private blacklist mSatelliteConnectionGapMaxSec:I

.field private blacklist mSatelliteConnectionGapMinSec:I

.field blacklist mSatelliteDataConsumedBytes:J

.field private blacklist mSatelliteSupportedApps:[Ljava/lang/String;

.field private blacklist mSatelliteSupportedUids:[I

.field blacklist mServiceDataPolicy:I

.field private blacklist mSupportedSatelliteServices:[I

.field private blacklist mTotalSatelliteModeTimeSec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAverageDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAverageDownlinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAverageUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAverageUplinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAvgDurationOfSatelliteConnectionSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAvgDurationOfSatelliteConnectionSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCarrierId(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDataConnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataConnections:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDataDisconnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataDisconnections:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfDataStalls(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataStalls:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfIncomingMms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfIncomingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfIncomingSms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingMms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfOutgoingMms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountOfOutgoingSms(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfOutgoingSms:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsMultiSim(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsMultiSim:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNbIotNtn(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsNbIotNtn:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNtnRoamingInHomeCountry(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsNtnRoamingInHomeCountry:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastFailCauses(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mLastFailCauses:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMaxDownlinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMaxUplinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinDownlinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMinDownlinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinUplinkBandwidthKbps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMinUplinkBandwidthKbps:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumberOfSatelliteConnections(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mNumberOfSatelliteConnections:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPerAppSatelliteDataConsumedBytes(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mPerAppSatelliteDataConsumedBytes:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRsrpAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRsrpAvg:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRsrpMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRsrpMedian:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssnrAvg(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRssnrAvg:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssnrMedian(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRssnrMedian:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapAvgSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapAvgSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapMaxSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapMaxSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteConnectionGapMinSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapMinSec:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSupportedApps(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteSupportedApps:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteSupportedUids(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteSupportedUids:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedSatelliteServices(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSupportedSatelliteServices:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalSatelliteModeTimeSec(Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mTotalSatelliteModeTimeSec:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 5

    .line 2129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2130
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCarrierId:I

    const/4 v0, 0x0

    .line 2131
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsNtnRoamingInHomeCountry:Z

    .line 2132
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mTotalSatelliteModeTimeSec:I

    .line 2133
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mNumberOfSatelliteConnections:I

    .line 2134
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAvgDurationOfSatelliteConnectionSec:I

    .line 2135
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapMinSec:I

    .line 2136
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapAvgSec:I

    .line 2137
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapMaxSec:I

    .line 2138
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRsrpAvg:I

    .line 2139
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRsrpMedian:I

    .line 2140
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRssnrAvg:I

    .line 2141
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRssnrMedian:I

    .line 2142
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfIncomingSms:I

    .line 2143
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfOutgoingSms:I

    .line 2144
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfIncomingMms:I

    .line 2145
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfOutgoingMms:I

    .line 2146
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSupportedSatelliteServices:[I

    .line 2147
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mServiceDataPolicy:I

    const-wide/16 v1, 0x0

    .line 2149
    iput-wide v1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteDataConsumedBytes:J

    .line 2150
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsMultiSim:Z

    .line 2151
    iput-boolean v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsNbIotNtn:Z

    .line 2152
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataConnections:I

    const/4 v3, 0x5

    .line 2153
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mLastFailCauses:[I

    .line 2154
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataDisconnections:I

    .line 2155
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataStalls:I

    .line 2156
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAverageUplinkBandwidthKbps:I

    .line 2157
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAverageDownlinkBandwidthKbps:I

    const v4, 0x7fffffff

    .line 2158
    iput v4, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMinUplinkBandwidthKbps:I

    .line 2159
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMaxUplinkBandwidthKbps:I

    .line 2160
    iput v4, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMinDownlinkBandwidthKbps:I

    .line 2161
    iput v0, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMaxDownlinkBandwidthKbps:I

    const/4 v4, 0x0

    .line 2162
    iput-object v4, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteSupportedApps:[Ljava/lang/String;

    .line 2163
    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteSupportedUids:[I

    const/4 v3, 0x1

    .line 2164
    new-array v3, v3, [J

    aput-wide v1, v3, v0

    iput-object v3, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mPerAppSatelliteDataConsumedBytes:[J

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;
    .locals 3

    .line 2356
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;

    new-instance v1, Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/metrics/SatelliteStats;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams;-><init>(Lcom/android/internal/telephony/metrics/SatelliteStats;Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;Lcom/android/internal/telephony/metrics/SatelliteStats-IA;)V

    return-object v0
.end method

.method public blacklist setAverageDownlinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2420
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAverageDownlinkBandwidthKbps:I

    return-object p0
.end method

.method public blacklist setAverageUplinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2411
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAverageUplinkBandwidthKbps:I

    return-object p0
.end method

.method public blacklist setAvgDurationOfSatelliteConnectionSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2209
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mAvgDurationOfSatelliteConnectionSec:I

    return-object p0
.end method

.method public blacklist setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2171
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCarrierId:I

    return-object p0
.end method

.method public blacklist setCountOfDataConnections(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2374
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataConnections:I

    return-object p0
.end method

.method public blacklist setCountOfDataDisconnections(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2393
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataDisconnections:I

    return-object p0
.end method

.method public blacklist setCountOfDataStalls(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2402
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfDataStalls:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingMms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2300
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfIncomingMms:I

    return-object p0
.end method

.method public blacklist setCountOfIncomingSms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2282
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfIncomingSms:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingMms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2309
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfOutgoingMms:I

    return-object p0
.end method

.method public blacklist setCountOfOutgoingSms(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2291
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mCountOfOutgoingSms:I

    return-object p0
.end method

.method public blacklist setIsMultiSim(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2347
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsMultiSim:Z

    return-object p0
.end method

.method public blacklist setIsNbIotNtn(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2365
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsNbIotNtn:Z

    return-object p0
.end method

.method public blacklist setIsNtnRoamingInHomeCountry(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2180
    iput-boolean p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mIsNtnRoamingInHomeCountry:Z

    return-object p0
.end method

.method public blacklist setLastFailCauses([I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2383
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mLastFailCauses:[I

    .line 2384
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public blacklist setMaximumDownlinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2456
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMaxDownlinkBandwidthKbps:I

    return-object p0
.end method

.method public blacklist setMaximumUplinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2438
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMaxUplinkBandwidthKbps:I

    return-object p0
.end method

.method public blacklist setMinimumDownlinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2447
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMinDownlinkBandwidthKbps:I

    return-object p0
.end method

.method public blacklist setMinimumUplinkBandwidthKbps(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2429
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mMinUplinkBandwidthKbps:I

    return-object p0
.end method

.method public blacklist setNumberOfSatelliteConnections(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2199
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mNumberOfSatelliteConnections:I

    return-object p0
.end method

.method public blacklist setPerAppSatelliteDataConsumedBytes([J)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2484
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mPerAppSatelliteDataConsumedBytes:[J

    return-object p0
.end method

.method public blacklist setRsrpAvg(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2245
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRsrpAvg:I

    return-object p0
.end method

.method public blacklist setRsrpMedian(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2254
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRsrpMedian:I

    return-object p0
.end method

.method public blacklist setRssnrAvg(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2263
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRssnrAvg:I

    return-object p0
.end method

.method public blacklist setRssnrMedian(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2272
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mRssnrMedian:I

    return-object p0
.end method

.method public blacklist setSatelliteConnectionGapAvgSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2227
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapAvgSec:I

    return-object p0
.end method

.method public blacklist setSatelliteConnectionGapMaxSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2236
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapMaxSec:I

    return-object p0
.end method

.method public blacklist setSatelliteConnectionGapMinSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2218
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteConnectionGapMinSec:I

    return-object p0
.end method

.method public blacklist setSatelliteDataConsumedBytes(J)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2338
    iput-wide p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteDataConsumedBytes:J

    return-object p0
.end method

.method public blacklist setSatelliteSupportedApps([Ljava/lang/String;)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2465
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteSupportedApps:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSatelliteSupportedUids([I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2474
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSatelliteSupportedUids:[I

    return-object p0
.end method

.method public blacklist setServiceDataPolicy(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2328
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mServiceDataPolicy:I

    return-object p0
.end method

.method public blacklist setSupportedSatelliteServices([I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2318
    iput-object p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mSupportedSatelliteServices:[I

    .line 2319
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-object p0
.end method

.method public blacklist setTotalSatelliteModeTimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;
    .locals 0

    .line 2189
    iput p1, p0, Lcom/android/internal/telephony/metrics/SatelliteStats$CarrierRoamingSatelliteSessionParams$Builder;->mTotalSatelliteModeTimeSec:I

    return-object p0
.end method
