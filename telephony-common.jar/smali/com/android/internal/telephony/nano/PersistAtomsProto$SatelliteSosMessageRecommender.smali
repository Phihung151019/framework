.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;


# instance fields
.field public blacklist carrierId:I

.field public blacklist cellularServiceState:I

.field public blacklist count:I

.field public blacklist countOfTimerStarted:I

.field public blacklist isDisplaySosMessageSent:Z

.field public blacklist isImsRegistered:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNtnOnlyCarrier:Z

.field public blacklist isSatelliteAllowedInCurrentLocation:Z

.field public blacklist isWifiConnected:Z

.field public blacklist recommendingHandoverType:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10535
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 10536
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .locals 2

    .line 10491
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    if-nez v0, :cond_1

    .line 10492
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 10494
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 10495
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10497
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10499
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10716
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 10710
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .locals 1

    const/4 v0, 0x0

    .line 10540
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    .line 10541
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    .line 10542
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    .line 10543
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    .line 10544
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    .line 10545
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    .line 10546
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    .line 10547
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    .line 10548
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    .line 10549
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    .line 10550
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    const/4 v0, 0x0

    .line 10551
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 10552
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 3

    .line 10597
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 10598
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 10600
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10602
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 10604
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10606
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 10608
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10610
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 10612
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10614
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 10616
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10618
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 10620
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10622
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 10624
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10626
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 10628
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10630
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 10632
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10634
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 10636
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10638
    :cond_9
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    if-eqz p0, :cond_a

    const/16 v1, 0xb

    .line 10640
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_a
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10650
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 10655
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 10701
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    goto :goto_0

    .line 10697
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    goto :goto_0

    .line 10693
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    goto :goto_0

    .line 10689
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    goto :goto_0

    .line 10685
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    goto :goto_0

    .line 10681
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    goto :goto_0

    .line 10677
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    goto :goto_0

    .line 10673
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    goto :goto_0

    .line 10669
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    goto :goto_0

    .line 10665
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    goto :goto_0

    .line 10661
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    goto :goto_0

    :goto_1
    :sswitch_b
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x10 -> :sswitch_9
        0x18 -> :sswitch_8
        0x20 -> :sswitch_7
        0x28 -> :sswitch_6
        0x30 -> :sswitch_5
        0x38 -> :sswitch_4
        0x40 -> :sswitch_3
        0x48 -> :sswitch_2
        0x50 -> :sswitch_1
        0x58 -> :sswitch_0
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

    .line 10485
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;

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

    .line 10559
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isDisplaySosMessageSent:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 10560
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10562
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->countOfTimerStarted:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 10563
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10565
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isImsRegistered:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 10566
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10568
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->cellularServiceState:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 10569
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10571
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->count:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10572
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10574
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isMultiSim:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 10575
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10577
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->recommendingHandoverType:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 10578
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10580
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isSatelliteAllowedInCurrentLocation:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 10581
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10583
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isWifiConnected:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 10584
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10586
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->carrierId:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 10587
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10589
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SatelliteSosMessageRecommender;->isNtnOnlyCarrier:Z

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 10590
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 10592
    :cond_a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
