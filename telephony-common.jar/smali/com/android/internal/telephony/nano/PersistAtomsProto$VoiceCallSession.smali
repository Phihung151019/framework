.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;


# instance fields
.field public blacklist bandAtEnd:I

.field public blacklist bearerAtEnd:I

.field public blacklist bearerAtStart:I

.field public blacklist callComposerStatus:I

.field public blacklist callDuration:I

.field public blacklist carrierId:I

.field public blacklist codecBitmask:J

.field public blacklist concurrentCallCountAtEnd:I

.field public blacklist concurrentCallCountAtStart:I

.field public blacklist direction:I

.field public blacklist disconnectExtraCode:I

.field public blacklist disconnectExtraMessage:Ljava/lang/String;

.field public blacklist disconnectReasonCode:I

.field public blacklist foldState:I

.field public blacklist handoverInProgress:Z

.field public blacklist isEmergency:Z

.field public blacklist isEsim:Z

.field public blacklist isIwlanCrossSimAtConnected:Z

.field public blacklist isIwlanCrossSimAtEnd:Z

.field public blacklist isIwlanCrossSimAtStart:Z

.field public blacklist isMultiSim:Z

.field public blacklist isMultiparty:Z

.field public blacklist isNtn:Z

.field public blacklist isRoaming:Z

.field public blacklist lastKnownRat:I

.field public blacklist mainCodecQuality:I

.field public blacklist preciseCallStateOnSetup:I

.field public blacklist ratAtConnected:I

.field public blacklist ratAtEnd:I

.field public blacklist ratAtStart:I

.field public blacklist ratSwitchCount:J

.field public blacklist ratSwitchCountAfterConnected:J

.field public blacklist rttEnabled:Z

.field public blacklist setupBeginMillis:J

.field public blacklist setupDurationMillis:I

.field public blacklist setupFailed:Z

.field public blacklist signalStrengthAtEnd:I

.field public blacklist simSlotIndex:I

.field public blacklist srvccCancellationCount:J

.field public blacklist srvccCompleted:Z

.field public blacklist srvccFailureCount:J

.field public blacklist supportsBusinessCallComposer:Z

.field public blacklist videoEnabled:Z

