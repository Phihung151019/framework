.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;


# instance fields
.field public blacklist accessControlType:I

.field public blacklist carrierId:I

.field public blacklist configDataSource:I

.field public blacklist countryCodes:[Ljava/lang/String;

.field public blacklist isAllowed:Z

.field public blacklist isEmergency:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist locationQueryTimeMillis:J

.field public blacklist onDeviceLookupTimeMillis:J

.field public blacklist resultCode:I

.field public blacklist totalCheckingTimeMillis:J

.field public blacklist triggeringEvent:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12346
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 12347
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .locals 2

    .line 12299
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    if-nez v0, :cond_1

    .line 12300
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 12302
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 12303
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 12305
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 12307
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12567
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 12561
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .locals 3

    const/4 v0, 0x0

    .line 12351
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    const-wide/16 v1, 0x0

    .line 12352
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    .line 12353
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    .line 12354
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    .line 12355
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    .line 12356
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    .line 12357
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    .line 12358
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    .line 12359
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    .line 12360
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    .line 12361
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    .line 12362
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 12363
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 12364
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    .line 12417
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 12418
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 12420
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12422
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    .line 12424
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12426
    :cond_1
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    .line 12428
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12430
    :cond_2
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    .line 12432
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12434
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 12436
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12438
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 12440
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12442
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 12444
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12446
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 12449
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    array-length v5, v4

    if-ge v1, v5, :cond_8

    .line 12450
    aget-object v4, v4, v1

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 12454
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    .line 12460
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    if-eqz v1, :cond_a

    const/16 v2, 0x9

    .line 12462
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12464
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    if-eqz v1, :cond_b

    const/16 v2, 0xa

    .line 12466
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12468
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    if-eqz v1, :cond_c

    const/16 v2, 0xb

    .line 12470
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12472
    :cond_c
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_d

    const/16 v1, 0xc

    .line 12474
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 12489
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 12552
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 12548
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    goto :goto_0

    .line 12544
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    goto :goto_0

    .line 12540
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x42

    .line 12524
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12525
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 12526
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 12528
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3

    .line 12531
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 12532
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 12535
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 12536
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    goto :goto_0

    .line 12519
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    goto :goto_0

    .line 12515
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    goto :goto_0

    .line 12511
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    goto :goto_0

    .line 12507
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    goto :goto_0

    .line 12503
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    goto :goto_0

    .line 12499
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    goto/16 :goto_0

    .line 12495
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    goto/16 :goto_0

    :goto_3
    :sswitch_c
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x20 -> :sswitch_8
        0x28 -> :sswitch_7
        0x30 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x48 -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
        0x60 -> :sswitch_0
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

    .line 12293
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12371
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->accessControlType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 12372
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12374
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->locationQueryTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 12375
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 12377
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->onDeviceLookupTimeMillis:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 12378
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 12380
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->totalCheckingTimeMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 12381
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 12383
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isAllowed:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 12384
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12386
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isEmergency:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12387
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12389
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->resultCode:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 12390
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12392
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    .line 12393
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->countryCodes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_8

    .line 12394
    aget-object v1, v1, v0

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 12396
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12400
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->configDataSource:I

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    .line 12401
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12403
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->carrierId:I

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    .line 12404
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12406
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->triggeringEvent:I

    if-eqz v0, :cond_b

    const/16 v1, 0xb

    .line 12407
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 12409
    :cond_b
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteAccessController;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_c

    const/16 v1, 0xc

    .line 12410
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 12412
    :cond_c
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
