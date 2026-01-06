.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;


# instance fields
.field public blacklist carrierId:I

.field public blacklist datagramSizeBytes:I

.field public blacklist datagramTransferTimeMillis:J

.field public blacklist isDemoMode:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist resultCode:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10025
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10026
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .locals 2

    .line 9996
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    if-nez v0, :cond_1

    .line 9997
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 9999
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 10000
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10002
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10004
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10146
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 10140
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .locals 3

    const/4 v0, 0x0

    .line 10030
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    .line 10031
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    const-wide/16 v1, 0x0

    .line 10032
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    .line 10033
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    .line 10034
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    .line 10035
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 10036
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10037
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 10067
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10068
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 10070
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10072
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 10074
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10076
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    .line 10078
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10080
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 10082
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10084
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 10086
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10088
    :cond_4
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_5

    const/4 v1, 0x6

    .line 10090
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 10105
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 10131
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 10127
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    goto :goto_0

    .line 10123
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    goto :goto_0

    .line 10119
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    goto :goto_0

    .line 10115
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    goto :goto_0

    .line 10111
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    goto :goto_0

    :cond_7
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

    .line 9990
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;

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

    .line 10044
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->resultCode:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 10045
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10047
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramSizeBytes:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 10048
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10050
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->datagramTransferTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 10051
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 10053
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isDemoMode:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 10054
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10056
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->carrierId:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10057
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10059
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteIncomingDatagram;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 10060
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10062
    :cond_5
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
