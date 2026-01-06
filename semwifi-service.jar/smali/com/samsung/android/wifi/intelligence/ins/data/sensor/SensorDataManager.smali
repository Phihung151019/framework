.class public final Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field private final magneticSensorEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private outageTriggered:Z

.field private final pressureSensorEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final sensorDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->outageTriggered:Z

    .line 27
    .line 28
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private syncMappedBuffers(Z)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-ge v1, v3, :cond_3

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-ge v2, v3, :cond_3

    .line 19
    .line 20
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;

    .line 35
    .line 36
    iget-wide v5, v3, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->timestamp:J

    .line 37
    .line 38
    iget-wide v7, v4, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->timestamp:J

    .line 39
    .line 40
    sub-long/2addr v5, v7

    .line 41
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    const-wide/32 v7, 0xbebc200

    .line 46
    .line 47
    .line 48
    cmp-long v5, v5, v7

    .line 49
    .line 50
    iget-wide v6, v3, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->timestamp:J

    .line 51
    .line 52
    if-gez v5, :cond_1

    .line 53
    .line 54
    new-instance v5, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;

    .line 55
    .line 56
    invoke-direct {v5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v3, v3, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->values:[F

    .line 60
    .line 61
    aget v8, v3, v0

    .line 62
    .line 63
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {v5, v8}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->setMagneticX(Ljava/lang/Float;)V

    .line 68
    .line 69
    .line 70
    const/4 v8, 0x1

    .line 71
    aget v9, v3, v8

    .line 72
    .line 73
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual {v5, v9}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->setMagneticY(Ljava/lang/Float;)V

    .line 78
    .line 79
    .line 80
    const/4 v9, 0x2

    .line 81
    aget v3, v3, v9

    .line 82
    .line 83
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v5, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->setMagneticZ(Ljava/lang/Float;)V

    .line 88
    .line 89
    .line 90
    iget-object v3, v4, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->values:[F

    .line 91
    .line 92
    aget v3, v3, v0

    .line 93
    .line 94
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v5, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->setPressure(Ljava/lang/Float;)V

    .line 99
    .line 100
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 106
    .line 107
    .line 108
    move-result-wide v9

    .line 109
    sub-long v9, v6, v9

    .line 110
    .line 111
    const-wide/32 v11, 0xf4240

    .line 112
    .line 113
    .line 114
    div-long/2addr v9, v11

    .line 115
    add-long/2addr v9, v3

    .line 116
    sget-object v3, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 117
    .line 118
    new-instance v4, Ljava/util/Date;

    .line 119
    .line 120
    invoke-direct {v4, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v5, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->setTimestamp(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v5, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->setNanos(Ljava/lang/Long;)V

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    sub-int/2addr v4, v8

    .line 149
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;

    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->getNanos()Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 160
    .line 161
    .line 162
    move-result-wide v3

    .line 163
    iget-object v5, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    check-cast v5, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;

    .line 170
    .line 171
    invoke-virtual {v5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->getNanos()Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 176
    .line 177
    .line 178
    move-result-wide v5

    .line 179
    sub-long/2addr v3, v5

    .line 180
    const-wide v5, 0x1176592e00L

    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    cmp-long v3, v3, v5

    .line 186
    .line 187
    if-lez v3, :cond_0

    .line 188
    .line 189
    iget-boolean v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->outageTriggered:Z

    .line 190
    .line 191
    if-nez v3, :cond_0

    .line 192
    .line 193
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x2

    .line 200
    .line 201
    add-int/lit8 v2, v2, 0x2

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_1
    iget-wide v3, v4, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;->timestamp:J

    .line 206
    .line 207
    cmp-long v3, v6, v3

    .line 208
    .line 209
    if-gez v3, :cond_2

    .line 210
    .line 211
    add-int/lit8 v1, v1, 0x1

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    iget-object v4, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 226
    .line 227
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz p1, :cond_4

    .line 244
    .line 245
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 261
    .line 262
    .line 263
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v0, "syncMappedBuffers: "

    .line 266
    .line 267
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    const-string v0, ", "

    .line 280
    .line 281
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 285
    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 297
    .line 298
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result p0

    .line 302
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p0

    .line 309
    const-string p1, "SensorCollector"

    .line 310
    .line 311
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    return-void
.end method


# virtual methods
.method public final addMagneticEvents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 v0, 0x1f4

    .line 13
    .line 14
    if-le p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->magneticSensorEvents:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final addPressureEvents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/sensor/InsSensorEvent;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 v0, 0x1f4

    .line 13
    .line 14
    if-le p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->pressureSensorEvents:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->removeFirst()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final getLatestSensorData(Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/wifi/intelligence/ins/data/PathData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    invoke-direct {p0, p2}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->syncMappedBuffers(Z)V

    .line 5
    .line 6
    .line 7
    new-instance p2, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->sensorDataList:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 17
    .line 18
    .line 19
    new-instance p0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    check-cast v3, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;

    .line 38
    .line 39
    new-instance v4, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->getTimestamp()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->getPressure()Ljava/lang/Float;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    sget-object v7, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->DEFAULT:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 54
    .line 55
    move-object v8, v7

    .line 56
    invoke-virtual {v8}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-virtual {v8}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->getMagneticX()Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->getMagneticY()Ljava/lang/Float;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorData;->getMagneticZ()Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    .line 85
    .line 86
    .line 87
    move-result v11

    .line 88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    int-to-float v12, v3

    .line 93
    invoke-direct/range {v4 .. v12}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;-><init>(Ljava/lang/String;FIIFFFF)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    move-object p0, v0

    .line 102
    goto :goto_1

    .line 103
    :cond_0
    monitor-exit v1

    .line 104
    return-object p0

    .line 105
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
.end method

.method public final setOutageTriggered(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->outageTriggered:Z

    .line 2
    .line 3
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->outageTriggered:Z

    .line 3
    .line 4
    return-void
.end method
