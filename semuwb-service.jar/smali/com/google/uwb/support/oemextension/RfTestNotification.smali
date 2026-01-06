.class public Lcom/google/uwb/support/oemextension/RfTestNotification;
.super Ljava/lang/Object;
.source "RfTestNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field private static final KEY_RF_OPERATION_TYPE:Ljava/lang/String; = "rf_operation_type"

.field public static final RF_TEST_NTF_DATA:Ljava/lang/String; = "rf_test_ntf_data"


# instance fields
.field private final mRfTestNtfData:[B

.field private final mRfTestOperationType:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 0
    .param p1, "rfTestOperationType"    # I
    .param p2, "rfTestNtfData"    # [B

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/google/uwb/support/oemextension/RfTestNotification;->mRfTestOperationType:I

    .line 68
    iput-object p2, p0, Lcom/google/uwb/support/oemextension/RfTestNotification;->mRfTestNtfData:[B

    .line 69
    return-void
.end method

.method synthetic constructor <init>(I[BLcom/google/uwb/support/oemextension/RfTestNotification$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lcom/google/uwb/support/oemextension/RfTestNotification$1;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/uwb/support/oemextension/RfTestNotification;-><init>(I[B)V

    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 77
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 78
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RfTestNotification;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 104
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/oemextension/RfTestNotification;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RfTestNotification;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 89
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 90
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RfTestNotification;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 113
    new-instance v0, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;-><init>()V

    .line 114
    const-string v1, "rf_operation_type"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->setRfTestOperationType(I)Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;

    move-result-object v0

    .line 115
    const-string v1, "rf_test_ntf_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/oemextension/RfTestNotification;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->setRfTestNtfData([B)Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/RfTestNotification$Builder;->build()Lcom/google/uwb/support/oemextension/RfTestNotification;

    move-result-object v0

    .line 113
    return-object v0
.end method


# virtual methods
.method public getRfTestNtfData()[B
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/RfTestNotification;->mRfTestNtfData:[B

    return-object v0
.end method

.method public getRfTestOperationType()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/google/uwb/support/oemextension/RfTestNotification;->mRfTestOperationType:I

    return v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 3

    .line 96
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/oemextension/RfTestNotification;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    iget-object v1, p0, Lcom/google/uwb/support/oemextension/RfTestNotification;->mRfTestNtfData:[B

    invoke-static {v1}, Lcom/google/uwb/support/oemextension/RfTestNotification;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "rf_test_ntf_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 99
    const-string v1, "rf_operation_type"

    iget v2, p0, Lcom/google/uwb/support/oemextension/RfTestNotification;->mRfTestOperationType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 100
    return-object v0
.end method
