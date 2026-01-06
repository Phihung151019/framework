.class public final Lcom/google/uwb/support/rftest/RfTestPerRxResult;
.super Lcom/google/uwb/support/rftest/RfTestParams;
.source "RfTestPerRxResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_ACQ_DETECT:Ljava/lang/String; = "acq_detect"

.field private static final KEY_ACQ_REJECT:Ljava/lang/String; = "acq_reject"

.field private static final KEY_ATTEMPTS:Ljava/lang/String; = "attempts"

.field private static final KEY_EOF:Ljava/lang/String; = "eof"

.field private static final KEY_PHR_BIT_ERROR:Ljava/lang/String; = "phr_bit_error"

.field private static final KEY_PHR_DEC_ERROR:Ljava/lang/String; = "phr_dec_error"

.field private static final KEY_PSDU_BIT_ERROR:Ljava/lang/String; = "psdu_bit_error"

.field private static final KEY_PSDU_DEC_ERROR:Ljava/lang/String; = "psdu_dec_error"

.field private static final KEY_RF_OPERATION_TYPE:Ljava/lang/String; = "rf_operation_type"

.field private static final KEY_RX_FAIL:Ljava/lang/String; = "rx_fail"

.field private static final KEY_SFD_FAIL:Ljava/lang/String; = "sfd_fail"

.field private static final KEY_SFD_FOUND:Ljava/lang/String; = "sfd_found"

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "status_code"

.field private static final KEY_STS_FOUND:Ljava/lang/String; = "sts_found"

.field private static final KEY_SYNC_CIR_READY:Ljava/lang/String; = "sync_cir_ready"

.field public static final RAW_NTF_DATA:Ljava/lang/String; = "raw_ntf_data"


# instance fields
.field private final mAcqDetect:J

.field private final mAcqReject:J

.field private final mAttempts:J

.field private final mEof:J

.field private final mPhrBitError:J

.field private final mPhrDecError:J

.field private final mPsduBitError:J

.field private final mPsduDecError:J

