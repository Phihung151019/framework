.class public Lcom/google/uwb/support/oemextension/RangingReportMetadata;
.super Ljava/lang/Object;
.source "RangingReportMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field public static final KEY_BUNDLE_VERSION:Ljava/lang/String; = "bundle_version"

.field public static final RAW_NTF_DATA:Ljava/lang/String; = "raw_ntf_data"

.field public static final SESSION_ID:Ljava/lang/String; = "session_id"


# instance fields
.field private final mRawNtfData:[B

.field private final mSessionId:J


# direct methods
.method private constructor <init>(J[B)V
    .locals 0
    .param p1, "sessionId"    # J
    .param p3, "rawNtfData"    # [B

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->mSessionId:J

    .line 55
    iput-object p3, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->mRawNtfData:[B

    .line 56
    return-void
.end method

.method synthetic constructor <init>(J[BLcom/google/uwb/support/oemextension/RangingReportMetadata$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # [B
    .param p4, "x2"    # Lcom/google/uwb/support/oemextension/RangingReportMetadata$1;

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;-><init>(J[B)V

    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 64
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 65
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 91
    const-string v0, "bundle_version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBundleVersion()I
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 76
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 77
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 100
    new-instance v0, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;-><init>()V

    .line 101
    const-string v1, "session_id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;->setSessionId(J)Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;

    move-result-object v0

    .line 102
    const-string v1, "raw_ntf_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;->setRawNtfData([B)Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/RangingReportMetadata$Builder;->build()Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v0

    .line 100
    return-object v0
.end method


# virtual methods
.method public getRawNtfData()[B
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->mRawNtfData:[B

    return-object v0
.end method

.method public getSessionId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->mSessionId:J

    return-wide v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 83
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 84
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "bundle_version"

    invoke-static {}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->getBundleVersion()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    const-string v1, "session_id"

    iget-wide v2, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->mSessionId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 86
    iget-object v1, p0, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->mRawNtfData:[B

    invoke-static {v1}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "raw_ntf_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 87
    return-object v0
.end method
