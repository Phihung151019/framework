.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;


# instance fields
.field public blacklist carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

.field public blacklist carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

.field public blacklist deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

.field public blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .locals 2

    .line 102
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-nez v0, :cond_1

    .line 103
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 106
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 108
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 110
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 248
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    .line 131
    invoke-static {}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;->emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    .line 133
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    .line 134
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 135
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 4

    .line 164
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 165
    iget v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 167
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 171
    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 174
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 180
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_3
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    if-eqz p0, :cond_4

    const/4 v1, 0x4

    .line 184
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0
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

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    if-nez v0, :cond_2

    .line 237
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-nez v0, :cond_4

    .line 230
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 210
    :cond_5
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    const/4 v2, 0x0

    if-nez v1, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 212
    new-array v4, v0, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-eqz v3, :cond_7

    .line 215
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_8

    .line 218
    new-instance v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    invoke-direct {v1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;-><init>()V

    aput-object v1, v4, v3

    .line 219
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 220
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 223
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;-><init>()V

    aput-object v0, v4, v3

    .line 224
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 225
    iput-object v4, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    goto :goto_0

    .line 205
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    goto :goto_0

    :cond_a
    :goto_3
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->version:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierSupportedSatelliteServices:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierSupportedSatelliteServicesProto;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 147
    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 149
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->deviceSatelliteRegion:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteRegionProto;

    if-eqz v0, :cond_3

    const/4 v1, 0x3

    .line 154
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteConfigProto;->carrierRoamingConfig:Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    .line 157
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 159
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
