.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$WpsConfigError;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WpsConfigError"
.end annotation


# static fields
.field public static final CHAN_24_NOT_SUPPORTED:S = 0x3s

.field public static final CHAN_50_NOT_SUPPORTED:S = 0x4s

.field public static final CHAN_60G_NOT_SUPPORTED:S = 0x13s

.field public static final DECRYPTION_CRC_FAILURE:S = 0x2s

.field public static final DEVICE_BUSY:S = 0xes

.field public static final DEV_PASSWORD_AUTH_FAILURE:S = 0x12s

.field public static final FAILED_DHCP_CONFIG:S = 0x9s

.field public static final IP_ADDR_CONFLICT:S = 0xas

.field public static final MSG_TIMEOUT:S = 0x10s

.field public static final MULTIPLE_PBC_DETECTED:S = 0xcs

.field public static final NETWORK_ASSOC_FAILURE:S = 0x7s

.field public static final NETWORK_AUTH_FAILURE:S = 0x6s

.field public static final NO_CONN_TO_REGISTRAR:S = 0xbs

.field public static final NO_DHCP_RESPONSE:S = 0x8s

.field public static final NO_ERROR:S = 0x0s

.field public static final OOB_IFACE_READ_ERROR:S = 0x1s

.field public static final PUBLIC_KEY_HASH_MISMATCH:S = 0x14s

.field public static final REG_SESS_TIMEOUT:S = 0x11s

.field public static final ROGUE_SUSPECTED:S = 0xds

.field public static final SETUP_LOCKED:S = 0xfs

.field public static final SIGNAL_TOO_WEAK:S = 0x5s


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

