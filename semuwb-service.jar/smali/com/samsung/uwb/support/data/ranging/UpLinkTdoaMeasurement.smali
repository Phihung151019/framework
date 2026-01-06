.class public Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;
.super Lcom/samsung/uwb/support/data/ranging/Measurement;
.source "UpLinkTdoaMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;,
        Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$RxTimeStampLength;,
        Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$DeviceIdLength;,
        Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$TxTimeStampLength;,
        Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$FrameType;
    }
.end annotation


# instance fields
.field private final aoaAzimuth:F

.field private final aoaAzimuthFom:I

.field private final aoaElevation:F

.field private final aoaElevationFom:I

.field private final dataLength:I

.field private final deviceId:[B

.field private final frameNumber:J

.field private final frameType:I

.field private final macAddress:[B

.field private final messageControl:I

.field private final nLoS:I

.field private final rxTimeStamp:[B

.field private final status:B

.field private final txTimeStamp:[B

.field private final upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;


# direct methods
.method public constructor <init>(B[B)V
    .locals 10
    .param p1, "macAddressMode"    # B
    .param p2, "payload"    # [B

    .line 51
    invoke-direct {p0}, Lcom/samsung/uwb/support/data/ranging/Measurement;-><init>()V

    .line 52
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 55
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x2

    if-nez p1, :cond_0

    .line 56
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->macAddress:[B

    .line 57
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->macAddress:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 58
    :cond_0
    if-ne p1, v3, :cond_1

    .line 59
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->macAddress:[B

    .line 60
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->macAddress:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 62
    :cond_1
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->macAddress:[B

    .line 64
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->status:B

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->messageControl:I

    .line 66
    new-instance v4, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    iget v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->messageControl:I

    invoke-direct {v4, v5}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    .line 67
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameType:I

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->nLoS:I

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 70
    .local v4, "value":I
    const/16 v6, 0x10

    invoke-static {v4, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v7

    const/16 v8, 0x9

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v7

    iput v7, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaAzimuth:F

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    iput v7, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaAzimuthFom:I

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int v4, v7, v5

    .line 73
    invoke-static {v4, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v5

    invoke-static {v5, v8, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v5

    iput v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaElevation:F

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    iput v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaElevationFom:I

    .line 75
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameNumber:J

    .line 76
    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->getRxTimeStampLength()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 77
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->rxTimeStamp:[B

    goto :goto_1

    .line 79
    :cond_2
    new-array v5, v6, [B

    iput-object v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->rxTimeStamp:[B

    .line 81
    :goto_1
    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->rxTimeStamp:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 83
    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->getDeviceIdLength()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_3

    .line 84
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    goto :goto_2

    .line 85
    :cond_3
    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->getDeviceIdLength()I

    move-result v5

    if-ne v5, v3, :cond_4

    .line 86
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    goto :goto_2

    .line 87
    :cond_4
    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->getDeviceIdLength()I

    move-result v5

    if-ne v5, v7, :cond_5

    .line 88
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    goto :goto_2

    .line 90
    :cond_5
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    .line 92
    :goto_2
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 94
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;->getTxTimeStampLength()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 95
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->txTimeStamp:[B

    goto :goto_3

    .line 97
    :cond_6
    new-array v1, v6, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->txTimeStamp:[B

    .line 99
    :goto_3
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->txTimeStamp:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->dataLength:I

    .line 102
    return-void
.end method


# virtual methods
.method public getAoaAzimuth()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaAzimuth:F

    return v0
.end method

.method public getAoaAzimuthFom()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaAzimuthFom:I

    return v0
.end method

.method public getAoaElevation()F
    .locals 1

    .line 139
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaElevation:F

    return v0
.end method

.method public getAoaElevationFom()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaElevationFom:I

    return v0
.end method

.method protected getDataLength()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->dataLength:I

    return v0
.end method

.method public getDeviceId()[B
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    return-object v0
.end method

.method public getFrameNumber()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameNumber:J

    return-wide v0
.end method

.method public getFrameType()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameType:I

    return v0
.end method

.method public getMacAddress()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->macAddress:[B

    return-object v0
.end method

.method public getMessageControl()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->messageControl:I

    return v0
.end method

.method public getNLoS()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->nLoS:I

    return v0
.end method

.method public getRxTimeStamp()[B
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->rxTimeStamp:[B

    return-object v0
.end method

.method public getStatus()B
    .locals 1

    .line 111
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->status:B

    return v0
.end method

.method public getTxTimeStamp()[B
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->txTimeStamp:[B

    return-object v0
.end method

.method public getUpLinkTdoaMessageControl()Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 168
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->macAddress:[B

    .line 170
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 169
    const-string v2, "MAC address: 0x%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 171
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->status:B

    .line 172
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->status:B

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 171
    const-string v2, "Ranging Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 174
    iget v1, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->messageControl:I

    int-to-short v1, v1

    .line 175
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->upLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement$UpLinkTdoaMessageControl;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 174
    const-string v2, "Message Control: %s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 177
    const-string v1, "INVALID"

    .line 178
    .local v1, "description":Ljava/lang/String;
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameType:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 179
    const-string v1, "Blink UTM of UT-Tag"

    goto :goto_0

    .line 180
    :cond_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameType:I

    if-ne v2, v3, :cond_1

    .line 181
    const-string v1, "Synchronization UTM of UT-Synchronization Anchor"

    .line 183
    :cond_1
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameType:I

    .line 184
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 183
    const-string v4, "Frame Type: %s(%s)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 186
    const-string v1, "INVALID"

    .line 187
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->nLoS:I

    if-nez v2, :cond_2

    .line 188
    const-string v1, "LoS"

    goto :goto_1

    .line 189
    :cond_2
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->nLoS:I

    if-ne v2, v3, :cond_3

    .line 190
    const-string v1, "NLoS"

    goto :goto_1

    .line 191
    :cond_3
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->nLoS:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_4

    .line 192
    const-string v1, "Unable to determine"

    .line 194
    :cond_4
    :goto_1
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->nLoS:I

    int-to-byte v2, v2

    .line 195
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 194
    const-string v3, "NLos: %s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 196
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaAzimuth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Aoa Azimuth: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 197
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaAzimuthFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Azimuth FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 198
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaElevation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 199
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->aoaElevationFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 200
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->frameNumber:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Frame Number: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 201
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->rxTimeStamp:[B

    .line 202
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->rxTimeStamp:[B

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->getDecimalString(Ljava/nio/ByteOrder;[B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 201
    const-string v3, "RX Timestamp: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 203
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    .line 204
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->deviceId:[B

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->getDecimalString(Ljava/nio/ByteOrder;[B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 203
    const-string v3, "Device ID: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 205
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->txTimeStamp:[B

    .line 206
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->txTimeStamp:[B

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->getDecimalString(Ljava/nio/ByteOrder;[B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 205
    const-string v3, "TX Timestamp: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 207
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
