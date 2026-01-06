.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;


# instance fields
.field public blacklist carrierId:I

.field public blacklist phoneId:I

.field public blacklist unmeteredNetworksBitmask:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8219
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8220
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .locals 2

    .line 8199
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    if-nez v0, :cond_1

    .line 8200
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8202
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 8203
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8205
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8207
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8304
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8298
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .locals 2

    const/4 v0, 0x0

    .line 8224
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    .line 8225
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    const-wide/16 v0, 0x0

    .line 8226
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    const/4 v0, 0x0

    .line 8227
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8228
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 8249
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8250
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 8252
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8254
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 8256
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8258
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    .line 8260
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8270
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    .line 8275
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8289
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    goto :goto_0

    .line 8285
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    goto :goto_0

    .line 8281
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    goto :goto_0

    :cond_4
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

    .line 8193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;

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

    .line 8235
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->phoneId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8236
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8238
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->carrierId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 8239
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8241
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UnmeteredNetworks;->unmeteredNetworksBitmask:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 8242
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8244
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
