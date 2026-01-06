.class Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiShellCommand$CommandHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqeCommandHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public process(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;->fromString(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommand;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ", "

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const-string v3, "Not Supported"

    .line 13
    .line 14
    const-string v4, "Supported"

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    packed-switch v0, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0

    .line 27
    :pswitch_0
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v5

    .line 31
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 32
    .line 33
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiDriverFeatureProvider(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isTwtSupported()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    move-object v3, v4

    .line 44
    :cond_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v5

    .line 48
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 49
    .line 50
    const-string p1, "com.samsung.android.fast"

    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$misPackageAvailable(Lcom/samsung/android/server/wifi/SemWifiShellCommand;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    move-object v3, v4

    .line 59
    :cond_1
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v5

    .line 63
    :pswitch_3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v5

    .line 67
    :pswitch_4
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v5

    .line 71
    :pswitch_5
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v5

    .line 75
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 76
    .line 77
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_2

    .line 86
    .line 87
    move-object v3, v4

    .line 88
    :cond_2
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return v5

    .line 92
    :pswitch_7
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return v5

    .line 96
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isWifiSharingSupported()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_4

    .line 107
    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 109
    .line 110
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isWifiSharingLiteSupported()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eqz p0, :cond_3

    .line 119
    .line 120
    const-string p0, "VSDB"

    .line 121
    .line 122
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    return v5

    .line 126
    :cond_3
    const-string p0, "RSDB"

    .line 127
    .line 128
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return v5

    .line 132
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isWifiSharingSupported()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 145
    .line 146
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isWifiSharingLiteSupported()Z

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_5

    .line 155
    .line 156
    const-string p0, "Wi-Fi sharing lite"

    .line 157
    .line 158
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return v5

    .line 162
    :cond_5
    const-string p0, "Wi-Fi sharing"

    .line 163
    .line 164
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return v5

    .line 168
    :cond_6
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return v5

    .line 172
    :pswitch_a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return v5

    .line 176
    :pswitch_b
    const-string p0, "Open, WPA2-Personal, WPA2/WPA3-Personal, WPA3-Personal"

    .line 177
    .line 178
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return v5

    .line 182
    :pswitch_c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return v5

    .line 186
    :pswitch_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 187
    .line 188
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isSupportedAutoWifi()Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    if-eqz p0, :cond_7

    .line 197
    .line 198
    move-object v3, v4

    .line 199
    :cond_7
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return v5

    .line 203
    :pswitch_e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return v5

    .line 207
    :pswitch_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 208
    .line 209
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupportedContinuity()Z

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    if-eqz p0, :cond_8

    .line 218
    .line 219
    move-object v3, v4

    .line 220
    :cond_8
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return v5

    .line 224
    :pswitch_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 225
    .line 226
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->isSupportedProfileRequest()Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-eqz p0, :cond_9

    .line 235
    .line 236
    move-object v3, v4

    .line 237
    :cond_9
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    return v5

    .line 241
    :pswitch_11
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getInstance()Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    if-eqz p0, :cond_a

    .line 246
    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSupportEleDetection()Z

    .line 248
    .line 249
    .line 250
    move-result p0

    .line 251
    if-eqz p0, :cond_a

    .line 252
    .line 253
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    return v5

    .line 257
    :cond_a
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    return v5

    .line 261
    :pswitch_12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 262
    .line 263
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->isSupportMobileWips()Z

    .line 268
    .line 269
    .line 270
    move-result p0

    .line 271
    if-eqz p0, :cond_b

    .line 272
    .line 273
    move-object v3, v4

    .line 274
    :cond_b
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    return v5

    .line 278
    :pswitch_13
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    return v5

    .line 282
    :pswitch_14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    const-string v0, "android.hardware.wifi.aware"

    .line 293
    .line 294
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 299
    .line 300
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Landroid/content/Context;

    .line 301
    .line 302
    .line 303
    move-result-object p0

    .line 304
    const-string v0, "wifiaware"

    .line 305
    .line 306
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object p0

    .line 310
    check-cast p0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 311
    .line 312
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-virtual {p0}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    if-eqz p1, :cond_c

    .line 321
    .line 322
    if-lt p0, v2, :cond_c

    .line 323
    .line 324
    new-instance p1, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    const-string v0, "1:"

    .line 327
    .line 328
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    const-string p0, " Support"

    .line 335
    .line 336
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    return v5

    .line 347
    :cond_c
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    return v5

    .line 351
    :pswitch_15
    const-string p0, "1:N Support"

    .line 352
    .line 353
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    return v5

    .line 357
    :pswitch_16
    const-string p0, "MCC"

    .line 358
    .line 359
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    return v5

    .line 363
    :pswitch_17
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_QRCODE"

    .line 368
    .line 369
    invoke-virtual {p1, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-eqz p1, :cond_e

    .line 374
    .line 375
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 376
    .line 377
    const-string v0, "com.sec.android.app.camera"

    .line 378
    .line 379
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$misPackageAvailable(Lcom/samsung/android/server/wifi/SemWifiShellCommand;Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-nez p1, :cond_d

    .line 384
    .line 385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 386
    .line 387
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$misPackageAvailable(Lcom/samsung/android/server/wifi/SemWifiShellCommand;Ljava/lang/String;)Z

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    if-eqz p0, :cond_e

    .line 392
    .line 393
    :cond_d
    move-object v3, v4

    .line 394
    :cond_e
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    return v5

    .line 398
    :pswitch_18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v0, "Open, Enhanced Open, WEP, WPA/WPA2-Personal, WPA3-Personal, WPA/WPA2/WPA3-Enterprise"

    .line 401
    .line 402
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 406
    .line 407
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmSupportedFeatureLogger(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->getSupportedFeatureStr()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p0

    .line 415
    const-string v0, "[WPA3 ENTERPRISE SUITE B 192]"

    .line 416
    .line 417
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 418
    .line 419
    .line 420
    move-result p0

    .line 421
    if-eqz p0, :cond_f

    .line 422
    .line 423
    const-string p0, ", WPA3-Enterprise 192-bit"

    .line 424
    .line 425
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    :cond_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    return v5

    .line 436
    :pswitch_19
    const-string p0, "None, PAP, MSCHAP, MSCHAP2, GTC"

    .line 437
    .line 438
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    return v5

    .line 442
    :pswitch_1a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 443
    .line 444
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Landroid/content/Context;

    .line 445
    .line 446
    .line 447
    move-result-object p0

    .line 448
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    .line 449
    .line 450
    .line 451
    move-result p0

    .line 452
    if-eqz p0, :cond_10

    .line 453
    .line 454
    const-string p0, "PEAP, TLS, TTLS, PWD"

    .line 455
    .line 456
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    return v5

    .line 460
    :cond_10
    const-string p0, "PEAP, TLS, TTLS, PWD, SIM, AKA, AKA\'"

    .line 461
    .line 462
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    return v5

    .line 466
    :pswitch_1b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 467
    .line 468
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isPasspointSupported()Z

    .line 473
    .line 474
    .line 475
    move-result p0

    .line 476
    if-eqz p0, :cond_11

    .line 477
    .line 478
    const-string p0, "Yes"

    .line 479
    .line 480
    goto :goto_0

    .line 481
    :cond_11
    const-string p0, "No"

    .line 482
    .line 483
    :goto_0
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    return v5

    .line 487
    :pswitch_1c
    const-string p0, "ro.build.characteristics"

    .line 488
    .line 489
    invoke-static {p0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object p0

    .line 493
    if-eqz p0, :cond_12

    .line 494
    .line 495
    const-string p1, "watch"

    .line 496
    .line 497
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 498
    .line 499
    .line 500
    move-result p0

    .line 501
    if-eqz p0, :cond_12

    .line 502
    .line 503
    const-string p0, "802.11 r"

    .line 504
    .line 505
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    return v5

    .line 509
    :cond_12
    const-string p0, "802.11 k/v/r"

    .line 510
    .line 511
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    return v5

    .line 515
    :pswitch_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 516
    .line 517
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getNumOfWifiAnt()I

    .line 522
    .line 523
    .line 524
    move-result p0

    .line 525
    if-ne p0, v2, :cond_13

    .line 526
    .line 527
    const-string p0, "MIMO"

    .line 528
    .line 529
    goto :goto_1

    .line 530
    :cond_13
    const-string p0, "SISO"

    .line 531
    .line 532
    :goto_1
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    return v5

    .line 536
    :pswitch_1e
    const-string p0, "ro.vendor.api_level"

    .line 537
    .line 538
    const/4 p1, -0x1

    .line 539
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 540
    .line 541
    .line 542
    move-result p0

    .line 543
    const-string v0, "ro.product.first_api_level"

    .line 544
    .line 545
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 546
    .line 547
    .line 548
    move-result p1

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string v1, "api_level="

    .line 552
    .line 553
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p0

    .line 563
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    new-instance p0, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    const-string v0, "first_api_level="

    .line 569
    .line 570
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object p0

    .line 580
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    return v5

    .line 584
    :pswitch_1f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 585
    .line 586
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 587
    .line 588
    .line 589
    move-result-object p0

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    .line 591
    .line 592
    .line 593
    move-result p0

    .line 594
    if-eqz p0, :cond_14

    .line 595
    .line 596
    move-object v3, v4

    .line 597
    :cond_14
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    return v5

    .line 601
    :pswitch_20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 602
    .line 603
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 608
    .line 609
    .line 610
    move-result p1

    .line 611
    if-nez p1, :cond_15

    .line 612
    .line 613
    const-string p0, "This command will only execute when Wi-Fi is turned on"

    .line 614
    .line 615
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    return v5

    .line 619
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 620
    .line 621
    const-string v0, "a/b/g/n"

    .line 622
    .line 623
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 627
    .line 628
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    const/4 v2, 0x5

    .line 633
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiStandardSupported(I)Z

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    const-string v2, ""

    .line 638
    .line 639
    if-eqz v0, :cond_16

    .line 640
    .line 641
    const-string v0, "/ac"

    .line 642
    .line 643
    goto :goto_2

    .line 644
    :cond_16
    move-object v0, v2

    .line 645
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 649
    .line 650
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 651
    .line 652
    .line 653
    move-result-object v0

    .line 654
    const/4 v3, 0x6

    .line 655
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiStandardSupported(I)Z

    .line 656
    .line 657
    .line 658
    move-result v0

    .line 659
    if-eqz v0, :cond_17

    .line 660
    .line 661
    const-string v0, "/ax"

    .line 662
    .line 663
    goto :goto_3

    .line 664
    :cond_17
    move-object v0, v2

    .line 665
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 669
    .line 670
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 671
    .line 672
    .line 673
    move-result-object v0

    .line 674
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->is24GHzBandSupported()Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_18

    .line 679
    .line 680
    const-string v0, " 2.4GHz"

    .line 681
    .line 682
    goto :goto_4

    .line 683
    :cond_18
    move-object v0, v2

    .line 684
    :goto_4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 688
    .line 689
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->is5GHzBandSupported()Z

    .line 694
    .line 695
    .line 696
    move-result v0

    .line 697
    if-eqz v0, :cond_19

    .line 698
    .line 699
    const-string v0, "+5GHz"

    .line 700
    .line 701
    goto :goto_5

    .line 702
    :cond_19
    move-object v0, v2

    .line 703
    :goto_5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 707
    .line 708
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->is6GHzBandSupported()Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-eqz v0, :cond_1a

    .line 717
    .line 718
    const-string v2, "+6GHz"

    .line 719
    .line 720
    :cond_1a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 729
    .line 730
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$mgetSupportedChannelWidth(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object p0

    .line 741
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 745
    .line 746
    .line 747
    move-result-object p0

    .line 748
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    return v5

    .line 752
    :pswitch_21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 758
    .line 759
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getWifiFirmwareVersion()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v0

    .line 767
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 774
    .line 775
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmWifiDriverVersionProvider(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 776
    .line 777
    .line 778
    move-result-object p0

    .line 779
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getDriverVersion()Ljava/lang/String;

    .line 780
    .line 781
    .line 782
    move-result-object p0

    .line 783
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    return v5

    .line 794
    :pswitch_22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 795
    .line 796
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .line 798
    .line 799
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    .line 817
    .line 818
    const-string v0, "/"

    .line 819
    .line 820
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiShellCommand$SqeCommandHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiShellCommand;

    .line 824
    .line 825
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiShellCommand;->-$$Nest$fgetmService(Lcom/samsung/android/server/wifi/SemWifiShellCommand;)Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 826
    .line 827
    .line 828
    move-result-object p0

    .line 829
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->getWifiVersions()Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object p0

    .line 833
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object p0

    .line 840
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    .line 842
    .line 843
    return v5

    .line 844
    nop

    .line 845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
