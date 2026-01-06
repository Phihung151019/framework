.class La/e;
.super Landroid/content/BroadcastReceiver;
.source "BigDataModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/g;


# direct methods
.method constructor <init>(La/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, La/e;->a:La/g;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    const-string v3, "com.samsung.context.hqmbigdata.intent"

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v4, "filePath"

    .line 24
    .line 25
    const-string v5, "appID"

    .line 26
    .line 27
    const-string v6, "PDataSet"

    .line 28
    .line 29
    const-string v7, "BDataSet"

    .line 30
    .line 31
    const-string v8, "DDataSet"

    .line 32
    .line 33
    const-string v9, "Feature"

    .line 34
    .line 35
    const-string v10, "HitType"

    .line 36
    .line 37
    const-string v11, "MFG"

    .line 38
    .line 39
    const-string v12, "Ver"

    .line 40
    .line 41
    const-string v13, "Id"

    .line 42
    .line 43
    const-string v15, "Type"

    .line 44
    .line 45
    const-string v16, "com.samsung.android.hqm"

    .line 46
    .line 47
    const-string v14, ""

    .line 48
    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    const-string v1, "hwparam"

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/os/HWParamParcel;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getType()I

    .line 62
    .line 63
    .line 64
    move-result v19

    .line 65
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCompID()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v20

    .line 69
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCompVer()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v21

    .line 73
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCompManufacture()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v22

    .line 77
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getHitType()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v23

    .line 81
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getFeature()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v24

    .line 85
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getDevelopMap()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v25

    .line 89
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getCustomMap()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v26

    .line 93
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getPrivateMap()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v27

    .line 97
    invoke-virtual {v1}, Landroid/os/HWParamParcel;->getAppId()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_1

    .line 106
    .line 107
    move-object/from16 v28, v16

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    move-object/from16 v28, v1

    .line 111
    .line 112
    :goto_0
    iget-object v0, v0, La/e;->a:La/g;

    .line 113
    .line 114
    const/16 v18, 0x2

    .line 115
    .line 116
    const-string v29, "none"

    .line 117
    .line 118
    move-object/from16 v17, v0

    .line 119
    .line 120
    invoke-static/range {v17 .. v29}, La/g;->a(La/g;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    const/4 v1, 0x0

    .line 125
    invoke-virtual {v2, v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 126
    .line 127
    .line 128
    move-result v19

    .line 129
    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v20

    .line 133
    invoke-virtual {v2, v12, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v21

    .line 137
    invoke-virtual {v2, v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v22

    .line 141
    invoke-virtual {v2, v10, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v23

    .line 145
    invoke-virtual {v2, v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v24

    .line 149
    invoke-virtual {v2, v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v25

    .line 153
    invoke-virtual {v2, v7, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v26

    .line 157
    invoke-virtual {v2, v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v27

    .line 161
    invoke-virtual {v2, v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v2, v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v29

    .line 169
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_3

    .line 174
    .line 175
    move-object/from16 v28, v16

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_3
    move-object/from16 v28, v1

    .line 179
    .line 180
    :goto_1
    iget-object v0, v0, La/e;->a:La/g;

    .line 181
    .line 182
    const/16 v18, 0x2

    .line 183
    .line 184
    move-object/from16 v17, v0

    .line 185
    .line 186
    invoke-static/range {v17 .. v29}, La/g;->a(La/g;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_4
    const-string v3, "com.sec.android.intent.action.APP_HQM_SEND_REQ"

    .line 191
    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_7

    .line 197
    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 200
    .line 201
    .line 202
    move-result v19

    .line 203
    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v2, v12, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v21

    .line 211
    invoke-virtual {v2, v11, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v22

    .line 215
    invoke-virtual {v2, v10, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v23

    .line 219
    invoke-virtual {v2, v9, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v2, v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v25

    .line 227
    invoke-virtual {v2, v7, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v26

    .line 231
    invoke-virtual {v2, v6, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v27

    .line 235
    invoke-virtual {v2, v5, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-virtual {v2, v4, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v29

    .line 243
    const-string v4, "android.intent.extra.UID"

    .line 244
    .line 245
    move-object/from16 v6, p2

    .line 246
    .line 247
    invoke-virtual {v6, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_5

    .line 252
    .line 253
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    goto :goto_2

    .line 258
    :cond_5
    const/4 v2, -0x1

    .line 259
    :goto_2
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    if-eqz v4, :cond_6

    .line 264
    .line 265
    move-object/from16 v28, v16

    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_6
    move-object/from16 v28, v5

    .line 269
    .line 270
    :goto_3
    invoke-static {}, La/g;->b()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .line 278
    .line 279
    const-string v6, "log is from non-system app : "

    .line 280
    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    const-string v6, " / "

    .line 288
    .line 289
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v4, v2}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, v0, La/e;->a:La/g;

    .line 309
    .line 310
    const/16 v18, 0x2

    .line 311
    .line 312
    move-object/from16 v17, v0

    .line 313
    .line 314
    move-object/from16 v20, v1

    .line 315
    .line 316
    move-object/from16 v24, v3

    .line 317
    .line 318
    invoke-static/range {v17 .. v29}, La/g;->a(La/g;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    return-void

    .line 322
    :cond_7
    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_USER_ID"

    .line 323
    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-eqz v0, :cond_8

    .line 329
    .line 330
    const-string v0, "USER_ID"

    .line 331
    .line 332
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    if-eqz v0, :cond_8

    .line 337
    .line 338
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-lez v1, :cond_8

    .line 343
    .line 344
    invoke-static {}, La/g;->c()La/k;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    if-eqz v1, :cond_8

    .line 349
    .line 350
    invoke-static {}, La/g;->c()La/k;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v1, v0}, La/k;->f(Ljava/lang/String;)Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_8

    .line 359
    .line 360
    sput-object v0, Lc/k;->K:Ljava/lang/String;

    .line 361
    .line 362
    :cond_8
    return-void

    .line 363
    :cond_9
    :goto_4
    invoke-static {}, La/g;->b()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    const-string v1, "hqmBigDataReceiver - intent error"

    .line 368
    .line 369
    invoke-static {v0, v1}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    return-void
.end method
