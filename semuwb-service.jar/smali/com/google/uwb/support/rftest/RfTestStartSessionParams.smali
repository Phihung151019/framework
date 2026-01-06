.class public Lcom/google/uwb/support/rftest/RfTestStartSessionParams;
.super Lcom/google/uwb/support/rftest/RfTestParams;
.source "RfTestStartSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_PSDU_DATA:Ljava/lang/String; = "psdu_data"

.field private static final KEY_RF_OPERATION_TYPE:Ljava/lang/String; = "rf_operation_type"


# instance fields
.field private final mPsduData:[B

.field private final mRfTestOperationType:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "rfTestOperationType"    # I
    .param p2, "psduData"    # [B

    .line 42
    invoke-direct {p0}, Lcom/google/uwb/support/rftest/RfTestParams;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mRfTestOperationType:I

    .line 44
    iput-object p2, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mPsduData:[B

    .line 45
    return-void
.end method

.method synthetic constructor <init>(I[BLcom/google/uwb/support/rftest/RfTestStartSessionParams$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/google/uwb/support/rftest/RfTestStartSessionParams$1;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;-><init>(I[B)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/uwb/support/rftest/RfTestStartSessionParams;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestStartSessionParams;

    .line 30
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mRfTestOperationType:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/uwb/support/rftest/RfTestStartSessionParams;)[B
    .locals 1
    .param p0, "x0"    # Lcom/google/uwb/support/rftest/RfTestStartSessionParams;

    .line 30
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mPsduData:[B

    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestStartSessionParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 62
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestStartSessionParams;

    move-result-object v0

    return-object v0

    .line 63
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

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestStartSessionParams;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 77
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;-><init>()V

    .line 78
    const-string v1, "rf_operation_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->setRfTestOperationType(I)Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;

    move-result-object v0

    .line 79
    const-string v1, "psdu_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestParams;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->setPsduData([B)Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/uwb/support/rftest/RfTestStartSessionParams$Builder;->build()Lcom/google/uwb/support/rftest/RfTestStartSessionParams;

    move-result-object v0

    .line 77
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public getPsduData()[B
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mPsduData:[B

    return-object v0
.end method

.method public getRfTestOperationType()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mRfTestOperationType:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 54
    invoke-super {p0}, Lcom/google/uwb/support/rftest/RfTestParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "rf_operation_type"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mRfTestOperationType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    iget-object v1, p0, Lcom/google/uwb/support/rftest/RfTestStartSessionParams;->mPsduData:[B

    invoke-static {v1}, Lcom/google/uwb/support/rftest/RfTestParams;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "psdu_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 57
    return-object v0
.end method
