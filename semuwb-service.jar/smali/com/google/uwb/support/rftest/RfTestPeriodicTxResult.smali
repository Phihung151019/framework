.class public final Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;
.super Lcom/google/uwb/support/rftest/RfTestParams;
.source "RfTestPeriodicTxResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_RF_OPERATION_TYPE:Ljava/lang/String; = "rf_operation_type"

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "status_code"

.field public static final RAW_NTF_DATA:Ljava/lang/String; = "raw_ntf_data"


# instance fields
.field private final mRawNtfData:[B

.field private final mRfTestOperationType:I

.field private final mStatus:I


# direct methods
.method private constructor <init>(I[BI)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "rawNtfData"    # [B
    .param p3, "rfTestOperationType"    # I

    .line 33
    invoke-direct {p0}, Lcom/google/uwb/support/rftest/RfTestParams;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mStatus:I

    .line 35
    iput-object p2, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mRawNtfData:[B

    .line 36
    iput p3, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mRfTestOperationType:I

    .line 37
    return-void
.end method

.method synthetic constructor <init>(I[BILcom/google/uwb/support/rftest/RfTestPeriodicTxResult$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$1;

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;-><init>(I[BI)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 55
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;

    move-result-object v0

    return-object v0

    .line 56
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

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 69
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;-><init>()V

    .line 70
    const-string v1, "status_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->setStatus(I)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;

    move-result-object v0

    .line 71
    const-string v1, "raw_ntf_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->setRawNtfData([B)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;

    move-result-object v0

    .line 72
    const-string v1, "rf_operation_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->setOperationType(I)Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;

    move-result-object v0

    .line 73
    .local v0, "builder":Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;
    invoke-virtual {v0}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult$Builder;->build()Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getRfTestOperationType()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mRfTestOperationType:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mStatus:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/google/uwb/support/rftest/RfTestParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 47
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "status_code"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 48
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mRawNtfData:[B

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "raw_ntf_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 49
    const-string v1, "rf_operation_type"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestPeriodicTxResult;->mRfTestOperationType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    return-object v0
.end method
