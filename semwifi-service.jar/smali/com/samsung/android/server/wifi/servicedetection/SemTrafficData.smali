.class public Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final NUM_EXTRA_FEATURES:I = 0x5

.field public static final NUM_USED_NSD_FEATURES:I = 0xa


# instance fields
.field public convo:Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

.field public dlPacketCnt:F

.field public dlPacketSizeAvg:F

.field public dlPacketSizeMax:F

.field public dlPacketSizeMin:F

.field public interTimeAvg:F

.field public interTimeDLMax1:F

.field public interTimeDLMax2:F

.field public interTimeMax:F

.field public interTimeMin:F

.field public ipVersion:I

.field public ipv4Address:I

.field public ipv6Address:[I

.field public key:I

.field public tcpPacketCnt:F

.field public udpPacketCnt:F

.field public uid:I

.field public ulPacketCnt:F

.field public ulPacketSizeAvg:F

.field public ulPacketSizeMax:F

.field public ulPacketSizeMin:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipVersion:I

    .line 6
    .line 7
    return-void
.end method

.method private getStringIpv4Address(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit16 v0, p1, 0xff

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "."

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x8

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    shr-int/lit8 v1, p1, 0x10

    .line 27
    .line 28
    and-int/lit16 v1, v1, 0xff

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    shr-int/lit8 p1, p1, 0x18

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method private getStringIpv6Address([I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget v1, p1, v0

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    aget v2, p1, v0

    .line 16
    .line 17
    shr-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "%02x%02x"

    .line 30
    .line 31
    const-string v3, "."

    .line 32
    .line 33
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    aget v1, p1, v0

    .line 37
    .line 38
    shr-int/lit8 v1, v1, 0x10

    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aget v0, p1, v0

    .line 47
    .line 48
    shr-int/lit8 v0, v0, 0x18

    .line 49
    .line 50
    and-int/lit16 v0, v0, 0xff

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aget v1, p1, v0

    .line 65
    .line 66
    and-int/lit16 v1, v1, 0xff

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    aget v4, p1, v0

    .line 73
    .line 74
    shr-int/lit8 v4, v4, 0x8

    .line 75
    .line 76
    and-int/lit16 v4, v4, 0xff

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    aget v1, p1, v0

    .line 90
    .line 91
    shr-int/lit8 v1, v1, 0x10

    .line 92
    .line 93
    and-int/lit16 v1, v1, 0xff

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    aget v0, p1, v0

    .line 100
    .line 101
    shr-int/lit8 v0, v0, 0x18

    .line 102
    .line 103
    and-int/lit16 v0, v0, 0xff

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    aget v1, p1, v0

    .line 118
    .line 119
    and-int/lit16 v1, v1, 0xff

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    aget v4, p1, v0

    .line 126
    .line 127
    shr-int/lit8 v4, v4, 0x8

    .line 128
    .line 129
    and-int/lit16 v4, v4, 0xff

    .line 130
    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    aget v1, p1, v0

    .line 143
    .line 144
    shr-int/lit8 v1, v1, 0x10

    .line 145
    .line 146
    and-int/lit16 v1, v1, 0xff

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    aget v0, p1, v0

    .line 153
    .line 154
    shr-int/lit8 v0, v0, 0x18

    .line 155
    .line 156
    and-int/lit16 v0, v0, 0xff

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v0, 0x3

    .line 170
    aget v1, p1, v0

    .line 171
    .line 172
    and-int/lit16 v1, v1, 0xff

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    aget v4, p1, v0

    .line 179
    .line 180
    shr-int/lit8 v4, v4, 0x8

    .line 181
    .line 182
    and-int/lit16 v4, v4, 0xff

    .line 183
    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    aget v1, p1, v0

    .line 196
    .line 197
    shr-int/lit8 v1, v1, 0x10

    .line 198
    .line 199
    and-int/lit16 v1, v1, 0xff

    .line 200
    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    aget p1, p1, v0

    .line 206
    .line 207
    shr-int/lit8 p1, p1, 0x18

    .line 208
    .line 209
    and-int/lit16 p1, p1, 0xff

    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method


# virtual methods
.method public filterTrafficData()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    .line 6
    const v2, 0x49742400    # 1000000.0f

    .line 7
    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    .line 12
    .line 13
    cmpl-float v0, v0, v2

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    .line 18
    .line 19
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 20
    .line 21
    cmpl-float v0, v0, v1

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    .line 26
    .line 27
    cmpl-float v0, v0, v2

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iput v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public getServerIpAddress()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipVersion:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipv4Address:I

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->getStringIpv4Address(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    const/4 v1, 0x6

    .line 14
    if-ne v0, v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipv6Address:[I

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->getStringIpv6Address([I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, ""

    .line 24
    .line 25
    return-object p0
.end method

.method public getTotalPacketCnt()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 4
    .line 5
    add-float/2addr v0, p0

    .line 6
    float-to-int p0, v0

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public getTrafficArrayData(Z)[F
    .locals 12

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const/4 v4, 0x6

    .line 9
    const/4 v5, 0x5

    .line 10
    const/4 v6, 0x4

    .line 11
    const/4 v7, 0x3

    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/16 p1, 0xf

    .line 18
    .line 19
    new-array p1, p1, [F

    .line 20
    .line 21
    iget v11, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    .line 22
    .line 23
    aput v11, p1, v10

    .line 24
    .line 25
    iget v10, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeAvg:F

    .line 26
    .line 27
    aput v10, p1, v9

    .line 28
    .line 29
    iget v9, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 30
    .line 31
    aput v9, p1, v8

    .line 32
    .line 33
    iget v8, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 34
    .line 35
    aput v8, p1, v7

    .line 36
    .line 37
    iget v7, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    .line 38
    .line 39
    aput v7, p1, v6

    .line 40
    .line 41
    iget v6, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMax:F

    .line 42
    .line 43
    aput v6, p1, v5

    .line 44
    .line 45
    iget v5, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    .line 46
    .line 47
    aput v5, p1, v4

    .line 48
    .line 49
    iget v4, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMax:F

    .line 50
    .line 51
    aput v4, p1, v3

    .line 52
    .line 53
    iget v3, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    .line 54
    .line 55
    aput v3, p1, v2

    .line 56
    .line 57
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    .line 58
    .line 59
    aput v2, p1, v1

    .line 60
    .line 61
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMin:F

    .line 62
    .line 63
    aput v1, p1, v0

    .line 64
    .line 65
    const/16 v0, 0xb

    .line 66
    .line 67
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 68
    .line 69
    aput v1, p1, v0

    .line 70
    .line 71
    const/16 v0, 0xc

    .line 72
    .line 73
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    .line 74
    .line 75
    aput v1, p1, v0

    .line 76
    .line 77
    const/16 v0, 0xd

    .line 78
    .line 79
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->tcpPacketCnt:F

    .line 80
    .line 81
    aput v1, p1, v0

    .line 82
    .line 83
    const/16 v0, 0xe

    .line 84
    .line 85
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->udpPacketCnt:F

    .line 86
    .line 87
    aput p0, p1, v0

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_0
    new-array p1, v0, [F

    .line 91
    .line 92
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    .line 93
    .line 94
    aput v0, p1, v10

    .line 95
    .line 96
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeAvg:F

    .line 97
    .line 98
    aput v0, p1, v9

    .line 99
    .line 100
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 101
    .line 102
    aput v0, p1, v8

    .line 103
    .line 104
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 105
    .line 106
    aput v0, p1, v7

    .line 107
    .line 108
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    .line 109
    .line 110
    aput v0, p1, v6

    .line 111
    .line 112
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMax:F

    .line 113
    .line 114
    aput v0, p1, v5

    .line 115
    .line 116
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    .line 117
    .line 118
    aput v0, p1, v4

    .line 119
    .line 120
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMax:F

    .line 121
    .line 122
    aput v0, p1, v3

    .line 123
    .line 124
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    .line 125
    .line 126
    aput v0, p1, v2

    .line 127
    .line 128
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    .line 129
    .line 130
    aput p0, p1, v1

    .line 131
    .line 132
    return-object p1
.end method

.method public isBlank()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 4
    .line 5
    add-float/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMax:F

    .line 7
    .line 8
    add-float/2addr v0, v1

    .line 9
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    .line 10
    .line 11
    add-float/2addr v0, v1

    .line 12
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    .line 13
    .line 14
    add-float/2addr v0, v1

    .line 15
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMax:F

    .line 16
    .line 17
    add-float/2addr v0, v1

    .line 18
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    .line 19
    .line 20
    add-float/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    .line 22
    .line 23
    add-float/2addr v0, v1

    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    .line 25
    .line 26
    add-float/2addr v0, v1

    .line 27
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMin:F

    .line 28
    .line 29
    add-float/2addr v0, v1

    .line 30
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeAvg:F

    .line 31
    .line 32
    add-float/2addr v0, v1

    .line 33
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    .line 34
    .line 35
    add-float/2addr v0, v1

    .line 36
    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    .line 37
    .line 38
    add-float/2addr v0, p0

    .line 39
    const/4 p0, 0x0

    .line 40
    cmpl-float p0, v0, p0

    .line 41
    .line 42
    if-nez p0, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_0
    const/4 p0, 0x0

    .line 47
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->filterTrafficData()V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->convo:Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    const-string v1, " ["

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget v1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeAvg:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMax:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMax:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMin:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->tcpPacketCnt:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->udpPacketCnt:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 3

    .line 10
    const-string v0, "]"

    const-string v1, ", "

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeAvg:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMax:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMax:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMin:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->tcpPacketCnt:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->udpPacketCnt:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->convo:Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemIpUtil$IpConvoWrapper;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :goto_0
    const-string v2, " ["

    .line 14
    invoke-static {p1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 15
    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMax:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeAvg:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMin:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeMax:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMax:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeMin:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeMin:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax1:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->interTimeDLMax2:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->tcpPacketCnt:F

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->udpPacketCnt:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
