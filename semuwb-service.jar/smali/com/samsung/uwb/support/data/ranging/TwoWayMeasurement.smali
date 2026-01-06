.class public Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
.super Lcom/samsung/uwb/support/data/ranging/Measurement;
.source "TwoWayMeasurement.java"


# instance fields
.field private final aoaAzimuth:F

.field private final aoaAzimuthFom:I

.field private final aoaDestAzimuth:F

.field private final aoaDestAzimuthFom:I

.field private final aoaDestElevation:F

.field private final aoaDestElevationFom:I

.field private final aoaElevation:F

.field private final aoaElevationFom:I

.field private final distance:I

.field private finalAoaAzimuth:F

.field private finalAoaElevation:F

.field private final macAddress:[B

.field private final nLoS:I

.field private final rssi:F

.field private samsungSpecificDataForTwr:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

.field private final slotIndex:I

.field private final status:B


# direct methods
.method protected constructor <init>(BLjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "macAddressMode"    # B
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 30
    invoke-direct {p0}, Lcom/samsung/uwb/support/data/ranging/Measurement;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->finalAoaAzimuth:F

    .line 26
    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->finalAoaElevation:F

    .line 31
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 32
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->macAddress:[B

    .line 33
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->macAddress:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 34
    :cond_0
    if-ne p1, v0, :cond_1

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->macAddress:[B

    .line 36
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->macAddress:[B

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->macAddress:[B

    .line 40
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->status:B

    .line 41
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->nLoS:I

    .line 42
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->distance:I

    .line 43
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v1

    .line 44
    .local v0, "value":I
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v3

    const/16 v4, 0x9

    const/4 v5, 0x7

    invoke-static {v3, v4, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaAzimuth:F

    .line 45
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaAzimuthFom:I

    .line 46
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v0, v3, v1

    .line 47
    invoke-static {v0, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v3

    invoke-static {v3, v4, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaElevation:F

    .line 48
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaElevationFom:I

    .line 49
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v0, v3, v1

    .line 50
    invoke-static {v0, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v3

    invoke-static {v3, v4, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestAzimuth:F

    .line 51
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestAzimuthFom:I

    .line 52
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v0, v3, v1

    .line 53
    invoke-static {v0, v2}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v1

    invoke-static {v1, v4, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestElevation:F

    .line 54
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestElevationFom:I

    .line 55
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->slotIndex:I

    .line 56
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 57
    const/4 v1, 0x1

    invoke-static {v0, v5, v1}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->rssi:F

    .line 59
    if-nez p1, :cond_2

    .line 60
    const/16 v1, 0xb

    new-array v1, v1, [B

    .local v1, "rfu":[B
    goto :goto_1

    .line 62
    .end local v1    # "rfu":[B
    :cond_2
    const/4 v1, 0x5

    new-array v1, v1, [B

    .line 64
    .restart local v1    # "rfu":[B
    :goto_1
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 65
    return-void
.end method


# virtual methods
.method public getAoaAzimuth()F
    .locals 1

    .line 86
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaAzimuth:F

    return v0
.end method

.method public getAoaAzimuthFom()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaAzimuthFom:I

    return v0
.end method

.method public getAoaDestAzimuth()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestAzimuth:F

    return v0
.end method

.method public getAoaDestAzimuthFom()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestAzimuthFom:I

    return v0
.end method

.method public getAoaDestElevation()F
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestElevation:F

    return v0
.end method

.method public getAoaDestElevationFom()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestElevationFom:I

    return v0
.end method

.method public getAoaElevation()F
    .locals 1

    .line 94
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaElevation:F

    return v0
.end method

.method public getAoaElevationFom()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaElevationFom:I

    return v0
.end method

.method public getDistance()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->distance:I

    return v0
.end method

.method public getFinalAoaAzimuth()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->finalAoaAzimuth:F

    return v0
.end method

.method public getFinalAoaElevation()F
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->finalAoaElevation:F

    return v0
.end method

.method public getMacAddress()[B
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->macAddress:[B

    return-object v0
.end method

.method public getNLoS()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->nLoS:I

    return v0
.end method

.method public getRssi()F
    .locals 1

    .line 122
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->rssi:F

    return v0
.end method

.method public getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->samsungSpecificDataForTwr:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    return-object v0
.end method

.method public getSlotIndex()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->slotIndex:I

    return v0
.end method

.method public getStatus()B
    .locals 1

    .line 74
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->status:B

    return v0
.end method

.method public setFinalAoaAzimuth(F)V
    .locals 0
    .param p1, "aoaAzimuth"    # F

    .line 134
    iput p1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->finalAoaAzimuth:F

    .line 135
    return-void
.end method

.method public setFinalAoaElevation(F)V
    .locals 0
    .param p1, "aoaElevation"    # F

    .line 138
    iput p1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->finalAoaElevation:F

    .line 139
    return-void
.end method

.method public setSamsungSpecificDataForTwr(Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;)V
    .locals 0
    .param p1, "samsungSpecificDataForTwr"    # Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    .line 146
    iput-object p1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->samsungSpecificDataForTwr:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    .line 147
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 151
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 152
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->macAddress:[B

    .line 153
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 152
    const-string v2, "MAC address: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 154
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->status:B

    .line 155
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->status:B

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 154
    const-string v2, "Ranging Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    const-string v1, "INVALID"

    .line 157
    .local v1, "description":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->nLoS:I

    if-nez v2, :cond_0

    .line 158
    const-string v1, "LoS"

    goto :goto_0

    .line 159
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->nLoS:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 160
    const-string v1, "NLoS"

    goto :goto_0

    .line 161
    :cond_1
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->nLoS:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    .line 162
    const-string v1, "Unable to determine"

    .line 164
    :cond_2
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->nLoS:I

    int-to-byte v2, v2

    .line 165
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 164
    const-string v3, "NLos: %s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 166
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->distance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Distance: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 167
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaAzimuth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Azimuth: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 168
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaAzimuthFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Azimuth FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 169
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaElevation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 170
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaElevationFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 171
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestAzimuth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Destination Azimuth: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 172
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestAzimuthFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Destination Azimuth FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 173
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestElevation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Destination Elevation: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 174
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->aoaDestElevationFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Destination Elevation FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 175
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->slotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Slot Index: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 176
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->rssi:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Rssi: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 177
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 178
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->samsungSpecificDataForTwr:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    if-nez v2, :cond_3

    .line 179
    const-string v2, "Samsung Specification Info: NULL"

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->samsungSpecificDataForTwr:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 183
    :goto_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
