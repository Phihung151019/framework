.class public Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;
    }
.end annotation


# static fields
.field private static final ACTIVE_TRAFFIC:I = 0x1

.field private static final COMMA_KEY_VAL_STAR:Ljava/lang/String; = "^(,[A-Za-z_][A-Za-z0-9_]*=[0-9.:+-]+)*$"

.field private static final ENTRY:I = 0x1

.field private static final EXIT:I = 0x0

.field public static final FREQUENCY_WEIGHT_DEFAULT:I = 0x0

.field public static final FREQUENCY_WEIGHT_HIGH:I = 0x28

.field public static final FREQUENCY_WEIGHT_LOW:I = -0x28

.field private static final GOOD:I = 0x3

.field private static final HIGH_TRAFFIC:I = 0x2

.field private static final SUFFICIENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemScoringParams"


# instance fields
.field private final mContext:Landroid/net/wifi/WifiContext;

.field mFrequencyWeights:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mFrequencyWeights:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mContext:Landroid/net/wifi/WifiContext;

    .line 5
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mFrequencyWeights:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 9
    instance-of v0, p1, Landroid/net/wifi/WifiContext;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Landroid/net/wifi/WifiContext;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mContext:Landroid/net/wifi/WifiContext;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiContext;

    invoke-direct {v0, p1}, Landroid/net/wifi/WifiContext;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mContext:Landroid/net/wifi/WifiContext;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mContext:Landroid/net/wifi/WifiContext;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->loadResources(Landroid/net/wifi/WifiContext;)V

    return-void
.end method

