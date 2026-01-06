.class public Lcom/samsung/uwb/support/data/ranging/RangingData;
.super Ljava/lang/Object;
.source "RangingData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/uwb/support/data/ranging/RangingData$MeasurementType;,
        Lcom/samsung/uwb/support/data/ranging/RangingData$LosType;
    }
.end annotation


# instance fields
.field private final currRangingInterval:J

.field private final macAddressMode:B

.field private final numOfRangingMeasurements:B

.field private final primarySessionId:J

.field private final rangingMeasurementType:B

.field private final rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

.field private samsungSpecificDataHelper:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;

.field private final seqCounter:J

.field private final sessionToken:J


# direct methods
.method public constructor <init>([B)V
    .locals 7
    .param p1, "payload"    # [B

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->samsungSpecificDataHelper:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;

    .line 35
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 36
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 38
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->seqCounter:J

    .line 39
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->sessionToken:J

    .line 40
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 41
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->currRangingInterval:J

    .line 42
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    .line 43
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 44
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->primarySessionId:J

    .line 46
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 47
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    .line 49
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    if-nez v2, :cond_1

    .line 50
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    new-array v0, v0, [Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    if-ge v0, v2, :cond_0

    .line 52
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 53
    .local v2, "pos":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 54
    .local v3, "extraData":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 56
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    new-instance v5, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;

    iget-byte v6, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    invoke-direct {v5, v6, v3}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;-><init>(B[B)V

    aput-object v5, v4, v0

    .line 57
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v0

    check-cast v4, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;

    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;->getDataLength()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 51
    .end local v2    # "pos":I
    .end local v3    # "extraData":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto/16 :goto_6

    .line 59
    :cond_1
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 60
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    new-array v0, v0, [Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    .line 61
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    if-ge v0, v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    new-instance v3, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    iget-byte v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    invoke-direct {v3, v4, v1}, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;-><init>(BLjava/nio/ByteBuffer;)V

    aput-object v3, v2, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "i":I
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 67
    .local v0, "samsungSpecificData":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 68
    new-instance v2, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;

    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    invoke-direct {v2, v0, v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;-><init>([B[Lcom/samsung/uwb/support/data/ranging/Measurement;)V

    iput-object v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->samsungSpecificDataHelper:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "samsungSpecificData":[B
    goto :goto_2

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto/16 :goto_6

    .line 72
    :cond_3
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 73
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    new-array v0, v0, [Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    if-ge v0, v2, :cond_4

    .line 75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 76
    .restart local v2    # "pos":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 77
    .restart local v3    # "extraData":[B
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    new-instance v5, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;

    iget-byte v6, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    invoke-direct {v5, v6, v3}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;-><init>(B[B)V

    aput-object v5, v4, v0

    .line 80
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v0

    check-cast v4, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;

    invoke-virtual {v4}, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;->getDataLength()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    .end local v2    # "pos":I
    .end local v3    # "extraData":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    :cond_4
    goto :goto_6

    .line 82
    :cond_5
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 83
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    new-array v0, v0, [Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    .line 84
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-byte v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    if-ge v0, v2, :cond_6

    .line 85
    iget-object v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    new-instance v3, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    iget-byte v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    invoke-direct {v3, v4, v1}, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;-><init>(BLjava/nio/ByteBuffer;)V

    aput-object v3, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 89
    .end local v0    # "i":I
    :cond_6
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 90
    .local v0, "samsungSpecificData":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 91
    new-instance v2, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;

    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    invoke-direct {v2, v0, v3}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;-><init>([B[Lcom/samsung/uwb/support/data/ranging/Measurement;)V

    iput-object v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->samsungSpecificDataHelper:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "samsungSpecificData":[B
    goto :goto_5

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    goto :goto_6

    .line 96
    :cond_7
    iput-object v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    .line 98
    :goto_6
    return-void
.end method


# virtual methods
.method public getCurrRangingInterval()J
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->currRangingInterval:J

    return-wide v0
.end method

.method public getMacAddressMode()B
    .locals 1

    .line 117
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    return v0
.end method

.method public getNumOfRangingMeasurements()B
    .locals 1

    .line 125
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    return v0
.end method

.method public getPrimarySessionId()J
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->primarySessionId:J

    return-wide v0
.end method

.method public getRangingMeasurementType()B
    .locals 1

    .line 113
    iget-byte v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    return v0
.end method

.method public getRangingMeasurements()[Lcom/samsung/uwb/support/data/ranging/Measurement;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    return-object v0
.end method

.method public getSeqCounter()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->seqCounter:J

    return-wide v0
.end method

.method public getSessionToken()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->sessionToken:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 134
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v0, "stringJoiner":Ljava/util/StringJoiner;
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->seqCounter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Sequence Number: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 136
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->sessionToken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "sessionToken: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    iget-wide v2, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->currRangingInterval:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Current Ranging Interval: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 138
    const-string v2, "INVALID"

    .line 139
    .local v2, "description":Ljava/lang/String;
    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    const/4 v4, 0x2

    if-nez v3, :cond_0

    .line 140
    const-string v2, "UL TDOA"

    goto :goto_0

    .line 141
    :cond_0
    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 142
    const-string v2, "Two Way Ranging"

    goto :goto_0

    .line 143
    :cond_1
    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    if-ne v3, v4, :cond_2

    .line 144
    const-string v2, "DL TDOA"

    goto :goto_0

    .line 145
    :cond_2
    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurementType:B

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 146
    const-string v2, "One Way for AOA Measurement"

    .line 148
    :cond_3
    :goto_0
    const-string v3, "Ranging Measurement Type: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 149
    const-string v2, "INVALID"

    .line 150
    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    if-nez v3, :cond_4

    .line 151
    const-string v2, "Short Address"

    goto :goto_1

    .line 152
    :cond_4
    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->macAddressMode:B

    if-ne v3, v4, :cond_5

    .line 153
    const-string v2, "Extended Address"

    .line 155
    :cond_5
    :goto_1
    const-string v3, "Mac Address Mode: %s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    iget-byte v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Number of Measurement: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 158
    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->samsungSpecificDataHelper:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;

    if-nez v3, :cond_6

    .line 159
    const-string v3, "\nSamsung Specification Info: NULL"

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    .line 161
    :cond_6
    iget-object v3, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->samsungSpecificDataHelper:Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;

    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    invoke-virtual {v3, v4}, Lcom/samsung/uwb/support/data/ranging/SamsungSpecificDataHelper;->toString([Lcom/samsung/uwb/support/data/ranging/Measurement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 164
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    iget-byte v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->numOfRangingMeasurements:B

    if-ge v3, v4, :cond_b

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 166
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    instance-of v4, v4, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;

    if-eqz v4, :cond_7

    .line 167
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    check-cast v4, Lcom/samsung/uwb/support/data/ranging/UpLinkTdoaMeasurement;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    .line 168
    :cond_7
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    instance-of v4, v4, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    if-eqz v4, :cond_8

    .line 169
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    check-cast v4, Lcom/samsung/uwb/support/data/ranging/TwoWayMeasurement;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    .line 170
    :cond_8
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    instance-of v4, v4, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;

    if-eqz v4, :cond_9

    .line 171
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    check-cast v4, Lcom/samsung/uwb/support/data/ranging/DownLinkTdoaMeasurement;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    .line 172
    :cond_9
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    instance-of v4, v4, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    if-eqz v4, :cond_a

    .line 173
    iget-object v4, p0, Lcom/samsung/uwb/support/data/ranging/RangingData;->rangingMeasurements:[Lcom/samsung/uwb/support/data/ranging/Measurement;

    aget-object v4, v4, v3

    check-cast v4, Lcom/samsung/uwb/support/data/ranging/OneWayForAoaMeasurement;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 164
    :cond_a
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 176
    .end local v3    # "i":I
    :cond_b
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
