.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;


# instance fields
.field public blacklist blocked:Z

.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist error:I

.field public blacklist hashCode:I

.field public blacklist isEmergency:Z

.field public blacklist isEsim:Z

.field public blacklist isManagedProfile:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNtn:Z

.field public blacklist isRoaming:Z

.field public blacklist messageId:J

.field public blacklist pduLength:I

.field public blacklist rat:I

.field public blacklist receivedParts:I

.field public blacklist simSlotIndex:I

.field public blacklist smsFormat:I

.field public blacklist smsTech:I

.field public blacklist smsType:I

.field public blacklist totalParts:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3273
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3274
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .locals 2

    .line 3199
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-nez v0, :cond_1

    .line 3200
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3202
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3203
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3205
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3207
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3574
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3568
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .locals 3

    const/4 v0, 0x0

    .line 3278
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    .line 3279
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    .line 3280
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    .line 3281
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    .line 3282
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    .line 3283
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    .line 3284
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    .line 3285
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    .line 3286
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    .line 3287
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    .line 3288
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    .line 3289
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    .line 3290
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    const-wide/16 v1, 0x0

    .line 3291
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    .line 3292
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    .line 3293
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    .line 3294
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    .line 3295
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    .line 3296
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    .line 3297
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->pduLength:I

    .line 3298
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    const/4 v0, 0x0

    .line 3299
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3300
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 5

    .line 3375
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3376
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3378
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3380
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 3382
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3384
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 3386
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3388
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 3390
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3392
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 3394
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3396
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 3398
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3400
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 3402
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3404
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 3406
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3408
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 3410
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3412
    :cond_8
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 3414
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3416
    :cond_9
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 3418
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3420
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    if-eqz v1, :cond_b

    const/16 v2, 0xc

    .line 3422
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3424
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 3426
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3428
    :cond_c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_d

    const/16 v3, 0xe

    .line 3430
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3432
    :cond_d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 3434
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3436
    :cond_e
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 3438
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3440
    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    .line 3442
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3444
    :cond_10
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x12

    .line 3446
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3448
    :cond_11
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    .line 3450
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3452
    :cond_12
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->pduLength:I

    if-eqz v1, :cond_13

    const/16 v2, 0x14

    .line 3454
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3456
    :cond_13
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    if-eqz p0, :cond_14

    const/16 v1, 0x2711

    .line 3458
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_14
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3468
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3473
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3559
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    goto :goto_0

    .line 3555
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->pduLength:I

    goto :goto_0

    .line 3551
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    goto :goto_0

    .line 3547
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    goto :goto_0

    .line 3543
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    goto :goto_0

    .line 3539
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    goto :goto_0

    .line 3535
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    goto :goto_0

    .line 3531
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    goto :goto_0

    .line 3527
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    goto :goto_0

    .line 3523
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    goto :goto_0

    .line 3519
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    goto :goto_0

    .line 3515
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    goto :goto_0

    .line 3511
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    goto :goto_0

    .line 3507
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    goto :goto_0

    .line 3503
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    goto :goto_0

    .line 3499
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    goto :goto_0

    .line 3495
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    goto/16 :goto_0

    .line 3491
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    goto/16 :goto_0

    .line 3487
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    goto/16 :goto_0

    .line 3483
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    goto/16 :goto_0

    .line 3479
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    goto/16 :goto_0

    :goto_1
    :sswitch_15
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_15
        0x8 -> :sswitch_14
        0x10 -> :sswitch_13
        0x18 -> :sswitch_12
        0x20 -> :sswitch_11
        0x28 -> :sswitch_10
        0x30 -> :sswitch_f
        0x38 -> :sswitch_e
        0x40 -> :sswitch_d
        0x48 -> :sswitch_c
        0x50 -> :sswitch_b
        0x58 -> :sswitch_a
        0x60 -> :sswitch_9
        0x68 -> :sswitch_8
        0x70 -> :sswitch_7
        0x78 -> :sswitch_6
        0x80 -> :sswitch_5
        0x88 -> :sswitch_4
        0x90 -> :sswitch_3
        0x98 -> :sswitch_2
        0xa0 -> :sswitch_1
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

    .line 3193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

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

    .line 3307
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsFormat:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3308
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3310
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsTech:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 3311
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3313
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->rat:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 3314
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3316
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->smsType:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 3317
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3319
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->totalParts:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 3320
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3322
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->receivedParts:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 3323
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3325
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->blocked:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 3326
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3328
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->error:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 3329
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3331
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isRoaming:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 3332
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3334
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->simSlotIndex:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 3335
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3337
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isMultiSim:Z

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 3338
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3340
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEsim:Z

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 3341
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3343
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->carrierId:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 3344
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3346
    :cond_c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    .line 3347
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3349
    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->count:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 3350
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3352
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isManagedProfile:Z

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 3353
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3355
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNtn:Z

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 3356
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3358
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isEmergency:Z

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 3359
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3361
    :cond_11
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->isNbIotNtn:Z

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 3362
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3364
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->pduLength:I

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 3365
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3367
    :cond_13
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->hashCode:I

    if-eqz v0, :cond_14

    const/16 v1, 0x2711

    .line 3368
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3370
    :cond_14
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