.method public static final dumpBitfield(S)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "NO_ERROR"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IfaceType$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    and-int/lit8 v1, p0, 0x1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string v1, "OOB_IFACE_READ_ERROR"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    int-to-short v1, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    and-int/lit8 v2, p0, 0x2

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-ne v2, v3, :cond_1

    .line 24
    .line 25
    const-string v2, "DECRYPTION_CRC_FAILURE"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    or-int/lit8 v1, v1, 0x2

    .line 31
    .line 32
    int-to-short v1, v1

    .line 33
    :cond_1
    and-int/lit8 v2, p0, 0x3

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-ne v2, v3, :cond_2

    .line 37
    .line 38
    const-string v2, "CHAN_24_NOT_SUPPORTED"

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    or-int/lit8 v1, v1, 0x3

    .line 44
    .line 45
    int-to-short v1, v1

    .line 46
    :cond_2
    and-int/lit8 v2, p0, 0x4

    .line 47
    .line 48
    const/4 v3, 0x4

    .line 49
    if-ne v2, v3, :cond_3

    .line 50
    .line 51
    const-string v2, "CHAN_50_NOT_SUPPORTED"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    or-int/lit8 v1, v1, 0x4

    .line 57
    .line 58
    int-to-short v1, v1

    .line 59
    :cond_3
    and-int/lit8 v2, p0, 0x5

    .line 60
    .line 61
    const/4 v3, 0x5

    .line 62
    if-ne v2, v3, :cond_4

    .line 63
    .line 64
    const-string v2, "SIGNAL_TOO_WEAK"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    or-int/lit8 v1, v1, 0x5

    .line 70
    .line 71
    int-to-short v1, v1

    .line 72
    :cond_4
    and-int/lit8 v2, p0, 0x6

    .line 73
    .line 74
    const/4 v3, 0x6

    .line 75
    if-ne v2, v3, :cond_5

    .line 76
    .line 77
    const-string v2, "NETWORK_AUTH_FAILURE"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    or-int/lit8 v1, v1, 0x6

    .line 83
    .line 84
    int-to-short v1, v1

    .line 85
    :cond_5
    and-int/lit8 v2, p0, 0x7

    .line 86
    .line 87
    const/4 v3, 0x7

    .line 88
    if-ne v2, v3, :cond_6

    .line 89
    .line 90
    const-string v2, "NETWORK_ASSOC_FAILURE"

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    or-int/lit8 v1, v1, 0x7

    .line 96
    .line 97
    int-to-short v1, v1

    .line 98
    :cond_6
    and-int/lit8 v2, p0, 0x8

    .line 99
    .line 100
    const/16 v3, 0x8

    .line 101
    .line 102
    if-ne v2, v3, :cond_7

    .line 103
    .line 104
    const-string v2, "NO_DHCP_RESPONSE"

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    or-int/lit8 v1, v1, 0x8

    .line 110
    .line 111
    int-to-short v1, v1

    .line 112
    :cond_7
    and-int/lit8 v2, p0, 0x9

    .line 113
    .line 114
    const/16 v3, 0x9

    .line 115
    .line 116
    if-ne v2, v3, :cond_8

    .line 117
    .line 118
    const-string v2, "FAILED_DHCP_CONFIG"

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    or-int/lit8 v1, v1, 0x9

    .line 124
    .line 125
    int-to-short v1, v1

    .line 126
    :cond_8
    and-int/lit8 v2, p0, 0xa

    .line 127
    .line 128
    const/16 v3, 0xa

    .line 129
    .line 130
    if-ne v2, v3, :cond_9

    .line 131
    .line 132
    const-string v2, "IP_ADDR_CONFLICT"

    .line 133
    .line 134
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    or-int/lit8 v1, v1, 0xa

    .line 138
    .line 139
    int-to-short v1, v1

    .line 140
    :cond_9
    and-int/lit8 v2, p0, 0xb

    .line 141
    .line 142
    const/16 v3, 0xb

    .line 143
    .line 144
    if-ne v2, v3, :cond_a

    .line 145
    .line 146
    const-string v2, "NO_CONN_TO_REGISTRAR"

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    or-int/lit8 v1, v1, 0xb

    .line 152
    .line 153
    int-to-short v1, v1

    .line 154
    :cond_a
    and-int/lit8 v2, p0, 0xc

    .line 155
    .line 156
    const/16 v3, 0xc

    .line 157
    .line 158
    if-ne v2, v3, :cond_b

    .line 159
    .line 160
    const-string v2, "MULTIPLE_PBC_DETECTED"

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    or-int/lit8 v1, v1, 0xc

    .line 166
    .line 167
    int-to-short v1, v1

    .line 168
    :cond_b
    and-int/lit8 v2, p0, 0xd

    .line 169
    .line 170
    const/16 v3, 0xd

    .line 171
    .line 172
    if-ne v2, v3, :cond_c

    .line 173
    .line 174
    const-string v2, "ROGUE_SUSPECTED"

    .line 175
    .line 176
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    or-int/lit8 v1, v1, 0xd

    .line 180
    .line 181
    int-to-short v1, v1

    .line 182
    :cond_c
    and-int/lit8 v2, p0, 0xe

    .line 183
    .line 184
    const/16 v3, 0xe

    .line 185
    .line 186
    if-ne v2, v3, :cond_d

    .line 187
    .line 188
    const-string v2, "DEVICE_BUSY"

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    or-int/lit8 v1, v1, 0xe

    .line 194
    .line 195
    int-to-short v1, v1

    .line 196
    :cond_d
    and-int/lit8 v2, p0, 0xf

    .line 197
    .line 198
    const/16 v3, 0xf

    .line 199
    .line 200
    if-ne v2, v3, :cond_e

    .line 201
    .line 202
    const-string v2, "SETUP_LOCKED"

    .line 203
    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    or-int/lit8 v1, v1, 0xf

    .line 208
    .line 209
    int-to-short v1, v1

    .line 210
    :cond_e
    and-int/lit8 v2, p0, 0x10

    .line 211
    .line 212
    const/16 v3, 0x10

    .line 213
    .line 214
    if-ne v2, v3, :cond_f

    .line 215
    .line 216
    const-string v2, "MSG_TIMEOUT"

    .line 217
    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    or-int/lit8 v1, v1, 0x10

    .line 222
    .line 223
    int-to-short v1, v1

    .line 224
    :cond_f
    and-int/lit8 v2, p0, 0x11

    .line 225
    .line 226
    const/16 v3, 0x11

    .line 227
    .line 228
    if-ne v2, v3, :cond_10

    .line 229
    .line 230
    const-string v2, "REG_SESS_TIMEOUT"

    .line 231
    .line 232
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    or-int/lit8 v1, v1, 0x11

    .line 236
    .line 237
    int-to-short v1, v1

    .line 238
    :cond_10
    and-int/lit8 v2, p0, 0x12

    .line 239
    .line 240
    const/16 v3, 0x12

    .line 241
    .line 242
    if-ne v2, v3, :cond_11

    .line 243
    .line 244
    const-string v2, "DEV_PASSWORD_AUTH_FAILURE"

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    or-int/lit8 v1, v1, 0x12

    .line 250
    .line 251
    int-to-short v1, v1

    .line 252
    :cond_11
    and-int/lit8 v2, p0, 0x13

    .line 253
    .line 254
    const/16 v3, 0x13

    .line 255
    .line 256
    if-ne v2, v3, :cond_12

    .line 257
    .line 258
    const-string v2, "CHAN_60G_NOT_SUPPORTED"

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    or-int/lit8 v1, v1, 0x13

    .line 264
    .line 265
    int-to-short v1, v1

    .line 266
    :cond_12
    and-int/lit8 v2, p0, 0x14

    .line 267
    .line 268
    const/16 v3, 0x14

    .line 269
    .line 270
    if-ne v2, v3, :cond_13

    .line 271
    .line 272
    const-string v2, "PUBLIC_KEY_HASH_MISMATCH"

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    or-int/lit8 v1, v1, 0x14

    .line 278
    .line 279
    int-to-short v1, v1

    .line 280
    :cond_13
    if-eq p0, v1, :cond_14

    .line 281
    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    const-string v3, "0x"

    .line 285
    .line 286
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    not-int v1, v1

    .line 290
    and-int/2addr p0, v1

    .line 291
    int-to-short p0, p0

    .line 292
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 293
    .line 294
    .line 295
    move-result p0

    .line 296
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    :cond_14
    const-string p0, " | "

    .line 311
    .line 312
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    return-object p0
.end method

