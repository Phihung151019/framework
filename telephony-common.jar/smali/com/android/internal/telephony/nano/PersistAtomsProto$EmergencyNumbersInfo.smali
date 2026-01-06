.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo$CallRoute;,
        Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo$Source;,
        Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo$ServiceCategory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;


# instance fields
.field public blacklist assetVersion:I

.field public blacklist countryIso:Ljava/lang/String;

.field public blacklist isDbVersionIgnored:Z

.field public blacklist mnc:Ljava/lang/String;

.field public blacklist number:Ljava/lang/String;

.field public blacklist otaVersion:I

.field public blacklist route:I

.field public blacklist serviceCategories:[I

.field public blacklist sources:[I

.field public blacklist urns:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8498
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8499
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .locals 2

    .line 8457
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    if-nez v0, :cond_1

    .line 8458
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8460
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 8461
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8463
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8465
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8871
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8865
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .locals 2

    const/4 v0, 0x0

    .line 8503
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    .line 8504
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    .line 8505
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    .line 8506
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    .line 8507
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    .line 8508
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    .line 8509
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    .line 8510
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    .line 8511
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    .line 8512
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    const/4 v0, 0x0

    .line 8513
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8514
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    .line 8565
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8566
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 8568
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8570
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 8572
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8574
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 8576
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8578
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x4

    .line 8579
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    .line 8580
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8582
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x5

    .line 8583
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    .line 8584
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8586
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    .line 8587
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    .line 8588
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8590
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 8592
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8594
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v2

    move v3, v1

    move v4, v3

    .line 8597
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    array-length v6, v5

    if-ge v1, v6, :cond_8

    .line 8598
    aget-object v5, v5, v1

    if-eqz v5, :cond_7

    add-int/lit8 v4, v4, 0x1

    .line 8602
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    add-int/2addr v0, v3

    add-int/2addr v0, v4

    .line 8608
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v2

    move v3, v1

    .line 8610
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    array-length v5, v4

    if-ge v1, v5, :cond_a

    .line 8611
    aget v4, v4, v1

    .line 8613
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    add-int/2addr v0, v3

    .line 8616
    array-length v1, v4

    add-int/2addr v0, v1

    .line 8618
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v2

    .line 8620
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    array-length v4, v3

    if-ge v2, v4, :cond_c

    .line 8621
    aget v3, v3, v2

    .line 8623
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    add-int/2addr v0, v1

    .line 8626
    array-length p0, v3

    add-int/2addr v0, p0

    :cond_d
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8636
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 8641
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 8819
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 8820
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 8823
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v6

    move v7, v5

    .line 8824
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_2

    .line 8825
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    if-eqz v8, :cond_1

    if-eq v8, v4, :cond_1

    if-eq v8, v3, :cond_1

    if-eq v8, v2, :cond_1

    if-eq v8, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_7

    .line 8836
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8837
    iget-object v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-nez v6, :cond_3

    move v8, v5

    goto :goto_2

    :cond_3
    array-length v8, v6

    :goto_2
    add-int/2addr v7, v8

    .line 8838
    new-array v7, v7, [I

    if-eqz v8, :cond_4

    .line 8840
    invoke-static {v6, v5, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8842
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v5

    if-lez v5, :cond_6

    .line 8843
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_5

    if-eq v5, v3, :cond_5

    if-eq v5, v2, :cond_5

    if-eq v5, v1, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v8, 0x1

    .line 8850
    aput v5, v7, v8

    move v8, v6

    goto :goto_3

    .line 8854
    :cond_6
    iput-object v7, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    .line 8856
    :cond_7
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x50

    .line 8785
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8786
    new-array v6, v0, [I

    move v7, v5

    move v8, v7

    :goto_4
    if-ge v7, v0, :cond_a

    if-eqz v7, :cond_8

    .line 8790
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8792
    :cond_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v9

    if-eqz v9, :cond_9

    if-eq v9, v4, :cond_9

    if-eq v9, v3, :cond_9

    if-eq v9, v2, :cond_9

    if-eq v9, v1, :cond_9

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v8, 0x1

    .line 8799
    aput v9, v6, v8

    move v8, v10

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_a
    if-eqz v8, :cond_0

    .line 8804
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-nez v1, :cond_b

    move v2, v5

    goto :goto_6

    :cond_b
    array-length v2, v1

    :goto_6
    if-nez v2, :cond_c

    if-ne v8, v0, :cond_c

    .line 8806
    iput-object v6, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    goto/16 :goto_0

    :cond_c
    add-int v0, v2, v8

    .line 8808
    new-array v0, v0, [I

    if-eqz v2, :cond_d

    .line 8810
    invoke-static {v1, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8812
    :cond_d
    invoke-static {v6, v5, v0, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8813
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    goto/16 :goto_0

    .line 8737
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 8738
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 8741
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v2, v5

    .line 8742
    :goto_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_e

    .line 8743
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    if-eqz v2, :cond_12

    .line 8757
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 8758
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-nez v1, :cond_f

    move v3, v5

    goto :goto_8

    :cond_f
    array-length v3, v1

    :goto_8
    add-int/2addr v2, v3

    .line 8759
    new-array v2, v2, [I

    if-eqz v3, :cond_10

    .line 8761
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8763
    :cond_10
    :goto_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_11

    .line 8764
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_9

    :pswitch_1
    add-int/lit8 v4, v3, 0x1

    .line 8774
    aput v1, v2, v3

    move v3, v4

    goto :goto_9

    .line 8778
    :cond_11
    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    .line 8780
    :cond_12
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x48

    .line 8700
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8701
    new-array v1, v0, [I

    move v2, v5

    move v3, v2

    :goto_a
    if-ge v2, v0, :cond_14

    if-eqz v2, :cond_13

    .line 8705
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 8707
    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_b

    :pswitch_2
    add-int/lit8 v6, v3, 0x1

    .line 8717
    aput v4, v1, v3

    move v3, v6

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    if-eqz v3, :cond_0

    .line 8722
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-nez v2, :cond_15

    move v4, v5

    goto :goto_c

    :cond_15
    array-length v4, v2

    :goto_c
    if-nez v4, :cond_16

    if-ne v3, v0, :cond_16

    .line 8724
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    goto/16 :goto_0

    :cond_16
    add-int v0, v4, v3

    .line 8726
    new-array v0, v0, [I

    if-eqz v4, :cond_17

    .line 8728
    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8730
    :cond_17
    invoke-static {v1, v5, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8731
    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x42

    .line 8683
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8684
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    if-nez v1, :cond_18

    move v2, v5

    goto :goto_d

    :cond_18
    array-length v2, v1

    :goto_d
    add-int/2addr v0, v2

    .line 8685
    new-array v3, v0, [Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 8687
    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_e
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_1a

    .line 8690
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 8691
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 8694
    :cond_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 8695
    iput-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    goto/16 :goto_0

    .line 8671
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_1b

    if-eq v0, v4, :cond_1b

    if-eq v0, v3, :cond_1b

    goto/16 :goto_0

    .line 8676
    :cond_1b
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    goto/16 :goto_0

    .line 8667
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    goto/16 :goto_0

    .line 8663
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    goto/16 :goto_0

    .line 8659
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    goto/16 :goto_0

    .line 8655
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    goto/16 :goto_0

    .line 8651
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    goto/16 :goto_0

    .line 8647
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    goto/16 :goto_0

    :goto_f
    :sswitch_c
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x18 -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x32 -> :sswitch_6
        0x38 -> :sswitch_5
        0x42 -> :sswitch_4
        0x48 -> :sswitch_3
        0x4a -> :sswitch_2
        0x50 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
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

    .line 8423
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;

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

    .line 8521
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->isDbVersionIgnored:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8522
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8524
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->assetVersion:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 8525
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8527
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->otaVersion:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 8528
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8530
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 8531
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8533
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 8534
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->countryIso:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8536
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 8537
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->mnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 8539
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->route:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 8540
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8542
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    .line 8543
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->urns:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_8

    .line 8544
    aget-object v2, v2, v0

    if-eqz v2, :cond_7

    const/16 v3, 0x8

    .line 8546
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8550
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    .line 8551
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->serviceCategories:[I

    array-length v3, v2

    if-ge v0, v3, :cond_9

    const/16 v3, 0x9

    .line 8552
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8555
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    if-eqz v0, :cond_a

    array-length v0, v0

    if-lez v0, :cond_a

    .line 8556
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$EmergencyNumbersInfo;->sources:[I

    array-length v2, v0

    if-ge v1, v2, :cond_a

    const/16 v2, 0xa

    .line 8557
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8560
    :cond_a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
