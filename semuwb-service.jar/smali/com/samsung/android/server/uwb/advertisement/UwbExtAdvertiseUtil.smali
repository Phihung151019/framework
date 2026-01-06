.class public Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;
.super Ljava/lang/Object;
.source "UwbExtAdvertiseUtil.java"


# static fields
.field private static final MAC_ADDRESSING_MODE_EXTENDED:B = 0x1t

.field private static final MAC_ADDRESSING_MODE_SHORT:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "UwbExtAdvertiseUtil"

.field private static final UWB_DEVICE_EXT_MAC_ADDRESS_LEN:I = 0x8

.field private static final UWB_DEVICE_SHORT_MAC_ADDRESS_LEN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAverage([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "sum":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    :cond_0
    array-length v2, p0

    int-to-double v2, v2

    div-double v2, v0, v2

    return-wide v2
.end method

.method public static getValidMacAddressFromOwrAoaMeasurement(Lcom/samsung/uwb/support/data/ranging/RangingData;)[B
    .locals 4
    .param p0, "rangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;

    .line 24
    invoke-virtual {p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    invoke-virtual {v0}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getMacAddress()[B

    move-result-object v0

    .line 25
    .local v0, "macAddress":[B
    invoke-virtual {p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getMacAddressMode()B

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 26
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move-object v2, v0

    :cond_0
    return-object v2

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getMacAddressMode()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 28
    array-length v1, v0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    move-object v2, v0

    :cond_2
    return-object v2

    .line 30
    :cond_3
    return-object v2
.end method

.method static getVariance([D)D
    .locals 9
    .param p0, "array"    # [D

    .line 74
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 75
    :cond_0
    const-wide/16 v0, 0x0

    .line 77
    .local v0, "sum":D
    invoke-static {p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->getAverage([D)D

    move-result-wide v2

    .line 78
    .local v2, "avg":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_1

    .line 79
    aget-wide v5, p0, v4

    sub-double/2addr v5, v2

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v0, v5

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 81
    .end local v4    # "i":I
    :cond_1
    array-length v4, p0

    int-to-double v4, v4

    div-double v4, v0, v4

    .line 82
    .local v4, "ret":D
    return-wide v4
.end method

.method private static isExtendedMSBZeroedOut([B)Z
    .locals 2
    .param p0, "bytes"    # [B

    .line 67
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 68
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isOwrAoaMeasurement(Lcom/samsung/uwb/support/data/ranging/RangingData;)Z
    .locals 2
    .param p0, "uwbRangingData"    # Lcom/samsung/uwb/support/data/ranging/RangingData;

    .line 35
    invoke-virtual {p0}, Lcom/samsung/uwb/support/data/ranging/RangingData;->getRangingMeasurementType()B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 37
    const/4 v0, 0x0

    return v0

    .line 40
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static macAddressByteArrayToLong([B)J
    .locals 3
    .param p0, "bytes"    # [B

    .line 49
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 50
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 51
    :cond_0
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 52
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 53
    :cond_1
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 54
    invoke-static {p0}, Lcom/samsung/android/server/uwb/advertisement/UwbExtAdvertiseUtil;->isExtendedMSBZeroedOut([B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 57
    :cond_2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0

    .line 60
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected length one of (2, 4, 8) but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
