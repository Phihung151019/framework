.class public Lcom/samsung/android/server/wifi/util/IeParser;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/util/IeParser$InformationElement;
    }
.end annotation


# static fields
.field private static final BYTE_MASK:I = 0xff

.field public static final KEY_CAPACITY:Ljava/lang/String; = "capacity"

.field public static final KEY_CHANNEL_UTILIZATION:Ljava/lang/String; = "channelUtilization"

.field public static final KEY_COUNTRY_CODE:Ljava/lang/String; = "country"

.field public static final KEY_HAS_KTT_VHT_VSI:Ljava/lang/String; = "hasKttVhtVsi"

.field public static final KEY_HAS_KT_HOME_VSD:Ljava/lang/String; = "hasKttHomeVsd"

.field public static final KEY_IS_SAMSUNG_MOBILE_HOTSPOT:Ljava/lang/String; = "isMobileHotspot"

.field public static final KEY_KTT_GIGA_IPTV_MAX_STA_COUNT:Ljava/lang/String; = "ktGigaIptvStaCount"

.field public static final KEY_STA_COUNT:Ljava/lang/String; = "staCount"

.field static final KTT_GIGA_IPTV_OUI:I = 0x21c31700

.field static final KTT_VSI_VSD_OUI:I = 0x11c31700

.field static final KT_HOME_AP_VSD_02:B = 0x0t

.field static final KT_VSI_VSD_26:B = 0x1t

.field static final SAMSUNG_MOBILE_HOTSPOT_OUI:I = 0x321600

.field private static final SHORT_MASK:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "SemWifi.IeParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getKtGigaIptvStaCount(Ljava/nio/ByteBuffer;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    aget-byte v4, v1, v3

    .line 20
    .line 21
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, "%02X"

    .line 30
    .line 31
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v4, "GigaIptvIe("

    .line 44
    .line 45
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "): "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v3, "SemWifi.IeParser"

    .line 64
    .line 65
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    if-lez v0, :cond_1

    .line 69
    .line 70
    add-int/lit8 v0, v0, -0x1

    .line 71
    .line 72
    aget-byte p0, v1, v0

    .line 73
    .line 74
    return p0

    .line 75
    :cond_1
    return v2
.end method

.method public static parse(Landroid/net/wifi/ScanResult;)Landroid/os/Bundle;
    .locals 11

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_7

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/net/wifi/ScanResult$InformationElement;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x7

    .line 31
    const/4 v5, 0x0

    .line 32
    const-string v6, " BufferUnderflowException ie:"

    .line 33
    .line 34
    const-string v7, "SemWifi.IeParser"

    .line 35
    .line 36
    if-eq v3, v4, :cond_6

    .line 37
    .line 38
    const/16 v4, 0xb

    .line 39
    .line 40
    if-eq v3, v4, :cond_5

    .line 41
    .line 42
    const/16 v4, 0xdd

    .line 43
    .line 44
    if-eq v3, v4, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const v8, 0xffffff

    .line 62
    .line 63
    .line 64
    and-int/2addr v8, v4

    .line 65
    const v9, 0x321600

    .line 66
    .line 67
    .line 68
    const/4 v10, 0x1

    .line 69
    if-ne v8, v9, :cond_2

    .line 70
    .line 71
    ushr-int/lit8 v2, v4, 0x18

    .line 72
    .line 73
    const/16 v4, 0x80

    .line 74
    .line 75
    if-ne v2, v4, :cond_0

    .line 76
    .line 77
    const-string v2, "isMobileHotspot"

    .line 78
    .line 79
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    const v8, 0x11c31700

    .line 84
    .line 85
    .line 86
    if-ne v4, v8, :cond_4

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    new-array v8, v4, [B

    .line 93
    .line 94
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 95
    .line 96
    .line 97
    if-lez v4, :cond_3

    .line 98
    .line 99
    aget-byte v2, v8, v5

    .line 100
    .line 101
    if-nez v2, :cond_3

    .line 102
    .line 103
    const-string v2, "hasKttHomeVsd"

    .line 104
    .line 105
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    :cond_3
    const/16 v2, 0x18

    .line 109
    .line 110
    if-le v4, v2, :cond_0

    .line 111
    .line 112
    aget-byte v2, v8, v2

    .line 113
    .line 114
    if-ne v2, v10, :cond_0

    .line 115
    .line 116
    const-string v2, "hasKttVhtVsi"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    const v5, 0x21c31700

    .line 123
    .line 124
    .line 125
    if-ne v4, v5, :cond_0

    .line 126
    .line 127
    const-string v4, "ktGigaIptvStaCount"

    .line 128
    .line 129
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/IeParser;->getKtGigaIptvStaCount(Ljava/nio/ByteBuffer;)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :catch_0
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 138
    .line 139
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 140
    .line 141
    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 176
    .line 177
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    const-string v4, "staCount"

    .line 182
    .line 183
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    const v8, 0xffff

    .line 188
    .line 189
    .line 190
    and-int/2addr v5, v8

    .line 191
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    const-string v4, "channelUtilization"

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    and-int/lit16 v5, v5, 0xff

    .line 201
    .line 202
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    const-string v4, "capacity"

    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    and-int/2addr v2, v8

    .line 212
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :catch_1
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 218
    .line 219
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 220
    .line 221
    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    goto/16 :goto_0

    .line 250
    .line 251
    :cond_6
    const/4 v4, 0x2

    .line 252
    :try_start_2
    new-array v8, v4, [B

    .line 253
    .line 254
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 259
    .line 260
    .line 261
    new-instance v2, Ljava/lang/String;

    .line 262
    .line 263
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 264
    .line 265
    invoke-direct {v2, v8, v5, v4, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-nez v4, :cond_0

    .line 277
    .line 278
    const-string v4, "country"

    .line 279
    .line 280
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :catch_2
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 286
    .line 287
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 288
    .line 289
    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    goto/16 :goto_0

    .line 318
    .line 319
    :cond_7
    return-object v0
.end method
