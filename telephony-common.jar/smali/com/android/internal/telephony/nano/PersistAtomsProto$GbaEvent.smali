.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist failedReason:I

.field public blacklist slotId:I

.field public blacklist successful:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8080
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8081
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .locals 2

    .line 8054
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-nez v0, :cond_1

    .line 8055
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8057
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 8058
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8060
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8062
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8189
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8183
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .locals 1

    const/4 v0, 0x0

    .line 8085
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    .line 8086
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    .line 8087
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    .line 8088
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    .line 8089
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    const/4 v0, 0x0

    .line 8090
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8091
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 3

    .line 8118
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8119
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 8121
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8123
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 8125
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8127
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 8129
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8131
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 8133
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8135
    :cond_3
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    if-eqz p0, :cond_4

    const/4 v1, 0x5

    .line 8137
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    if-eq v0, v1, :cond_5

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    .line 8152
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 8174
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    goto :goto_0

    .line 8170
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    goto :goto_0

    .line 8166
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    goto :goto_0

    .line 8162
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    goto :goto_0

    .line 8158
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    goto :goto_0

    :cond_6
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

    .line 8048
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8098
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->carrierId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8099
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8101
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->slotId:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 8102
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8104
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->successful:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 8105
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8107
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->failedReason:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 8108
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8110
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->count:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 8111
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8113
    :cond_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
