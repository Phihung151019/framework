.class public Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
.super Lcom/samsung/uwb/support/data/ranging/Measurement;
.source "OneWayForAoaMeasurement.java"


# instance fields
.field private final aoaAzimuth:F

.field private final aoaAzimuthFom:I

.field private final aoaElevation:F

.field private final aoaElevationFom:I

.field private final blockIndex:I

.field private final frameSeqNo:B

.field private final macAddress:[B

.field private final nLoS:I

.field private samsungSpecificDataForOwrForAdv:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

.field private final status:B


# direct methods
.method protected constructor <init>(BLjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "macAddressMode"    # B
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 21
    invoke-direct {p0}, Lcom/samsung/uwb/support/data/ranging/Measurement;-><init>()V

    .line 22
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 23
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->macAddress:[B

    .line 24
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->macAddress:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 25
    :cond_0
    if-ne p1, v0, :cond_1

    .line 26
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->macAddress:[B

    .line 27
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->macAddress:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->macAddress:[B

    .line 31
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->status:B

    .line 32
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->nLoS:I

    .line 33
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->frameSeqNo:B

    .line 34
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->blockIndex:I

    .line 35
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    .line 36
    .local v0, "value":I
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaAzimuth:F

    .line 37
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaAzimuthFom:I

    .line 38
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v0, v3, v1

    .line 39
    invoke-static {v0, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v1

    invoke-static {v1, v4, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaElevation:F

    .line 40
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaElevationFom:I

    .line 41
    return-void
.end method


# virtual methods
.method public getAoaAzimuth()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaAzimuth:F

    return v0
.end method

.method public getAoaAzimuthFom()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaAzimuthFom:I

    return v0
.end method

.method public getAoaElevation()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaElevation:F

    return v0
.end method

.method public getAoaElevationFom()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaElevationFom:I

    return v0
.end method

.method public getBlockIndex()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->blockIndex:I

    return v0
.end method

.method public getFrameSeqNo()B
    .locals 1

    .line 62
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->frameSeqNo:B

    return v0
.end method

.method public getMacAddress()[B
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->macAddress:[B

    return-object v0
.end method

.method public getNLoS()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->nLoS:I

    return v0
.end method

.method public getSamsungSpecificDataForOwrForAdv()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->samsungSpecificDataForOwrForAdv:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    return-object v0
.end method

.method public getStatus()B
    .locals 1

    .line 54
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->status:B

    return v0
.end method

.method public setSamsungSpecificDataForOwrForAdv(Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;)V
    .locals 0
    .param p1, "samsungSpecificDataForOwrForAdv"    # Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    .line 44
    iput-object p1, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->samsungSpecificDataForOwrForAdv:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 91
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->macAddress:[B

    .line 93
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 92
    const-string v2, "MAC address: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 94
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->status:B

    .line 95
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->status:B

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 94
    const-string v2, "Ranging Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 96
    const-string v1, "INVALID"

    .line 97
    .local v1, "description":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->nLoS:I

    if-nez v2, :cond_0

    .line 98
    const-string v1, "LoS"

    goto :goto_0

    .line 99
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->nLoS:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 100
    const-string v1, "NLoS"

    goto :goto_0

    .line 101
    :cond_1
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->nLoS:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    .line 102
    const-string v1, "Unable to determine"

    .line 104
    :cond_2
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->nLoS:I

    int-to-byte v2, v2

    .line 105
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 104
    const-string v3, "NLos: %s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->frameSeqNo:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Frame Sequence Number: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 107
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->blockIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Block Index: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 108
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaAzimuth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Azimuth: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 109
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaAzimuthFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Azimuth FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 110
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaElevation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 111
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->aoaElevationFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 112
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 113
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->samsungSpecificDataForOwrForAdv:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    if-nez v2, :cond_3

    .line 114
    const-string v2, "Samsung Specification Info: NULL"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 116
    :cond_3
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->samsungSpecificDataForOwrForAdv:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
