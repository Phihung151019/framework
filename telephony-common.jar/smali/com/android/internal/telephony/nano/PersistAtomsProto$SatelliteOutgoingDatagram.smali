.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;


# instance fields
.field public blacklist carrierId:I

.field public blacklist datagramSizeBytes:I

.field public blacklist datagramTransferTimeMillis:J

.field public blacklist datagramType:I

.field public blacklist isDemoMode:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist resultCode:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10188
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10189
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .locals 2

    .line 10156
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    if-nez v0, :cond_1

    .line 10157
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10159
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 10160
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10162
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10164
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10321
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 10315
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .locals 3

    const/4 v0, 0x0

    .line 10193
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    .line 10194
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    .line 10195
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    const-wide/16 v1, 0x0

    .line 10196
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    .line 10197
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    .line 10198
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    .line 10199
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 10200
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10201
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 10234
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10235
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 10237
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10239
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 10241
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10243
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 10245
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10247
    :cond_2
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    .line 10249
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10251
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 10253
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10255
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 10257
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10259
    :cond_5
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_6

    const/4 v1, 0x7

    .line 10261
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_6
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10271
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_1

    .line 10276
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 10306
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 10302
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    goto :goto_0

    .line 10298
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    goto :goto_0

    .line 10294
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    goto :goto_0

    .line 10290
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    goto :goto_0

    .line 10286
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    goto :goto_0

    .line 10282
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    goto :goto_0

    :cond_8
    :goto_1
    return-object p0
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

    .line 10150
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10208
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 10209
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10211
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->resultCode:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 10212
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10214
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramSizeBytes:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 10215
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10217
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 10218
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10220
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isDemoMode:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10221
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10223
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->carrierId:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 10224
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10226
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteOutgoingDatagram;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 10227
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10229
    :cond_6
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
