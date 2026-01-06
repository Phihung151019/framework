.class public Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;
.super Ljava/lang/Object;
.source "SamsungSpecificDataHelper.java"


# instance fields
.field private final samsungSpecificData:[B

.field private final specificDataLength:I

.field private final specificDataType:B


# direct methods
.method protected constructor <init>([B[Lcom/samsung/uwb/support/data/ranging/Measurement;)V
    .locals 3
    .param p1, "payload"    # [B
    .param p2, "rangingMeasurements"    # [Lcom/samsung/uwb/support/data/ranging/Measurement;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 19
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    iput-object p1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->samsungSpecificData:[B

    .line 21
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataLength:I

    .line 22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataType:B

    .line 24
    instance-of v1, p2, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    if-eqz v1, :cond_0

    .line 25
    move-object v1, p2

    check-cast v1, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    invoke-direct {p0, v1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->setSamsungSpecificDataForTwr([Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;)V

    goto :goto_0

    .line 26
    :cond_0
    instance-of v1, p2, [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    if-eqz v1, :cond_1

    .line 27
    move-object v1, p2

    check-cast v1, [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    invoke-direct {p0, v1}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->setSamsungSpecificDataForOwrForAdv([Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V

    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method private setSamsungSpecificDataForOwrForAdv([Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;)V
    .locals 12
    .param p1, "rangingMeasurements"    # [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    .line 66
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->samsungSpecificData:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    .line 70
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    .line 72
    array-length v1, p1

    .line 73
    .local v1, "numOfRangingMeasurements":I
    if-nez v1, :cond_0

    .line 74
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 79
    .local v2, "rxModeForRanging":B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 80
    .local v3, "numOfRxForRanging":I
    new-array v4, v3, [B

    .line 81
    .local v4, "rxAntennaForRanging":[B
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 84
    .local v5, "remainedDataLength":I
    div-int v6, v5, v1

    .line 85
    .local v6, "repetitionPartLength":I
    array-length v7, p1

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, p1, v8

    .line 86
    .local v9, "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    new-array v10, v6, [B

    .line 87
    .local v10, "extraData":[B
    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 88
    new-instance v11, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    invoke-direct {v11, v2, v4, v10}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;-><init>(B[B[B)V

    .line 89
    .local v11, "samsungSpecificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    invoke-virtual {v9, v11}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->setSamsungSpecificDataForOwrForAdv(Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;)V

    .line 85
    .end local v9    # "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;
    .end local v10    # "extraData":[B
    .end local v11    # "samsungSpecificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method private setSamsungSpecificDataForTwr([Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;)V
    .locals 18
    .param p1, "rangingMeasurements"    # [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    .line 32
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->samsungSpecificData:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 33
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 35
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 38
    array-length v3, v0

    .line 39
    .local v3, "numOfRangingMeasurements":I
    if-nez v3, :cond_0

    .line 40
    return-void

    .line 44
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 45
    .local v5, "wifiCoexStatus":B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 46
    .local v6, "rxModeForRanging":B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v11, v4, 0xff

    .line 47
    .local v11, "numOfRxForRanging":I
    new-array v7, v11, [B

    .line 48
    .local v7, "rxAntennaForRanging":[B
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    .line 50
    .local v8, "rxModeForRframe":B
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v12, v4, 0xff

    .line 51
    .local v12, "numOfRxForRframe":I
    new-array v9, v12, [B

    .line 52
    .local v9, "rxAntennaForRframe":[B
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    .line 55
    .local v13, "remainedDataLength":I
    div-int v14, v13, v3

    .line 56
    .local v14, "repetitionPartLength":I
    array-length v15, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v15, :cond_1

    aget-object v10, v0, v4

    .line 57
    .local v10, "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    move-object/from16 v16, v10

    .end local v10    # "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .local v16, "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    new-array v10, v14, [B

    .line 58
    .local v10, "extraData":[B
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 59
    move/from16 v17, v4

    new-instance v4, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-object/from16 v0, v16

    .end local v16    # "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .local v0, "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    invoke-direct/range {v4 .. v10}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;-><init>(BB[BB[B[B)V

    .line 61
    .local v4, "samsungSpecificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    invoke-virtual {v0, v4}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->setSamsungSpecificDataForTwr(Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;)V

    .line 56
    .end local v0    # "rangingMeasurement":Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;
    .end local v4    # "samsungSpecificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .end local v10    # "extraData":[B
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, p1

    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method


# virtual methods
.method public toString([Lcom/samsung/uwb/support/data/ranging/Measurement;)Ljava/lang/String;
    .locals 19
    .param p1, "rangingMeasurements"    # [Lcom/samsung/uwb/support/data/ranging/Measurement;

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/StringJoiner;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    .local v2, "stringJoiner":Ljava/util/StringJoiner;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 97
    instance-of v3, v1, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    const-string v4, "RFM for AoA"

    const-string v5, "RFM for ToA"

    const-string v7, "AoA"

    const-string v11, "Samsung Specific Data V1"

    const-string v12, "Specific Data Type: 0x%s(%s)"

    const-string v13, "Specific Data Type: 0x%s"

    const-string v14, "Samsung Specification Info Length: %d(2+%d),  Value: %s"

    const-string v15, "ToA"

    const/16 v16, 0x0

    const-string v10, "ANT INFO for Ranging - RX_MODE: 0x%s(%s),  NUM_OF_RX: %d,  RX_PAIR_ID: %s"

    const-string v6, "ANT INFO for Ranging - RX_MODE: 0x%s(%s),  NUM_OF_RX: %d,  RX_ANT_ID: %s"

    if-eqz v3, :cond_6

    .line 98
    iget-object v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->samsungSpecificData:[B

    array-length v3, v3

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->samsungSpecificData:[B

    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3, v8, v9}, [Ljava/lang/Object;

    move-result-object v3

    .line 98
    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 100
    iget-byte v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataType:B

    if-nez v3, :cond_0

    .line 101
    iget-byte v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataType:B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 103
    :cond_0
    iget-byte v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataType:B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 106
    :goto_0
    array-length v3, v1

    if-eqz v3, :cond_b

    .line 107
    aget-object v3, v1, v16

    check-cast v3, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;->getSamsungSpecificDataForTwr()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;

    move-result-object v3

    .line 109
    .local v3, "samsungSpecificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getWifiCoexStatus()B

    move-result v8

    .line 110
    .local v8, "wifiCoexStatus":B
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxModeForRanging()B

    move-result v9

    .line 111
    .local v9, "rxModeForRanging":B
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getNumOfRxForRanging()I

    move-result v11

    .line 112
    .local v11, "numOfRxForRanging":I
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRanging()[B

    move-result-object v12

    .line 113
    .local v12, "rxAntennaForRanging":[B
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxModeForRframe()B

    move-result v13

    .line 114
    .local v13, "rxModeForRframe":B
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getNumOfRxForRframe()I

    move-result v14

    .line 115
    .local v14, "numOfRxForRframe":I
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;->getRxAntennaForRframe()[B

    move-result-object v16

    .line 117
    .local v16, "rxAntennaForRframe":[B
    invoke-static {v8}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v3

    .end local v3    # "samsungSpecificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    .local v18, "samsungSpecificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    filled-new-array/range {v17 .. v17}, [Ljava/lang/Object;

    move-result-object v3

    move/from16 v17, v8

    .end local v8    # "wifiCoexStatus":B
    .local v17, "wifiCoexStatus":B
    const-string v8, "WiFi Coex Status: 0x%s"

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 118
    if-nez v9, :cond_1

    .line 119
    nop

    .line 120
    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v15, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 119
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 121
    :cond_1
    const/4 v3, 0x1

    if-ne v9, v3, :cond_2

    .line 122
    nop

    .line 123
    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v7, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 122
    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 124
    :cond_2
    const/4 v3, 0x3

    if-ne v9, v3, :cond_3

    .line 125
    nop

    .line 126
    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v5, v4, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 125
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 127
    :cond_3
    const/4 v3, 0x4

    if-ne v9, v3, :cond_4

    .line 128
    nop

    .line 129
    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 128
    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 131
    :cond_4
    :goto_1
    const-string v3, "ANT INFO for RFrame - RX_MODE: 0x%s(%s),  NUM_OF_RX: %d,  RX_ANT_ID: %s"

    if-nez v13, :cond_5

    .line 132
    nop

    .line 133
    invoke-static {v13}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v16 .. v16}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v15, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 132
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    .line 135
    :cond_5
    nop

    .line 136
    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v12}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Invalid"

    filled-new-array {v4, v7, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 135
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 138
    .end local v9    # "rxModeForRanging":B
    .end local v11    # "numOfRxForRanging":I
    .end local v12    # "rxAntennaForRanging":[B
    .end local v13    # "rxModeForRframe":B
    .end local v14    # "numOfRxForRframe":I
    .end local v16    # "rxAntennaForRframe":[B
    .end local v17    # "wifiCoexStatus":B
    .end local v18    # "samsungSpecificDataForTwr":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForTwr;
    :goto_2
    goto/16 :goto_4

    .line 139
    :cond_6
    instance-of v3, v1, [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    if-eqz v3, :cond_b

    .line 140
    iget-object v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->samsungSpecificData:[B

    array-length v3, v3

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v8, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->samsungSpecificData:[B

    invoke-static {v9}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3, v8, v9}, [Ljava/lang/Object;

    move-result-object v3

    .line 140
    invoke-static {v14, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 142
    iget-byte v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataType:B

    if-nez v3, :cond_7

    .line 143
    iget-byte v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataType:B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_3

    .line 145
    :cond_7
    iget-byte v3, v0, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->specificDataType:B

    invoke-static {v3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v13, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 148
    :goto_3
    array-length v3, v1

    if-eqz v3, :cond_b

    .line 149
    aget-object v3, v1, v16

    check-cast v3, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;->getSamsungSpecificDataForOwrForAdv()Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;

    move-result-object v3

    .line 151
    .local v3, "samsungSpecificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getRxModeForRanging()B

    move-result v8

    .line 152
    .local v8, "rxModeForRanging":B
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getNumOfRxForRanging()I

    move-result v9

    .line 153
    .local v9, "numOfRxForRanging":I
    invoke-virtual {v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;->getRxAntennaForRanging()[B

    move-result-object v11

    .line 155
    .local v11, "rxAntennaForRanging":[B
    if-nez v8, :cond_8

    .line 156
    nop

    .line 157
    invoke-static {v8}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v4, v15, v5, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 156
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    .line 158
    :cond_8
    const/4 v12, 0x1

    if-ne v8, v12, :cond_9

    .line 159
    nop

    .line 160
    invoke-static {v8}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v11}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v4, v7, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 159
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    .line 161
    :cond_9
    const/4 v7, 0x3

    if-ne v8, v7, :cond_a

    .line 162
    nop

    .line 163
    invoke-static {v8}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4, v5, v7, v10}, [Ljava/lang/Object;

    move-result-object v4

    .line 162
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    .line 164
    :cond_a
    const/4 v5, 0x4

    if-ne v8, v5, :cond_b

    .line 165
    nop

    .line 166
    invoke-static {v8}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v5, v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    .line 165
    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 170
    .end local v3    # "samsungSpecificDataForOwrForAdv":Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataForOwrForAdv;
    .end local v8    # "rxModeForRanging":B
    .end local v9    # "numOfRxForRanging":I
    .end local v11    # "rxAntennaForRanging":[B
    :cond_b
    :goto_4
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
