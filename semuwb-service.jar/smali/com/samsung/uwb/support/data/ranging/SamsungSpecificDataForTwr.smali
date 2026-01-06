.class public Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
.super Ljava/lang/Object;
.source "SamsungSpecificDataForTwr.java"


# instance fields
.field private final aoa:[F

.field private final distance2:Ljava/lang/Integer;

.field private final firstIndex:[F

.field private final mainIndex:[F

.field private final numOfRxForRanging:I

.field private final numOfRxForRframe:I

.field private final pdoa:[F

.field private final pdoaIndex:[I

.field private final rxAntennaForRanging:[B

.field private final rxAntennaForRframe:[B

.field private final rxModeForRanging:B

.field private final rxModeForRframe:B

.field private final samsungSpecificData:[B

.field private final snrFirst:[I

.field private final snrMain:[I

.field private final wifiCoexStatus:B


# direct methods
.method public constructor <init>(BB[BB[B[B)V
    .locals 17
    .param p1, "wifiCoexStatus"    # B
    .param p2, "rxModeForRanging"    # B
    .param p3, "rxAntennaForRanging"    # [B
    .param p4, "rxModeForRframe"    # B
    .param p5, "rxAntennaForRframe"    # [B
    .param p6, "payload"    # [B

    .line 31
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static/range {p6 .. p6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 33
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 34
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->samsungSpecificData:[B

    .line 37
    move/from16 v6, p1

    iput-byte v6, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->wifiCoexStatus:B

    .line 38
    iput-byte v1, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxModeForRanging:B

    .line 39
    array-length v7, v2

    iput v7, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRanging:I

    .line 40
    iput-object v2, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    .line 41
    move/from16 v7, p4

    iput-byte v7, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxModeForRframe:B

    .line 42
    array-length v8, v3

    iput v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    .line 43
    iput-object v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRframe:[B

    .line 47
    const/4 v8, 0x4

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/16 v11, 0x10

    const v12, 0xffff

    const/4 v13, 0x1

    if-ne v1, v13, :cond_1

    .line 48
    iget v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRanging:I

    new-array v13, v13, [F

    iput-object v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    .line 49
    iget v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRanging:I

    new-array v13, v13, [F

    iput-object v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    .line 50
    iget v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRanging:I

    new-array v13, v13, [I

    iput-object v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    .line 51
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    iget v14, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRanging:I

    if-ge v13, v14, :cond_0

    .line 52
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    and-int/2addr v14, v12

    .line 53
    .local v14, "value":I
    iget-object v15, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    move/from16 v16, v12

    invoke-static {v14, v11}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v12

    invoke-static {v12, v10, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v12

    aput v12, v15, v13

    .line 54
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v12

    and-int v12, v12, v16

    .line 55
    .end local v14    # "value":I
    .local v12, "value":I
    iget-object v14, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    invoke-static {v12, v11}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v15

    invoke-static {v15, v10, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v15

    aput v15, v14, v13

    .line 56
    iget-object v14, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    and-int v15, v15, v16

    aput v15, v14, v13

    .line 51
    .end local v12    # "value":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v16

    goto :goto_0

    :cond_0
    move/from16 v16, v12

    .end local v13    # "i":I
    goto :goto_2

    .line 58
    :cond_1
    move/from16 v16, v12

    if-ne v1, v8, :cond_4

    .line 59
    const/4 v12, 0x1

    .line 60
    .local v12, "numOfAoa":I
    aget-byte v13, v2, v13

    if-eqz v13, :cond_2

    .line 61
    const/4 v12, 0x2

    .line 63
    :cond_2
    new-array v13, v12, [F

    iput-object v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    .line 64
    new-array v13, v12, [F

    iput-object v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    .line 65
    new-array v13, v12, [I

    iput-object v13, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    .line 66
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1
    if-ge v13, v12, :cond_3

    .line 67
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    and-int v14, v14, v16

    .line 68
    .restart local v14    # "value":I
    iget-object v15, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    invoke-static {v14, v11}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v8

    invoke-static {v8, v10, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v8

    aput v8, v15, v13

    .line 69
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    and-int v8, v8, v16

    .line 70
    .end local v14    # "value":I
    .local v8, "value":I
    iget-object v14, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    invoke-static {v8, v11}, Lcom/samsung/uwb/support/util/UwbUtil;->twos_compliment(II)I

    move-result v15

    invoke-static {v15, v10, v9}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v15

    aput v15, v14, v13

    .line 71
    iget-object v14, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v15

    and-int v15, v15, v16

    aput v15, v14, v13

    .line 66
    .end local v8    # "value":I
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x4

    goto :goto_1

    .line 73
    .end local v12    # "numOfAoa":I
    .end local v13    # "i":I
    :cond_3
    goto :goto_2

    .line 74
    :cond_4
    const/4 v8, 0x0

    new-array v9, v8, [F

    iput-object v9, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    .line 75
    new-array v9, v8, [F

    iput-object v9, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    .line 76
    new-array v8, v8, [I

    iput-object v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    .line 80
    :goto_2
    iget v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    new-array v8, v8, [I

    iput-object v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrFirst:[I

    .line 81
    iget v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    new-array v8, v8, [I

    iput-object v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrMain:[I

    .line 82
    iget v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->firstIndex:[F

    .line 83
    iget v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->mainIndex:[F

    .line 84
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget v9, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    if-ge v8, v9, :cond_5

    .line 85
    iget-object v9, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrFirst:[I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    aput v10, v9, v8

    .line 86
    iget-object v9, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrMain:[I

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    aput v10, v9, v8

    .line 87
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    and-int v9, v9, v16

    .line 88
    .local v9, "value":I
    iget-object v10, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->firstIndex:[F

    const/16 v11, 0xa

    const/4 v12, 0x6

    invoke-static {v9, v11, v12}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v13

    aput v13, v10, v8

    .line 89
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    and-int v9, v10, v16

    .line 90
    iget-object v10, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->mainIndex:[F

    invoke-static {v9, v11, v12}, Lcom/samsung/uwb/support/util/UwbUtil;->convertQFormatToFloat(III)F

    move-result v11

    aput v11, v10, v8

    .line 84
    .end local v9    # "value":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 94
    .end local v8    # "i":I
    :cond_5
    const/4 v8, 0x3

    if-eq v1, v8, :cond_7

    const/4 v8, 0x4

    if-ne v1, v8, :cond_6

    goto :goto_4

    .line 98
    :cond_6
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->distance2:Ljava/lang/Integer;

    goto :goto_5

    .line 96
    :cond_7
    :goto_4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    and-int v8, v8, v16

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->distance2:Ljava/lang/Integer;

    .line 100
    :goto_5
    return-void
.end method


# virtual methods
.method public getAoa()[F
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    return-object v0
.end method

.method public getDistance2()Ljava/lang/Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->distance2:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFirstIndex()[F
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->firstIndex:[F

    return-object v0
.end method

.method public getMainIndex()[F
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->mainIndex:[F

    return-object v0
.end method

.method public getNumOfRxForRanging()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRanging:I

    return v0
.end method

.method public getNumOfRxForRframe()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    return v0
.end method

.method public getPdoa()[F
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    return-object v0
.end method

.method public getPdoaIndex()[I
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    return-object v0
.end method

.method public getRxAntennaForRanging()[B
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    return-object v0
.end method

.method public getRxAntennaForRframe()[B
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRframe:[B

    return-object v0
.end method

.method public getRxModeForRanging()B
    .locals 1

    .line 107
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxModeForRanging:B

    return v0
.end method

.method public getRxModeForRframe()B
    .locals 1

    .line 139
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxModeForRframe:B

    return v0
.end method

.method public getSamsungSpecificData()[B
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->samsungSpecificData:[B

    return-object v0
.end method

.method public getSnrFirst()[I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrFirst:[I

    return-object v0
.end method

.method public getSnrMain()[I
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrMain:[I

    return-object v0
.end method

.method public getWifiCoexStatus()B
    .locals 1

    .line 135
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->wifiCoexStatus:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 168
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 169
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->samsungSpecificData:[B

    array-length v1, v1

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->samsungSpecificData:[B

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 169
    const-string v2, "Samsung Specification Info Length: %d,  Value: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 173
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxModeForRanging:B

    const/4 v2, 0x1

    const-string v3, "RX_PAIR%d PDOA Index: %s"

    const-string v4, "RX_PAIR%d PDOA: %5.2f"

    const-string v5, "RX_PAIR%d AOA: %5.2f"

    if-ne v1, v2, :cond_1

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRanging:I

    if-ge v1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 176
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 177
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_2

    .line 179
    :cond_1
    iget-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxModeForRanging:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 180
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 181
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->aoa:[F

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 182
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoa:[F

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 183
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRanging:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->pdoaIndex:[I

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    .end local v1    # "i":I
    :cond_2
    :goto_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->numOfRxForRframe:I

    if-ge v1, v2, :cond_3

    .line 187
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRframe:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrFirst:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "RX%d SNR First: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 188
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRframe:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->snrMain:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "RX%d SNR Main: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 189
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRframe:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->firstIndex:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "RX%d First Index: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 190
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->rxAntennaForRframe:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->mainIndex:[F

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "RX%d Main Index: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 192
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->distance2:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->distance2:Ljava/lang/Integer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Distance2: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 195
    :cond_4
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
