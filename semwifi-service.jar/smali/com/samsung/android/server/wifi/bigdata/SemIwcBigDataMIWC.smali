.class public Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;
.super Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final KEY_IWC_AP_OUI:Ljava/lang/String; = "IWC_OUI"

.field public static final KEY_IWC_CANDIDATE_LIST_COUNT:Ljava/lang/String; = "IWC_CLN"

.field public static final KEY_IWC_CORE_LIST_COUNT:Ljava/lang/String; = "IWC_RLN"

.field public static final KEY_IWC_DEFAULT_QAI:Ljava/lang/String; = "IWC_DQ"

.field public static final KEY_IWC_DQA:Ljava/lang/String; = "IWC_DQA"

.field public static final KEY_IWC_DQC:Ljava/lang/String; = "IWC_DQC"

.field public static final KEY_IWC_DQD:Ljava/lang/String; = "IWC_DQD"

.field public static final KEY_IWC_DQT:Ljava/lang/String; = "IWC_DQT"

.field public static final KEY_IWC_EVENT10_COUNT:Ljava/lang/String; = "IWC_E10"

.field public static final KEY_IWC_EVENT11_COUNT:Ljava/lang/String; = "IWC_E11"

.field public static final KEY_IWC_EVENT12_COUNT:Ljava/lang/String; = "IWC_E12"

.field public static final KEY_IWC_EVENT13_COUNT:Ljava/lang/String; = "IWC_E13"

.field public static final KEY_IWC_EVENT1_COUNT:Ljava/lang/String; = "IWC_E1"

.field public static final KEY_IWC_EVENT2_COUNT:Ljava/lang/String; = "IWC_E2"

.field public static final KEY_IWC_EVENT3_COUNT:Ljava/lang/String; = "IWC_E3"

.field public static final KEY_IWC_EVENT4_COUNT:Ljava/lang/String; = "IWC_E4"

.field public static final KEY_IWC_EVENT5_COUNT:Ljava/lang/String; = "IWC_E5"

.field public static final KEY_IWC_EVENT6_COUNT:Ljava/lang/String; = "IWC_E6"

.field public static final KEY_IWC_EVENT7_COUNT:Ljava/lang/String; = "IWC_E7"

.field public static final KEY_IWC_EVENT8_COUNT:Ljava/lang/String; = "IWC_E8"

.field public static final KEY_IWC_EVENT9_COUNT:Ljava/lang/String; = "IWC_E9"

.field public static final KEY_IWC_EVENT_LIST:Ljava/lang/String; = "IWC_EL"

.field public static final KEY_IWC_GET_CURRENT_STATE:Ljava/lang/String; = "IWC_CS"

.field public static final KEY_IWC_ID:Ljava/lang/String; = "IWC_ID"

.field public static final KEY_IWC_NEW_QAI:Ljava/lang/String; = "IWC_NQ"

.field public static final KEY_IWC_POORLINK_COUNT:Ljava/lang/String; = "IWC_PON"

.field public static final KEY_IWC_PREV_QAI:Ljava/lang/String; = "IWC_PQ"

.field public static final KEY_IWC_PROBATION_LIST_COUNT:Ljava/lang/String; = "IWC_PLN"

.field public static final KEY_IWC_QAI1_SS_QTABLE:Ljava/lang/String; = "IWC_SS1"

.field public static final KEY_IWC_QAI2_SS_QTABLE:Ljava/lang/String; = "IWC_SS2"

.field public static final KEY_IWC_QAI3_SS_QTABLE:Ljava/lang/String; = "IWC_SS3"

.field public static final KEY_IWC_QTABLE:Ljava/lang/String; = "IWC_QT"

.field public static final KEY_IWC_QTALBE_COUNT:Ljava/lang/String; = "IWC_QTN"

.field public static final KEY_IWC_SAD:Ljava/lang/String; = "IWC_SAD"

.field public static final KEY_IWC_SAV:Ljava/lang/String; = "IWC_SAV"