.field public blacklist vonrEnabled:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 2482
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 2483
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .locals 2

    .line 2339
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v0, :cond_1

    .line 2340
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 2342
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2343
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2345
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2347
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3059
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3053
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .locals 3

    const/4 v0, 0x0

    .line 2487
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    .line 2488
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    .line 2489
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    .line 2490
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    .line 2491
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    .line 2492
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    .line 2493
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 2494
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    .line 2495
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    const-wide/16 v1, 0x0

    .line 2496
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    .line 2497
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    .line 2498
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    .line 2499
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    .line 2500
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    .line 2501
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    .line 2502
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    .line 2503
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    .line 2504
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    .line 2505
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    .line 2506
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    .line 2507
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    .line 2508
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    .line 2509
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    .line 2510
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    .line 2511
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    .line 2512
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    .line 2513
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    .line 2514
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    .line 2515
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    .line 2516
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    .line 2517
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    .line 2518
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    .line 2519
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->foldState:I

    .line 2520
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    .line 2521
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    .line 2522
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtStart:Z

    .line 2523
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    .line 2524
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    .line 2525
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->vonrEnabled:Z

    .line 2526
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isNtn:Z

    .line 2527
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->supportsBusinessCallComposer:Z

    .line 2528
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callComposerStatus:I

    .line 2529
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    .line 2530
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    const/4 v0, 0x0

    .line 2531
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 2532
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    .line 2676
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2677
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2679
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2681
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 2683
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2685
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 2687
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2689
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    .line 2691
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2693
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    if-eqz v1, :cond_4

    const/4 v2, 0x6

    .line 2695
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2697
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    if-eqz v1, :cond_5

    const/4 v2, 0x7

    .line 2699
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2701
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x8

    .line 2702
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    .line 2703
    invoke-static {v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2705
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    if-eqz v1, :cond_7

    const/16 v2, 0x9

    .line 2707
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2709
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eqz v1, :cond_8

    const/16 v2, 0xa

    .line 2711
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2713
    :cond_8
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    const/16 v5, 0xb

    .line 2715
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2717
    :cond_9
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xc

    .line 2719
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2721
    :cond_a
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    if-eqz v1, :cond_b

    const/16 v2, 0xd

    .line 2723
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2725
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    if-eqz v1, :cond_c

    const/16 v2, 0xe

    .line 2727
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2729
    :cond_c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    if-eqz v1, :cond_d

    const/16 v2, 0xf

    .line 2731
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2733
    :cond_d
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    if-eqz v1, :cond_e

    const/16 v2, 0x10

    .line 2735
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2737
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    if-eqz v1, :cond_f

    const/16 v2, 0x11

    .line 2739
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2741
    :cond_f
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    if-eqz v1, :cond_10

    const/16 v2, 0x12

    .line 2743
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2745
    :cond_10
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x13

    .line 2747
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2749
    :cond_11
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/16 v5, 0x14

    .line 2751
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2753
    :cond_12
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_13

    const/16 v5, 0x15

    .line 2755
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2757
    :cond_13
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    if-eqz v1, :cond_14

    const/16 v2, 0x16

    .line 2759
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2761
    :cond_14
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-eqz v1, :cond_15

    const/16 v2, 0x17

    .line 2763
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2765
    :cond_15
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    if-eqz v1, :cond_16

    const/16 v2, 0x18

    .line 2767
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2769
    :cond_16
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    if-eqz v1, :cond_17

    const/16 v2, 0x19

    .line 2771
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2773
    :cond_17
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    if-eqz v1, :cond_18

    const/16 v2, 0x1a

    .line 2775
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2777
    :cond_18
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    if-eqz v1, :cond_19

    const/16 v2, 0x1b

    .line 2779
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2781
    :cond_19
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    if-eqz v1, :cond_1a

    const/16 v2, 0x1c

    .line 2783
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2785
    :cond_1a
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    if-eqz v1, :cond_1b

    const/16 v2, 0x1d

    .line 2787
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2789
    :cond_1b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    if-eqz v1, :cond_1c

    const/16 v2, 0x1e

    .line 2791
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2793
    :cond_1c
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    if-eqz v1, :cond_1d

    const/16 v2, 0x1f

    .line 2795
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2797
    :cond_1d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    if-eqz v1, :cond_1e

    const/16 v2, 0x20

    .line 2799
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2801
    :cond_1e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    if-eqz v1, :cond_1f

    const/16 v2, 0x21

    .line 2803
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2805
    :cond_1f
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->foldState:I

    if-eqz v1, :cond_20

    const/16 v2, 0x22

    .line 2807
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2809
    :cond_20
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_21

    const/16 v5, 0x23

    .line 2811
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2813
    :cond_21
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    if-eqz v1, :cond_22

    const/16 v2, 0x24

    .line 2815
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2817
    :cond_22
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtStart:Z

    if-eqz v1, :cond_23

    const/16 v2, 0x25

    .line 2819
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2821
    :cond_23
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    if-eqz v1, :cond_24

    const/16 v2, 0x26

    .line 2823
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2825
    :cond_24
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    if-eqz v1, :cond_25

    const/16 v2, 0x27

    .line 2827
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2829
    :cond_25
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->vonrEnabled:Z

    if-eqz v1, :cond_26

    const/16 v2, 0x28

    .line 2831
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2833
    :cond_26
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isNtn:Z

    if-eqz v1, :cond_27

    const/16 v2, 0x29

    .line 2835
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2837
    :cond_27
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->supportsBusinessCallComposer:Z

    if-eqz v1, :cond_28

    const/16 v2, 0x2a

    .line 2839
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2841
    :cond_28
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callComposerStatus:I

    if-eqz v1, :cond_29

    const/16 v2, 0x2b

    .line 2843
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2845
    :cond_29
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    if-eqz v1, :cond_2a

    const/16 v2, 0x2c

    .line 2847
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2849
    :cond_2a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    cmp-long p0, v1, v3

    if-eqz p0, :cond_2b

    const/16 p0, 0x2711

    .line 2851
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_2b
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2861
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2866
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3044
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    goto :goto_0

    .line 3040
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    goto :goto_0

    .line 3036
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callComposerStatus:I

    goto :goto_0

    .line 3032
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->supportsBusinessCallComposer:Z

    goto :goto_0

    .line 3028
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isNtn:Z

    goto :goto_0

    .line 3024
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->vonrEnabled:Z

    goto :goto_0

    .line 3020
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    goto :goto_0

    .line 3016
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    goto :goto_0

    .line 3012
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtStart:Z

    goto :goto_0

    .line 3008
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    goto :goto_0

    .line 3004
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    goto :goto_0

    .line 3000
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->foldState:I

    goto :goto_0

    .line 2996
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    goto :goto_0

    .line 2992
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    goto :goto_0

    .line 2988
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    goto :goto_0

    .line 2984
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    goto :goto_0

    .line 2980
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    goto/16 :goto_0

    .line 2976
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    goto/16 :goto_0

    .line 2972
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    goto/16 :goto_0

    .line 2968
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    goto/16 :goto_0

    .line 2964
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    goto/16 :goto_0

    .line 2960
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    goto/16 :goto_0

    .line 2956
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    goto/16 :goto_0

    .line 2952
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    goto/16 :goto_0

    .line 2948
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    goto/16 :goto_0

    .line 2944
    :sswitch_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    goto/16 :goto_0

    .line 2940
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    goto/16 :goto_0

    .line 2936
    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    goto/16 :goto_0

    .line 2932
    :sswitch_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    goto/16 :goto_0

    .line 2928
    :sswitch_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    goto/16 :goto_0

    .line 2924
    :sswitch_1e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    goto/16 :goto_0

    .line 2920
    :sswitch_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    goto/16 :goto_0

    .line 2916
    :sswitch_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    goto/16 :goto_0

    .line 2912
    :sswitch_21
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    goto/16 :goto_0

    .line 2908
    :sswitch_22
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    goto/16 :goto_0

    .line 2904
    :sswitch_23
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    goto/16 :goto_0

    .line 2900
    :sswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    goto/16 :goto_0

    .line 2896
    :sswitch_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    goto/16 :goto_0

    .line 2892
    :sswitch_26
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    goto/16 :goto_0

    .line 2888
    :sswitch_27
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    goto/16 :goto_0

    .line 2884
    :sswitch_28
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    goto/16 :goto_0

    .line 2880
    :sswitch_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    goto/16 :goto_0

    .line 2876
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    goto/16 :goto_0

    .line 2872
    :sswitch_2b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    goto/16 :goto_0

    :goto_1
    :sswitch_2c
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2c
        0x8 -> :sswitch_2b
        0x10 -> :sswitch_2a
        0x18 -> :sswitch_29
        0x28 -> :sswitch_28
        0x30 -> :sswitch_27
        0x38 -> :sswitch_26
        0x42 -> :sswitch_25
        0x48 -> :sswitch_24
        0x50 -> :sswitch_23
        0x58 -> :sswitch_22
        0x60 -> :sswitch_21
        0x68 -> :sswitch_20
        0x70 -> :sswitch_1f
        0x78 -> :sswitch_1e
        0x80 -> :sswitch_1d
        0x88 -> :sswitch_1c
        0x90 -> :sswitch_1b
        0x98 -> :sswitch_1a
        0xa0 -> :sswitch_19
        0xa8 -> :sswitch_18
        0xb0 -> :sswitch_17
        0xb8 -> :sswitch_16
        0xc0 -> :sswitch_15
        0xc8 -> :sswitch_14
        0xd0 -> :sswitch_13
        0xd8 -> :sswitch_12
        0xe0 -> :sswitch_11
        0xe8 -> :sswitch_10
        0xf0 -> :sswitch_f
        0xf8 -> :sswitch_e
        0x100 -> :sswitch_d
        0x108 -> :sswitch_c
        0x110 -> :sswitch_b
        0x118 -> :sswitch_a
        0x120 -> :sswitch_9
        0x128 -> :sswitch_8
        0x130 -> :sswitch_7
        0x138 -> :sswitch_6
        0x140 -> :sswitch_5
        0x148 -> :sswitch_4
        0x150 -> :sswitch_3
        0x158 -> :sswitch_2
        0x160 -> :sswitch_1
        0x13888 -> :sswitch_0
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

    .line 2333
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

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

    .line 2539
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtStart:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2540
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2542
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bearerAtEnd:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2543
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2545
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->direction:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 2546
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2548
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupFailed:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 2549
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2551
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectReasonCode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 2552
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2554
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraCode:I

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 2555
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2557
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    .line 2558
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->disconnectExtraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 2560
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtStart:I

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 2561
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2563
    :cond_7
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtEnd:I

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    .line 2564
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2566
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xb

    .line 2567
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2569
    :cond_9
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->codecBitmask:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/16 v4, 0xc

    .line 2570
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2572
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtStart:I

    if-eqz v0, :cond_b

    const/16 v1, 0xd

    .line 2573
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2575
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->concurrentCallCountAtEnd:I

    if-eqz v0, :cond_c

    const/16 v1, 0xe

    .line 2576
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2578
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->simSlotIndex:I

    if-eqz v0, :cond_d

    const/16 v1, 0xf

    .line 2579
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2581
    :cond_d
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiSim:Z

    if-eqz v0, :cond_e

    const/16 v1, 0x10

    .line 2582
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2584
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEsim:Z

    if-eqz v0, :cond_f

    const/16 v1, 0x11

    .line 2585
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2587
    :cond_f
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->carrierId:I

    if-eqz v0, :cond_10

    const/16 v1, 0x12

    .line 2588
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2590
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCompleted:Z

    if-eqz v0, :cond_11

    const/16 v1, 0x13

    .line 2591
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2593
    :cond_11
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccFailureCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_12

    const/16 v4, 0x14

    .line 2594
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2596
    :cond_12
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->srvccCancellationCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_13

    const/16 v4, 0x15

    .line 2597
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2599
    :cond_13
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->rttEnabled:Z

    if-eqz v0, :cond_14

    const/16 v1, 0x16

    .line 2600
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2602
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isEmergency:Z

    if-eqz v0, :cond_15

    const/16 v1, 0x17

    .line 2603
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2605
    :cond_15
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isRoaming:Z

    if-eqz v0, :cond_16

    const/16 v1, 0x18

    .line 2606
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2608
    :cond_16
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->signalStrengthAtEnd:I

    if-eqz v0, :cond_17

    const/16 v1, 0x19

    .line 2609
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2611
    :cond_17
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->bandAtEnd:I

    if-eqz v0, :cond_18

    const/16 v1, 0x1a

    .line 2612
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2614
    :cond_18
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupDurationMillis:I

    if-eqz v0, :cond_19

    const/16 v1, 0x1b

    .line 2615
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2617
    :cond_19
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->mainCodecQuality:I

    if-eqz v0, :cond_1a

    const/16 v1, 0x1c

    .line 2618
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2620
    :cond_1a
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->videoEnabled:Z

    if-eqz v0, :cond_1b

    const/16 v1, 0x1d

    .line 2621
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2623
    :cond_1b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratAtConnected:I

    if-eqz v0, :cond_1c

    const/16 v1, 0x1e

    .line 2624
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2626
    :cond_1c
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isMultiparty:Z

    if-eqz v0, :cond_1d

    const/16 v1, 0x1f

    .line 2627
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2629
    :cond_1d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callDuration:I

    if-eqz v0, :cond_1e

    const/16 v1, 0x20

    .line 2630
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2632
    :cond_1e
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->lastKnownRat:I

    if-eqz v0, :cond_1f

    const/16 v1, 0x21

    .line 2633
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2635
    :cond_1f
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->foldState:I

    if-eqz v0, :cond_20

    const/16 v1, 0x22

    .line 2636
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2638
    :cond_20
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->ratSwitchCountAfterConnected:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/16 v4, 0x23

    .line 2639
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2641
    :cond_21
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->handoverInProgress:Z

    if-eqz v0, :cond_22

    const/16 v1, 0x24

    .line 2642
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2644
    :cond_22
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtStart:Z

    if-eqz v0, :cond_23

    const/16 v1, 0x25

    .line 2645
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2647
    :cond_23
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtEnd:Z

    if-eqz v0, :cond_24

    const/16 v1, 0x26

    .line 2648
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2650
    :cond_24
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isIwlanCrossSimAtConnected:Z

    if-eqz v0, :cond_25

    const/16 v1, 0x27

    .line 2651
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2653
    :cond_25
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->vonrEnabled:Z

    if-eqz v0, :cond_26

    const/16 v1, 0x28

    .line 2654
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2656
    :cond_26
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->isNtn:Z

    if-eqz v0, :cond_27

    const/16 v1, 0x29

    .line 2657
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2659
    :cond_27
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->supportsBusinessCallComposer:Z

    if-eqz v0, :cond_28

    const/16 v1, 0x2a

    .line 2660
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 2662
    :cond_28
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->callComposerStatus:I

    if-eqz v0, :cond_29

    const/16 v1, 0x2b

    .line 2663
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2665
    :cond_29
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->preciseCallStateOnSetup:I

    if-eqz v0, :cond_2a

    const/16 v1, 0x2c

    .line 2666
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2668
    :cond_2a
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->setupBeginMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x2711

    .line 2669
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 2671
    :cond_2b
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
