.class public Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final BIT_PER_TONE_SCALE:I = 0x3e8

.field private static final B_MODE_MAX_MBPS:I = 0xb

.field public static final CHANNEL_UTILIZATION_BOOST_BT_CONNECTED_2G:I = 0x3f

.field public static final CHANNEL_UTILIZATION_DEFAULT_2G:I = 0x5f

.field public static final CHANNEL_UTILIZATION_DEFAULT_ABOVE_2G:I = 0xf

.field public static final INVALID:I = -0x1

.field private static final MAX_BITS_PER_TONE_11AC:I

.field private static final MAX_BITS_PER_TONE_11AX:I

.field private static final MAX_BITS_PER_TONE_11BE:I

.field private static final MAX_BITS_PER_TONE_11N:I

.field private static final MAX_BITS_PER_TONE_LEGACY:I

.field public static final MAX_CHANNEL_UTILIZATION:I = 0xff

.field private static final MAX_NUM_SPATIAL_STREAM_11AC:I = 0x8

.field private static final MAX_NUM_SPATIAL_STREAM_11AX:I = 0x8

.field private static final MAX_NUM_SPATIAL_STREAM_11BE:I = 0x10

.field private static final MAX_NUM_SPATIAL_STREAM_11N:I = 0x4

.field private static final MAX_NUM_SPATIAL_STREAM_LEGACY:I = 0x1

.field private static final MICRO_TO_NANO_RATIO:I = 0x3e8

.field public static final MIN_CHANNEL_UTILIZATION:I = 0x0

.field private static final NOISE_FLOOR_20MHZ_DBM:I = -0x60

.field private static final NUM_TONE_PER_SYM_11AC_160MHZ:I = 0x1d4

.field private static final NUM_TONE_PER_SYM_11AC_20MHZ:I = 0x34

.field private static final NUM_TONE_PER_SYM_11AC_40MHZ:I = 0x6c

.field private static final NUM_TONE_PER_SYM_11AC_80MHZ:I = 0xea

.field private static final NUM_TONE_PER_SYM_11AX_BE_160MHZ:I = 0x7a8

.field private static final NUM_TONE_PER_SYM_11AX_BE_20MHZ:I = 0xea

.field private static final NUM_TONE_PER_SYM_11AX_BE_40MHZ:I = 0x1d4

.field private static final NUM_TONE_PER_SYM_11AX_BE_80MHZ:I = 0x3d4

.field private static final NUM_TONE_PER_SYM_11BE_320MHZ:I = 0xf50

.field private static final NUM_TONE_PER_SYM_11N_20MHZ:I = 0x34

.field private static final NUM_TONE_PER_SYM_11N_40MHZ:I = 0x6c

.field private static final NUM_TONE_PER_SYM_LEGACY:I = 0x30

.field private static final SNR_DB_TO_BIT_PER_TONE_HIGH_SNR_SCALE:I = 0x14d