.field private final mRawNtfData:[B

.field private final mRfTestOperationType:I

.field private final mRxFail:J

.field private final mSfdFail:J

.field private final mSfdFound:J

.field private final mStatus:I

.field private final mStsFound:J

.field private final mSyncCirReady:J


# direct methods
.method private constructor <init>(IJJJJJJJJJJJJJ[BI)V
    .locals 16
    .param p1, "status"    # I
    .param p2, "attempts"    # J
    .param p4, "acqDetect"    # J
    .param p6, "acqReject"    # J
    .param p8, "rxFail"    # J
    .param p10, "syncCirReady"    # J
    .param p12, "sfdFail"    # J
    .param p14, "sfdFound"    # J
    .param p16, "phrDecError"    # J
    .param p18, "phrBitError"    # J
    .param p20, "psduDecError"    # J
    .param p22, "psduBitError"    # J
    .param p24, "stsFound"    # J
    .param p26, "eof"    # J
    .param p28, "rawNtfData"    # [B
    .param p29, "rfTestOperationType"    # I

    .line 63
    move-object/from16 v0, p0

    invoke-direct {v0}, Lcom/google/uwb/support/rftest/RfTestParams;-><init>()V

    .line 64
    move/from16 v1, p1

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mStatus:I

    .line 65
    move-wide/from16 v2, p2

    iput-wide v2, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAttempts:J

    .line 66
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAcqDetect:J

    .line 67
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAcqReject:J

    .line 68
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRxFail:J

    .line 69
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSyncCirReady:J

    .line 70
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSfdFail:J

    .line 71
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSfdFound:J

    .line 72
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPhrDecError:J

    .line 73
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPhrBitError:J

    .line 74
    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPsduDecError:J

    .line 75
    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPsduBitError:J

    .line 76
    move-wide/from16 v1, p24

    iput-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mStsFound:J

    .line 77
    move-wide/from16 v1, p26

    iput-wide v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mEof:J

    .line 78
    move-object/from16 v3, p28

    iput-object v3, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRawNtfData:[B

    .line 79
    move/from16 v1, p29

    iput v1, v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRfTestOperationType:I

    .line 80
    return-void
.end method

.method synthetic constructor <init>(IJJJJJJJJJJJJJ[BILcom/google/uwb/support/rftest/RfTestPerRxResult$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # J
    .param p8, "x4"    # J
    .param p10, "x5"    # J
    .param p12, "x6"    # J
    .param p14, "x7"    # J
    .param p16, "x8"    # J
    .param p18, "x9"    # J
    .param p20, "x10"    # J
    .param p22, "x11"    # J
    .param p24, "x12"    # J
    .param p26, "x13"    # J
    .param p28, "x14"    # [B
    .param p29, "x15"    # I
    .param p30, "x16"    # Lcom/google/uwb/support/rftest/RfTestPerRxResult$1;

    .line 23
    invoke-direct/range {p0 .. p29}, Lcom/google/uwb/support/rftest/RfTestPerRxResult;-><init>(IJJJJJJJJJJJJJ[BI)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestPerRxResult;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 111
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestPerRxResult;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestPerRxResult;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 125
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;-><init>()V

    .line 126
    const-string v1, "status_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setStatus(I)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 127
    const-string v1, "attempts"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setAttempts(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 128
    const-string v1, "acq_detect"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setAcqDetect(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 129
    const-string v1, "acq_reject"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setAcqReject(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 130
    const-string v1, "rx_fail"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setRxFail(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 131
    const-string v1, "sync_cir_ready"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setSyncCirReady(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 132
    const-string v1, "sfd_fail"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setSfdFail(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 133
    const-string v1, "sfd_found"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setSfdFound(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 134
    const-string v1, "phr_dec_error"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setPhrDecError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 135
    const-string v1, "phr_bit_error"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setPhrBitError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 136
    const-string v1, "psdu_dec_error"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setPsduDecError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 137
    const-string v1, "psdu_bit_error"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setPsduBitError(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 138
    const-string v1, "sts_found"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setStsFound(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 139
    const-string v1, "eof"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setEof(J)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 140
    const-string v1, "raw_ntf_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setRawNtfData([B)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 141
    const-string v1, "rf_operation_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->setOperationType(I)Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;

    move-result-object v0

    .line 142
    .local v0, "builder":Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;
    invoke-virtual {v0}, Lcom/google/uwb/support/rftest/RfTestPerRxResult$Builder;->build()Lcom/google/uwb/support/rftest/RfTestPerRxResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAcqDetect()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAcqDetect:J

    return-wide v0
.end method

.method public getAcqReject()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAcqReject:J

    return-wide v0
.end method

.method public getAttempts()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAttempts:J

    return-wide v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getEof()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mEof:J

    return-wide v0
.end method

.method public getPhrBitError()J
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPhrBitError:J

    return-wide v0
.end method

.method public getPhrDecError()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPhrDecError:J

    return-wide v0
.end method

.method public getPsduBitError()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPsduBitError:J

    return-wide v0
.end method

.method public getPsduDecError()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPsduDecError:J

    return-wide v0
.end method

.method public getRawNtfData()[B
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRawNtfData:[B

    return-object v0
.end method

.method public getRfTestOperationType()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRfTestOperationType:I

    return v0
.end method

.method public getRxFail()J
    .locals 2

    .line 162
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRxFail:J

    return-wide v0
.end method

.method public getSfdFail()J
    .locals 2

    .line 170
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSfdFail:J

    return-wide v0
.end method

.method public getSfdFound()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSfdFound:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mStatus:I

    return v0
.end method

.method public getStsFound()J
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mStsFound:J

    return-wide v0
.end method

.method public getSyncCirReady()J
    .locals 2

    .line 166
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSyncCirReady:J

    return-wide v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 89
    invoke-super {p0}, Lcom/google/uwb/support/rftest/RfTestParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 90
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "status_code"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "attempts"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAttempts:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 92
    const-string v1, "acq_detect"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAcqDetect:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 93
    const-string v1, "acq_reject"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mAcqReject:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 94
    const-string v1, "rx_fail"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRxFail:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 95
    const-string v1, "sync_cir_ready"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSyncCirReady:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 96
    const-string v1, "sfd_fail"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSfdFail:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 97
    const-string v1, "sfd_found"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mSfdFound:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 98
    const-string v1, "phr_dec_error"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPhrDecError:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 99
    const-string v1, "phr_bit_error"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPhrBitError:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 100
    const-string v1, "psdu_dec_error"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPsduDecError:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 101
    const-string v1, "psdu_bit_error"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mPsduBitError:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 102
    const-string v1, "sts_found"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mStsFound:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 103
    const-string v1, "eof"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mEof:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 104
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRawNtfData:[B

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "raw_ntf_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 105
    const-string v1, "rf_operation_type"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestPerRxResult;->mRfTestOperationType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 106
    return-object v0
.end method
