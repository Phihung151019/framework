.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist entitlementDataPolicy:I

.field public blacklist entitlementServiceType:[I

.field public blacklist entitlementStatus:I

.field public blacklist isAllowedServiceEntitlement:Z

.field public blacklist isRetry:Z

.field public blacklist result:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11970
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 11971
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .locals 2

    .line 11935
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    if-nez v0, :cond_1

    .line 11936
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 11938
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 11939
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 11941
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11943
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12159
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 12153
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .locals 2

    const/4 v0, 0x0

    .line 11975
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    .line 11976
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    .line 11977
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    .line 11978
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    .line 11979
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    .line 11980
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    .line 11981
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    .line 11982
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    const/4 v0, 0x0

    .line 11983
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 11984
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 12022
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 12023
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 12025
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12027
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 12029
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12031
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 12033
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12035
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 12037
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12039
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 12041
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12043
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 12045
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12047
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v1, 0x0

    move v2, v1

    .line 12049
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 12050
    aget v3, v3, v1

    .line 12052
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    add-int/2addr v0, v2

    .line 12055
    array-length v1, v3

    add-int/2addr v0, v1

    .line 12057
    :cond_7
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    if-eqz p0, :cond_8

    const/16 v1, 0x8

    .line 12059
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_8
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12069
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_11

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_f

    const/16 v1, 0x18

    if-eq v0, v1, :cond_e

    const/16 v1, 0x20

    if-eq v0, v1, :cond_d

    const/16 v1, 0x28

    if-eq v0, v1, :cond_c

    const/16 v1, 0x30

    if-eq v0, v1, :cond_b

    const/16 v1, 0x38

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    .line 12074
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 12144
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    goto :goto_0

    .line 12121
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 12122
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 12125
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 12126
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_3

    .line 12127
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 12130
    :cond_3
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 12131
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-nez v1, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    array-length v4, v1

    :goto_2
    add-int/2addr v3, v4

    .line 12132
    new-array v5, v3, [I

    if-eqz v4, :cond_5

    .line 12134
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_3
    if-ge v4, v3, :cond_6

    .line 12137
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 12139
    :cond_6
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    .line 12140
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 12105
    :cond_7
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12106
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-nez v1, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    array-length v3, v1

    :goto_4
    add-int/2addr v0, v3

    .line 12107
    new-array v4, v0, [I

    if-eqz v3, :cond_9

    .line 12109
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_a

    .line 12112
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 12113
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 12116
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 12117
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    goto/16 :goto_0

    .line 12100
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    goto/16 :goto_0

    .line 12096
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    goto/16 :goto_0

    .line 12092
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    goto/16 :goto_0

    .line 12088
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    goto/16 :goto_0

    .line 12084
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    goto/16 :goto_0

    .line 12080
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    goto/16 :goto_0

    :cond_11
    :goto_6
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

    .line 11929
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11991
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->carrierId:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 11992
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11994
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->result:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 11995
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11997
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementStatus:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 11998
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12000
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isRetry:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 12001
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12003
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->count:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 12004
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12006
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->isAllowedServiceEntitlement:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12007
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12009
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    if-eqz v0, :cond_6

    array-length v0, v0

    if-lez v0, :cond_6

    const/4 v0, 0x0

    .line 12010
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementServiceType:[I

    array-length v2, v1

    if-ge v0, v2, :cond_6

    const/4 v2, 0x7

    .line 12011
    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12014
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteEntitlement;->entitlementDataPolicy:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 12015
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12017
    :cond_7
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
