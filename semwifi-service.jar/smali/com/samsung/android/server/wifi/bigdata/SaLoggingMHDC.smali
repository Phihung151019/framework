.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DEM_MHDC_ANT_MODE:Ljava/lang/String; = "mhs_ant_mode"

.field private static final DEM_MHDC_BW:Ljava/lang/String; = "mhs_bandwidth"

.field private static final DEM_MHDC_CONNECT_FAIL_REASON:Ljava/lang/String; = "mhs_connect_fail_srsn"

.field private static final DEM_MHDC_DATA_RATE:Ljava/lang/String; = "mhs_data_rate"

.field private static final DEM_MHDC_DISCONNECT:Ljava/lang/String; = "mhs_disconnect"

.field private static final DEM_MHDC_DISCONNECT_REASON:Ljava/lang/String; = "mhs_disconnect_wrsn"

.field private static final DEM_MHDC_MODE:Ljava/lang/String; = "mhs_mode"

.field private static final DEM_MHDC_MU_MIMO:Ljava/lang/String; = "mhs_mu_mimo"

.field private static final DEM_MHDC_REMOTE_DEVICE_OUI:Ljava/lang/String; = "mhs_remote_device_oui"

.field private static final DEM_MHDC_RSSI:Ljava/lang/String; = "mhs_rssi"

.field private static final KEY_MHDC_ANT_MODE:Ljava/lang/String; = "mh_antmode"

.field private static final KEY_MHDC_BW:Ljava/lang/String; = "mh_bw"

.field private static final KEY_MHDC_DATA_RATE:Ljava/lang/String; = "mh_datarate"

.field private static final KEY_MHDC_DIS:Ljava/lang/String; = "mh_dis"

.field private static final KEY_MHDC_MODE:Ljava/lang/String; = "mh_mode"

.field private static final KEY_MHDC_MU_MIMO:Ljava/lang/String; = "mh_mumimo"

.field private static final KEY_MHDC_OUI:Ljava/lang/String; = "mh_oui"

.field private static final KEY_MHDC_RSSI:Ljava/lang/String; = "mh_rssi"

.field private static final KEY_MHDC_SAM_RSN:Ljava/lang/String; = "mh_srsn"

.field private static final KEY_MHDC_WFA_RSN:Ljava/lang/String; = "mh_wrsn"

