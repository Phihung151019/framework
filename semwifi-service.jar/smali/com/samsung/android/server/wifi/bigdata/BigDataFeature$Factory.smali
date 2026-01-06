.class public Lcom/samsung/android/server/wifi/bigdata/BigDataFeature$Factory;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/bigdata/BigDataFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalAccessException;

    .line 5
    .line 6
    const-string v0, "do not create"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public static getBigDataParser(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :sswitch_0
    const-string v1, "W24H"

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    const/16 v0, 0xc

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_1
    const-string v1, "RAPP"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    const/16 v0, 0xb

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :sswitch_2
    const-string v1, "PDC4"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :cond_2
    const/16 v0, 0xa

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :sswitch_3
    const-string v1, "PDC2"

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :cond_3
    const/16 v0, 0x9

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :sswitch_4
    const-string v1, "PDC1"

    .line 71
    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_4
    const/16 v0, 0x8

    .line 81
    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :sswitch_5
    const-string v1, "MHSS"

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    const/4 v0, 0x7

    .line 94
    goto :goto_0

    .line 95
    :sswitch_6
    const-string v1, "MHSI"

    .line 96
    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    const/4 v0, 0x6

    .line 105
    goto :goto_0

    .line 106
    :sswitch_7
    const-string v1, "MHPT"

    .line 107
    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    const/4 v0, 0x5

    .line 116
    goto :goto_0

    .line 117
    :sswitch_8
    const-string v1, "MHPS"

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    const/4 v0, 0x4

    .line 127
    goto :goto_0

    .line 128
    :sswitch_9
    const-string v1, "MHOF"

    .line 129
    .line 130
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_9

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_9
    const/4 v0, 0x3

    .line 138
    goto :goto_0

    .line 139
    :sswitch_a
    const-string v1, "MHDC"

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_a

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_a
    const/4 v0, 0x2

    .line 149
    goto :goto_0

    .line 150
    :sswitch_b
    const-string v1, "HANG"

    .line 151
    .line 152
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_b

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_b
    const/4 v0, 0x1

    .line 160
    goto :goto_0

    .line 161
    :sswitch_c
    const-string v1, "DISC"

    .line 162
    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-nez v1, :cond_c

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_c
    const/4 v0, 0x0

    .line 171
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 172
    .line 173
    .line 174
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 175
    .line 176
    const-string v0, "unsupported feature "

    .line 177
    .line 178
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw p1

    .line 186
    :pswitch_0
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;

    .line 187
    .line 188
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 189
    .line 190
    .line 191
    return-object v0

    .line 192
    :pswitch_1
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;

    .line 193
    .line 194
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemRAPP;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-object p1

    .line 198
    :pswitch_2
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC4;

    .line 199
    .line 200
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC4;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 201
    .line 202
    .line 203
    return-object v0

    .line 204
    :pswitch_3
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;

    .line 205
    .line 206
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 207
    .line 208
    .line 209
    return-object v0

    .line 210
    :pswitch_4
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;

    .line 211
    .line 212
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 213
    .line 214
    .line 215
    return-object v0

    .line 216
    :pswitch_5
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;

    .line 217
    .line 218
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSS;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 219
    .line 220
    .line 221
    return-object v0

    .line 222
    :pswitch_6
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSI;

    .line 223
    .line 224
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHSI;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 225
    .line 226
    .line 227
    return-object v0

    .line 228
    :pswitch_7
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;

    .line 229
    .line 230
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPT;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 231
    .line 232
    .line 233
    return-object v0

    .line 234
    :pswitch_8
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;

    .line 235
    .line 236
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHPS;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 237
    .line 238
    .line 239
    return-object v0

    .line 240
    :pswitch_9
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHOF;

    .line 241
    .line 242
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHOF;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 243
    .line 244
    .line 245
    return-object v0

    .line 246
    :pswitch_a
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;

    .line 247
    .line 248
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 249
    .line 250
    .line 251
    return-object v0

    .line 252
    :pswitch_b
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;

    .line 253
    .line 254
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemHANG;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 255
    .line 256
    .line 257
    return-object v0

    .line 258
    :pswitch_c
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;

    .line 259
    .line 260
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;-><init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V

    .line 261
    .line 262
    .line 263
    return-object v0

    .line 264
    nop

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x200595 -> :sswitch_c
        0x21b872 -> :sswitch_b
        0x24175a -> :sswitch_a
        0x2418b2 -> :sswitch_9
        0x2418de -> :sswitch_8
        0x2418df -> :sswitch_7
        0x241931 -> :sswitch_6
        0x24193b -> :sswitch_5
        0x256542 -> :sswitch_4
        0x256543 -> :sswitch_3
        0x256545 -> :sswitch_2
        0x26446f -> :sswitch_1
        0x284e8f -> :sswitch_0
    .end sparse-switch

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
