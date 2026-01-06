.class public Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DEM_MHS_PACKAGE:Ljava/lang/String; = "mhs_pkg"

.field private static final KEY_MH_APP:Ljava/lang/String; = "mh_onf"

.field private static final KEY_MH_STATE:Ljava/lang/String; = "mh_pkg"

.field private static final MHOF:[[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SaLoggingMHOF"

.field private static lastMHSOffTime:J = 0x0L

.field private static lastMHSOnTime:J = 0x0L

.field private static final mLogMessages:Z = true


# direct methods
.method public static synthetic $r8$lambda$xxUkah_06Pne8PczEjTWmefVsH4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lambda$sendEvent$0(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "mh_onf"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v2, "mh_pkg"

    .line 10
    .line 11
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v0, v1}, [[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->MHOF:[[Ljava/lang/String;

    .line 20
    .line 21
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
    const-string p1, "SaLoggingMHOF"

    .line 10
    .line 11
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static sendEvent(Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Long;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz v1, :cond_9

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_9

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    const-string v2, "\\s+"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "SaLoggingMHOF"

    .line 24
    .line 25
    if-eqz v1, :cond_8

    .line 26
    .line 27
    array-length v3, v1

    .line 28
    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->MHOF:[[Ljava/lang/String;

    .line 29
    .line 30
    array-length v5, v4

    .line 31
    if-eq v3, v5, :cond_1

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    new-instance v3, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 36
    .line 37
    invoke-direct {v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance v5, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 47
    .line 48
    .line 49
    array-length v7, v4

    .line 50
    const-string v8, ""

    .line 51
    .line 52
    move v9, v6

    .line 53
    move v10, v9

    .line 54
    :goto_0
    if-ge v9, v7, :cond_7

    .line 55
    .line 56
    aget-object v11, v4, v9

    .line 57
    .line 58
    aget-object v12, v11, v6

    .line 59
    .line 60
    const-string v13, "mh_onf"

    .line 61
    .line 62
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    const/4 v14, 0x1

    .line 67
    if-ne v12, v14, :cond_3

    .line 68
    .line 69
    aget-object v12, v1, v10

    .line 70
    .line 71
    const-string v15, "1"

    .line 72
    .line 73
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    if-ne v12, v14, :cond_3

    .line 78
    .line 79
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v11

    .line 83
    sput-wide v11, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lastMHSOnTime:J

    .line 84
    .line 85
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isActiveNetworkHasInternet(Landroid/content/Context;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->isActiveNetworkisCellular(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_2

    .line 96
    .line 97
    invoke-virtual {v3, v14}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 98
    .line 99
    .line 100
    :cond_2
    const-string v8, "mhs_on"

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    aget-object v12, v11, v6

    .line 104
    .line 105
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v12

    .line 109
    if-ne v12, v14, :cond_5

    .line 110
    .line 111
    aget-object v12, v1, v10

    .line 112
    .line 113
    const-string v13, "0"

    .line 114
    .line 115
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    if-ne v12, v14, :cond_5

    .line 120
    .line 121
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v11

    .line 125
    sput-wide v11, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lastMHSOffTime:J

    .line 126
    .line 127
    sget-wide v13, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lastMHSOnTime:J

    .line 128
    .line 129
    const-wide/16 v15, 0x0

    .line 130
    .line 131
    cmp-long v8, v13, v15

    .line 132
    .line 133
    if-lez v8, :cond_4

    .line 134
    .line 135
    cmp-long v8, v11, v15

    .line 136
    .line 137
    if-lez v8, :cond_4

    .line 138
    .line 139
    new-instance v8, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v11, "sendEvent: Builder_value"

    .line 142
    .line 143
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    sget-wide v11, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lastMHSOffTime:J

    .line 147
    .line 148
    sget-wide v13, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lastMHSOnTime:J

    .line 149
    .line 150
    sub-long/2addr v11, v13

    .line 151
    const-wide/32 v13, 0xea60

    .line 152
    .line 153
    .line 154
    div-long/2addr v11, v13

    .line 155
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 156
    .line 157
    .line 158
    move-result-wide v11

    .line 159
    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    sget-wide v11, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lastMHSOffTime:J

    .line 170
    .line 171
    sget-wide v15, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF;->lastMHSOnTime:J

    .line 172
    .line 173
    sub-long/2addr v11, v15

    .line 174
    div-long/2addr v11, v13

    .line 175
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 176
    .line 177
    .line 178
    move-result-wide v11

    .line 179
    invoke-virtual {v3, v11, v12}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(J)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 180
    .line 181
    .line 182
    :cond_4
    const-string v8, "mhs_off"

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_5
    const-string v12, "mh_pkg"

    .line 186
    .line 187
    aget-object v11, v11, v6

    .line 188
    .line 189
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    if-ne v11, v14, :cond_6

    .line 194
    .line 195
    const-string v11, "mhs_pkg"

    .line 196
    .line 197
    aget-object v12, v1, v10

    .line 198
    .line 199
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    :cond_6
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 203
    .line 204
    add-int/lit8 v9, v9, 0x1

    .line 205
    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_7
    new-instance v1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingMHOF$$ExternalSyntheticLambda0;

    .line 209
    .line 210
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 224
    .line 225
    .line 226
    return-void

    .line 227
    :cond_8
    :goto_2
    const-string v0, "can\'t parse bigdata extra"

    .line 228
    .line 229
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    :cond_9
    :goto_3
    return-void
.end method
