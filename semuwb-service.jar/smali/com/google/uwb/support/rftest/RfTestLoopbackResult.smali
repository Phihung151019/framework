.class public final Lcom/google/uwb/support/rftest/RfTestLoopbackResult;
.super Lcom/google/uwb/support/rftest/RfTestParams;
.source "RfTestLoopbackResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_AOA_AZIMUTH:Ljava/lang/String; = "aoa_azimuth"

.field private static final KEY_AOA_ELEVATION:Ljava/lang/String; = "aoa_elevation"

.field private static final KEY_PHR:Ljava/lang/String; = "phr"

.field private static final KEY_PSDU_DATA:Ljava/lang/String; = "psdu_data"

.field private static final KEY_RF_OPERATION_TYPE:Ljava/lang/String; = "rf_operation_type"

.field private static final KEY_RX_TS_FRAC:Ljava/lang/String; = "rx_ts_frac"

.field private static final KEY_RX_TS_INT:Ljava/lang/String; = "rx_ts_int"

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "status_code"

.field private static final KEY_TX_TS_FRAC:Ljava/lang/String; = "tx_ts_frac"

.field private static final KEY_TX_TS_INT:Ljava/lang/String; = "tx_ts_int"

.field public static final RAW_NTF_DATA:Ljava/lang/String; = "raw_ntf_data"


# instance fields
.field private final mAoaAzimuth:I

.field private final mAoaElevation:I

.field private final mPhr:I

.field private final mPsduData:[B

.field private final mRawNtfData:[B

.field private final mRfTestOperationType:I

.field private final mRxTsFrac:I

.field private final mRxTsInt:J

.field private final mStatus:I

.field private final mTxTsFrac:I

.field private final mTxTsInt:J


# direct methods
.method public constructor <init>(IJIJIIII[B[BI)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "txTsInt"    # J
    .param p4, "txTsFrac"    # I
    .param p5, "rxTsInt"    # J
    .param p7, "rxTsFrac"    # I
    .param p8, "aoaAzimuth"    # I
    .param p9, "aoaElevation"    # I
    .param p10, "phr"    # I
    .param p11, "psduData"    # [B
    .param p12, "rawNtfData"    # [B
    .param p13, "rfTestOperationType"    # I

    .line 51
    invoke-direct {p0}, Lcom/google/uwb/support/rftest/RfTestParams;-><init>()V

    .line 52
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mStatus:I

    .line 53
    iput-wide p2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mTxTsInt:J

    .line 54
    iput p4, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mTxTsFrac:I

    .line 55
    iput-wide p5, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRxTsInt:J

    .line 56
    iput p7, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRxTsFrac:I

    .line 57
    iput p8, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mAoaAzimuth:I

    .line 58
    iput p9, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mAoaElevation:I

    .line 59
    iput p10, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mPhr:I

    .line 60
    iput-object p11, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mPsduData:[B

    .line 61
    iput-object p12, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRawNtfData:[B

    .line 62
    iput p13, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRfTestOperationType:I

    .line 63
    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestLoopbackResult;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 89
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestLoopbackResult;

    move-result-object v0

    return-object v0

    .line 90
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

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestLoopbackResult;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 103
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;-><init>()V

    .line 104
    const-string v1, "status_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setStatus(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 105
    const-string v1, "tx_ts_int"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setTxTsInt(J)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 106
    const-string v1, "tx_ts_frac"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setTxTsFrac(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 107
    const-string v1, "rx_ts_int"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setRxTsInt(J)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 108
    const-string v1, "rx_ts_frac"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setRxTsFrac(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 109
    const-string v1, "aoa_azimuth"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setAoaAzimuth(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 110
    const-string v1, "aoa_elevation"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setAoaElevation(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 111
    const-string v1, "phr"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setPhr(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 112
    const-string v1, "psdu_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setPsduData([B)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 113
    const-string v1, "raw_ntf_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setRawNtfData([B)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 114
    const-string v1, "rf_operation_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->setOperationType(I)Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;

    move-result-object v0

    .line 115
    .local v0, "builder":Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;
    invoke-virtual {v0}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult$Builder;->build()Lcom/google/uwb/support/rftest/RfTestLoopbackResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAoaAzimuth()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mAoaAzimuth:I

    return v0
.end method

.method public getAoaElevation()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mAoaElevation:I

    return v0
.end method

.method protected getBundleVersion()I
    .locals 1

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public getPhr()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mPhr:I

    return v0
.end method

.method public getPsduData()[B
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mPsduData:[B

    return-object v0
.end method

.method public getRawNtfData()[B
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRawNtfData:[B

    return-object v0
.end method

.method public getRfTestOperationType()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRfTestOperationType:I

    return v0
.end method

.method public getRxTsFrac()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRxTsFrac:I

    return v0
.end method

.method public getRxTsInt()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRxTsInt:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mStatus:I

    return v0
.end method

.method public getTxTsFrac()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mTxTsFrac:I

    return v0
.end method

.method public getTxTsInt()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mTxTsInt:J

    return-wide v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 72
    invoke-super {p0}, Lcom/google/uwb/support/rftest/RfTestParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 73
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "status_code"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v1, "tx_ts_int"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mTxTsInt:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 75
    const-string v1, "tx_ts_frac"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mTxTsFrac:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "rx_ts_int"

    iget-wide v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRxTsInt:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 77
    const-string v1, "rx_ts_frac"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRxTsFrac:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v1, "aoa_azimuth"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mAoaAzimuth:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "aoa_elevation"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mAoaElevation:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v1, "phr"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mPhr:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mPsduData:[B

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "psdu_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 82
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRawNtfData:[B

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "raw_ntf_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 83
    const-string v1, "rf_operation_type"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestLoopbackResult;->mRfTestOperationType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    return-object v0
.end method
