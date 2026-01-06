.class public Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;
.super Lcom/samsung/uwb/support/data/ranging/Measurement;
.source "DownLinkTdoaMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;,
        Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaTxTimeStampLength;,
        Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaRxTimeStampLength;,
        Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaAnchorLocationType;,
        Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageType;,
        Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaTxTimeStampType;
    }
.end annotation


# instance fields
.field private final activeRangingRounds:[B

.field private final anchorCfo:D

.field private final anchorLocation:[B

.field private final aoaAzimuth:F

.field private final aoaAzimuthFom:I

.field private final aoaElevation:F

.field private final aoaElevationFom:I

.field private final blockIndex:I

.field private final cfo:D

.field private final dataLength:I

.field private final downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

.field private final initiatorReplyTime:J

.field private final initiatorResponderTof:I

.field private final macAddress:[B

.field private final messageControl:I

.field private final messageType:B

.field private final nLoS:I

.field private final responderReplyTime:J

.field private final roundIndex:I

.field private final rssi:D

.field private final rxTimeStamp:[B

.field private final status:B

.field private final txTimeStamp:[B


# direct methods
.method public constructor <init>(B[B)V
    .locals 12
    .param p1, "macAddressMode"    # B
    .param p2, "payload"    # [B

    .line 63
    invoke-direct {p0}, Lcom/samsung/uwb/support/data/ranging/Measurement;-><init>()V

    .line 64
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x8

    if-nez p1, :cond_0

    .line 68
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->macAddress:[B

    .line 69
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->macAddress:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 70
    :cond_0
    if-ne p1, v2, :cond_1

    .line 71
    new-array v4, v3, [B

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->macAddress:[B

    .line 72
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->macAddress:[B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 74
    :cond_1
    new-array v4, v1, [B

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->macAddress:[B

    .line 76
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->status:B

    .line 77
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    iput-byte v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageType:B

    .line 78
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageControl:I

    .line 79
    new-instance v4, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    iget v5, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageControl:I

    invoke-direct {v4, v5}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;-><init>(I)V

    iput-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->blockIndex:I

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->roundIndex:I

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->nLoS:I

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v5

    .line 84
    .local v4, "value":I
    const/16 v6, 0x10

    invoke-static {v4, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v7

    const/16 v8, 0x9

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v7

    iput v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaAzimuth:F

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    iput v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaAzimuthFom:I

    .line 86
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int v4, v7, v5

    .line 87
    invoke-static {v4, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v7

    invoke-static {v7, v8, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v7

    iput v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaElevation:F

    .line 88
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    iput v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaElevationFom:I

    .line 89
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v4, v7, 0xff

    .line 90
    invoke-static {v4, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v9, v8}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v7

    float-to-double v9, v7

    iput-wide v9, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rssi:D

    .line 91
    iget-object v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->getTxTimeStampLength()I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v8, :cond_2

    .line 92
    new-array v7, v3, [B

    iput-object v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->txTimeStamp:[B

    goto :goto_1

    .line 94
    :cond_2
    new-array v7, v9, [B

    iput-object v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->txTimeStamp:[B

    .line 96
    :goto_1
    iget-object v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->txTimeStamp:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 98
    iget-object v7, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    invoke-virtual {v7}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->getRxTimeStampLength()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 99
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rxTimeStamp:[B

    goto :goto_2

    .line 101
    :cond_3
    new-array v3, v9, [B

    iput-object v3, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rxTimeStamp:[B

    .line 103
    :goto_2
    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rxTimeStamp:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 105
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int/2addr v3, v5

    .line 106
    .end local v4    # "value":I
    .local v3, "value":I
    invoke-static {v3, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v4

    const/16 v7, 0xb

    invoke-static {v4, v9, v7}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    float-to-double v10, v4

    iput-wide v10, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorCfo:D

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int v3, v4, v5

    .line 108
    invoke-static {v3, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v4

    invoke-static {v4, v9, v7}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    float-to-double v6, v4

    iput-wide v6, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->cfo:D

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v6, v4

    const-wide v9, 0xffffffffL

    and-long/2addr v6, v9

    iput-wide v6, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->initiatorReplyTime:J

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    int-to-long v6, v4

    and-long/2addr v6, v9

    iput-wide v6, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->responderReplyTime:J

    .line 111
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->initiatorResponderTof:I

    .line 112
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->getAnchorlocation()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 113
    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorLocation:[B

    goto :goto_3

    .line 114
    :cond_4
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    invoke-virtual {v2}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->getAnchorlocation()I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 115
    const/16 v1, 0xa

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorLocation:[B

    goto :goto_3

    .line 117
    :cond_5
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorLocation:[B

    .line 119
    :goto_3
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorLocation:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;->getNumOfActiveRangingRoundIndexes()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->activeRangingRounds:[B

    .line 122
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->activeRangingRounds:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->dataLength:I

    .line 125
    return-void
.end method


# virtual methods
.method public getActiveRangingRounds()[B
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->activeRangingRounds:[B

    return-object v0
.end method

.method public getAnchorCfo()D
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorCfo:D

    return-wide v0
.end method

.method public getAnchorLocation()[B
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorLocation:[B

    return-object v0
.end method

.method public getAoaAzimuth()F
    .locals 1

    .line 162
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaAzimuth:F

    return v0
.end method

.method public getAoaAzimuthFom()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaAzimuthFom:I

    return v0
.end method

.method public getAoaElevation()F
    .locals 1

    .line 170
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaElevation:F

    return v0
.end method

.method public getAoaElevationFom()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaElevationFom:I

    return v0
.end method

.method public getBlockIndex()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->blockIndex:I

    return v0
.end method

.method public getCfo()D
    .locals 2

    .line 194
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->cfo:D

    return-wide v0
.end method

.method protected getDataLength()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->dataLength:I

    return v0
.end method

.method public getDownLinkTdoaMessageControl()Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    return-object v0
.end method

.method public getInitiatorReplyTime()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->initiatorReplyTime:J

    return-wide v0
.end method

.method public getInitiatorResponderTof()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->initiatorResponderTof:I

    return v0
.end method

.method public getMacAddress()[B
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->macAddress:[B

    return-object v0
.end method

.method public getMessageControl()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageControl:I

    return v0
.end method

.method public getMessageType()B
    .locals 1

    .line 138
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageType:B

    return v0
.end method

.method public getNLoS()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->nLoS:I

    return v0
.end method

.method public getResponderReplyTime()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->responderReplyTime:J

    return-wide v0
.end method

.method public getRoundIndex()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->roundIndex:I

    return v0
.end method

.method public getRssi()D
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rssi:D

    return-wide v0
.end method

.method public getRxTimeStamp()[B
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rxTimeStamp:[B

    return-object v0
.end method

.method public getStatus()B
    .locals 1

    .line 134
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->status:B

    return v0
.end method

.method public getTxTimeStamp()[B
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->txTimeStamp:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 223
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 224
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->macAddress:[B

    .line 225
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 224
    const-string v2, "MAC address: 0x%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 226
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->status:B

    .line 227
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->status:B

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 226
    const-string v2, "Ranging Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 229
    const-string v1, "INVALID"

    .line 230
    .local v1, "description":Ljava/lang/String;
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageType:B

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 231
    const-string v1, "Poll DTM"

    goto :goto_0

    .line 232
    :cond_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageType:B

    if-ne v2, v3, :cond_1

    .line 233
    const-string v1, "Response DTM"

    goto :goto_0

    .line 234
    :cond_1
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageType:B

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 235
    const-string v1, "Final DTM"

    .line 237
    :cond_2
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageType:B

    .line 238
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 237
    const-string v4, "Message Type: %s(%s)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 240
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->messageControl:I

    int-to-short v2, v2

    .line 241
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->downLinkTdoaMessageControl:Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement$DownLinkTdoaMessageControl;

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 240
    const-string v4, "Message Control: %s(%s)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 243
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->blockIndex:I

    int-to-short v2, v2

    .line 244
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->blockIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 243
    const-string v4, "Block Index: %s(%s)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 246
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->roundIndex:I

    int-to-short v2, v2

    .line 247
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(S)Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->roundIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 246
    const-string v4, "Round Index: %s(%s)"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 249
    const-string v1, "INVALID"

    .line 250
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->nLoS:I

    if-nez v2, :cond_3

    .line 251
    const-string v1, "LoS"

    goto :goto_1

    .line 252
    :cond_3
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->nLoS:I

    if-ne v2, v3, :cond_4

    .line 253
    const-string v1, "NLoS"

    goto :goto_1

    .line 254
    :cond_4
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->nLoS:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_5

    .line 255
    const-string v1, "Unable to determine"

    .line 257
    :cond_5
    :goto_1
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->nLoS:I

    int-to-byte v2, v2

    .line 258
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    .line 257
    const-string v3, "NLos: %s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 259
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaAzimuth:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Aoa Azimuth: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 260
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaAzimuthFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Azimuth FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 261
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaElevation:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 262
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->aoaElevationFom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AoA Elevation FOM: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 263
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rssi:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Rssi: %5.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 264
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->txTimeStamp:[B

    .line 265
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->txTimeStamp:[B

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->getDecimalString(Ljava/nio/ByteOrder;[B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 264
    const-string v3, "TX Timestamp: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 266
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rxTimeStamp:[B

    .line 267
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->rxTimeStamp:[B

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->getDecimalString(Ljava/nio/ByteOrder;[B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 266
    const-string v3, "RX Timestamp: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 268
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorCfo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Anchor CFO: %5.5f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 269
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->cfo:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "CFO: %5.5f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 270
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->initiatorReplyTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Initiator Reply Time: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 271
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->responderReplyTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Responder Reply Time: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 272
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->initiatorResponderTof:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Initiator-Responder ToF Reply Time: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 273
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorLocation:[B

    .line 274
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->anchorLocation:[B

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->getDecimalString(Ljava/nio/ByteOrder;[B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 273
    const-string v3, "Anchor Location: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 275
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->activeRangingRounds:[B

    .line 276
    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->activeRangingRounds:[B

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 275
    const-string v3, "Active Ranging Rounds: 0x%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 277
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
