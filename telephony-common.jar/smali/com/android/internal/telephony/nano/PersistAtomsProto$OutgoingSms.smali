.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;


# instance fields
.field public blacklist carrierId:I

.field public blacklist count:I

.field public blacklist errorCode:I

.field public blacklist hashCode:I

.field public blacklist intervalMillis:J

.field public blacklist isEmergency:Z

.field public blacklist isEsim:Z

.field public blacklist isFromDefaultApp:Z

.field public blacklist isManagedProfile:Z

.field public blacklist isMtSmsPolling:Z

.field public blacklist isMultiSim:Z

.field public blacklist isNbIotNtn:Z

.field public blacklist isNtn:Z

.field public blacklist isRoaming:Z

.field public blacklist messageId:J

.field public blacklist networkErrorCode:I

.field public blacklist pduLength:I

.field public blacklist rat:I

.field public blacklist retryId:I

.field public blacklist sendErrorCode:I

.field public blacklist sendResult:I

.field public blacklist simSlotIndex:I

.field public blacklist smsFormat:I

.field public blacklist smsTech:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 3667
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 3668
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .locals 2

    .line 3584
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v0, :cond_1

    .line 3585
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3587
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3588
    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3590
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3592
    :cond_1
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4004
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 3998
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .locals 3

    const/4 v0, 0x0

    .line 3672
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    .line 3673
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    .line 3674
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    .line 3675
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    .line 3676
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    .line 3677
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    .line 3678
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    .line 3679
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    .line 3680
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    .line 3681
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    .line 3682
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    const-wide/16 v1, 0x0

    .line 3683
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    .line 3684
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    .line 3685
    iput-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    .line 3686
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    .line 3687
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    .line 3688
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    .line 3689
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    .line 3690
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    .line 3691
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    .line 3692
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    .line 3693
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    .line 3694
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->pduLength:I

    .line 3695
    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    const/4 v0, 0x0

    .line 3696
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 3697
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .locals 6

    .line 3781
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 3782
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3784
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3786
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 3788
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3790
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 3792
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3794
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 3796
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3798
    :cond_3
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 3800
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3802
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 3804
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3806
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 3808
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3810
    :cond_6
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 3812
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3814
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 3816
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3818
    :cond_8
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    if-eqz v1, :cond_9

    const/16 v2, 0xa

    .line 3820
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3822
    :cond_9
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 3824
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3826
    :cond_a
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    const/16 v5, 0xc

    .line 3828
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3830
    :cond_b
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 3832
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3834
    :cond_c
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_d

    const/16 v3, 0xe

    .line 3836
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3838
    :cond_d
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 3840
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3842
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 3844
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3846
    :cond_f
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    .line 3848
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3850
    :cond_10
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x12

    .line 3852
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3854
    :cond_11
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    .line 3856
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3858
    :cond_12
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    if-eqz v1, :cond_13

    const/16 v2, 0x14

    .line 3860
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3862
    :cond_13
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    if-eqz v1, :cond_14

    const/16 v2, 0x15

    .line 3864
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3866
    :cond_14
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    if-eqz v1, :cond_15

    const/16 v2, 0x16

    .line 3868
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3870
    :cond_15
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->pduLength:I

    if-eqz v1, :cond_16

    const/16 v2, 0x17

    .line 3872
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3874
    :cond_16
    iget p0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    if-eqz p0, :cond_17

    const/16 v1, 0x2711

    .line 3876
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_17
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3886
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3891
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3989
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    goto :goto_0

    .line 3985
    :sswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->pduLength:I

    goto :goto_0

    .line 3981
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    goto :goto_0

    .line 3977
    :sswitch_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    goto :goto_0

    .line 3973
    :sswitch_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    goto :goto_0

    .line 3969
    :sswitch_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    goto :goto_0

    .line 3965
    :sswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    goto :goto_0

    .line 3961
    :sswitch_7
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    goto :goto_0

    .line 3957
    :sswitch_8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    goto :goto_0

    .line 3953
    :sswitch_9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    goto :goto_0

    .line 3949
    :sswitch_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    goto :goto_0

    .line 3945
    :sswitch_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    goto :goto_0

    .line 3941
    :sswitch_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    goto :goto_0

    .line 3937
    :sswitch_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    goto :goto_0

    .line 3933
    :sswitch_e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    goto :goto_0

    .line 3929
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    goto :goto_0

    .line 3925
    :sswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    goto/16 :goto_0

    .line 3921
    :sswitch_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    goto/16 :goto_0

    .line 3917
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    goto/16 :goto_0

    .line 3913
    :sswitch_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    goto/16 :goto_0

    .line 3909
    :sswitch_14
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    goto/16 :goto_0

    .line 3905
    :sswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    goto/16 :goto_0

    .line 3901
    :sswitch_16
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    goto/16 :goto_0

    .line 3897
    :sswitch_17
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    goto/16 :goto_0

    :goto_1
    :sswitch_18
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_18
        0x8 -> :sswitch_17
        0x10 -> :sswitch_16
        0x18 -> :sswitch_15
        0x20 -> :sswitch_14
        0x28 -> :sswitch_13
        0x30 -> :sswitch_12
        0x38 -> :sswitch_11
        0x40 -> :sswitch_10
        0x48 -> :sswitch_f
        0x50 -> :sswitch_e
        0x58 -> :sswitch_d
        0x60 -> :sswitch_c
        0x68 -> :sswitch_b
        0x70 -> :sswitch_a
        0x78 -> :sswitch_9
        0x80 -> :sswitch_8
        0x88 -> :sswitch_7
        0x90 -> :sswitch_6
        0x98 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xa8 -> :sswitch_3
        0xb0 -> :sswitch_2
        0xb8 -> :sswitch_1
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

    .line 3578
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

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

    .line 3704
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsFormat:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3705
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3707
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->smsTech:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 3708
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3710
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->rat:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 3711
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3713
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendResult:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 3714
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3716
    :cond_3
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->errorCode:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 3717
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3719
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isRoaming:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 3720
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3722
    :cond_5
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isFromDefaultApp:Z

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 3723
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3725
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->simSlotIndex:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 3726
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3728
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMultiSim:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 3729
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3731
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEsim:Z

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 3732
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3734
    :cond_9
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->carrierId:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 3735
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3737
    :cond_a
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_b

    const/16 v4, 0xc

    .line 3738
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3740
    :cond_b
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->retryId:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 3741
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3743
    :cond_c
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->intervalMillis:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_d

    const/16 v2, 0xe

    .line 3744
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 3746
    :cond_d
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->count:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 3747
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3749
    :cond_e
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->sendErrorCode:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 3750
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3752
    :cond_f
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->networkErrorCode:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 3753
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3755
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isManagedProfile:Z

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 3756
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3758
    :cond_11
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isEmergency:Z

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 3759
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3761
    :cond_12
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNtn:Z

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 3762
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3764
    :cond_13
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isMtSmsPolling:Z

    if-eqz v0, :cond_14

    const/16 v1, 0x15

    .line 3765
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3767
    :cond_14
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->isNbIotNtn:Z

    if-eqz v0, :cond_15

    const/16 v1, 0x16

    .line 3768
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3770
    :cond_15
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->pduLength:I

    if-eqz v0, :cond_16

    const/16 v1, 0x17

    .line 3771
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3773
    :cond_16
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->hashCode:I

    if-eqz v0, :cond_17

    const/16 v1, 0x2711

    .line 3774
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 3776
    :cond_17
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
