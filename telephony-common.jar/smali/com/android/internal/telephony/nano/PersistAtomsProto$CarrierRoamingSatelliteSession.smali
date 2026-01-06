.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;


# instance fields
.field public blacklist averageDownlinkBandwidthKbps:I

.field public blacklist averageUplinkBandwidthKbps:I

.field public blacklist avgDurationOfSatelliteConnectionSec:I

.field public blacklist carrierId:I

.field public blacklist countOfDataConnections:I

.field public blacklist countOfDataDisconnections:I

.field public blacklist countOfDataStalls:I

.field public blacklist countOfIncomingMms:I

.field public blacklist countOfIncomingSms:I

.field public blacklist countOfOutgoingMms:I

.field public blacklist countOfOutgoingSms:I

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNtnRoamingInHomeCountry:Z

.field public blacklist lastFailCauses:[I

.field public blacklist maxDownlinkBandwidthKbps:I

.field public blacklist maxUplinkBandwidthKbps:I

.field public blacklist minDownlinkBandwidthKbps:I

.field public blacklist minUplinkBandwidthKbps:I

.field public blacklist numberOfSatelliteConnections:I

.field public blacklist perAppSatelliteDataConsumedBytes:[J

.field public blacklist rsrpAvg:I

.field public blacklist rsrpMedian:I

.field public blacklist rssnrAvg:I

.field public blacklist rssnrMedian:I

.field public blacklist satelliteConnectionGapAvgSec:I

.field public blacklist satelliteConnectionGapMaxSec:I

.field public blacklist satelliteConnectionGapMinSec:I

.field public blacklist satelliteDataConsumedBytes:J

.field public blacklist satelliteSupportedApps:[Ljava/lang/String;

.field public blacklist satelliteSupportedUids:[I

.field public blacklist serviceDataPolicy:I

.field public blacklist supportedSatelliteServices:[I

.field public blacklist totalSatelliteModeTimeSec:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11014
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11015
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .locals 2

    .line 10901
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    if-nez v0, :cond_1

    .line 10902
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10904
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 10905
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10907
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10909
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11675
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 11669
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .locals 4

    const/4 v0, 0x0

    .line 11019
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    .line 11020
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    .line 11021
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    .line 11022
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    .line 11023
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    .line 11024
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    .line 11025
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    .line 11026
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    .line 11027
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    .line 11028
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    .line 11029
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    .line 11030
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    .line 11031
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    .line 11032
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    .line 11033
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    .line 11034
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    .line 11035
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    .line 11036
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    const-wide/16 v2, 0x0

    .line 11037
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    .line 11038
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    .line 11039
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    .line 11040
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataConnections:I

    .line 11041
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    .line 11042
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataDisconnections:I

    .line 11043
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataStalls:I

    .line 11044
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageUplinkBandwidthKbps:I

    .line 11045
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageDownlinkBandwidthKbps:I

    .line 11046
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minUplinkBandwidthKbps:I

    .line 11047
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxUplinkBandwidthKbps:I

    .line 11048
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minDownlinkBandwidthKbps:I

    .line 11049
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxDownlinkBandwidthKbps:I

    .line 11050
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    .line 11051
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    .line 11052
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    const/4 v0, 0x0

    .line 11053
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 11054
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 8

    .line 11181
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 11182
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 11184
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11186
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 11188
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11190
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 11192
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11194
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    if-eqz v1, :cond_3

    const/4 v3, 0x4

    .line 11196
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11198
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    if-eqz v1, :cond_4

    const/4 v3, 0x5

    .line 11200
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11202
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    if-eqz v1, :cond_5

    const/4 v3, 0x6

    .line 11204
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11206
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    if-eqz v1, :cond_6

    const/4 v3, 0x7

    .line 11208
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11210
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    if-eqz v1, :cond_7

    const/16 v3, 0x8

    .line 11212
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11214
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    if-eqz v1, :cond_8

    const/16 v3, 0x9

    .line 11216
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11218
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    if-eqz v1, :cond_9

    const/16 v3, 0xa

    .line 11220
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11222
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    if-eqz v1, :cond_a

    const/16 v3, 0xb

    .line 11224
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11226
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    if-eqz v1, :cond_b

    const/16 v3, 0xc

    .line 11228
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11230
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    if-eqz v1, :cond_c

    const/16 v3, 0xd

    .line 11232
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11234
    :cond_c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    if-eqz v1, :cond_d

    const/16 v3, 0xe

    .line 11236
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11238
    :cond_d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    if-eqz v1, :cond_e

    const/16 v3, 0xf

    .line 11240
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11242
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    if-eqz v1, :cond_f

    const/16 v3, 0x10

    .line 11244
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11246
    :cond_f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    move v1, v3

    move v4, v1

    .line 11248
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    array-length v6, v5

    if-ge v1, v6, :cond_10

    .line 11249
    aget v5, v5, v1

    .line 11251
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_10
    add-int/2addr v0, v4

    .line 11254
    array-length v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 11256
    :cond_11
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    if-eqz v1, :cond_12

    const/16 v4, 0x12

    .line 11258
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11260
    :cond_12
    iget-wide v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    .line 11262
    invoke-static {v1, v4, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11264
    :cond_13
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    if-eqz v1, :cond_14

    const/16 v4, 0x14

    .line 11266
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11268
    :cond_14
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    if-eqz v1, :cond_15

    const/16 v4, 0x15

    .line 11270
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11272
    :cond_15
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataConnections:I

    if-eqz v1, :cond_16

    const/16 v4, 0x16

    .line 11274
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11276
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    if-eqz v1, :cond_18

    array-length v1, v1

    if-lez v1, :cond_18

    move v1, v3

    move v4, v1

    .line 11278
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    array-length v6, v5

    if-ge v1, v6, :cond_17

    .line 11279
    aget v5, v5, v1

    .line 11281
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_17
    add-int/2addr v0, v4

    .line 11284
    array-length v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 11286
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataDisconnections:I

    if-eqz v1, :cond_19

    const/16 v4, 0x18

    .line 11288
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11290
    :cond_19
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataStalls:I

    if-eqz v1, :cond_1a

    const/16 v4, 0x19

    .line 11292
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11294
    :cond_1a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageUplinkBandwidthKbps:I

    if-eqz v1, :cond_1b

    const/16 v4, 0x1a

    .line 11296
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11298
    :cond_1b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageDownlinkBandwidthKbps:I

    if-eqz v1, :cond_1c

    const/16 v4, 0x1b

    .line 11300
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11302
    :cond_1c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minUplinkBandwidthKbps:I

    if-eqz v1, :cond_1d

    const/16 v4, 0x1c

    .line 11304
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11306
    :cond_1d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxUplinkBandwidthKbps:I

    if-eqz v1, :cond_1e

    const/16 v4, 0x1d

    .line 11308
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11310
    :cond_1e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minDownlinkBandwidthKbps:I

    if-eqz v1, :cond_1f

    const/16 v4, 0x1e

    .line 11312
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11314
    :cond_1f
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxDownlinkBandwidthKbps:I

    if-eqz v1, :cond_20

    const/16 v4, 0x1f

    .line 11316
    invoke-static {v4, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11318
    :cond_20
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    if-eqz v1, :cond_23

    array-length v1, v1

    if-lez v1, :cond_23

    move v1, v3

    move v4, v1

    move v5, v4

    .line 11321
    :goto_2
    iget-object v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    array-length v7, v6

    if-ge v1, v7, :cond_22

    .line 11322
    aget-object v6, v6, v1

    if-eqz v6, :cond_21

    add-int/lit8 v5, v5, 0x1

    .line 11326
    invoke-static {v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    .line 11332
    :cond_23
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    if-eqz v1, :cond_25

    array-length v1, v1

    if-lez v1, :cond_25

    move v1, v3

    move v4, v1

    .line 11334
    :goto_3
    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    array-length v6, v5

    if-ge v1, v6, :cond_24

    .line 11335
    aget v5, v5, v1

    .line 11337
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_24
    add-int/2addr v0, v4

    .line 11340
    array-length v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 11342
    :cond_25
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    if-eqz v1, :cond_27

    array-length v1, v1

    if-lez v1, :cond_27

    move v1, v3

    .line 11344
    :goto_4
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    array-length v5, v4

    if-ge v3, v5, :cond_26

    .line 11345
    aget-wide v4, v4, v3

    .line 11347
    invoke-static {v4, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_26
    add-int/2addr v0, v1

    .line 11350
    array-length p0, v4

    mul-int/2addr p0, v2

    add-int/2addr v0, p0

    :cond_27
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11360
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 11365
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_17

    .line 11641
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 11642
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 11645
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 11646
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_1

    .line 11647
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11650
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 11651
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    if-nez v2, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    array-length v4, v2

    :goto_2
    add-int/2addr v3, v4

    .line 11652
    new-array v5, v3, [J

    if-eqz v4, :cond_3

    .line 11654
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    if-ge v4, v3, :cond_4

    .line 11657
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 11659
    :cond_4
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    .line 11660
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x110

    .line 11625
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11626
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    if-nez v2, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    array-length v3, v2

    :goto_4
    add-int/2addr v0, v3

    .line 11627
    new-array v4, v0, [J

    if-eqz v3, :cond_6

    .line 11629
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_7

    .line 11632
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    aput-wide v1, v4, v3

    .line 11633
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 11636
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    aput-wide v0, v4, v3

    .line 11637
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    goto :goto_0

    .line 11601
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 11602
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 11605
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 11606
    :goto_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_8

    .line 11607
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 11610
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 11611
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    if-nez v2, :cond_9

    move v4, v1

    goto :goto_7

    :cond_9
    array-length v4, v2

    :goto_7
    add-int/2addr v3, v4

    .line 11612
    new-array v5, v3, [I

    if-eqz v4, :cond_a

    .line 11614
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    if-ge v4, v3, :cond_b

    .line 11617
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 11619
    :cond_b
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    .line 11620
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x108

    .line 11585
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11586
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    if-nez v2, :cond_c

    move v3, v1

    goto :goto_9

    :cond_c
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    .line 11587
    new-array v4, v0, [I

    if-eqz v3, :cond_d

    .line 11589
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_e

    .line 11592
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 11593
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 11596
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 11597
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x102

    .line 11568
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11569
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    if-nez v2, :cond_f

    move v3, v1

    goto :goto_b

    :cond_f
    array-length v3, v2

    :goto_b
    add-int/2addr v0, v3

    .line 11570
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 11572
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_11

    .line 11575
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 11576
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 11579
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 11580
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    goto/16 :goto_0

    .line 11563
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxDownlinkBandwidthKbps:I

    goto/16 :goto_0

    .line 11559
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minDownlinkBandwidthKbps:I

    goto/16 :goto_0

    .line 11555
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxUplinkBandwidthKbps:I

    goto/16 :goto_0

    .line 11551
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minUplinkBandwidthKbps:I

    goto/16 :goto_0

    .line 11547
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageDownlinkBandwidthKbps:I

    goto/16 :goto_0

    .line 11543
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageUplinkBandwidthKbps:I

    goto/16 :goto_0

    .line 11539
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataStalls:I

    goto/16 :goto_0

    .line 11535
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataDisconnections:I

    goto/16 :goto_0

    .line 11512
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 11513
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 11516
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 11517
    :goto_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_12

    .line 11518
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 11521
    :cond_12
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 11522
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    if-nez v2, :cond_13

    move v4, v1

    goto :goto_e

    :cond_13
    array-length v4, v2

    :goto_e
    add-int/2addr v3, v4

    .line 11523
    new-array v5, v3, [I

    if-eqz v4, :cond_14

    .line 11525
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_f
    if-ge v4, v3, :cond_15

    .line 11528
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 11530
    :cond_15
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    .line 11531
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0xb8

    .line 11496
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11497
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    if-nez v2, :cond_16

    move v3, v1

    goto :goto_10

    :cond_16
    array-length v3, v2

    :goto_10
    add-int/2addr v0, v3

    .line 11498
    new-array v4, v0, [I

    if-eqz v3, :cond_17

    .line 11500
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_11
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_18

    .line 11503
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 11504
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 11507
    :cond_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 11508
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    goto/16 :goto_0

    .line 11491
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataConnections:I

    goto/16 :goto_0

    .line 11487
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    goto/16 :goto_0

    .line 11483
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    goto/16 :goto_0

    .line 11479
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    goto/16 :goto_0

    .line 11475
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    goto/16 :goto_0

    .line 11452
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 11453
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 11456
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 11457
    :goto_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_19

    .line 11458
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 11461
    :cond_19
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 11462
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    if-nez v2, :cond_1a

    move v4, v1

    goto :goto_13

    :cond_1a
    array-length v4, v2

    :goto_13
    add-int/2addr v3, v4

    .line 11463
    new-array v5, v3, [I

    if-eqz v4, :cond_1b

    .line 11465
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_14
    if-ge v4, v3, :cond_1c

    .line 11468
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 11470
    :cond_1c
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    .line 11471
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_15
    const/16 v0, 0x88

    .line 11436
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 11437
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    if-nez v2, :cond_1d

    move v3, v1

    goto :goto_15

    :cond_1d
    array-length v3, v2

    :goto_15
    add-int/2addr v0, v3

    .line 11438
    new-array v4, v0, [I

    if-eqz v3, :cond_1e

    .line 11440
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    :goto_16
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1f

    .line 11443
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 11444
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 11447
    :cond_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 11448
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    goto/16 :goto_0

    .line 11431
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    goto/16 :goto_0

    .line 11427
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    goto/16 :goto_0

    .line 11423
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    goto/16 :goto_0

    .line 11419
    :sswitch_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    goto/16 :goto_0

    .line 11415
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    goto/16 :goto_0

    .line 11411
    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    goto/16 :goto_0

    .line 11407
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    goto/16 :goto_0

    .line 11403
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    goto/16 :goto_0

    .line 11399
    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    goto/16 :goto_0

    .line 11395
    :sswitch_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    goto/16 :goto_0

    .line 11391
    :sswitch_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    goto/16 :goto_0

    .line 11387
    :sswitch_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    goto/16 :goto_0

    .line 11383
    :sswitch_22
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    goto/16 :goto_0

    .line 11379
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    goto/16 :goto_0

    .line 11375
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    goto/16 :goto_0

    .line 11371
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    goto/16 :goto_0

    :goto_17
    :sswitch_26
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_26
        0x8 -> :sswitch_25
        0x10 -> :sswitch_24
        0x18 -> :sswitch_23
        0x20 -> :sswitch_22
        0x28 -> :sswitch_21
        0x30 -> :sswitch_20
        0x38 -> :sswitch_1f
        0x40 -> :sswitch_1e
        0x48 -> :sswitch_1d
        0x50 -> :sswitch_1c
        0x58 -> :sswitch_1b
        0x60 -> :sswitch_1a
        0x68 -> :sswitch_19
        0x70 -> :sswitch_18
        0x78 -> :sswitch_17
        0x80 -> :sswitch_16
        0x88 -> :sswitch_15
        0x8a -> :sswitch_14
        0x90 -> :sswitch_13
        0x98 -> :sswitch_12
        0xa0 -> :sswitch_11
        0xa8 -> :sswitch_10
        0xb0 -> :sswitch_f
        0xb8 -> :sswitch_e
        0xba -> :sswitch_d
        0xc0 -> :sswitch_c
        0xc8 -> :sswitch_b
        0xd0 -> :sswitch_a
        0xd8 -> :sswitch_9
        0xe0 -> :sswitch_8
        0xe8 -> :sswitch_7
        0xf0 -> :sswitch_6
        0xf8 -> :sswitch_5
        0x102 -> :sswitch_4
        0x108 -> :sswitch_3
        0x10a -> :sswitch_2
        0x110 -> :sswitch_1
        0x112 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10895
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11061
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->carrierId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 11062
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11064
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNtnRoamingInHomeCountry:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 11065
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11067
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->totalSatelliteModeTimeSec:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 11068
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11070
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->numberOfSatelliteConnections:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 11071
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11073
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->avgDurationOfSatelliteConnectionSec:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 11074
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11076
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMinSec:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 11077
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11079
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapAvgSec:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 11080
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11082
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteConnectionGapMaxSec:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 11083
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11085
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpAvg:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 11086
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11088
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rsrpMedian:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 11089
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11091
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrAvg:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 11092
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11094
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->rssnrMedian:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 11095
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11097
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingSms:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 11098
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11100
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingSms:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 11101
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11103
    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfIncomingMms:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 11104
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11106
    :cond_e
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfOutgoingMms:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 11107
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11109
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    array-length v0, v0

    if-lez v0, :cond_10

    move v0, v1

    .line 11110
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->supportedSatelliteServices:[I

    array-length v3, v2

    if-ge v0, v3, :cond_10

    const/16 v3, 0x11

    .line 11111
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11114
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->serviceDataPolicy:I

    if-eqz v0, :cond_11

    const/16 v2, 0x12

    .line 11115
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11117
    :cond_11
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteDataConsumedBytes:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_12

    const/16 v0, 0x13

    .line 11118
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 11120
    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isMultiSim:Z

    if-eqz v0, :cond_13

    const/16 v2, 0x14

    .line 11121
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11123
    :cond_13
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->isNbIotNtn:Z

    if-eqz v0, :cond_14

    const/16 v2, 0x15

    .line 11124
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 11126
    :cond_14
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataConnections:I

    if-eqz v0, :cond_15

    const/16 v2, 0x16

    .line 11127
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11129
    :cond_15
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    if-eqz v0, :cond_16

    array-length v0, v0

    if-lez v0, :cond_16

    move v0, v1

    .line 11130
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->lastFailCauses:[I

    array-length v3, v2

    if-ge v0, v3, :cond_16

    const/16 v3, 0x17

    .line 11131
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11134
    :cond_16
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataDisconnections:I

    if-eqz v0, :cond_17

    const/16 v2, 0x18

    .line 11135
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11137
    :cond_17
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->countOfDataStalls:I

    if-eqz v0, :cond_18

    const/16 v2, 0x19

    .line 11138
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11140
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageUplinkBandwidthKbps:I

    if-eqz v0, :cond_19

    const/16 v2, 0x1a

    .line 11141
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11143
    :cond_19
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->averageDownlinkBandwidthKbps:I

    if-eqz v0, :cond_1a

    const/16 v2, 0x1b

    .line 11144
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11146
    :cond_1a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minUplinkBandwidthKbps:I

    if-eqz v0, :cond_1b

    const/16 v2, 0x1c

    .line 11147
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11149
    :cond_1b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxUplinkBandwidthKbps:I

    if-eqz v0, :cond_1c

    const/16 v2, 0x1d

    .line 11150
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11152
    :cond_1c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->minDownlinkBandwidthKbps:I

    if-eqz v0, :cond_1d

    const/16 v2, 0x1e

    .line 11153
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11155
    :cond_1d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->maxDownlinkBandwidthKbps:I

    if-eqz v0, :cond_1e

    const/16 v2, 0x1f

    .line 11156
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11158
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    if-eqz v0, :cond_20

    array-length v0, v0

    if-lez v0, :cond_20

    move v0, v1

    .line 11159
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedApps:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_20

    .line 11160
    aget-object v2, v2, v0

    if-eqz v2, :cond_1f

    const/16 v3, 0x20

    .line 11162
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 11166
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    if-eqz v0, :cond_21

    array-length v0, v0

    if-lez v0, :cond_21

    move v0, v1

    .line 11167
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->satelliteSupportedUids:[I

    array-length v3, v2

    if-ge v0, v3, :cond_21

    const/16 v3, 0x21

    .line 11168
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 11171
    :cond_21
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    if-eqz v0, :cond_22

    array-length v0, v0

    if-lez v0, :cond_22

    .line 11172
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierRoamingSatelliteSession;->perAppSatelliteDataConsumedBytes:[J

    array-length v2, v0

    if-ge v1, v2, :cond_22

    const/16 v2, 0x22

    .line 11173
    aget-wide v3, v0, v1

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 11176
    :cond_22
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
