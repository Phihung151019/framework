.class public Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
.super Ljava/lang/Object;
.source "SamsungSpecificDataForOwrForAdv.java"


# instance fields
.field private final aoa:[F

.field private final numOfRxForRanging:I

.field private final pdoa:[F

.field private final rssi:F

.field private final rxAntennaForRanging:[B

.field private final rxModeForRanging:B

.field private final samsungSpecificData:[B


# direct methods
.method public constructor <init>(B[B[B)V
    .locals 10
    .param p1, "rxModeForRanging"    # B
    .param p2, "rxAntennaForRanging"    # [B
    .param p3, "payload"    # [B

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 23
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 24
    iput-object p3, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->samsungSpecificData:[B

    .line 27
    iput-byte p1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxModeForRanging:B

    .line 28
    array-length v1, p2

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->numOfRxForRanging:I

    .line 29
    iput-object p2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxAntennaForRanging:[B

    .line 33
    const/4 v1, 0x7

    const/16 v2, 0x9

    const/16 v3, 0x10

    const v4, 0xffff

    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    .line 34
    iget v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->numOfRxForRanging:I

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    .line 35
    iget v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->numOfRxForRanging:I

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    .line 36
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->numOfRxForRanging:I

    if-ge v5, v6, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    and-int/2addr v6, v4

    .line 38
    .local v6, "value":I
    iget-object v7, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    invoke-static {v6, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v8

    invoke-static {v8, v2, v1}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v8

    aput v8, v7, v5

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int v6, v7, v4

    .line 40
    iget-object v7, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    invoke-static {v6, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v8

    invoke-static {v8, v2, v1}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v8

    aput v8, v7, v5

    .line 36
    .end local v6    # "value":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 42
    :cond_1
    const/4 v6, 0x4

    if-ne p1, v6, :cond_4

    .line 43
    const/4 v6, 0x1

    .line 44
    .local v6, "numOfAoa":I
    aget-byte v5, p2, v5

    if-eqz v5, :cond_2

    .line 45
    const/4 v6, 0x2

    .line 47
    :cond_2
    new-array v5, v6, [F

    iput-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    .line 48
    new-array v5, v6, [F

    iput-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    .line 49
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 50
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    and-int/2addr v7, v4

    .line 51
    .local v7, "value":I
    iget-object v8, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    invoke-static {v7, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v9

    invoke-static {v9, v2, v1}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v9

    aput v9, v8, v5

    .line 52
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    and-int v7, v8, v4

    .line 53
    iget-object v8, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    invoke-static {v7, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v9

    invoke-static {v9, v2, v1}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v9

    aput v9, v8, v5

    .line 49
    .end local v7    # "value":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 55
    .end local v5    # "i":I
    .end local v6    # "numOfAoa":I
    :cond_3
    goto :goto_2

    .line 56
    :cond_4
    const/4 v1, 0x0

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    .line 57
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    .line 60
    :goto_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    and-int/2addr v1, v4

    .line 61
    .local v1, "value":I
    invoke-static {v1, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3, v3}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v2

    iput v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rssi:F

    .line 62
    return-void
.end method


# virtual methods
.method public getAoa()[F
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    return-object v0
.end method

.method public getNumOfRxForRanging()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->numOfRxForRanging:I

    return v0
.end method

.method public getPdoa()[F
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    return-object v0
.end method

.method public getRssi()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rssi:F

    return v0
.end method

.method public getRxAntennaForRanging()[B
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxAntennaForRanging:[B

    return-object v0
.end method

.method public getRxModeForRanging()B
    .locals 1

    .line 69
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxModeForRanging:B

    return v0
.end method

.method public getSamsungSpecificData()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->samsungSpecificData:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 94
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 95
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->samsungSpecificData:[B

    array-length v1, v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->samsungSpecificData:[B

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 95
    const-string v2, "Samsung Specification Info Length: %d,  Value: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 99
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxModeForRanging:B

    const/4 v2, 0x1

    const-string v3, "RX_PAIR%d PDOA: %5.2f"

    const-string v4, "RX_PAIR%d AOA: %5.2f"

    if-ne v1, v2, :cond_1

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->numOfRxForRanging:I

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 102
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 104
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxModeForRanging:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 105
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->aoa:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 107
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->pdoa:[F

    aget v5, v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v1    # "i":I
    :cond_2
    :goto_2
    iget v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->rssi:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "RSSI: %5.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 111
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
