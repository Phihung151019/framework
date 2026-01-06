.class public Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;
.super Ljava/lang/Object;
.source "SamsungSpecificDataForRfTest.java"


# instance fields
.field private final numOfRx:I

.field private final rssi:[F

.field private final rxAntenna:[B

.field private final rxCfoEst:F

.field private final rxMode:B

.field private final samsungSpecificData:[B

.field private final snr:[F

.field private final specificDataLength:I

.field private final specificDataType:B


# direct methods
.method public constructor <init>([B)V
    .locals 8
    .param p1, "payload"    # [B

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    iput-object p1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->samsungSpecificData:[B

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataLength:I

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataType:B

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxMode:B

    .line 28
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    .line 29
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxAntenna:[B

    .line 30
    iget-object v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxAntenna:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rssi:[F

    .line 32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    const/16 v4, 0x10

    const/16 v5, 0x8

    if-ge v1, v3, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int/2addr v3, v2

    .line 34
    .local v3, "value":I
    iget-object v6, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rssi:[F

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v4

    invoke-static {v4, v5, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v4

    aput v4, v6, v1

    .line 32
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->snr:[F

    .line 37
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v3, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    if-ge v1, v3, :cond_1

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int/2addr v3, v2

    .line 39
    .restart local v3    # "value":I
    iget-object v6, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->snr:[F

    invoke-static {v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v7

    invoke-static {v7, v5, v5}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v7

    aput v7, v6, v1

    .line 37
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v2

    .line 42
    .local v1, "value":I
    invoke-static {v1, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v2

    const/4 v3, 0x5

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v2

    iput v2, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxCfoEst:F

    .line 43
    return-void
.end method


# virtual methods
.method public getNumOfRx()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    return v0
.end method

.method public getRssi()[F
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rssi:[F

    return-object v0
.end method

.method public getRxAntenna()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxAntenna:[B

    return-object v0
.end method

.method public getRxCfoEst()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxCfoEst:F

    return v0
.end method

.method public getRxMode()B
    .locals 1

    .line 58
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxMode:B

    return v0
.end method

.method public getSamsungSpecificData()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->samsungSpecificData:[B

    return-object v0
.end method

.method public getSnr()[F
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->snr:[F

    return-object v0
.end method

.method public getSpecificDataLength()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataLength:I

    return v0
.end method

.method public getSpecificDataType()B
    .locals 1

    .line 54
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataType:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 83
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 85
    iget-object v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->samsungSpecificData:[B

    array-length v1, v1

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->samsungSpecificData:[B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 85
    const-string v2, "Samsung Specification Info Length: %d(2+%d),  Value: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 87
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataType:B

    if-nez v1, :cond_0

    .line 88
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataType:B

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Samsung Specific Data V1"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Specific Data Type: 0x%s(%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 90
    :cond_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->specificDataType:B

    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Specific Data Type: 0x%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 92
    :goto_0
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxMode:B

    const-string v2, "RX_MODE: 0x%s(%s),  NUM_OF_RX: %d,  RX_ANT_ID: %s"

    if-nez v1, :cond_1

    .line 93
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxMode:B

    .line 94
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxAntenna:[B

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ToA"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 93
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 96
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxMode:B

    .line 97
    invoke-static {v1}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxAntenna:[B

    invoke-static {v4}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid"

    filled-new-array {v1, v5, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 96
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 99
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    if-ge v1, v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxAntenna:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rssi:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "RSSI RX%d: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 102
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v2, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->numOfRx:I

    if-ge v1, v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxAntenna:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->snr:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SNR RX%d: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 105
    .end local v1    # "i":I
    :cond_3
    iget v1, p0, Lcom/samsung/uwb/support/data/rftest/SamsungSpecificDataForRfTest;->rxCfoEst:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RX CFO EST: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