.field private static final MHDC:[[Ljava/lang/String;

.field private static final MHDC_SALOGGING:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SaLoggingMHDC"

.field private static final mLogMessages:Z = true


# direct methods
.method public static synthetic $r8$lambda$GqJYO3i6tH0arIbXkHhmAY3v1IE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->lambda$sendEvent$0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "mh_oui"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "mh_dis"

    .line 10
    .line 11
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const-string v0, "mh_srsn"

    .line 16
    .line 17
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v0, "mh_wrsn"

    .line 22
    .line 23
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const-string v0, "mh_bw"

    .line 28
    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v0, "mh_rssi"

    .line 34
    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    const-string v0, "mh_datarate"

    .line 40
    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v0, "mh_mode"

    .line 46
    .line 47
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    const-string v0, "mh_antmode"

    .line 52
    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    const-string v0, "mh_mumimo"

    .line 58
    .line 59
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    filled-new-array/range {v2 .. v11}, [[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC:[[Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "mhs_remote_device_oui"

    .line 70
    .line 71
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    const-string v0, "mhs_disconnect"

    .line 76
    .line 77
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v0, "mhs_disconnect_wrsn"

    .line 82
    .line 83
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    const-string v0, "mhs_connect_fail_srsn"

    .line 88
    .line 89
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v0, "mhs_bandwidth"

    .line 94
    .line 95
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const-string v0, "mhs_rssi"

    .line 100
    .line 101
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    const-string v0, "mhs_data_rate"

    .line 106
    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    const-string v0, "mhs_mode"

    .line 112
    .line 113
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v9

    .line 117
    const-string v0, "mhs_ant_mode"

    .line 118
    .line 119
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    const-string v0, "mhs_mu_mimo"

    .line 124
    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    filled-new-array/range {v2 .. v11}, [[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 134
    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$sendEvent$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "sendEvent: "

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {v0, p0, v1, p1}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "SaLoggingMHDC"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;)V
    .locals 14

    .line 1
    if-eqz p1, :cond_10

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    const-string v0, "\\s+"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "SaLoggingMHDC"

    .line 20
    .line 21
    if-eqz p1, :cond_f

    .line 22
    .line 23
    array-length v1, p1

    .line 24
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC:[[Ljava/lang/String;

    .line 25
    .line 26
    array-length v3, v2

    .line 27
    if-eq v1, v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v3, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    array-length v4, v2

    .line 42
    const/4 v5, 0x0

    .line 43
    move v6, v5

    .line 44
    move v7, v6

    .line 45
    :goto_0
    if-ge v6, v4, :cond_e

    .line 46
    .line 47
    aget-object v8, v2, v6

    .line 48
    .line 49
    aget-object v9, v8, v5

    .line 50
    .line 51
    const-string v10, "mh_dis"

    .line 52
    .line 53
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    const/4 v10, 0x2

    .line 58
    const-string v11, "unspecific"

    .line 59
    .line 60
    const/4 v12, 0x1

    .line 61
    if-ne v9, v12, :cond_5

    .line 62
    .line 63
    aget-object v8, p1, v7

    .line 64
    .line 65
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_4

    .line 74
    .line 75
    if-eq v8, v12, :cond_3

    .line 76
    .line 77
    if-eq v8, v10, :cond_2

    .line 78
    .line 79
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 80
    .line 81
    aget-object v8, v8, v7

    .line 82
    .line 83
    aget-object v8, v8, v5

    .line 84
    .line 85
    invoke-virtual {v3, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :cond_2
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 91
    .line 92
    aget-object v8, v8, v7

    .line 93
    .line 94
    aget-object v8, v8, v5

    .line 95
    .line 96
    const-string v9, "client"

    .line 97
    .line 98
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_3
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 104
    .line 105
    aget-object v8, v8, v7

    .line 106
    .line 107
    aget-object v8, v8, v5

    .line 108
    .line 109
    const-string v9, "ap"

    .line 110
    .line 111
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :cond_4
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 117
    .line 118
    aget-object v8, v8, v7

    .line 119
    .line 120
    aget-object v8, v8, v5

    .line 121
    .line 122
    invoke-virtual {v3, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :cond_5
    const-string v9, "mh_srsn"

    .line 128
    .line 129
    aget-object v13, v8, v5

    .line 130
    .line 131
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    if-ne v9, v12, :cond_b

    .line 136
    .line 137
    aget-object v8, p1, v7

    .line 138
    .line 139
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_a

    .line 148
    .line 149
    if-eq v8, v12, :cond_9

    .line 150
    .line 151
    if-eq v8, v10, :cond_8

    .line 152
    .line 153
    const/4 v9, 0x3

    .line 154
    if-eq v8, v9, :cond_7

    .line 155
    .line 156
    const/4 v9, 0x4

    .line 157
    if-eq v8, v9, :cond_6

    .line 158
    .line 159
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 160
    .line 161
    aget-object v8, v8, v7

    .line 162
    .line 163
    aget-object v8, v8, v5

    .line 164
    .line 165
    invoke-virtual {v3, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto/16 :goto_1

    .line 169
    .line 170
    :cond_6
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 171
    .line 172
    aget-object v8, v8, v7

    .line 173
    .line 174
    aget-object v8, v8, v5

    .line 175
    .line 176
    const-string v9, "removed from allowed device list"

    .line 177
    .line 178
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_7
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 183
    .line 184
    aget-object v8, v8, v7

    .line 185
    .line 186
    aget-object v8, v8, v5

    .line 187
    .line 188
    const-string v9, "not allowed device"

    .line 189
    .line 190
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_8
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 195
    .line 196
    aget-object v8, v8, v7

    .line 197
    .line 198
    aget-object v8, v8, v5

    .line 199
    .line 200
    const-string v9, "wrong password"

    .line 201
    .line 202
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_9
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 207
    .line 208
    aget-object v8, v8, v7

    .line 209
    .line 210
    aget-object v8, v8, v5

    .line 211
    .line 212
    const-string v9, "assigning ip failed"

    .line 213
    .line 214
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_a
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 219
    .line 220
    aget-object v8, v8, v7

    .line 221
    .line 222
    aget-object v8, v8, v5

    .line 223
    .line 224
    invoke-virtual {v3, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_b
    const-string v9, "mh_wrsn"

    .line 229
    .line 230
    aget-object v10, v8, v5

    .line 231
    .line 232
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_c

    .line 237
    .line 238
    sget-object v8, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC;->MHDC_SALOGGING:[[Ljava/lang/String;

    .line 239
    .line 240
    aget-object v8, v8, v7

    .line 241
    .line 242
    aget-object v8, v8, v5

    .line 243
    .line 244
    aget-object v9, p1, v7

    .line 245
    .line 246
    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :cond_c
    const-string v9, "mh_datarate"

    .line 251
    .line 252
    aget-object v8, v8, v5

    .line 253
    .line 254
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v8

    .line 258
    if-eqz v8, :cond_d

    .line 259
    .line 260
    aget-object v8, p1, v7

    .line 261
    .line 262
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    invoke-virtual {v1, v8}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 267
    .line 268
    .line 269
    new-instance v8, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    const-string v9, "sendEvent: Builder_value "

    .line 272
    .line 273
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    aget-object v9, p1, v7

    .line 277
    .line 278
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v9

    .line 282
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    :cond_d
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 293
    .line 294
    add-int/lit8 v6, v6, 0x1

    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :cond_e
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHDC$$ExternalSyntheticLambda0;

    .line 299
    .line 300
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 307
    .line 308
    .line 309
    const-string p1, "mhs_disconnect"

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :cond_f
    :goto_2
    const-string p0, "can\'t parse bigdata extra"

    .line 320
    .line 321
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    :cond_10
    :goto_3
    return-void
.end method
