.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;


# instance fields
.field public blacklist carrierId:I

.field public blacklist enterpriseReleaseCount:I

.field public blacklist enterpriseRequestCount:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5802
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 5803
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .locals 2

    .line 5782
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-nez v0, :cond_1

    .line 5783
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 5785
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 5786
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5788
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5790
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5887
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5881
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .locals 1

    const/4 v0, 0x0

    .line 5807
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

    .line 5808
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    .line 5809
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    const/4 v0, 0x0

    .line 5810
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 5811
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 3

    .line 5832
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 5833
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 5835
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5837
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 5839
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5841
    :cond_1
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    if-eqz p0, :cond_2

    const/4 v1, 0x3

    .line 5843
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5853
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

    .line 5858
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5872
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    goto :goto_0

    .line 5868
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    goto :goto_0

    .line 5864
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

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

    .line 5776
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

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

    .line 5818
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->carrierId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5819
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5821
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseRequestCount:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5822
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5824
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->enterpriseReleaseCount:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 5825
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5827
    :cond_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
