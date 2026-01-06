.class public Lcom/google/uwb/support/rftest/RfTestSessionStatus;
.super Lcom/google/uwb/support/rftest/RfTestParams;
.source "RfTestSessionStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_RF_OPERATION_TYPE:Ljava/lang/String; = "rf_operation_type"

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "status_code"


# instance fields
.field private final mRfTestOperationType:I

.field private final mStatusCode:I


# direct methods
.method private constructor <init>(II)V
    .locals 0
    .param p1, "rfTestOperationType"    # I
    .param p2, "statusCode"    # I

    .line 38
    invoke-direct {p0}, Lcom/google/uwb/support/rftest/RfTestParams;-><init>()V

    .line 39
    iput p1, p0, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->mRfTestOperationType:I

    .line 40
    iput p2, p0, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->mStatusCode:I

    .line 41
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/uwb/support/rftest/RfTestSessionStatus$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/google/uwb/support/rftest/RfTestSessionStatus$1;

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/rftest/RfTestSessionStatus;-><init>(II)V

    return-void
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestSessionStatus;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 67
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestSessionStatus;

    move-result-object v0

    return-object v0

    .line 68
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

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/rftest/RfTestSessionStatus;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 81
    new-instance v0, Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;-><init>()V

    .line 82
    const-string v1, "rf_operation_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;->setRfTestOperationType(I)Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;

    move-result-object v0

    .line 83
    const-string v1, "status_code"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;->setStatusCode(I)Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/uwb/support/rftest/RfTestSessionStatus$Builder;->build()Lcom/google/uwb/support/rftest/RfTestSessionStatus;

    move-result-object v0

    .line 81
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public getRfTestOperationType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->mRfTestOperationType:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->mStatusCode:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 60
    invoke-super {p0}, Lcom/google/uwb/support/rftest/RfTestParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 61
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "rf_operation_type"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->mRfTestOperationType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-string v1, "status_code"

    iget v2, p0, Lcom/google/uwb/support/rftest/RfTestSessionStatus;->mStatusCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 63
    return-object v0
.end method
