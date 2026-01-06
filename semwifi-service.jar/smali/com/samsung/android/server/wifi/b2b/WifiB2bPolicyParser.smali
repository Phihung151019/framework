.class Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final ERRS_ADD_ROAM_SCAN_FREQUENCIES:I = 0x1101

.field private static final ERRS_ADD_SET_ROAM_SCAN_FREQUENCIES:I = 0x1901

.field private static final ERRS_NETWORK_NAME:I = 0x40f

.field private static final ERRS_ROAM_BAND:I = 0x381

.field private static final ERRS_ROAM_DELTA:I = 0x121

.field private static final ERRS_ROAM_SCAN_PERIOD:I = 0x141

.field private static final ERRS_ROAM_TRIGGER:I = 0x111

.field private static final ERRS_SET_ROAM_SCAN_FREQUENCIES:I = 0x901

.field static final ERR_DUPLICATED_NETWORK_CONF:I = 0x8

.field static final ERR_EXCEED_MAX_COUNT:I = 0x1

.field static final ERR_EXCEED_NETWORK_LEN_MAX:I = 0x4

.field static final ERR_INVALID_ADD_ROAM_SCAN_FREQUENCIES:I = 0x1000

.field static final ERR_INVALID_ROAM_BAND:I = 0x80

.field static final ERR_INVALID_ROAM_DELTA:I = 0x20

.field static final ERR_INVALID_ROAM_SCAN_PERIOD:I = 0x40

.field static final ERR_INVALID_ROAM_TRIGGER:I = 0x10

.field static final ERR_INVALID_SET_ROAM_SCAN_FREQUENCIES:I = 0x800

.field static final ERR_NONE:I = 0x0

.field static final ERR_NOT_SUPPORTED_TYPE:I = 0x100

.field static final ERR_NO_DRIVER_SUPPORT_FOR_NCHO:I = 0x400

.field static final ERR_NO_DRIVER_SUPPORT_FOR_ROAMBAND:I = 0x200

.field static final ERR_NO_SSID_INFO:I = 0x2

.field static final KEY_ADD_ROAM_SCAN_FREQUENCIES:Ljava/lang/String; = "addroamscanfrequencies"

.field static final KEY_ADD_SET_ROAM_SCAN_FREQUENCIES:Ljava/lang/String; = "addsetroamscanfrequencies"

.field static final KEY_DISABLE_CONNECTIVITY_CHECK:Ljava/lang/String; = "disable_connectivity_check"

.field static final KEY_NO_CONN_BLOCKLIST:Ljava/lang/String; = "noNetworkDisable"

.field static final KEY_POLICY:Ljava/lang/String; = "wificonfiguration"

.field static final KEY_ROAM_BAND:Ljava/lang/String; = "roamBand"

.field static final KEY_ROAM_DELTA:Ljava/lang/String; = "roamdelta"

.field static final KEY_ROAM_SCAN_PERIOD:Ljava/lang/String; = "roamscanperiod"

.field static final KEY_ROAM_SSID:Ljava/lang/String; = "networkname"

.field static final KEY_ROAM_TRIGGER:Ljava/lang/String; = "roamtrigger"

.field static final KEY_SET_ROAM_SCAN_FREQUENCIES:Ljava/lang/String; = "setroamscanfrequencies"

.field static final MAX_B2B_POLICY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemWifiB2BPolicy"


