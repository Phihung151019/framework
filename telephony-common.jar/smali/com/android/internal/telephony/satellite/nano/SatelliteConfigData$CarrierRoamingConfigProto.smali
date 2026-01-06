.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;


# instance fields
.field public blacklist maxAllowedDataMode:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;
    .locals 2

    .line 264
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    if-nez v0, :cond_1

    .line 265
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 268
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 270
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 272
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 333
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;
    .locals 1

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->maxAllowedDataMode:I

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 285
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 301
    iget p0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->maxAllowedDataMode:I

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 303
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
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

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->maxAllowedDataMode:I

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$CarrierRoamingConfigProto;->maxAllowedDataMode:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 293
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 295
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
