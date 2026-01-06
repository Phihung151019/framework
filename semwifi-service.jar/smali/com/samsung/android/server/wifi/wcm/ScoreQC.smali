.class public Lcom/samsung/android/server/wifi/wcm/ScoreQC;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.ScoreQC"


# instance fields
.field private mScoreQCEleGoodScoreCnt:I

.field private mScoreQcGoodScoreCnt:I

.field private mScoreQcGoodScoreTotal:I

.field private mScoreQcInProgress:Z

.field private mScoreQcIntervalCnt:I

.field private mScoreQcLastGoodScore:I

.field private mScoreQcLastPoorScore:I

.field private mScoreQcMode:I

.field private mScoreQcPrevAvg:I

.field private mScoreQcPrevScore:[I

.field private mScoreQcPrevTxBad:J

.field private mScoreQcPrevTxBadGoodRatio:J

.field private mScoreQcPrevTxSuccess:J

.field private mScoreQcSkipModeEnabled:Z

.field private mScoreQcSkipPolling:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    .line 13
    .line 14
    const-wide/16 v1, 0x0

    .line 15
    .line 16
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 17
    .line 18
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 21
    .line 22
    const/16 v1, 0x3e8

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    .line 25
    .line 26
    const/16 v1, 0x64

    .line 27
    .line 28
    iput v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 31
    .line 32
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipModeEnabled:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    .line 41
    .line 42
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    .line 43
    .line 44
    return-void
.end method

.method private scoreQcCheck(IIIZ)I
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 6
    .line 7
    const/4 v5, 0x1

    .line 8
    const-string v6, "WifiConnectivityMonitor.ScoreQC"

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, -0x1

    .line 12
    const/4 v9, 0x2

    .line 13
    if-lt v2, v9, :cond_11

    .line 14
    .line 15
    move/from16 v10, p3

    .line 16
    .line 17
    int-to-long v10, v10

    .line 18
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 19
    .line 20
    sub-long v12, v10, v12

    .line 21
    .line 22
    move/from16 v14, p2

    .line 23
    .line 24
    int-to-long v14, v14

    .line 25
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 26
    .line 27
    sub-long v3, v14, v3

    .line 28
    .line 29
    iput-wide v10, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 30
    .line 31
    iput-wide v14, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 32
    .line 33
    const/4 v10, 0x4

    .line 34
    const/16 v11, 0x32

    .line 35
    .line 36
    const-wide/16 v14, 0x0

    .line 37
    .line 38
    if-ne v2, v10, :cond_2

    .line 39
    .line 40
    if-eqz p4, :cond_0

    .line 41
    .line 42
    const-string v2, "scoreQcCheck recovery condition check from Ele"

    .line 43
    .line 44
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    if-le v1, v11, :cond_1

    .line 48
    .line 49
    cmp-long v1, v12, v14

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    cmp-long v1, v3, v14

    .line 54
    .line 55
    if-lez v1, :cond_1

    .line 56
    .line 57
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    .line 58
    .line 59
    add-int/2addr v1, v5

    .line 60
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    .line 61
    .line 62
    if-lt v1, v9, :cond_0

    .line 63
    .line 64
    const v0, 0x210de

    .line 65
    .line 66
    .line 67
    return v0

    .line 68
    :cond_0
    move/from16 v17, v8

    .line 69
    .line 70
    goto/16 :goto_9

    .line 71
    .line 72
    :cond_1
    iput v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    .line 73
    .line 74
    return v8

    .line 75
    :cond_2
    if-gt v1, v11, :cond_3

    .line 76
    .line 77
    const-string v2, "scoreQcCheck - less than 50 : s2Score : "

    .line 78
    .line 79
    invoke-static {v2, v1, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    .line 83
    .line 84
    if-ge v1, v2, :cond_3

    .line 85
    .line 86
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    .line 87
    .line 88
    :cond_3
    move v10, v7

    .line 89
    move v11, v10

    .line 90
    :goto_0
    const/4 v2, 0x3

    .line 91
    if-ge v10, v2, :cond_5

    .line 92
    .line 93
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    .line 94
    .line 95
    aget v2, v2, v10

    .line 96
    .line 97
    if-eqz v2, :cond_4

    .line 98
    .line 99
    add-int/lit8 v11, v11, 0x1

    .line 100
    .line 101
    :cond_4
    add-int/lit8 v10, v10, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    .line 105
    .line 106
    aget v10, v2, v7

    .line 107
    .line 108
    aget v17, v2, v5

    .line 109
    .line 110
    add-int v10, v10, v17

    .line 111
    .line 112
    aget v2, v2, v9

    .line 113
    .line 114
    add-int/2addr v10, v2

    .line 115
    if-lez v11, :cond_6

    .line 116
    .line 117
    div-int v2, v10, v11

    .line 118
    .line 119
    iput v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    .line 123
    .line 124
    :goto_1
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 125
    .line 126
    move/from16 v17, v8

    .line 127
    .line 128
    const/4 v8, 0x3

    .line 129
    if-ne v2, v8, :cond_8

    .line 130
    .line 131
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    .line 132
    .line 133
    if-le v2, v1, :cond_8

    .line 134
    .line 135
    iget-boolean v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 136
    .line 137
    if-eqz v2, :cond_7

    .line 138
    .line 139
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 140
    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_7
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 144
    .line 145
    const-string v2, "scoreQcCheck - Score QC by score decrease"

    .line 146
    .line 147
    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    const v3, 0x210dc

    .line 151
    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_8
    const-wide/16 v18, 0x5

    .line 156
    .line 157
    cmp-long v2, v12, v18

    .line 158
    .line 159
    if-lez v2, :cond_f

    .line 160
    .line 161
    cmp-long v2, v3, v14

    .line 162
    .line 163
    if-lez v2, :cond_9

    .line 164
    .line 165
    long-to-float v2, v12

    .line 166
    const/high16 v8, 0x42c80000    # 100.0f

    .line 167
    .line 168
    mul-float/2addr v2, v8

    .line 169
    long-to-float v3, v3

    .line 170
    div-float/2addr v2, v3

    .line 171
    float-to-int v2, v2

    .line 172
    int-to-long v2, v2

    .line 173
    goto :goto_2

    .line 174
    :cond_9
    const-wide/16 v2, 0x64

    .line 175
    .line 176
    add-long/2addr v2, v12

    .line 177
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    const-string v8, "scoreQcCheck -  currentTxBadRatio:"

    .line 180
    .line 181
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    const-wide/16 v12, 0xf

    .line 195
    .line 196
    cmp-long v4, v2, v12

    .line 197
    .line 198
    if-lez v4, :cond_f

    .line 199
    .line 200
    iget v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 201
    .line 202
    if-ne v4, v9, :cond_b

    .line 203
    .line 204
    mul-int v4, v1, v11

    .line 205
    .line 206
    if-ge v4, v10, :cond_d

    .line 207
    .line 208
    const-string v4, "SCORE_QC_STATE_POOR_CHECK"

    .line 209
    .line 210
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    const/4 v8, 0x3

    .line 214
    iput v8, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 215
    .line 216
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 217
    .line 218
    if-eqz v4, :cond_a

    .line 219
    .line 220
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :cond_a
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 224
    .line 225
    const-string v4, "scoreQcCheck - Score QC by averageScore decrease"

    .line 226
    .line 227
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :goto_3
    const v16, 0x210dc

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v8, "SCORE_QC_STATE_POOR_CHECK:  mScoreQcPrevTxBadGoodRatio:"

    .line 237
    .line 238
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 242
    .line 243
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 254
    .line 255
    cmp-long v4, v10, v14

    .line 256
    .line 257
    if-eqz v4, :cond_d

    .line 258
    .line 259
    cmp-long v4, v2, v10

    .line 260
    .line 261
    if-lez v4, :cond_d

    .line 262
    .line 263
    iget-boolean v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 264
    .line 265
    if-eqz v4, :cond_c

    .line 266
    .line 267
    iput-boolean v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 268
    .line 269
    goto :goto_4

    .line 270
    :cond_c
    const-string v4, "scoreQcCheck - Score QC by txBadRatio increase"

    .line 271
    .line 272
    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    iput-boolean v5, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_d
    :goto_4
    move/from16 v16, v17

    .line 279
    .line 280
    :goto_5
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 281
    .line 282
    cmp-long v4, v10, v2

    .line 283
    .line 284
    if-gez v4, :cond_e

    .line 285
    .line 286
    iput-wide v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 287
    .line 288
    :cond_e
    move/from16 v3, v16

    .line 289
    .line 290
    goto :goto_7

    .line 291
    :cond_f
    :goto_6
    move/from16 v3, v17

    .line 292
    .line 293
    :goto_7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    .line 294
    .line 295
    aget v4, v2, v5

    .line 296
    .line 297
    aput v4, v2, v7

    .line 298
    .line 299
    aget v4, v2, v9

    .line 300
    .line 301
    aput v4, v2, v5

    .line 302
    .line 303
    iget-boolean v5, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 304
    .line 305
    if-nez v5, :cond_10

    .line 306
    .line 307
    iget v5, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    .line 308
    .line 309
    if-le v5, v4, :cond_10

    .line 310
    .line 311
    iput v4, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    .line 312
    .line 313
    :cond_10
    aput v1, v2, v9

    .line 314
    .line 315
    return v3

    .line 316
    :cond_11
    move/from16 v17, v8

    .line 317
    .line 318
    iget v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    .line 319
    .line 320
    add-int/2addr v2, v5

    .line 321
    iput v2, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    .line 322
    .line 323
    iget v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    .line 324
    .line 325
    add-int/2addr v3, v1

    .line 326
    iput v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    .line 327
    .line 328
    const/4 v8, 0x3

    .line 329
    if-lt v2, v8, :cond_13

    .line 330
    .line 331
    div-int/2addr v3, v8

    .line 332
    const-string v1, "scoreQcCheck - newAverage: "

    .line 333
    .line 334
    invoke-static {v1, v3, v6}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 335
    .line 336
    .line 337
    iget v1, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    .line 338
    .line 339
    if-le v3, v1, :cond_12

    .line 340
    .line 341
    const-string v1, "scoreQcCheck - Score Quality Check by score increase"

    .line 342
    .line 343
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    iput v3, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    .line 347
    .line 348
    const v3, 0x210dc

    .line 349
    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_12
    move/from16 v3, v17

    .line 353
    .line 354
    :goto_8
    iput v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreTotal:I

    .line 355
    .line 356
    iput v7, v0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcGoodScoreCnt:I

    .line 357
    .line 358
    return v3

    .line 359
    :cond_13
    :goto_9
    return v17
.end method


# virtual methods
.method public getLastTxGoodRatio()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public scoreQCInit()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 3
    .line 4
    return-void
.end method

.method public scoreQCStopCheck()V
    .locals 2

    .line 1
    const-string v0, "WifiConnectivityMonitor.ScoreQC"

    .line 2
    .line 3
    const-string v1, "SCORE_QC_STATE_NONE"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 10
    .line 11
    return-void
.end method

.method public scoreQcIsRequired(Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;IZ)I
    .locals 4

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipModeEnabled:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipPolling:Z

    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    .line 22
    .line 23
    add-int/lit8 v3, v0, 0x1

    .line 24
    .line 25
    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget v0, p1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    .line 30
    .line 31
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    .line 32
    .line 33
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcCheck(IIIZ)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    :cond_2
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    .line 38
    .line 39
    const/4 p2, 0x3

    .line 40
    if-lt p1, p2, :cond_3

    .line 41
    .line 42
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    .line 43
    .line 44
    :cond_3
    return v1
.end method

.method public scoreQcStartPoorLinkMonitor()V
    .locals 4

    .line 1
    const-string v0, "WifiConnectivityMonitor.ScoreQC"

    .line 2
    .line 3
    const-string v1, "SCORE_QC_STATE_POOR_MONITOR"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevScore:[I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    aput v2, v1, v2

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    aput v2, v1, v3

    .line 18
    .line 19
    aput v2, v1, v0

    .line 20
    .line 21
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevAvg:I

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 30
    .line 31
    const/16 v0, 0x3e8

    .line 32
    .line 33
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastGoodScore:I

    .line 34
    .line 35
    const/16 v0, 0x64

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcLastPoorScore:I

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcInProgress:Z

    .line 40
    .line 41
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcIntervalCnt:I

    .line 42
    .line 43
    return-void
.end method

.method public scoreQcStartRecoveryScoreCheck()V
    .locals 2

    .line 1
    const-string v0, "WifiConnectivityMonitor.ScoreQC"

    .line 2
    .line 3
    const-string v1, "SCORE_QC_STATE_RECOVERY"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcMode:I

    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBad:J

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxSuccess:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcPrevTxBadGoodRatio:J

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQCEleGoodScoreCnt:I

    .line 21
    .line 22
    return-void
.end method

.method public skipScoreQC(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->mScoreQcSkipModeEnabled:Z

    .line 2
    .line 3
    return-void
.end method
