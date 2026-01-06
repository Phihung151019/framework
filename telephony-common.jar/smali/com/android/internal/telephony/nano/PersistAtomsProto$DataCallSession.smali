.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;


# instance fields
.field public blacklist apnTypeBitmask:I

.field public blacklist bandAtEnd:I

.field public blacklist carrierId:I

.field public blacklist deactivateReason:I

.field public blacklist dimension:I

.field public blacklist durationMinutes:J

.field public blacklist failureCause:I

.field public blacklist handoverFailureCauses:[I

.field public blacklist handoverFailureRat:[I

.field public blacklist ipType:I

.field public blacklist isEsim:Z

.field public blacklist isIwlanCrossSim:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNonDds:Z

.field public blacklist isNtn:Z

.field public blacklist isOpportunistic:Z

.field public blacklist isProvisioningProfile:Z

.field public blacklist isRoaming:Z

.field public blacklist isSatelliteTransport:Z

.field public blacklist ongoing:Z

.field public blacklist oosAtEnd:Z

.field public blacklist ratAtEnd:I

.field public blacklist ratSwitchCount:J

.field public blacklist setupFailed:Z

.field public blacklist suggestedRetryMillis:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 4233
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4234
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .locals 2

    .line 4144
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-nez v0, :cond_1

    .line 4145
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4147
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4148
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4150
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4152
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4682
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4676
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .locals 3

    const/4 v0, 0x0

    .line 4238
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    .line 4239
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    .line 4240
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    .line 4241
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    .line 4242
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    .line 4243
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    .line 4244
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    .line 4245
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    const-wide/16 v1, 0x0

    .line 4246
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    .line 4247
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    .line 4248
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    .line 4249
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    .line 4250
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    .line 4251
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    .line 4252
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    .line 4253
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    .line 4254
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    .line 4255
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    .line 4256
    sget-object v1, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 4257
    iput-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 4258
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    .line 4259
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    .line 4260
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    .line 4261
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    .line 4262
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    .line 4263
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    const/4 v0, 0x0

    .line 4264
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4265
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 7

    .line 4359
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4360
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 4362
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4364
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 4366
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4368
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    if-eqz v1, :cond_2

    const/4 v3, 0x3

    .line 4370
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4372
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    if-eqz v1, :cond_3

    const/4 v3, 0x5

    .line 4374
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4376
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    if-eqz v1, :cond_4

    const/4 v3, 0x6

    .line 4378
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4380
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    if-eqz v1, :cond_5

    const/4 v3, 0x7

    .line 4382
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4384
    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    if-eqz v1, :cond_6

    const/16 v3, 0x8

    .line 4386
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4388
    :cond_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    if-eqz v1, :cond_7

    const/16 v3, 0x9

    .line 4390
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4392
    :cond_7
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    const/16 v1, 0xa

    .line 4394
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4396
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    if-eqz v1, :cond_9

    const/16 v3, 0xb

    .line 4398
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4400
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    if-eqz v1, :cond_a

    const/16 v3, 0xc

    .line 4402
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4404
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    if-eqz v1, :cond_b

    const/16 v3, 0xd

    .line 4406
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4408
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    if-eqz v1, :cond_c

    const/16 v3, 0xe

    .line 4410
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4412
    :cond_c
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    if-eqz v1, :cond_d

    const/16 v3, 0xf

    .line 4414
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4416
    :cond_d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    if-eqz v1, :cond_e

    const/16 v3, 0x10

    .line 4418
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4420
    :cond_e
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    const/16 v1, 0x11

    .line 4422
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4424
    :cond_f
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    if-eqz v1, :cond_10

    const/16 v3, 0x12

    .line 4426
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4428
    :cond_10
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    if-eqz v1, :cond_11

    const/16 v3, 0x13

    .line 4430
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4432
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_13

    array-length v1, v1

    if-lez v1, :cond_13

    move v1, v3

    move v4, v1

    .line 4434
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    array-length v6, v5

    if-ge v1, v6, :cond_12

    .line 4435
    aget v5, v5, v1

    .line 4437
    invoke-static {v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_12
    add-int/2addr v0, v4

    .line 4440
    array-length v1, v5

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4442
    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-eqz v1, :cond_15

    array-length v1, v1

    if-lez v1, :cond_15

    move v1, v3

    .line 4444
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    array-length v5, v4

    if-ge v3, v5, :cond_14

    .line 4445
    aget v4, v4, v3

    .line 4447
    invoke-static {v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_14
    add-int/2addr v0, v1

    .line 4450
    array-length v1, v4

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4452
    :cond_15
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    if-eqz v1, :cond_16

    const/16 v2, 0x16

    .line 4454
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4456
    :cond_16
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    if-eqz v1, :cond_17

    const/16 v2, 0x17

    .line 4458
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4460
    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    .line 4462
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4464
    :cond_18
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    if-eqz v1, :cond_19

    const/16 v2, 0x19

    .line 4466
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4468
    :cond_19
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    if-eqz v1, :cond_1a

    const/16 v2, 0x1a

    .line 4470
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4472
    :cond_1a
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    if-eqz p0, :cond_1b

    const/16 v1, 0x1b

    .line 4474
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_1b
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4484
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 4489
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 4667
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    goto :goto_0

    .line 4663
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    goto :goto_0

    .line 4659
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    goto :goto_0

    .line 4655
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    goto :goto_0

    .line 4651
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    goto :goto_0

    .line 4647
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    goto :goto_0

    .line 4624
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4625
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 4628
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 4629
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_1

    .line 4630
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4633
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4634
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-nez v2, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    array-length v4, v2

    :goto_2
    add-int/2addr v3, v4

    .line 4635
    new-array v5, v3, [I

    if-eqz v4, :cond_3

    .line 4637
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    if-ge v4, v3, :cond_4

    .line 4640
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 4642
    :cond_4
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    .line 4643
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto :goto_0

    :sswitch_7
    const/16 v0, 0xa8

    .line 4608
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4609
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-nez v2, :cond_5

    move v3, v1

    goto :goto_4

    :cond_5
    array-length v3, v2

    :goto_4
    add-int/2addr v0, v3

    .line 4610
    new-array v4, v0, [I

    if-eqz v3, :cond_6

    .line 4612
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_7

    .line 4615
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 4616
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4619
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 4620
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    goto/16 :goto_0

    .line 4584
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 4585
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 4588
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    move v3, v1

    .line 4589
    :goto_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_8

    .line 4590
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 4593
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 4594
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    if-nez v2, :cond_9

    move v4, v1

    goto :goto_7

    :cond_9
    array-length v4, v2

    :goto_7
    add-int/2addr v3, v4

    .line 4595
    new-array v5, v3, [I

    if-eqz v4, :cond_a

    .line 4597
    invoke-static {v2, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    if-ge v4, v3, :cond_b

    .line 4600
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 4602
    :cond_b
    iput-object v5, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    .line 4603
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_9
    const/16 v0, 0xa0

    .line 4568
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4569
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    if-nez v2, :cond_c

    move v3, v1

    goto :goto_9

    :cond_c
    array-length v3, v2

    :goto_9
    add-int/2addr v0, v3

    .line 4570
    new-array v4, v0, [I

    if-eqz v3, :cond_d

    .line 4572
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_e

    .line 4575
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v4, v3

    .line 4576
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 4579
    :cond_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    aput v0, v4, v3

    .line 4580
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    goto/16 :goto_0

    .line 4563
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    goto/16 :goto_0

    .line 4559
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    goto/16 :goto_0

    .line 4555
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    goto/16 :goto_0

    .line 4551
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    goto/16 :goto_0

    .line 4547
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    goto/16 :goto_0

    .line 4543
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    goto/16 :goto_0

    .line 4539
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    goto/16 :goto_0

    .line 4535
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    goto/16 :goto_0

    .line 4531
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    goto/16 :goto_0

    .line 4527
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    goto/16 :goto_0

    .line 4523
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    goto/16 :goto_0

    .line 4519
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    goto/16 :goto_0

    .line 4515
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    goto/16 :goto_0

    .line 4511
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    goto/16 :goto_0

    .line 4507
    :sswitch_18
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    goto/16 :goto_0

    .line 4503
    :sswitch_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    goto/16 :goto_0

    .line 4499
    :sswitch_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    goto/16 :goto_0

    .line 4495
    :sswitch_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    goto/16 :goto_0

    :goto_b
    :sswitch_1c
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0x10 -> :sswitch_1a
        0x18 -> :sswitch_19
        0x28 -> :sswitch_18
        0x30 -> :sswitch_17
        0x38 -> :sswitch_16
        0x40 -> :sswitch_15
        0x48 -> :sswitch_14
        0x50 -> :sswitch_13
        0x58 -> :sswitch_12
        0x60 -> :sswitch_11
        0x68 -> :sswitch_10
        0x70 -> :sswitch_f
        0x78 -> :sswitch_e
        0x80 -> :sswitch_d
        0x88 -> :sswitch_c
        0x90 -> :sswitch_b
        0x98 -> :sswitch_a
        0xa0 -> :sswitch_9
        0xa2 -> :sswitch_8
        0xa8 -> :sswitch_7
        0xaa -> :sswitch_6
        0xb0 -> :sswitch_5
        0xb8 -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc8 -> :sswitch_2
        0xd0 -> :sswitch_1
        0xd8 -> :sswitch_0
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

    .line 4138
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

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

    .line 4272
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->dimension:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4273
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4275
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isMultiSim:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4276
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4278
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isEsim:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 4279
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4281
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->apnTypeBitmask:I

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 4282
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4284
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->carrierId:I

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 4285
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4287
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isRoaming:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 4288
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4290
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratAtEnd:I

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 4291
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4293
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->oosAtEnd:Z

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 4294
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4296
    :cond_7
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ratSwitchCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0xa

    .line 4297
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4299
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isOpportunistic:Z

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 4300
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4302
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ipType:I

    if-eqz v0, :cond_a

    const/16 v1, 0xc

    .line 4303
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4305
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->setupFailed:Z

    if-eqz v0, :cond_b

    const/16 v1, 0xd

    .line 4306
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4308
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->failureCause:I

    if-eqz v0, :cond_c

    const/16 v1, 0xe

    .line 4309
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4311
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->suggestedRetryMillis:I

    if-eqz v0, :cond_d

    const/16 v1, 0xf

    .line 4312
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4314
    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->deactivateReason:I

    if-eqz v0, :cond_e

    const/16 v1, 0x10

    .line 4315
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4317
    :cond_e
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->durationMinutes:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    const/16 v2, 0x11

    .line 4318
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4320
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->ongoing:Z

    if-eqz v0, :cond_10

    const/16 v1, 0x12

    .line 4321
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4323
    :cond_10
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->bandAtEnd:I

    if-eqz v0, :cond_11

    const/16 v1, 0x13

    .line 4324
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4326
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    array-length v0, v0

    if-lez v0, :cond_12

    move v0, v1

    .line 4327
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureCauses:[I

    array-length v3, v2

    if-ge v0, v3, :cond_12

    const/16 v3, 0x14

    .line 4328
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4331
    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    if-eqz v0, :cond_13

    array-length v0, v0

    if-lez v0, :cond_13

    .line 4332
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->handoverFailureRat:[I

    array-length v2, v0

    if-ge v1, v2, :cond_13

    const/16 v2, 0x15

    .line 4333
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4336
    :cond_13
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNonDds:Z

    if-eqz v0, :cond_14

    const/16 v1, 0x16

    .line 4337
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4339
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isIwlanCrossSim:Z

    if-eqz v0, :cond_15

    const/16 v1, 0x17

    .line 4340
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4342
    :cond_15
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNtn:Z

    if-eqz v0, :cond_16

    const/16 v1, 0x18

    .line 4343
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4345
    :cond_16
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isSatelliteTransport:Z

    if-eqz v0, :cond_17

    const/16 v1, 0x19

    .line 4346
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4348
    :cond_17
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isProvisioningProfile:Z

    if-eqz v0, :cond_18

    const/16 v1, 0x1a

    .line 4349
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4351
    :cond_18
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->isNbIotNtn:Z

    if-eqz v0, :cond_19

    const/16 v1, 0x1b

    .line 4352
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4354
    :cond_19
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