.field public static final KEY_IWC_SNS_TOGGLE_COUNT:Ljava/lang/String; = "IWC_STO"

.field public static final KEY_IWC_SNS_UI_STATE:Ljava/lang/String; = "IWC_SUI"

.field public static final KEY_IWC_SS_QTALBE_COUNT:Ljava/lang/String; = "IWC_SSN"

.field public static final KEY_IWC_SS_TIME:Ljava/lang/String; = "IWC_SST"

.field public static final KEY_IWC_TCL:Ljava/lang/String; = "IWC_TCL"

.field public static final KEY_IWC_TST:Ljava/lang/String; = "IWC_TST"

.field private static final MIWC:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 1
    const-string v0, "IWC_ID"

    .line 2
    .line 3
    const-string v1, "0"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v0, "IWC_OUI"

    .line 10
    .line 11
    const-string v3, ""

    .line 12
    .line 13
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v4, "IWC_CS"

    .line 18
    .line 19
    filled-new-array {v4, v3}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "IWC_PQ"

    .line 24
    .line 25
    filled-new-array {v5, v1}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string v6, "IWC_NQ"

    .line 30
    .line 31
    filled-new-array {v6, v1}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "IWC_EL"

    .line 36
    .line 37
    filled-new-array {v7, v3}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v8, "IWC_QT"

    .line 42
    .line 43
    filled-new-array {v8, v3}, [Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    const-string v9, "IWC_PON"

    .line 48
    .line 49
    filled-new-array {v9, v1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    const-string v10, "IWC_SUI"

    .line 54
    .line 55
    filled-new-array {v10, v1}, [Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    const-string v11, "IWC_STO"

    .line 60
    .line 61
    filled-new-array {v11, v1}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    const-string v12, "IWC_SS1"

    .line 66
    .line 67
    filled-new-array {v12, v1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v12

    .line 71
    const-string v13, "IWC_SS2"

    .line 72
    .line 73
    filled-new-array {v13, v1}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v13

    .line 77
    const-string v14, "IWC_SS3"

    .line 78
    .line 79
    filled-new-array {v14, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v14

    .line 83
    const-string v15, "IWC_DQ"

    .line 84
    .line 85
    filled-new-array {v15, v1}, [Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v15

    .line 89
    move-object/from16 v16, v0

    .line 90
    .line 91
    const-string v0, "IWC_SST"

    .line 92
    .line 93
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    move-object/from16 v17, v0

    .line 98
    .line 99
    const-string v0, "IWC_QTN"

    .line 100
    .line 101
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object/from16 v18, v0

    .line 106
    .line 107
    const-string v0, "IWC_SSN"

    .line 108
    .line 109
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    move-object/from16 v19, v0

    .line 114
    .line 115
    const-string v0, "IWC_CLN"

    .line 116
    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    move-object/from16 v20, v0

    .line 122
    .line 123
    const-string v0, "IWC_RLN"

    .line 124
    .line 125
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    move-object/from16 v21, v0

    .line 130
    .line 131
    const-string v0, "IWC_PLN"

    .line 132
    .line 133
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object/from16 v22, v0

    .line 138
    .line 139
    const-string v0, "IWC_E1"

    .line 140
    .line 141
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    move-object/from16 v23, v0

    .line 146
    .line 147
    const-string v0, "IWC_E2"

    .line 148
    .line 149
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    move-object/from16 v24, v0

    .line 154
    .line 155
    const-string v0, "IWC_E3"

    .line 156
    .line 157
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    move-object/from16 v25, v0

    .line 162
    .line 163
    const-string v0, "IWC_E4"

    .line 164
    .line 165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object/from16 v26, v0

    .line 170
    .line 171
    const-string v0, "IWC_E5"

    .line 172
    .line 173
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    move-object/from16 v27, v0

    .line 178
    .line 179
    const-string v0, "IWC_E6"

    .line 180
    .line 181
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    move-object/from16 v28, v0

    .line 186
    .line 187
    const-string v0, "IWC_E7"

    .line 188
    .line 189
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    move-object/from16 v29, v0

    .line 194
    .line 195
    const-string v0, "IWC_E8"

    .line 196
    .line 197
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    move-object/from16 v30, v0

    .line 202
    .line 203
    const-string v0, "IWC_E9"

    .line 204
    .line 205
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    move-object/from16 v31, v0

    .line 210
    .line 211
    const-string v0, "IWC_E10"

    .line 212
    .line 213
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    move-object/from16 v32, v0

    .line 218
    .line 219
    const-string v0, "IWC_E11"

    .line 220
    .line 221
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    move-object/from16 v33, v0

    .line 226
    .line 227
    const-string v0, "IWC_E12"

    .line 228
    .line 229
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    move-object/from16 v34, v0

    .line 234
    .line 235
    const-string v0, "IWC_E13"

    .line 236
    .line 237
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object/from16 v35, v0

    .line 242
    .line 243
    const-string v0, "IWC_TST"

    .line 244
    .line 245
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    move-object/from16 v36, v0

    .line 250
    .line 251
    const-string v0, "IWC_TCL"

    .line 252
    .line 253
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    move-object/from16 v37, v0

    .line 258
    .line 259
    const-string v0, "IWC_DQC"

    .line 260
    .line 261
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    move-object/from16 v38, v0

    .line 266
    .line 267
    const-string v0, "IWC_DQD"

    .line 268
    .line 269
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    move-object/from16 v39, v0

    .line 274
    .line 275
    const-string v0, "IWC_DQT"

    .line 276
    .line 277
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    move-object/from16 v40, v0

    .line 282
    .line 283
    const-string v0, "IWC_DQA"

    .line 284
    .line 285
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const-string v3, "IWC_SAV"

    .line 290
    .line 291
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v41

    .line 295
    const-string v3, "IWC_SAD"

    .line 296
    .line 297
    filled-new-array {v3, v1}, [Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v42

    .line 301
    move-object/from16 v3, v16

    .line 302
    .line 303
    move-object/from16 v16, v17

    .line 304
    .line 305
    move-object/from16 v17, v18

    .line 306
    .line 307
    move-object/from16 v18, v19

    .line 308
    .line 309
    move-object/from16 v19, v20

    .line 310
    .line 311
    move-object/from16 v20, v21

    .line 312
    .line 313
    move-object/from16 v21, v22

    .line 314
    .line 315
    move-object/from16 v22, v23

    .line 316
    .line 317
    move-object/from16 v23, v24

    .line 318
    .line 319
    move-object/from16 v24, v25

    .line 320
    .line 321
    move-object/from16 v25, v26

    .line 322
    .line 323
    move-object/from16 v26, v27

    .line 324
    .line 325
    move-object/from16 v27, v28

    .line 326
    .line 327
    move-object/from16 v28, v29

    .line 328
    .line 329
    move-object/from16 v29, v30

    .line 330
    .line 331
    move-object/from16 v30, v31

    .line 332
    .line 333
    move-object/from16 v31, v32

    .line 334
    .line 335
    move-object/from16 v32, v33

    .line 336
    .line 337
    move-object/from16 v33, v34

    .line 338
    .line 339
    move-object/from16 v34, v35

    .line 340
    .line 341
    move-object/from16 v35, v36

    .line 342
    .line 343
    move-object/from16 v36, v37

    .line 344
    .line 345
    move-object/from16 v37, v38

    .line 346
    .line 347
    move-object/from16 v38, v39

    .line 348
    .line 349
    move-object/from16 v39, v40

    .line 350
    .line 351
    move-object/from16 v40, v0

    .line 352
    .line 353
    filled-new-array/range {v2 .. v42}, [[Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;->MIWC:[[Ljava/lang/String;

    .line 358
    .line 359
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getJsonFormat - "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;->MIWC:[[Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "Exception occured on getJsonFormat - "

    .line 53
    .line 54
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method