# instance fields
.field private b2bPolicies:[Landroid/os/Parcelable;

.field private isConnectivityCheckDisabled:Z

.field private final mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

.field private final supportedBands:I


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDriverSupportedBands()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iput p2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->supportedBands:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 11
    .line 12
    return-void
.end method

.method private checkValidity(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getIsNchoSupportedByDriver()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "SemWifiB2BPolicy"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v2, "checkValidity No Driver support for NCHO mode, "

    .line 14
    .line 15
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x400

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->networkName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v3, "checkValidity No SSID, "

    .line 43
    .line 44
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    or-int/lit8 v0, v0, 0x2

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidNetworkName()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_2

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "checkValidity SSID length is too long, "

    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    or-int/lit8 v0, v0, 0x4

    .line 84
    .line 85
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamTriggerSetting()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v3, "checkValidity Wrong Roam Trigger, "

    .line 94
    .line 95
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    or-int/lit8 v0, v0, 0x10

    .line 109
    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamDeltaSetting()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v3, "checkValidity Wrong Roam Delta, "

    .line 119
    .line 120
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    or-int/lit8 v0, v0, 0x20

    .line 134
    .line 135
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamScanPeriodSetting()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_5

    .line 140
    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v3, "checkValidity Wrong Roam Scan Period, "

    .line 144
    .line 145
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    or-int/lit8 v0, v0, 0x40

    .line 159
    .line 160
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamBandSetting()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_6

    .line 165
    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    const-string v2, "checkValidity Wrong Roam Band, "

    .line 169
    .line 170
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    or-int/lit16 v0, v0, 0x80

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isRoamBandSetToDefault()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_7

    .line 191
    .line 192
    iget-object v2, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->mWifiB2bPolicyManager:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 193
    .line 194
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->getIsRoamBandSupportedByDriver()Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-nez v2, :cond_7

    .line 199
    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    const-string v2, "No driver support for roam band, "

    .line 203
    .line 204
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .line 216
    .line 217
    or-int/lit16 v0, v0, 0x200

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_7
    iget p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->supportedBands:I

    .line 221
    .line 222
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isSupportedRoamBandSetting(I)Z

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    if-nez p0, :cond_8

    .line 227
    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string v2, "checkValidity Unsupported Roam Band, "

    .line 231
    .line 232
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    .line 244
    .line 245
    or-int/lit16 v0, v0, 0x100

    .line 246
    .line 247
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getSetRoamScanFrequencies()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 252
    .line 253
    .line 254
    move-result p0

    .line 255
    if-nez p0, :cond_9

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getAddRoamScanFrequencies()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 262
    .line 263
    .line 264
    move-result p0

    .line 265
    if-nez p0, :cond_9

    .line 266
    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v2, "checkValidity Invalid Add and Set Roam Scan Frequencies, "

    .line 270
    .line 271
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p0

    .line 281
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    or-int/lit16 p0, v0, 0x1800

    .line 285
    .line 286
    return p0

    .line 287
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getSetRoamScanFrequencies()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    if-nez p0, :cond_a

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getSetRoamScanFrequencies()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamScanFrequencies(Ljava/lang/String;)Z

    .line 302
    .line 303
    .line 304
    move-result p0

    .line 305
    if-nez p0, :cond_a

    .line 306
    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v2, "checkValidity Invalid Set Roam Scan Frequencies, "

    .line 310
    .line 311
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    or-int/lit16 v0, v0, 0x800

    .line 325
    .line 326
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getAddRoamScanFrequencies()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 331
    .line 332
    .line 333
    move-result p0

    .line 334
    if-nez p0, :cond_b

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->getAddRoamScanFrequencies()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->isValidRoamScanFrequencies(Ljava/lang/String;)Z

    .line 341
    .line 342
    .line 343
    move-result p0

    .line 344
    if-nez p0, :cond_b

    .line 345
    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v2, "checkValidity Invalid Add Roam Scan Frequencies, "

    .line 349
    .line 350
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    or-int/lit16 p0, v0, 0x1000

    .line 364
    .line 365
    return p0

    .line 366
    :cond_b
    return v0
.end method

.method private parseConnectivityCheckPolicy(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "disable_connectivity_check"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v0, "value"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, "received connectivity check policy "

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "SemWifiB2BPolicy"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const-string v0, "1"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->isConnectivityCheckDisabled:Z

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->isConnectivityCheckDisabled:Z

    .line 45
    .line 46
    return-void
.end method

.method private parseNetworkPolicy()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    .line 7
    .line 8
    array-length v2, v1

    .line 9
    const/4 v3, 0x0

    .line 10
    move v4, v3

    .line 11
    move v5, v4

    .line 12
    :goto_0
    if-ge v4, v2, :cond_4

    .line 13
    .line 14
    aget-object v6, v1, v4

    .line 15
    .line 16
    instance-of v7, v6, Landroid/os/Bundle;

    .line 17
    .line 18
    if-nez v7, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    check-cast v6, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {p0, v6}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parseWifiPolicy(Landroid/os/Bundle;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const-string v9, "SemWifiB2BPolicy"

    .line 32
    .line 33
    if-eqz v8, :cond_1

    .line 34
    .line 35
    new-instance v8, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v10, "skip duplicated policy "

    .line 38
    .line 39
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    const/16 v8, 0x8

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v8, v3

    .line 56
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 57
    .line 58
    const/4 v10, 0x5

    .line 59
    if-le v5, v10, :cond_2

    .line 60
    .line 61
    new-instance v10, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v11, "skip (exceed max count) "

    .line 64
    .line 65
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    or-int/lit8 v8, v8, 0x1

    .line 79
    .line 80
    :cond_2
    invoke-direct {p0, v7}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->checkValidity(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)I

    .line 81
    .line 82
    .line 83
    move-result v10

    .line 84
    or-int/2addr v8, v10

    .line 85
    if-nez v8, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v11, "adding "

    .line 93
    .line 94
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :cond_3
    invoke-direct {p0, v8, v6, v7}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->writeFeedbackValues(ILandroid/os/Bundle;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    return-object v0
.end method

.method private parseWifiPolicy(Landroid/os/Bundle;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;
    .locals 3

    .line 1
    const-string p0, "networkname"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object p0, v1

    .line 16
    :cond_0
    new-instance v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "roamtrigger"

    .line 22
    .line 23
    const v2, 0x7fffffff

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamTrigger:I

    .line 31
    .line 32
    const-string p0, "roamdelta"

    .line 33
    .line 34
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamDelta:I

    .line 39
    .line 40
    const-string p0, "roamscanperiod"

    .line 41
    .line 42
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamScanPeriod:I

    .line 47
    .line 48
    const-string p0, "roamBand"

    .line 49
    .line 50
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    iput p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->roamBand:I

    .line 55
    .line 56
    const-string p0, "noNetworkDisable"

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p1, p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    iput-boolean p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->noDisable:Z

    .line 64
    .line 65
    const-string p0, "setroamscanfrequencies"

    .line 66
    .line 67
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iput-object p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->setRoamScanFrequencies:Ljava/lang/String;

    .line 72
    .line 73
    const-string p0, "addroamscanfrequencies"

    .line 74
    .line 75
    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    iput-object p0, v0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->addRoamScanFrequencies:Ljava/lang/String;

    .line 80
    .line 81
    return-object v0
.end method

.method private writeFeedbackValues(ILandroid/os/Bundle;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "0x"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    and-int/lit16 v0, p1, 0x40f

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "networkname"

    .line 22
    .line 23
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamTriggerSetting()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    and-int/lit16 p0, p1, 0x111

    .line 33
    .line 34
    const-string v0, "roamtrigger"

    .line 35
    .line 36
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamDeltaSetting()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    and-int/lit16 p0, p1, 0x121

    .line 46
    .line 47
    const-string v0, "roamdelta"

    .line 48
    .line 49
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamScanPeriodSetting()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    and-int/lit16 p0, p1, 0x141

    .line 59
    .line 60
    const-string v0, "roamscanperiod"

    .line 61
    .line 62
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasRoamBandSetting()Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    and-int/lit16 p0, p1, 0x381

    .line 72
    .line 73
    const-string v0, "roamBand"

    .line 74
    .line 75
    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    .line 77
    .line 78
    :cond_3
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasSetRoamScanFrequencies()Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_4

    .line 83
    .line 84
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasAddRoamScanFrequencies()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    and-int/lit16 p0, p1, 0x1901

    .line 91
    .line 92
    const-string p1, "addsetroamscanfrequencies"

    .line 93
    .line 94
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_4
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasSetRoamScanFrequencies()Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_5

    .line 103
    .line 104
    and-int/lit16 p0, p1, 0x901

    .line 105
    .line 106
    const-string p1, "setroamscanfrequencies"

    .line 107
    .line 108
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_5
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;->hasAddRoamScanFrequencies()Z

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_6

    .line 117
    .line 118
    and-int/lit16 p0, p1, 0x1101

    .line 119
    .line 120
    const-string p1, "addroamscanfrequencies"

    .line 121
    .line 122
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    .line 124
    .line 125
    :cond_6
    return-void
.end method


# virtual methods
.method getConnectivityCheckDisabledSetting()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->isConnectivityCheckDisabled:Z

    .line 2
    .line 3
    return p0
.end method

.method getFeedback()Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string v1, "wificonfiguration"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method parse(Landroid/os/Bundle;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "disable_connectivity_check"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parseConnectivityCheckPolicy(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const-string v0, "wificonfiguration"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    .line 19
    .line 20
    const-string v0, "SemWifiB2BPolicy"

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    if-lez p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v1, "parse network policies size: "

    .line 30
    .line 31
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->b2bPolicies:[Landroid/os/Parcelable;

    .line 35
    .line 36
    array-length v1, v1

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyParser;->parseNetworkPolicy()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_1
    const-string p0, "there is no policies"

    .line 53
    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 58
    .line 59
    return-object p0
.end method
