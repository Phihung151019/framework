.class Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;
.super Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mStrictAllocTimer:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected periodicFunction()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->updateCalibState()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mLastTime:J

    .line 11
    .line 12
    sub-long v3, v1, v3

    .line 13
    .line 14
    const-wide/16 v5, 0x8

    .line 15
    .line 16
    div-long/2addr v3, v5

    .line 17
    const-wide/16 v5, 0x0

    .line 18
    .line 19
    cmp-long v5, v3, v5

    .line 20
    .line 21
    if-gtz v5, :cond_0

    .line 22
    .line 23
    const-wide/16 v3, 0x7d

    .line 24
    .line 25
    :cond_0
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mLastTime:J

    .line 26
    .line 27
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedTotal(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 34
    .line 35
    invoke-static {v5, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mcalculateSpeeds(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;J)V

    .line 36
    .line 37
    .line 38
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 39
    .line 40
    invoke-static {v5, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mcalculateSpeeds(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;J)V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 44
    .line 45
    sget-object v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL_START:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 46
    .line 47
    if-ne v3, v4, :cond_2

    .line 48
    .line 49
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 50
    .line 51
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 52
    .line 53
    sub-int/2addr v3, v4

    .line 54
    const/16 v4, 0xa

    .line 55
    .line 56
    if-lt v3, v4, :cond_1

    .line 57
    .line 58
    const/16 v3, 0x5a

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/16 v3, 0xb4

    .line 62
    .line 63
    :goto_0
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v4, "Set mCalibrationTimer="

    .line 68
    .line 69
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibrationTimer:I

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v4, " based on mMaxRssi="

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v4, " mMinRssi="

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const/4 v3, 0x3

    .line 105
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRecalTimer:I

    .line 106
    .line 107
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPrevRssi:I

    .line 108
    .line 109
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMaxRssi:I

    .line 110
    .line 111
    iput v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mMinRssi:I

    .line 112
    .line 113
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->checkRssiFluctuation()V

    .line 114
    .line 115
    .line 116
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mCalibState:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 117
    .line 118
    sget-object v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;->RECAL:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$CalibStates;

    .line 119
    .line 120
    const/4 v5, 0x1

    .line 121
    if-ne v3, v4, :cond_3

    .line 122
    .line 123
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 124
    .line 125
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedTotal(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    sub-long/2addr v3, v1

    .line 130
    const-wide/16 v1, 0x7d0

    .line 131
    .line 132
    cmp-long v1, v3, v1

    .line 133
    .line 134
    if-lez v1, :cond_3

    .line 135
    .line 136
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRecalTimer:I

    .line 137
    .line 138
    add-int/2addr v1, v5

    .line 139
    const/4 v2, 0x5

    .line 140
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRecalTimer:I

    .line 145
    .line 146
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 147
    .line 148
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 153
    .line 154
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 159
    .line 160
    .line 161
    move-result-wide v1

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->updateStats(J)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->estimateBottleneck()V

    .line 166
    .line 167
    .line 168
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 169
    .line 170
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 171
    .line 172
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    int-to-long v3, v3

    .line 177
    const-wide/16 v6, 0x3e8

    .line 178
    .line 179
    mul-long/2addr v3, v6

    .line 180
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 181
    .line 182
    .line 183
    move-result-wide v1

    .line 184
    const-wide/16 v3, 0x1

    .line 185
    .line 186
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 187
    .line 188
    .line 189
    move-result-wide v1

    .line 190
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUpdatedTotalEstimate:J

    .line 191
    .line 192
    iget v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 193
    .line 194
    const-wide v6, 0x3fe5c28f5c28f5c3L    # 0.68

    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    long-to-double v1, v1

    .line 200
    mul-double/2addr v1, v6

    .line 201
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    div-double/2addr v1, v6

    .line 207
    const-wide v6, 0x3ff3333333333333L    # 1.2

    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    sub-double/2addr v1, v6

    .line 213
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 214
    .line 215
    .line 216
    move-result-wide v1

    .line 217
    double-to-int v1, v1

    .line 218
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 219
    .line 220
    const/16 v2, 0xf

    .line 221
    .line 222
    const/4 v4, 0x0

    .line 223
    if-le v1, v2, :cond_4

    .line 224
    .line 225
    const/4 v2, 0x2

    .line 226
    goto :goto_1

    .line 227
    :cond_4
    move v2, v4

    .line 228
    :goto_1
    add-int/2addr v1, v2

    .line 229
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 230
    .line 231
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->getActiveNrt()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_5

    .line 242
    .line 243
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->updateRules(I)V

    .line 244
    .line 245
    .line 246
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->deleteRuleCondition()V

    .line 247
    .line 248
    .line 249
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 250
    .line 251
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 256
    .line 257
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 258
    .line 259
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->periodicLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;I)V

    .line 260
    .line 261
    .line 262
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 263
    .line 264
    add-int/2addr v1, v5

    .line 265
    iput v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 266
    .line 267
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 268
    .line 269
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 270
    .line 271
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 272
    .line 273
    .line 274
    move-result-wide v1

    .line 275
    long-to-int v6, v1

    .line 276
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 277
    .line 278
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedRt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 279
    .line 280
    .line 281
    move-result-wide v1

    .line 282
    long-to-int v7, v1

    .line 283
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 284
    .line 285
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 286
    .line 287
    .line 288
    move-result-wide v1

    .line 289
    long-to-int v8, v1

    .line 290
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 291
    .line 292
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedNrt(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v1

    .line 296
    long-to-int v9, v1

    .line 297
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 298
    .line 299
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    mul-int/lit16 v10, v1, 0x3e8

    .line 304
    .line 305
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 306
    .line 307
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    mul-int/lit16 v11, v1, 0x3e8

    .line 312
    .line 313
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 314
    .line 315
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 316
    .line 317
    .line 318
    move-result v12

    .line 319
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 320
    .line 321
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 322
    .line 323
    .line 324
    move-result v13

    .line 325
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 326
    .line 327
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-eqz v1, :cond_6

    .line 332
    .line 333
    iget v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 334
    .line 335
    mul-int/lit16 v4, v1, 0x3e8

    .line 336
    .line 337
    :cond_6
    move v14, v4

    .line 338
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 339
    .line 340
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$fgetmSpeedStreaming(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)J

    .line 341
    .line 342
    .line 343
    move-result-wide v1

    .line 344
    long-to-int v1, v1

    .line 345
    const/16 v15, 0x32

    .line 346
    .line 347
    move/from16 v16, v1

    .line 348
    .line 349
    invoke-virtual/range {v5 .. v16}, Lcom/samsung/android/server/wifi/SemApeService;->updateLiveSession(IIIIIIIIIII)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mRxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 353
    .line 354
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mstorePrevBytes(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 355
    .line 356
    .line 357
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTxMetrics:Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;

    .line 358
    .line 359
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;->-$$Nest$mstorePrevBytes(Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor$SpeedMetrics;)V

    .line 360
    .line 361
    .line 362
    return-void
.end method
