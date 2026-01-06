.class public Lcom/google/uwb/support/radar/RadarSweepData;
.super Lcom/google/uwb/support/radar/RadarParams;
.source "RadarSweepData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/uwb/support/radar/RadarSweepData$Builder;
    }
.end annotation


# static fields
.field private static final BUNDLE_VERSION_1:I = 0x1

.field private static final BUNDLE_VERSION_CURRENT:I = 0x1

.field private static final KEY_SAMPLE_DATA:Ljava/lang/String; = "sample_data"

.field private static final KEY_SEQUENCE_NUMBER:Ljava/lang/String; = "sequence_number"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final KEY_VENDOR_SPECIFIC_DATA:Ljava/lang/String; = "vendor_specific_data"


# instance fields
.field private final mSampleData:[B

.field private final mSequenceNumber:J

.field private final mTimestamp:J

.field private final mVendorSpecificData:[B


# direct methods
.method private constructor <init>(JJ[B[B)V
    .locals 0
    .param p1, "sequenceNumber"    # J
    .param p3, "timestamp"    # J
    .param p5, "vendorSpecificData"    # [B
    .param p6, "sampleData"    # [B

    .line 45
    invoke-direct {p0}, Lcom/google/uwb/support/radar/RadarParams;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mSequenceNumber:J

    .line 47
    iput-wide p3, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mTimestamp:J

    .line 48
    iput-object p5, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mVendorSpecificData:[B

    .line 49
    iput-object p6, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mSampleData:[B

    .line 50
    return-void
.end method

.method synthetic constructor <init>(JJ[B[BLcom/google/uwb/support/radar/RadarSweepData$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # [B
    .param p6, "x3"    # [B
    .param p7, "x4"    # Lcom/google/uwb/support/radar/RadarSweepData$1;

    .line 30
    invoke-direct/range {p0 .. p6}, Lcom/google/uwb/support/radar/RadarSweepData;-><init>(JJ[B[B)V

    return-void
.end method

.method private static byteArrayToIntArray([B)[I
    .locals 3
    .param p0, "bytes"    # [B

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    array-length v0, p0

    new-array v0, v0, [I

    .line 63
    .local v0, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 64
    aget-byte v2, p0, v1

    aput v2, v0, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSweepData;
    .locals 2
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 93
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarSweepData;->isCorrectProtocol(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarSweepData;->getBundleVersion(Landroid/os/PersistableBundle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown bundle version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_0
    invoke-static {p0}, Lcom/google/uwb/support/radar/RadarSweepData;->parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSweepData;

    move-result-object v0

    return-object v0

    .line 94
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

.method private static intArrayToByteArray([I)[B
    .locals 3
    .param p0, "values"    # [I

    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 75
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 76
    aget v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private static parseBundleVersion1(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/radar/RadarSweepData;
    .locals 3
    .param p0, "bundle"    # Landroid/os/PersistableBundle;

    .line 107
    new-instance v0, Lcom/google/uwb/support/radar/RadarSweepData$Builder;

    invoke-direct {v0}, Lcom/google/uwb/support/radar/RadarSweepData$Builder;-><init>()V

    .line 108
    const-string v1, "sequence_number"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->setSequenceNumber(J)Lcom/google/uwb/support/radar/RadarSweepData$Builder;

    move-result-object v0

    .line 109
    const-string v1, "timestamp"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->setTimestamp(J)Lcom/google/uwb/support/radar/RadarSweepData$Builder;

    move-result-object v0

    .line 111
    const-string v1, "vendor_specific_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/radar/RadarSweepData;->intArrayToByteArray([I)[B

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->setVendorSpecificData([B)Lcom/google/uwb/support/radar/RadarSweepData$Builder;

    move-result-object v0

    .line 112
    const-string v1, "sample_data"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/uwb/support/radar/RadarSweepData;->intArrayToByteArray([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->setSampleData([B)Lcom/google/uwb/support/radar/RadarSweepData$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/uwb/support/radar/RadarSweepData$Builder;->build()Lcom/google/uwb/support/radar/RadarSweepData;

    move-result-object v0

    .line 107
    return-object v0
.end method


# virtual methods
.method protected getBundleVersion()I
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public getSampleData()[B
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mSampleData:[B

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mSequenceNumber:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mTimestamp:J

    return-wide v0
.end method

.method public getVendorSpecificData()[B
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mVendorSpecificData:[B

    return-object v0
.end method

.method public toBundle()Landroid/os/PersistableBundle;
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/google/uwb/support/radar/RadarParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 84
    .local v0, "bundle":Landroid/os/PersistableBundle;
    const-string v1, "sequence_number"

    iget-wide v2, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mSequenceNumber:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 85
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 86
    iget-object v1, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mVendorSpecificData:[B

    invoke-static {v1}, Lcom/google/uwb/support/radar/RadarSweepData;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "vendor_specific_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 87
    iget-object v1, p0, Lcom/google/uwb/support/radar/RadarSweepData;->mSampleData:[B

    invoke-static {v1}, Lcom/google/uwb/support/radar/RadarSweepData;->byteArrayToIntArray([B)[I

    move-result-object v1

    const-string v2, "sample_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 88
    return-object v0
.end method