.field private static final SNR_DB_TO_BIT_PER_TONE_LUT:[I

.field private static final SNR_DB_TO_BIT_PER_TONE_LUT_MAX:I = 0x9

.field private static final SNR_DB_TO_BIT_PER_TONE_LUT_MIN:I = -0xa

.field private static final SNR_MARGIN_DB:I = 0x10

.field private static final SYM_DURATION_11AC_NS:I = 0xe10

.field private static final SYM_DURATION_11AX_BE_NS:I = 0x3520

.field private static final SYM_DURATION_11N_NS:I = 0xe10

.field private static final SYM_DURATION_LEGACY_NS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SemThroughputPredictor"

.field private static final TWO_IN_DB:I = 0x3

.field static WIFI_ENABLE_6GHZ_BEACON_RSSI_BOOST:Z

.field static WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_ENABLE:Z

.field static WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_VALUE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x40b1940000000000L    # 4500.0

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    long-to-int v0, v0

    .line 11
    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_LEGACY:I

    .line 12
    .line 13
    const-wide v0, 0x40b3880000000000L    # 5000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    long-to-int v0, v0

    .line 23
    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11N:I

    .line 24
    .line 25
    const-wide v0, 0x40ba0aaaaaaaaaabL    # 6666.666666666667

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    long-to-int v0, v0

    .line 35
    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AC:I

    .line 36
    .line 37
    const-wide v0, 0x40c046aaaaaaaaabL    # 8333.333333333334

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    long-to-int v0, v0

    .line 47
    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AX:I

    .line 48
    .line 49
    const-wide v0, 0x40c3880000000000L    # 10000.0

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    long-to-int v0, v0

    .line 59
    sput v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11BE:I

    .line 60
    .line 61
    const/16 v0, 0x14

    .line 62
    .line 63
    new-array v0, v0, [I

    .line 64
    .line 65
    fill-array-data v0, :array_0

    .line 66
    .line 67
    .line 68
    sput-object v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->SNR_DB_TO_BIT_PER_TONE_LUT:[I

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    sput-boolean v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_ENABLE:Z

    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    sput v1, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_VALUE:I

    .line 75
    .line 76
    sput-boolean v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->WIFI_ENABLE_6GHZ_BEACON_RSSI_BOOST:Z

    .line 77
    .line 78
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0xab
        0xd4
        0x106
        0x143
        0x18c
        0x1e4
        0x24a
        0x2c2
        0x34c
        0x3e8
        0x498
        0x55a
        0x62f
        0x714
        0x80a
        0x90d
        0xa1c
        0xb36
        0xc59
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method private calculateAirTimeFraction(I)I
    .locals 0

    .line 1
    rsub-int p0, p1, 0xff

    .line 2
    .line 3
    return p0
.end method

.method private static calculateBitPerTone(I)I
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    const/16 v0, -0xa

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sub-int/2addr p0, v0

    .line 12
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->SNR_DB_TO_BIT_PER_TONE_LUT:[I

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 16
    .line 17
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    aget p0, v0, p0

    .line 22
    .line 23
    return p0

    .line 24
    :cond_0
    mul-int/lit16 p0, p0, 0x14d

    .line 25
    .line 26
    return p0
.end method

.method private getValidChannelUtilization(IIZ)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p2}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->isValidUtilizationRatio(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x5f

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/16 v0, 0xf

    .line 19
    .line 20
    :goto_0
    if-eqz p1, :cond_2

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x3f

    .line 25
    .line 26
    const/16 p1, 0xff

    .line 27
    .line 28
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    :cond_2
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    new-instance p0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p1, " utilization (LLS) "

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " isBluetoothConnected: "

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, " final utilization: "

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const-string p1, "SemThroughputPredictor"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_3
    return v0
.end method

.method private static isValidUtilizationRatio(I)Z
    .locals 1

    .line 1
    const/16 v0, 0xff

    .line 2
    .line 3
    if-gt p0, v0, :cond_0

    .line 4
    .line 5
    if-ltz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private predictThroughputInternal(IZIIIII[B)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p8

    .line 8
    .line 9
    const-string v4, "SemThroughputPredictor"

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    move/from16 v6, p5

    .line 13
    .line 14
    if-ge v6, v5, :cond_0

    .line 15
    .line 16
    const-string v6, "maxNumSpatialStream < 1 due to wrong implementation. Overridden to 1"

    .line 17
    .line 18
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move v6, v5

    .line 22
    :cond_0
    const/4 v7, 0x5

    .line 23
    const/4 v8, 0x3

    .line 24
    const/4 v10, 0x2

    .line 25
    if-ne v1, v5, :cond_1

    .line 26
    .line 27
    sget v3, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_LEGACY:I

    .line 28
    .line 29
    const/16 v6, 0x30

    .line 30
    .line 31
    const/16 v11, 0xfa0

    .line 32
    .line 33
    move v9, v3

    .line 34
    move v3, v5

    .line 35
    const/4 v14, 0x0

    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_1
    const/16 v12, 0x6c

    .line 39
    .line 40
    const/16 v13, 0x34

    .line 41
    .line 42
    const/4 v14, 0x4

    .line 43
    if-ne v1, v14, :cond_3

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    move v12, v13

    .line 48
    const/4 v9, 0x0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v9, v5

    .line 51
    :goto_0
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11N:I

    .line 56
    .line 57
    move v14, v9

    .line 58
    const/16 v11, 0xe10

    .line 59
    .line 60
    move v9, v6

    .line 61
    move v6, v12

    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :cond_3
    const/16 v15, 0x1d4

    .line 65
    .line 66
    const/16 p5, 0x0

    .line 67
    .line 68
    const/16 v9, 0x8

    .line 69
    .line 70
    const/16 v11, 0xea

    .line 71
    .line 72
    if-ne v1, v7, :cond_7

    .line 73
    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    move/from16 v3, p5

    .line 77
    .line 78
    move v11, v13

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    if-ne v2, v5, :cond_5

    .line 81
    .line 82
    move v3, v5

    .line 83
    move v11, v12

    .line 84
    goto :goto_1

    .line 85
    :cond_5
    if-ne v2, v10, :cond_6

    .line 86
    .line 87
    move v3, v10

    .line 88
    goto :goto_1

    .line 89
    :cond_6
    move v3, v8

    .line 90
    move v11, v15

    .line 91
    :goto_1
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    sget v9, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AC:I

    .line 96
    .line 97
    move v14, v3

    .line 98
    move v3, v6

    .line 99
    move v6, v11

    .line 100
    const/16 v11, 0xe10

    .line 101
    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_7
    const/16 v13, 0x7a8

    .line 105
    .line 106
    const/16 v16, 0x3d4

    .line 107
    .line 108
    const/4 v12, 0x6

    .line 109
    if-ne v1, v12, :cond_b

    .line 110
    .line 111
    if-nez v2, :cond_8

    .line 112
    .line 113
    move/from16 v3, p5

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_8
    if-ne v2, v5, :cond_9

    .line 117
    .line 118
    move v3, v5

    .line 119
    move v11, v15

    .line 120
    goto :goto_2

    .line 121
    :cond_9
    if-ne v2, v10, :cond_a

    .line 122
    .line 123
    move v3, v10

    .line 124
    move/from16 v11, v16

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_a
    move v3, v8

    .line 128
    move v11, v13

    .line 129
    :goto_2
    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    sget v9, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11AX:I

    .line 134
    .line 135
    move v14, v3

    .line 136
    move v3, v6

    .line 137
    move v6, v11

    .line 138
    :goto_3
    const/16 v11, 0x3520

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_b
    if-ne v1, v9, :cond_19

    .line 142
    .line 143
    if-nez v2, :cond_c

    .line 144
    .line 145
    move/from16 v14, p5

    .line 146
    .line 147
    move v15, v11

    .line 148
    goto :goto_4

    .line 149
    :cond_c
    if-ne v2, v5, :cond_d

    .line 150
    .line 151
    move v14, v5

    .line 152
    goto :goto_4

    .line 153
    :cond_d
    if-ne v2, v10, :cond_e

    .line 154
    .line 155
    move v14, v10

    .line 156
    move/from16 v15, v16

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_e
    if-ne v2, v8, :cond_f

    .line 160
    .line 161
    move v14, v8

    .line 162
    move v15, v13

    .line 163
    goto :goto_4

    .line 164
    :cond_f
    const/16 v15, 0xf50

    .line 165
    .line 166
    :goto_4
    if-eqz v3, :cond_10

    .line 167
    .line 168
    array-length v12, v3

    .line 169
    if-ne v12, v10, :cond_10

    .line 170
    .line 171
    aget-byte v12, v3, v5

    .line 172
    .line 173
    shl-int/lit8 v9, v12, 0x8

    .line 174
    .line 175
    aget-byte v3, v3, p5

    .line 176
    .line 177
    or-int/2addr v3, v9

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    .line 179
    .line 180
    .line 181
    move-result v9

    .line 182
    goto :goto_5

    .line 183
    :cond_10
    move/from16 v9, p5

    .line 184
    .line 185
    :goto_5
    mul-int/2addr v9, v11

    .line 186
    if-ge v9, v15, :cond_11

    .line 187
    .line 188
    sub-int/2addr v15, v9

    .line 189
    :cond_11
    const/16 v3, 0x10

    .line 190
    .line 191
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->MAX_BITS_PER_TONE_11BE:I

    .line 196
    .line 197
    move v9, v6

    .line 198
    move v6, v15

    .line 199
    goto :goto_3

    .line 200
    :goto_6
    sget-boolean v12, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->WIFI_ENABLE_6GHZ_BEACON_RSSI_BOOST:Z

    .line 201
    .line 202
    if-eqz v12, :cond_16

    .line 203
    .line 204
    invoke-static/range {p7 .. p7}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    if-eqz v12, :cond_16

    .line 209
    .line 210
    if-eq v2, v5, :cond_15

    .line 211
    .line 212
    if-eq v2, v10, :cond_14

    .line 213
    .line 214
    if-eq v2, v8, :cond_13

    .line 215
    .line 216
    if-eq v2, v7, :cond_12

    .line 217
    .line 218
    goto :goto_7

    .line 219
    :cond_12
    add-int/lit8 v5, p4, 0xc

    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_13
    add-int/lit8 v5, p4, 0x9

    .line 223
    .line 224
    goto :goto_8

    .line 225
    :cond_14
    add-int/lit8 v5, p4, 0x6

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_15
    add-int/lit8 v5, p4, 0x3

    .line 229
    .line 230
    goto :goto_8

    .line 231
    :cond_16
    :goto_7
    move/from16 v5, p4

    .line 232
    .line 233
    :goto_8
    mul-int/2addr v14, v8

    .line 234
    add-int/lit8 v14, v14, -0x50

    .line 235
    .line 236
    sub-int v7, v5, v14

    .line 237
    .line 238
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->calculateBitPerTone(I)I

    .line 239
    .line 240
    .line 241
    move-result v8

    .line 242
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 243
    .line 244
    .line 245
    move-result v8

    .line 246
    mul-int v9, v8, v3

    .line 247
    .line 248
    int-to-long v9, v9

    .line 249
    int-to-long v12, v6

    .line 250
    mul-long/2addr v9, v12

    .line 251
    const-wide/16 v12, 0x3e8

    .line 252
    .line 253
    mul-long/2addr v9, v12

    .line 254
    mul-int/lit16 v6, v11, 0x3e8

    .line 255
    .line 256
    int-to-long v12, v6

    .line 257
    div-long/2addr v9, v12

    .line 258
    long-to-int v6, v9

    .line 259
    move/from16 v9, p6

    .line 260
    .line 261
    invoke-direct {v0, v9}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->calculateAirTimeFraction(I)I

    .line 262
    .line 263
    .line 264
    move-result v9

    .line 265
    mul-int/2addr v9, v6

    .line 266
    div-int/lit16 v9, v9, 0xff

    .line 267
    .line 268
    if-eqz p2, :cond_17

    .line 269
    .line 270
    const/16 v10, 0xb

    .line 271
    .line 272
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 273
    .line 274
    .line 275
    move-result v9

    .line 276
    :cond_17
    iget-boolean v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    .line 277
    .line 278
    if-eqz v0, :cond_18

    .line 279
    .line 280
    const-string v0, " BW: "

    .line 281
    .line 282
    const-string v10, " RSSI: "

    .line 283
    .line 284
    const-string v12, " Nss: "

    .line 285
    .line 286
    invoke-static {v0, v10, v2, v5, v12}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    const-string v2, " Mode: "

    .line 291
    .line 292
    const-string v5, " symDur: "

    .line 293
    .line 294
    invoke-static {v0, v3, v2, v1, v5}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v1, " snrDb "

    .line 298
    .line 299
    const-string v2, " bitPerTone: "

    .line 300
    .line 301
    invoke-static {v0, v11, v1, v7, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v1, " rate: "

    .line 305
    .line 306
    const-string v2, " throughput: "

    .line 307
    .line 308
    invoke-static {v0, v8, v1, v6, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    :cond_18
    return v9

    .line 322
    :cond_19
    const/4 v0, -0x1

    .line 323
    return v0
.end method


# virtual methods
.method public enableVerboseLogging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public predictMaxRxThroughput(IZII)I
    .locals 9

    .line 1
    const/4 v7, 0x0

    .line 2
    const/4 v8, 0x0

    .line 3
    const/16 v4, 0xc8

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v5, p4

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII[B)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public predictMaxTxThroughput(IZII)I
    .locals 9

    .line 1
    const/4 v7, 0x0

    .line 2
    const/4 v8, 0x0

    .line 3
    const/16 v4, 0xc8

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move v5, p4

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII[B)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public predictRxThroughput(IZIIIII)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move/from16 v8, p6

    .line 3
    .line 4
    move/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v8, v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->getValidChannelUtilization(IIZ)I

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    const/4 v9, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move v6, p4

    .line 16
    move v5, p5

    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII[B)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ[B)I

    move-result p0

    return p0
.end method

.method public predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ[B)I
    .locals 14

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v7, p5

    move/from16 v3, p6

    const/4 v4, 0x0

    .line 2
    const-string v5, "SemThroughputPredictor"

    if-nez p1, :cond_0

    .line 3
    const-string p0, "Null device capabilities passed to throughput predictor"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->getMaxNumberTxSpatialStreams()I

    move-result v6

    .line 5
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->getMaxNumberRxSpatialStreams()I

    move-result v8

    .line 6
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 7
    sget-boolean v8, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_ENABLE:Z

    if-eqz v8, :cond_1

    .line 8
    sget v6, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->WIFI_FRAMEWORK_MAX_NUM_SPATIAL_STREAM_DEVICE_OVERRIDE_VALUE:I

    .line 9
    :cond_1
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x5

    if-eq v1, v9, :cond_5

    if-eq v1, v11, :cond_4

    const/4 v12, 0x6

    if-eq v1, v12, :cond_3

    const/16 v13, 0x8

    if-eq v1, v13, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, v13}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v13

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1, v12}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v12

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p1, v11}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v11

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p1, v9}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v9

    goto :goto_1

    :cond_6
    :goto_0
    move v1, v10

    :goto_1
    if-eq v2, v10, :cond_a

    const/4 v9, 0x2

    if-eq v2, v9, :cond_9

    const/4 v12, 0x3

    if-eq v2, v12, :cond_8

    if-eq v2, v11, :cond_7

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p1, v11}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v4, v11

    goto :goto_2

    .line 15
    :cond_8
    invoke-virtual {p1, v12}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v2

    if-eqz v2, :cond_9

    move v4, v12

    goto :goto_2

    .line 16
    :cond_9
    invoke-virtual {p1, v9}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move v4, v9

    goto :goto_2

    .line 17
    :cond_a
    invoke-virtual {p1, v10}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isChannelWidthSupported(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move v4, v10

    .line 18
    :cond_b
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->mVerboseLoggingEnabled:Z

    if-eqz v0, :cond_c

    .line 19
    const-string v0, "AP Nss: "

    .line 20
    const-string v2, ", Device Nss: "

    .line 21
    const-string v9, ", freq: "

    .line 22
    invoke-static {v0, v2, v3, v6, v9}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move/from16 v0, p8

    move/from16 v2, p9

    .line 26
    invoke-direct {p0, v7, v0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->getValidChannelUtilization(IIZ)I

    move-result v6

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v4

    move v5, v8

    move/from16 v4, p4

    move-object/from16 v8, p10

    .line 27
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII[B)I

    move-result p0

    return p0
.end method

.method public predictTxThroughput(IZIIIII)I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move/from16 v8, p6

    .line 3
    .line 4
    move/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v8, v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->getValidChannelUtilization(IIZ)I

    .line 7
    .line 8
    .line 9
    move-result v7

    .line 10
    const/4 v9, 0x0

    .line 11
    move-object v1, p0

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move v6, p4

    .line 16
    move v5, p5

    .line 17
    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughputInternal(IZIIIII[B)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