.method private loadResources(Landroid/net/wifi/WifiContext;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const v2, 0x7f05008c

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput v1, v0, v2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const v3, 0x7f05008e

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v3, 0x1

    .line 46
    aput v1, v0, v3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const v4, 0x7f050092

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v4, 0x2

    .line 64
    aput v1, v0, v4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const v5, 0x7f050090

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    const/4 v5, 0x3

    .line 82
    aput v1, v0, v5

    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 85
    .line 86
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const v6, 0x7f05008d

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    aput v1, v0, v2

    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const v6, 0x7f05008f

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    aput v1, v0, v3

    .line 117
    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const v6, 0x7f050093

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    aput v1, v0, v4

    .line 134
    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 136
    .line 137
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    const v6, 0x7f050091

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    aput v1, v0, v5

    .line 151
    .line 152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    const v6, 0x7f05004f

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    aput v1, v0, v2

    .line 168
    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    const v2, 0x7f050050

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    aput v1, v0, v3

    .line 185
    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 187
    .line 188
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    const v2, 0x7f050052

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    aput v1, v0, v4

    .line 202
    .line 203
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const v2, 0x7f050051

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    aput v1, v0, v5

    .line 219
    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const v2, 0x7f050059

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumerator:I

    .line 234
    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const v2, 0x7f050056

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominator:I

    .line 249
    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 251
    .line 252
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    const v2, 0x7f05005a

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumeratorAfter800Mbps:I

    .line 264
    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 266
    .line 267
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const v2, 0x7f050057

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominatorAfter800Mbps:I

    .line 279
    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 281
    .line 282
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    const v2, 0x7f020022

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 290
    .line 291
    .line 292
    move-result v1

    .line 293
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->enable6GhzBeaconRssiBoost:Z

    .line 294
    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const v2, 0x7f050058

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusLimit:I

    .line 309
    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 311
    .line 312
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const v2, 0x7f05004e

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->savedNetworkBonus:I

    .line 324
    .line 325
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 326
    .line 327
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const v2, 0x7f05005b

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->unmeteredNetworkBonus:I

    .line 339
    .line 340
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 341
    .line 342
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    const v2, 0x7f050047

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusMin:I

    .line 354
    .line 355
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const v2, 0x7f050048

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusPercent:I

    .line 369
    .line 370
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 371
    .line 372
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    const v2, 0x7f050053

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->secureNetworkBonus:I

    .line 384
    .line 385
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 386
    .line 387
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    const v2, 0x7f050007

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->band6GhzBonus:I

    .line 399
    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 401
    .line 402
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const v2, 0x7f05007c

    .line 407
    .line 408
    .line 409
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->scoringBucketStepSize:I

    .line 414
    .line 415
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 416
    .line 417
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    const v2, 0x7f05004a

    .line 422
    .line 423
    .line 424
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastUnmeteredSelectionMinutes:I

    .line 429
    .line 430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 431
    .line 432
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    const v2, 0x7f050049

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 440
    .line 441
    .line 442
    move-result v1

    .line 443
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastMeteredSelectionMinutes:I

    .line 444
    .line 445
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 446
    .line 447
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    const v2, 0x7f050046

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 455
    .line 456
    .line 457
    move-result v1

    .line 458
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->estimateRssiErrorMargin:I

    .line 459
    .line 460
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 461
    .line 462
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    .line 463
    .line 464
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    const v2, 0x7f05004c

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    aput v1, v0, v3

    .line 476
    .line 477
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 478
    .line 479
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    .line 480
    .line 481
    invoke-virtual {p1}, Landroid/net/wifi/WifiContext;->getResources()Landroid/content/res/Resources;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    const v1, 0x7f05004d

    .line 486
    .line 487
    .line 488
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    aput p1, v0, v4

    .line 493
    .line 494
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 495
    .line 496
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validate()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .line 498
    .line 499
    return-void

    .line 500
    :catch_0
    move-exception p1

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    const-string v1, "Inconsistent config_wifi_framework_ resources: "

    .line 504
    .line 505
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p0

    .line 515
    const-string v0, "SemScoringParams"

    .line 516
    .line 517
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    .line 519
    .line 520
    :goto_0
    return-void
.end method


# virtual methods
.method public getActiveTrafficPacketsPerSecond()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    aget p0, p0, v0

    .line 7
    .line 8
    return p0
.end method

.method public getBand6GhzBonus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->band6GhzBonus:I

    .line 4
    .line 5
    return p0
.end method

.method public getCurrentNetworkBonusMin()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusMin:I

    .line 4
    .line 5
    return p0
.end method

.method public getCurrentNetworkBonusPercent()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->currentNetworkBonusPercent:I

    .line 4
    .line 5
    return p0
.end method

.method public getEntryRssi(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getRssiArray(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x1

    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    return p0
.end method

.method public getEstimateRssiErrorMargin()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->estimateRssiErrorMargin:I

    .line 4
    .line 5
    return p0
.end method

.method public getExitRssi(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getRssiArray(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    return p0
.end method

.method public getExperimentIdentifier()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->expid:I

    .line 4
    .line 5
    return p0
.end method

.method public getFrequencyScore(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Invalid frequency weight type "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mFrequencyWeights:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p1, "SemScoringParams"

    .line 47
    .line 48
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const/16 p0, 0x28

    .line 53
    .line 54
    return p0

    .line 55
    :cond_1
    const/16 p0, -0x28

    .line 56
    .line 57
    return p0

    .line 58
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 59
    return p0
.end method

.method public getGoodRssi(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getRssiArray(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x3

    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    return p0
.end method

.method public getHorizonSeconds()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->horizon:I

    .line 4
    .line 5
    return p0
.end method

.method public getLastMeteredSelectionMinutes()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastMeteredSelectionMinutes:I

    .line 4
    .line 5
    return p0
.end method

.method public getLastUnmeteredSelectionMinutes()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->lastUnmeteredSelectionMinutes:I

    .line 4
    .line 5
    return p0
.end method

.method public getNudKnob()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->nud:I

    .line 4
    .line 5
    return p0
.end method

.method public getRssiArray(I)[I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi2:[I

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi6:[I

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "Invalid frequency("

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, "), using 5G as default rssi array"

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v0, "SemScoringParams"

    .line 54
    .line 55
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->rssi5:[I

    .line 61
    .line 62
    return-object p0
.end method

.method public getSavedNetworkBonus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->savedNetworkBonus:I

    .line 4
    .line 5
    return p0
.end method

.method public getScoringBucketStepSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->scoringBucketStepSize:I

    .line 4
    .line 5
    return p0
.end method

.method public getSecureNetworkBonus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->secureNetworkBonus:I

    .line 4
    .line 5
    return p0
.end method

.method public getSufficientRssi(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->getRssiArray(I)[I

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x2

    .line 6
    aget p0, p0, p1

    .line 7
    .line 8
    return p0
.end method

.method public getThroughputBonusDenominator()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominator:I

    .line 4
    .line 5
    return p0
.end method

.method public getThroughputBonusDenominatorAfter800Mbps()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusDenominatorAfter800Mbps:I

    .line 4
    .line 5
    return p0
.end method

.method public getThroughputBonusLimit()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusLimit:I

    .line 4
    .line 5
    return p0
.end method

.method public getThroughputBonusNumerator()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumerator:I

    .line 4
    .line 5
    return p0
.end method

.method public getThroughputBonusNumeratorAfter800Mbps()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->throughputBonusNumeratorAfter800Mbps:I

    .line 4
    .line 5
    return p0
.end method

.method public getUnmeteredNetworkBonus()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->unmeteredNetworkBonus:I

    .line 4
    .line 5
    return p0
.end method

.method public getYippeeSkippyPacketsPerSecond()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->pps:[I

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    aget p0, p0, v0

    .line 7
    .line 8
    return p0
.end method

.method public is6GhzBeaconRssiBoostEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->enable6GhzBeaconRssiBoost:Z

    .line 4
    .line 5
    return p0
.end method

.method public sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "[^A-Za-z_0-9=,:.+-]"

    .line 7
    .line 8
    const-string v0, "?"

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x64

    .line 19
    .line 20
    if-le p1, v0, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/16 v1, 0x62

    .line 29
    .line 30
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, "..."

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public update(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, ","

    .line 12
    .line 13
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "^(,[A-Za-z_][A-Za-z0-9_]*=[0-9.:+-]+)*$"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return v2

    .line 33
    :cond_1
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;

    .line 36
    .line 37
    invoke-direct {v0, p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;)V

    .line 38
    .line 39
    .line 40
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->parseString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;->validate()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams;->mVal:Lcom/samsung/android/server/wifi/silentroaming/SemScoringParams$Values;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    return v1

    .line 49
    :catch_0
    return v2
.end method
