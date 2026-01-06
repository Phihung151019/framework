.class public Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;
.super Lcom/samsung/uwb/support/data/rftest/TestMeasurement;
.source "TestLoopbackData.java"


# instance fields
.field private final aoaAzimuth:F

.field private final aoaElevation:F

.field private final phr:I

.field private final psduData:[B

.field private final psduDataLength:I

.field private final rxTsFrac:I

.field private final rxTsInt:J

.field private final samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

.field private final status:I

.field private final txTsFrac:I

.field private final txTsInt:J


# direct methods
.method public constructor <init>([B)V
    .locals 7
    .param p1, "payload"    # [B

    .line 22
    invoke-direct {p0}, Lcom/samsung/uwb/support/data/rftest/TestMeasurement;-><init>()V

    .line 23
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->status:I

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    iput-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->txTsInt:J

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->txTsFrac:I

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-long v5, v1

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->rxTsInt:J

    .line 29
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->rxTsFrac:I

    .line 30
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    .line 31
    .local v1, "value":I
    const/16 v3, 0x10

    invoke-static {v1, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v4

    const/16 v5, 0x9

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    iput v4, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->aoaAzimuth:F

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    and-int v1, v4, v2

    .line 33
    invoke-static {v1, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v3

    invoke-static {v3, v5, v6}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v3

    iput v3, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->aoaElevation:F

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->phr:I

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduDataLength:I

    .line 36
    iget v2, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduDataLength:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduData:[B

    .line 37
    iget-object v2, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduData:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    .line 39
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 42
    .local v2, "extraData":[B
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 43
    new-instance v3, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    invoke-direct {v3, v2}, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;-><init>([B)V

    iput-object v3, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    .line 45
    .end local v2    # "extraData":[B
    :goto_0
    return-void
.end method


# virtual methods
.method public getAoaAzimuth()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->aoaAzimuth:F

    return v0
.end method

.method public getAoaElevation()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->aoaElevation:F

    return v0
.end method

.method public getPhr()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->phr:I

    return v0
.end method

.method public getPsduData()[B
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduData:[B

    return-object v0
.end method

.method public getPsduDataLength()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduDataLength:I

    return v0
.end method

.method public getRxTsFrac()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->rxTsFrac:I

    return v0
.end method

.method public getRxTsInt()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->rxTsInt:J

    return-wide v0
.end method

.method public getSamsungSpecificData()Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->status:I

    return v0
.end method

.method public getTxTsFrac()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->txTsFrac:I

    return v0
.end method

.method public getTxTsInt()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->txTsInt:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 94
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->status:I

    int-to-byte v1, v1

    .line 96
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->mStatusCode:Lcom/samsung/uwb/support/data/code/StatusCode;

    iget v3, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->status:I

    invoke-virtual {v2, v3}, Lcom/samsung/uwb/support/data/code/StatusCode;->getStatusName(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 95
    const-string v2, "Status: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 97
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->txTsInt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TX TS Int: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 98
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->txTsFrac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TX TS Frac: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 99
    iget-wide v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->rxTsInt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RX TS Int: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 100
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->rxTsFrac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RX TS Frac: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 101
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->aoaAzimuth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AoA Azimuth: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->aoaElevation:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AoA Elevation: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 103
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->phr:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PHR: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduDataLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PSDU Data Length: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 105
    iget-object v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->psduData:[B

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PSDU Data: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    iget-object v1, p0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;->samsungSpecificData:Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 107
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