.method public static final toString(S)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, "NO_ERROR"

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p0, v0, :cond_1

    .line 8
    .line 9
    const-string p0, "OOB_IFACE_READ_ERROR"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    const/4 v0, 0x2

    .line 13
    if-ne p0, v0, :cond_2

    .line 14
    .line 15
    const-string p0, "DECRYPTION_CRC_FAILURE"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const/4 v0, 0x3

    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    const-string p0, "CHAN_24_NOT_SUPPORTED"

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_3
    const/4 v0, 0x4

    .line 25
    if-ne p0, v0, :cond_4

    .line 26
    .line 27
    const-string p0, "CHAN_50_NOT_SUPPORTED"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_4
    const/4 v0, 0x5

    .line 31
    if-ne p0, v0, :cond_5

    .line 32
    .line 33
    const-string p0, "SIGNAL_TOO_WEAK"

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_5
    const/4 v0, 0x6

    .line 37
    if-ne p0, v0, :cond_6

    .line 38
    .line 39
    const-string p0, "NETWORK_AUTH_FAILURE"

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_6
    const/4 v0, 0x7

    .line 43
    if-ne p0, v0, :cond_7

    .line 44
    .line 45
    const-string p0, "NETWORK_ASSOC_FAILURE"

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_7
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p0, v0, :cond_8

    .line 51
    .line 52
    const-string p0, "NO_DHCP_RESPONSE"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_8
    const/16 v0, 0x9

    .line 56
    .line 57
    if-ne p0, v0, :cond_9

    .line 58
    .line 59
    const-string p0, "FAILED_DHCP_CONFIG"

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_9
    const/16 v0, 0xa

    .line 63
    .line 64
    if-ne p0, v0, :cond_a

    .line 65
    .line 66
    const-string p0, "IP_ADDR_CONFLICT"

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_a
    const/16 v0, 0xb

    .line 70
    .line 71
    if-ne p0, v0, :cond_b

    .line 72
    .line 73
    const-string p0, "NO_CONN_TO_REGISTRAR"

    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_b
    const/16 v0, 0xc

    .line 77
    .line 78
    if-ne p0, v0, :cond_c

    .line 79
    .line 80
    const-string p0, "MULTIPLE_PBC_DETECTED"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_c
    const/16 v0, 0xd

    .line 84
    .line 85
    if-ne p0, v0, :cond_d

    .line 86
    .line 87
    const-string p0, "ROGUE_SUSPECTED"

    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_d
    const/16 v0, 0xe

    .line 91
    .line 92
    if-ne p0, v0, :cond_e

    .line 93
    .line 94
    const-string p0, "DEVICE_BUSY"

    .line 95
    .line 96
    return-object p0

    .line 97
    :cond_e
    const/16 v0, 0xf

    .line 98
    .line 99
    if-ne p0, v0, :cond_f

    .line 100
    .line 101
    const-string p0, "SETUP_LOCKED"

    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_f
    const/16 v0, 0x10

    .line 105
    .line 106
    if-ne p0, v0, :cond_10

    .line 107
    .line 108
    const-string p0, "MSG_TIMEOUT"

    .line 109
    .line 110
    return-object p0

    .line 111
    :cond_10
    const/16 v0, 0x11

    .line 112
    .line 113
    if-ne p0, v0, :cond_11

    .line 114
    .line 115
    const-string p0, "REG_SESS_TIMEOUT"

    .line 116
    .line 117
    return-object p0

    .line 118
    :cond_11
    const/16 v0, 0x12

    .line 119
    .line 120
    if-ne p0, v0, :cond_12

    .line 121
    .line 122
    const-string p0, "DEV_PASSWORD_AUTH_FAILURE"

    .line 123
    .line 124
    return-object p0

    .line 125
    :cond_12
    const/16 v0, 0x13

    .line 126
    .line 127
    if-ne p0, v0, :cond_13

    .line 128
    .line 129
    const-string p0, "CHAN_60G_NOT_SUPPORTED"

    .line 130
    .line 131
    return-object p0

    .line 132
    :cond_13
    const/16 v0, 0x14

    .line 133
    .line 134
    if-ne p0, v0, :cond_14

    .line 135
    .line 136
    const-string p0, "PUBLIC_KEY_HASH_MISMATCH"

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v1, "0x"

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    return-object p0
.end method
