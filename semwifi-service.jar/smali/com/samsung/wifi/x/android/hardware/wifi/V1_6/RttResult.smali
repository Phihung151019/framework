.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field public addr:[B

.field public burstDurationInMs:I

.field public burstNum:I

.field public distanceInMm:I

.field public distanceSdInMm:I

.field public distanceSpreadInMm:I

.field public lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

.field public lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

.field public measurementNumber:I

.field public negotiatedBurstNum:I

.field public numberPerBurstPeer:B

.field public retryAfterDuration:B

.field public rssi:I

.field public rssiSpread:I

.field public rtt:J

.field public rttSd:J

.field public rttSpread:J

.field public rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

.field public status:I

.field public successNumber:I

.field public timeStampInUs:J

.field public txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    new-array v0, v0, [B

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->addr:[B

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstNum:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->measurementNumber:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->successNumber:I

    .line 15
    .line 16
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->numberPerBurstPeer:B

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->status:I

    .line 19
    .line 20
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->retryAfterDuration:B

    .line 21
    .line 22
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->type:I

    .line 23
    .line 24
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssi:I

    .line 25
    .line 26
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssiSpread:I

    .line 27
    .line 28
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 34
    .line 35
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 36
    .line 37
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 41
    .line 42
    const-wide/16 v1, 0x0

    .line 43
    .line 44
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rtt:J

    .line 45
    .line 46
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSd:J

    .line 47
    .line 48
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSpread:J

    .line 49
    .line 50
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceInMm:I

    .line 51
    .line 52
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSdInMm:I

    .line 53
    .line 54
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSpreadInMm:I

    .line 55
    .line 56
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->timeStampInUs:J

    .line 57
    .line 58
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstDurationInMs:I

    .line 59
    .line 60
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->negotiatedBurstNum:I

    .line 61
    .line 62
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 63
    .line 64
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 68
    .line 69
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 75
    .line 76
    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x10

    .line 7
    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    mul-int/lit16 v3, v2, 0xc0

    .line 19
    .line 20
    int-to-long v5, v3

    .line 21
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    const-wide/16 v9, 0x0

    .line 26
    .line 27
    const/4 v11, 0x1

    .line 28
    move-object v4, p0

    .line 29
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-ge v1, v2, :cond_0

    .line 38
    .line 39
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;-><init>()V

    .line 42
    .line 43
    .line 44
    mul-int/lit16 v5, v1, 0xc0

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-wide/16 v2, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0xc

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/os/HwBlob;

    .line 24
    .line 25
    mul-int/lit16 v3, v1, 0xc0

    .line 26
    .line 27
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    if-ge v4, v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;

    .line 37
    .line 38
    mul-int/lit16 v5, v4, 0xc0

    .line 39
    .line 40
    int-to-long v5, v5

    .line 41
    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 42
    .line 43
    .line 44
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;

    .line 14
    .line 15
    if-eq v2, v3, :cond_2

    .line 16
    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->addr:[B

    .line 21
    .line 22
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->addr:[B

    .line 23
    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstNum:I

    .line 32
    .line 33
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstNum:I

    .line 34
    .line 35
    if-eq v2, v3, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->measurementNumber:I

    .line 39
    .line 40
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->measurementNumber:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_5

    .line 43
    .line 44
    return v1

    .line 45
    :cond_5
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->successNumber:I

    .line 46
    .line 47
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->successNumber:I

    .line 48
    .line 49
    if-eq v2, v3, :cond_6

    .line 50
    .line 51
    return v1

    .line 52
    :cond_6
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->numberPerBurstPeer:B

    .line 53
    .line 54
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->numberPerBurstPeer:B

    .line 55
    .line 56
    if-eq v2, v3, :cond_7

    .line 57
    .line 58
    return v1

    .line 59
    :cond_7
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->status:I

    .line 60
    .line 61
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->status:I

    .line 62
    .line 63
    if-eq v2, v3, :cond_8

    .line 64
    .line 65
    return v1

    .line 66
    :cond_8
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->retryAfterDuration:B

    .line 67
    .line 68
    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->retryAfterDuration:B

    .line 69
    .line 70
    if-eq v2, v3, :cond_9

    .line 71
    .line 72
    return v1

    .line 73
    :cond_9
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->type:I

    .line 74
    .line 75
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->type:I

    .line 76
    .line 77
    if-eq v2, v3, :cond_a

    .line 78
    .line 79
    return v1

    .line 80
    :cond_a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssi:I

    .line 81
    .line 82
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssi:I

    .line 83
    .line 84
    if-eq v2, v3, :cond_b

    .line 85
    .line 86
    return v1

    .line 87
    :cond_b
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssiSpread:I

    .line 88
    .line 89
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssiSpread:I

    .line 90
    .line 91
    if-eq v2, v3, :cond_c

    .line 92
    .line 93
    return v1

    .line 94
    :cond_c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 95
    .line 96
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 97
    .line 98
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_d

    .line 103
    .line 104
    return v1

    .line 105
    :cond_d
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 106
    .line 107
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 108
    .line 109
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_e

    .line 114
    .line 115
    return v1

    .line 116
    :cond_e
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rtt:J

    .line 117
    .line 118
    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rtt:J

    .line 119
    .line 120
    cmp-long v2, v2, v4

    .line 121
    .line 122
    if-eqz v2, :cond_f

    .line 123
    .line 124
    return v1

    .line 125
    :cond_f
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSd:J

    .line 126
    .line 127
    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSd:J

    .line 128
    .line 129
    cmp-long v2, v2, v4

    .line 130
    .line 131
    if-eqz v2, :cond_10

    .line 132
    .line 133
    return v1

    .line 134
    :cond_10
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSpread:J

    .line 135
    .line 136
    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSpread:J

    .line 137
    .line 138
    cmp-long v2, v2, v4

    .line 139
    .line 140
    if-eqz v2, :cond_11

    .line 141
    .line 142
    return v1

    .line 143
    :cond_11
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceInMm:I

    .line 144
    .line 145
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceInMm:I

    .line 146
    .line 147
    if-eq v2, v3, :cond_12

    .line 148
    .line 149
    return v1

    .line 150
    :cond_12
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSdInMm:I

    .line 151
    .line 152
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSdInMm:I

    .line 153
    .line 154
    if-eq v2, v3, :cond_13

    .line 155
    .line 156
    return v1

    .line 157
    :cond_13
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSpreadInMm:I

    .line 158
    .line 159
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSpreadInMm:I

    .line 160
    .line 161
    if-eq v2, v3, :cond_14

    .line 162
    .line 163
    return v1

    .line 164
    :cond_14
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->timeStampInUs:J

    .line 165
    .line 166
    iget-wide v4, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->timeStampInUs:J

    .line 167
    .line 168
    cmp-long v2, v2, v4

    .line 169
    .line 170
    if-eqz v2, :cond_15

    .line 171
    .line 172
    return v1

    .line 173
    :cond_15
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstDurationInMs:I

    .line 174
    .line 175
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstDurationInMs:I

    .line 176
    .line 177
    if-eq v2, v3, :cond_16

    .line 178
    .line 179
    return v1

    .line 180
    :cond_16
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->negotiatedBurstNum:I

    .line 181
    .line 182
    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->negotiatedBurstNum:I

    .line 183
    .line 184
    if-eq v2, v3, :cond_17

    .line 185
    .line 186
    return v1

    .line 187
    :cond_17
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 188
    .line 189
    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 190
    .line 191
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-nez v2, :cond_18

    .line 196
    .line 197
    return v1

    .line 198
    :cond_18
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 199
    .line 200
    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 201
    .line 202
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    if-nez p0, :cond_19

    .line 207
    .line 208
    return v1

    .line 209
    :cond_19
    return v0
.end method

.method public final hashCode()I
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->addr:[B

    .line 4
    .line 5
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstNum:I

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->measurementNumber:I

    .line 20
    .line 21
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->successNumber:I

    .line 26
    .line 27
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-byte v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->numberPerBurstPeer:B

    .line 32
    .line 33
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->status:I

    .line 38
    .line 39
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iget-byte v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->retryAfterDuration:B

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig$$ExternalSyntheticOutline0;->m(B)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->type:I

    .line 50
    .line 51
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssi:I

    .line 56
    .line 57
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    iget v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssiSpread:I

    .line 62
    .line 63
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 68
    .line 69
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 78
    .line 79
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    iget-wide v14, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rtt:J

    .line 88
    .line 89
    invoke-static {v14, v15}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    move-object v15, v2

    .line 94
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSd:J

    .line 95
    .line 96
    invoke-static {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    move-object/from16 v16, v1

    .line 101
    .line 102
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSpread:J

    .line 103
    .line 104
    invoke-static {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    iget v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceInMm:I

    .line 109
    .line 110
    invoke-static {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v17

    .line 114
    iget v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSdInMm:I

    .line 115
    .line 116
    invoke-static {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v18

    .line 120
    iget v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSpreadInMm:I

    .line 121
    .line 122
    invoke-static {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v19

    .line 126
    move-object/from16 v20, v1

    .line 127
    .line 128
    iget-wide v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->timeStampInUs:J

    .line 129
    .line 130
    invoke-static {v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttLciInformation$$ExternalSyntheticOutline0;->m(J)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstDurationInMs:I

    .line 135
    .line 136
    invoke-static {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v21

    .line 140
    iget v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->negotiatedBurstNum:I

    .line 141
    .line 142
    invoke-static {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v22

    .line 146
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 147
    .line 148
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v23

    .line 156
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 157
    .line 158
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v24

    .line 166
    move-object v2, v15

    .line 167
    move-object/from16 v15, v16

    .line 168
    .line 169
    move-object/from16 v16, v20

    .line 170
    .line 171
    move-object/from16 v20, v1

    .line 172
    .line 173
    filled-new-array/range {v2 .. v24}, [Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->addr:[B

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x8

    .line 8
    .line 9
    add-long/2addr v0, p3

    .line 10
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstNum:I

    .line 15
    .line 16
    const-wide/16 v0, 0xc

    .line 17
    .line 18
    add-long/2addr v0, p3

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->measurementNumber:I

    .line 24
    .line 25
    const-wide/16 v0, 0x10

    .line 26
    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->successNumber:I

    .line 33
    .line 34
    const-wide/16 v0, 0x14

    .line 35
    .line 36
    add-long/2addr v0, p3

    .line 37
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->numberPerBurstPeer:B

    .line 42
    .line 43
    const-wide/16 v0, 0x18

    .line 44
    .line 45
    add-long/2addr v0, p3

    .line 46
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->status:I

    .line 51
    .line 52
    const-wide/16 v0, 0x1c

    .line 53
    .line 54
    add-long/2addr v0, p3

    .line 55
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->retryAfterDuration:B

    .line 60
    .line 61
    const-wide/16 v0, 0x20

    .line 62
    .line 63
    add-long/2addr v0, p3

    .line 64
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->type:I

    .line 69
    .line 70
    const-wide/16 v0, 0x24

    .line 71
    .line 72
    add-long/2addr v0, p3

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssi:I

    .line 78
    .line 79
    const-wide/16 v0, 0x28

    .line 80
    .line 81
    add-long/2addr v0, p3

    .line 82
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssiSpread:I

    .line 87
    .line 88
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 89
    .line 90
    const-wide/16 v1, 0x2c

    .line 91
    .line 92
    add-long/2addr v1, p3

    .line 93
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 97
    .line 98
    const-wide/16 v1, 0x40

    .line 99
    .line 100
    add-long/2addr v1, p3

    .line 101
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
    .line 103
    .line 104
    const-wide/16 v0, 0x58

    .line 105
    .line 106
    add-long/2addr v0, p3

    .line 107
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rtt:J

    .line 112
    .line 113
    const-wide/16 v0, 0x60

    .line 114
    .line 115
    add-long/2addr v0, p3

    .line 116
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSd:J

    .line 121
    .line 122
    const-wide/16 v0, 0x68

    .line 123
    .line 124
    add-long/2addr v0, p3

    .line 125
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSpread:J

    .line 130
    .line 131
    const-wide/16 v0, 0x70

    .line 132
    .line 133
    add-long/2addr v0, p3

    .line 134
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceInMm:I

    .line 139
    .line 140
    const-wide/16 v0, 0x74

    .line 141
    .line 142
    add-long/2addr v0, p3

    .line 143
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSdInMm:I

    .line 148
    .line 149
    const-wide/16 v0, 0x78

    .line 150
    .line 151
    add-long/2addr v0, p3

    .line 152
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSpreadInMm:I

    .line 157
    .line 158
    const-wide/16 v0, 0x80

    .line 159
    .line 160
    add-long/2addr v0, p3

    .line 161
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    .line 162
    .line 163
    .line 164
    move-result-wide v0

    .line 165
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->timeStampInUs:J

    .line 166
    .line 167
    const-wide/16 v0, 0x88

    .line 168
    .line 169
    add-long/2addr v0, p3

    .line 170
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstDurationInMs:I

    .line 175
    .line 176
    const-wide/16 v0, 0x8c

    .line 177
    .line 178
    add-long/2addr v0, p3

    .line 179
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->negotiatedBurstNum:I

    .line 184
    .line 185
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 186
    .line 187
    const-wide/16 v1, 0x90

    .line 188
    .line 189
    add-long/2addr v1, p3

    .line 190
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 194
    .line 195
    const-wide/16 v0, 0xa8

    .line 196
    .line 197
    add-long/2addr p3, v0

    .line 198
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0xc0

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{.addr = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->addr:[B

    .line 9
    .line 10
    const-string v2, ", .burstNum = "

    .line 11
    .line 12
    invoke-static {v1, v0, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd$$ExternalSyntheticOutline0;->m([BLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstNum:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", .measurementNumber = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->measurementNumber:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", .successNumber = "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->successNumber:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", .numberPerBurstPeer = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->numberPerBurstPeer:B

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", .status = "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->status:I

    .line 56
    .line 57
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttStatus;->toString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", .retryAfterDuration = "

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->retryAfterDuration:B

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", .type = "

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->type:I

    .line 80
    .line 81
    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/RttType;->toString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", .rssi = "

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssi:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", .rssiSpread = "

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssiSpread:I

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", .txRate = "

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", .rxRate = "

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v1, ", .rtt = "

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rtt:J

    .line 134
    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, ", .rttSd = "

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSd:J

    .line 144
    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", .rttSpread = "

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSpread:J

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v1, ", .distanceInMm = "

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceInMm:I

    .line 164
    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, ", .distanceSdInMm = "

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSdInMm:I

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v1, ", .distanceSpreadInMm = "

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSpreadInMm:I

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v1, ", .timeStampInUs = "

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->timeStampInUs:J

    .line 194
    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, ", .burstDurationInMs = "

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstDurationInMs:I

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v1, ", .negotiatedBurstNum = "

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->negotiatedBurstNum:I

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v1, ", .lci = "

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ", .lcr = "

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 234
    .line 235
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p0, "}"

    .line 239
    .line 240
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->addr:[B

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x6

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 10
    .line 11
    .line 12
    const-wide/16 v0, 0x8

    .line 13
    .line 14
    add-long/2addr v0, p2

    .line 15
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstNum:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v0, 0xc

    .line 21
    .line 22
    add-long/2addr v0, p2

    .line 23
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->measurementNumber:I

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 26
    .line 27
    .line 28
    const-wide/16 v0, 0x10

    .line 29
    .line 30
    add-long/2addr v0, p2

    .line 31
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->successNumber:I

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v0, 0x14

    .line 37
    .line 38
    add-long/2addr v0, p2

    .line 39
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->numberPerBurstPeer:B

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, 0x18

    .line 45
    .line 46
    add-long/2addr v0, p2

    .line 47
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->status:I

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 50
    .line 51
    .line 52
    const-wide/16 v0, 0x1c

    .line 53
    .line 54
    add-long/2addr v0, p2

    .line 55
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->retryAfterDuration:B

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v0, 0x20

    .line 61
    .line 62
    add-long/2addr v0, p2

    .line 63
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->type:I

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 66
    .line 67
    .line 68
    const-wide/16 v0, 0x24

    .line 69
    .line 70
    add-long/2addr v0, p2

    .line 71
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssi:I

    .line 72
    .line 73
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v0, 0x28

    .line 77
    .line 78
    add-long/2addr v0, p2

    .line 79
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rssiSpread:I

    .line 80
    .line 81
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 85
    .line 86
    const-wide/16 v1, 0x2c

    .line 87
    .line 88
    add-long/2addr v1, p2

    .line 89
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;

    .line 93
    .line 94
    const-wide/16 v1, 0x40

    .line 95
    .line 96
    add-long/2addr v1, p2

    .line 97
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/WifiRateInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v0, 0x58

    .line 101
    .line 102
    add-long/2addr v0, p2

    .line 103
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rtt:J

    .line 104
    .line 105
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 106
    .line 107
    .line 108
    const-wide/16 v0, 0x60

    .line 109
    .line 110
    add-long/2addr v0, p2

    .line 111
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSd:J

    .line 112
    .line 113
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 114
    .line 115
    .line 116
    const-wide/16 v0, 0x68

    .line 117
    .line 118
    add-long/2addr v0, p2

    .line 119
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->rttSpread:J

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 122
    .line 123
    .line 124
    const-wide/16 v0, 0x70

    .line 125
    .line 126
    add-long/2addr v0, p2

    .line 127
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceInMm:I

    .line 128
    .line 129
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 130
    .line 131
    .line 132
    const-wide/16 v0, 0x74

    .line 133
    .line 134
    add-long/2addr v0, p2

    .line 135
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSdInMm:I

    .line 136
    .line 137
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 138
    .line 139
    .line 140
    const-wide/16 v0, 0x78

    .line 141
    .line 142
    add-long/2addr v0, p2

    .line 143
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->distanceSpreadInMm:I

    .line 144
    .line 145
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 146
    .line 147
    .line 148
    const-wide/16 v0, 0x80

    .line 149
    .line 150
    add-long/2addr v0, p2

    .line 151
    iget-wide v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->timeStampInUs:J

    .line 152
    .line 153
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 154
    .line 155
    .line 156
    const-wide/16 v0, 0x88

    .line 157
    .line 158
    add-long/2addr v0, p2

    .line 159
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->burstDurationInMs:I

    .line 160
    .line 161
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 162
    .line 163
    .line 164
    const-wide/16 v0, 0x8c

    .line 165
    .line 166
    add-long/2addr v0, p2

    .line 167
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->negotiatedBurstNum:I

    .line 168
    .line 169
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 173
    .line 174
    const-wide/16 v1, 0x90

    .line 175
    .line 176
    add-long/2addr v1, p2

    .line 177
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 178
    .line 179
    .line 180
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;

    .line 181
    .line 182
    const-wide/16 v0, 0xa8

    .line 183
    .line 184
    add-long/2addr p2, v0

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiInformationElement;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    const-string p1, "Array element is not of the expected length"

    .line 192
    .line 193
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/os/HwBlob;

    .line 2
    .line 3
    const/16 v1, 0xc0

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/RttResult;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
