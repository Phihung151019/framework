.class public final Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "SatelliteConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;


# instance fields
.field public blacklist allowedServices:[I

.field public blacklist carrierPlmn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 492
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 493
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .locals 2

    .line 475
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    if-nez v0, :cond_1

    .line 476
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 479
    new-array v1, v1, [Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    sput-object v1, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 481
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 483
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->_emptyArray:[Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 603
    new-instance v0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    invoke-direct {v0}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .locals 1

    .line 497
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    .line 498
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 500
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 520
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const/4 v2, 0x1

    .line 523
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    .line 527
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 528
    aget v3, v3, v1

    .line 530
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 533
    array-length p0, v3

    add-int/2addr v0, p0

    :cond_2
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

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;

    move-result-object p0

    return-object p0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 548
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 575
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 576
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 579
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v3, v2

    .line 580
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_2

    .line 581
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 584
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 585
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-nez v1, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    array-length v4, v1

    :goto_2
    add-int/2addr v3, v4

    .line 586
    new-array v5, v3, [I

    if-eqz v4, :cond_4

    .line 588
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    if-ge v4, v3, :cond_5

    .line 591
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 593
    :cond_5
    iput-object v5, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    .line 594
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    .line 559
    :cond_6
    invoke-static {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 560
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-nez v1, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    array-length v3, v1

    :goto_4
    add-int/2addr v0, v3

    .line 561
    new-array v4, v0, [I

    if-eqz v3, :cond_8

    .line 563
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_9

    .line 566
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 567
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 570
    :cond_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 571
    iput-object v4, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    goto/16 :goto_0

    .line 554
    :cond_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    :goto_6
    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->carrierPlmn:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 511
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/nano/SatelliteConfigData$SatelliteProviderCapabilityProto;->allowedServices:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    const/4 v2, 0x2

    .line 512
    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 515
    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
