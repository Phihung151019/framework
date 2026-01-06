.class public Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;
.super Ljava/lang/Object;
.source "qb/104190634 8f28b0c0f0c31eb03af3bb61eb930c39e4f7c5f0b56428f61295e887e863ee7f"


# static fields
.field private static final CODEC_SOLUTION_APP_ID:Ljava/lang/String; = "oqfypdqvry"

.field private static final CODEC_SOLUTION_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final CODEC_SOLUTION_POLICY_GROUP:Ljava/lang/String; = "CODEC_SOLUTOIN"

.field private static final CODEC_SOLUTION_VERSION_DUMMY:Ljava/lang/String; = "0.0.0"

.field private static final HDR2SDR_CONVERTER_POLICY_ID:Ljava/lang/String; = "Ai8DCJEAJf"

.field private static final HDR2SDR_CONVERTER_POLICY_NAME:Ljava/lang/String; = "HDR2SDR_CONVERTER"

.field private static final HDR2SDR_CONVERTER_VERSION_STRING:Ljava/lang/String; = "hdr2sdr.dummy"

.field private static final OFFLOAD_OPUS_DEC_ENABLE_POLICY_NAME:Ljava/lang/String; = "opus-offload-enable-list"

.field private static final SCPMV2_KEY_APP_ID:Ljava/lang/String; = "appId"

.field private static final SCPMV2_KEY_APP_SIGNATURE:Ljava/lang/String; = "appSignature"

.field private static final SCPMV2_KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final SCPMV2_KEY_RCODE:Ljava/lang/String; = "rcode"

.field private static final SCPMV2_KEY_RECEIVER_PACKAGE_NAME:Ljava/lang/String; = "receiverPackageName"

.field private static final SCPMV2_KEY_RESULT:Ljava/lang/String; = "result"

.field private static final SCPMV2_KEY_RMSG:Ljava/lang/String; = "rmsg"

.field private static final SCPMV2_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final SCPMV2_KEY_VERSION:Ljava/lang/String; = "version"

.field private static final SCPMV2_METHOD_GET_LAST_ERROR:Ljava/lang/String; = "getLastError"

.field private static final SCPMV2_METHOD_GET_STATUS:Ljava/lang/String; = "getStatus"

.field private static final SCPMV2_METHOD_INITIALIZE:Ljava/lang/String; = "initialize"

.field private static final SCPMV2_METHOD_REGISTER:Ljava/lang/String; = "register"

.field private static final SCPMV2_METHOD_UNREGISTER:Ljava/lang/String; = "unregister"

.field private static final SCPMV2_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.scpm"

.field private static final SCPMV2_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field private static final SCPMV2_PROVIDER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "CodecSolution_SCPMV2Helper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHDR2SDRAllowlist:Lorg/json/JSONArray;

.field private mOpusOffloadEnabledList:Lorg/json/JSONArray;

.field private mToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->SCPMV2_PROVIDER_URI:Landroid/net/Uri;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 10
    .line 11
    iput-object p1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mOpusOffloadEnabledList:Lorg/json/JSONArray;

    .line 12
    .line 13
    return-void
.end method

.method private initH2SCAllowlist()Z
    .locals 10

    .line 1
    const-string v0, "Exception : Failed to open fd : "

    .line 2
    .line 3
    const-string v1, "Exception : Failed to get last error : "

    .line 4
    .line 5
    const-string v2, "initH2SCAllowlist()"

    .line 6
    .line 7
    const-string v3, "CodecSolution_SCPMV2Helper"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p0, "Not registered yet"

    .line 18
    .line 19
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "content://com.samsung.android.scpm.policy/"

    .line 26
    .line 27
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v5, "/HDR2SDR_CONVERTER"

    .line 36
    .line 37
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    :try_start_0
    iget-object v7, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const-string v8, "r"

    .line 59
    .line 60
    invoke-virtual {v7, v2, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 64
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    const-string v0, "ParcelFileDescriptor is null"

    .line 71
    .line 72
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v6, "token"

    .line 81
    .line 82
    iget-object v7, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    :try_start_1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string v8, "getLastError"

    .line 98
    .line 99
    const-string v9, "android"

    .line 100
    .line 101
    invoke-virtual {p0, v2, v8, v9, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 102
    .line 103
    .line 104
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-exception p0

    .line 112
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :goto_1
    if-nez v5, :cond_1

    .line 136
    .line 137
    const-string p0, "Bundle is null"

    .line 138
    .line 139
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_1
    const-string p0, "rcode"

    .line 144
    .line 145
    const/4 v0, -0x1

    .line 146
    invoke-virtual {v5, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    const-string v0, "rmsg"

    .line 151
    .line 152
    const-string v1, "null"

    .line 153
    .line 154
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v2, "Failed to get new policy : rcode["

    .line 161
    .line 162
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p0, "], rmsg["

    .line 169
    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p0, "]"

    .line 177
    .line 178
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :goto_2
    return v4

    .line 189
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/FileReader;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 200
    .line 201
    .line 202
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    .line 203
    .line 204
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 205
    .line 206
    .line 207
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    if-eqz v6, :cond_3

    .line 217
    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :catchall_1
    move-exception p0

    .line 223
    move-object v5, v2

    .line 224
    goto/16 :goto_a

    .line 225
    .line 226
    :catch_1
    move-exception p0

    .line 227
    move-object v5, v2

    .line 228
    goto :goto_6

    .line 229
    :cond_3
    new-instance v6, Lorg/json/JSONTokener;

    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-direct {v6, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v5, Lorg/json/JSONObject;

    .line 239
    .line 240
    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 241
    .line 242
    .line 243
    const-string v6, "hdr2sdr_converter_allowlist"

    .line 244
    .line 245
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    iput-object v5, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 250
    .line 251
    if-nez v5, :cond_4

    .line 252
    .line 253
    const-string p0, "Failed to get allowlist array"

    .line 254
    .line 255
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    .line 257
    .line 258
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 265
    .line 266
    .line 267
    return v4

    .line 268
    :catch_2
    move-exception p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .line 271
    .line 272
    return v4

    .line 273
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :catch_3
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .line 286
    .line 287
    :goto_5
    const/4 p0, 0x1

    .line 288
    return p0

    .line 289
    :catchall_2
    move-exception p0

    .line 290
    goto :goto_a

    .line 291
    :catch_4
    move-exception p0

    .line 292
    goto :goto_6

    .line 293
    :catchall_3
    move-exception p0

    .line 294
    move-object v1, v5

    .line 295
    goto :goto_a

    .line 296
    :catch_5
    move-exception p0

    .line 297
    move-object v1, v5

    .line 298
    :goto_6
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v6, "Unknown exception : "

    .line 304
    .line 305
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 320
    .line 321
    .line 322
    if-eqz v5, :cond_5

    .line 323
    .line 324
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :catch_6
    move-exception p0

    .line 329
    goto :goto_8

    .line 330
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 333
    .line 334
    .line 335
    :cond_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 336
    .line 337
    .line 338
    goto :goto_9

    .line 339
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :goto_9
    return v4

    .line 343
    :goto_a
    if-eqz v5, :cond_7

    .line 344
    .line 345
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 346
    .line 347
    .line 348
    goto :goto_b

    .line 349
    :catch_7
    move-exception v0

    .line 350
    goto :goto_c

    .line 351
    :cond_7
    :goto_b
    if-eqz v1, :cond_8

    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 354
    .line 355
    .line 356
    :cond_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 357
    .line 358
    .line 359
    goto :goto_d

    .line 360
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    :goto_d
    throw p0

    .line 364
    :catchall_4
    move-exception p0

    .line 365
    goto :goto_e

    .line 366
    :catch_8
    move-exception p0

    .line 367
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 387
    .line 388
    .line 389
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    .line 391
    .line 392
    return v4

    .line 393
    :goto_e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    .line 395
    .line 396
    throw p0
.end method

.method private initOpusOffloadEnabledList()Z
    .locals 10

    .line 1
    const-string v0, " Exception : Failed to open fd : "

    .line 2
    .line 3
    const-string v1, "Exception : Failed to get last error : "

    .line 4
    .line 5
    const-string v2, "initOpusOffloadEnabledList()"

    .line 6
    .line 7
    const-string v3, "CodecSolution_SCPMV2Helper"

    .line 8
    .line 9
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string p0, "Not registered yet"

    .line 18
    .line 19
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return v4

    .line 23
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "content://com.samsung.android.scpm.policy/"

    .line 26
    .line 27
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v5, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v5, "/opus-offload-enable-list"

    .line 36
    .line 37
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 49
    .line 50
    .line 51
    move-result-wide v5

    .line 52
    :try_start_0
    iget-object v7, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    const-string v8, "r"

    .line 59
    .line 60
    invoke-virtual {v7, v2, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 64
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    const-string v0, " ParcelFileDescriptor is null"

    .line 71
    .line 72
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    new-instance v0, Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v6, "token"

    .line 81
    .line 82
    iget-object v7, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 88
    .line 89
    .line 90
    move-result-wide v6

    .line 91
    :try_start_1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string v8, "getLastError"

    .line 98
    .line 99
    const-string v9, "android"

    .line 100
    .line 101
    invoke-virtual {p0, v2, v8, v9, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 102
    .line 103
    .line 104
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_3

    .line 111
    :catch_0
    move-exception p0

    .line 112
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :goto_1
    if-nez v5, :cond_1

    .line 136
    .line 137
    const-string p0, "Bundle is null"

    .line 138
    .line 139
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_1
    const-string p0, "rcode"

    .line 144
    .line 145
    const/4 v0, -0x1

    .line 146
    invoke-virtual {v5, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result p0

    .line 150
    const-string v0, "rmsg"

    .line 151
    .line 152
    const-string v1, "null"

    .line 153
    .line 154
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v2, "Failed to get new policy : rcode["

    .line 161
    .line 162
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p0, "], rmsg["

    .line 169
    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p0, "]"

    .line 177
    .line 178
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    :goto_2
    return v4

    .line 189
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/FileReader;

    .line 194
    .line 195
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 200
    .line 201
    .line 202
    :try_start_4
    new-instance v2, Ljava/io/BufferedReader;

    .line 203
    .line 204
    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 205
    .line 206
    .line 207
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    :goto_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v6

    .line 216
    if-eqz v6, :cond_3

    .line 217
    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :catchall_1
    move-exception p0

    .line 223
    move-object v5, v2

    .line 224
    goto/16 :goto_a

    .line 225
    .line 226
    :catch_1
    move-exception p0

    .line 227
    move-object v5, v2

    .line 228
    goto :goto_6

    .line 229
    :cond_3
    new-instance v6, Lorg/json/JSONTokener;

    .line 230
    .line 231
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    invoke-direct {v6, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-instance v5, Lorg/json/JSONObject;

    .line 239
    .line 240
    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 241
    .line 242
    .line 243
    const-string v6, "opus_offload_allowlist"

    .line 244
    .line 245
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    iput-object v5, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mOpusOffloadEnabledList:Lorg/json/JSONArray;

    .line 250
    .line 251
    if-nez v5, :cond_4

    .line 252
    .line 253
    const-string p0, " Failed to get enabledlist array"

    .line 254
    .line 255
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    .line 257
    .line 258
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 265
    .line 266
    .line 267
    return v4

    .line 268
    :catch_2
    move-exception p0

    .line 269
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .line 271
    .line 272
    return v4

    .line 273
    :cond_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 280
    .line 281
    .line 282
    goto :goto_5

    .line 283
    :catch_3
    move-exception p0

    .line 284
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    .line 286
    .line 287
    :goto_5
    const/4 p0, 0x1

    .line 288
    return p0

    .line 289
    :catchall_2
    move-exception p0

    .line 290
    goto :goto_a

    .line 291
    :catch_4
    move-exception p0

    .line 292
    goto :goto_6

    .line 293
    :catchall_3
    move-exception p0

    .line 294
    move-object v1, v5

    .line 295
    goto :goto_a

    .line 296
    :catch_5
    move-exception p0

    .line 297
    move-object v1, v5

    .line 298
    :goto_6
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v6, "Unknown exception : "

    .line 304
    .line 305
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 320
    .line 321
    .line 322
    if-eqz v5, :cond_5

    .line 323
    .line 324
    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :catch_6
    move-exception p0

    .line 329
    goto :goto_8

    .line 330
    :cond_5
    :goto_7
    if-eqz v1, :cond_6

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 333
    .line 334
    .line 335
    :cond_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 336
    .line 337
    .line 338
    goto :goto_9

    .line 339
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    .line 341
    .line 342
    :goto_9
    return v4

    .line 343
    :goto_a
    if-eqz v5, :cond_7

    .line 344
    .line 345
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 346
    .line 347
    .line 348
    goto :goto_b

    .line 349
    :catch_7
    move-exception v0

    .line 350
    goto :goto_c

    .line 351
    :cond_7
    :goto_b
    if-eqz v1, :cond_8

    .line 352
    .line 353
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 354
    .line 355
    .line 356
    :cond_8
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 357
    .line 358
    .line 359
    goto :goto_d

    .line 360
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    :goto_d
    throw p0

    .line 364
    :catchall_4
    move-exception p0

    .line 365
    goto :goto_e

    .line 366
    :catch_8
    move-exception p0

    .line 367
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 387
    .line 388
    .line 389
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    .line 391
    .line 392
    return v4

    .line 393
    :goto_e
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    .line 395
    .line 396
    throw p0
.end method


# virtual methods
.method public getH2SCAllowlistVersion()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getH2SCAllowlistVersion()"

    .line 2
    .line 3
    const-string v1, "CodecSolution_SCPMV2Helper"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string p0, "SCPMv2 is not available."

    .line 15
    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const-string p0, "Not available"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->initH2SCAllowlist()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "Not updated"

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-string p0, "Failed to init H2SCAllowlist."

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_1
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const-string p0, "Allowlist is null."

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    :try_start_0
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 52
    .line 53
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ge v0, v1, :cond_6

    .line 58
    .line 59
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "package"

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    const-string v3, "hdr2sdr.dummy"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_5

    .line 81
    .line 82
    const-string p0, "support"

    .line 83
    .line 84
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    if-nez p0, :cond_4

    .line 89
    .line 90
    const-string p0, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    :cond_4
    return-object p0

    .line 93
    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_6
    const-string p0, "Not found"

    .line 97
    .line 98
    return-object p0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    const-string p0, "Error"

    .line 104
    .line 105
    return-object p0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "com.samsung.android.scpm.policy"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    return v1
.end method

.method public isInH2SCAllowlist(Ljava/lang/String;Ljava/lang/String;)Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isInH2SCAllowlist : procName("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "), chipVendor("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "CodecSolution_SCPMV2Helper"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    if-eqz p1, :cond_9

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string p0, "SCPMv2 is not available."

    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 51
    .line 52
    return-object p0

    .line 53
    :cond_1
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->initH2SCAllowlist()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    const-string p0, "Failed to init H2SCAllowlist."

    .line 64
    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_2
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 72
    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    const-string p0, "Allowlist is null."

    .line 76
    .line 77
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_3
    const/4 v0, 0x0

    .line 84
    :goto_0
    :try_start_0
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 85
    .line 86
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-ge v0, v2, :cond_8

    .line 91
    .line 92
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mHDR2SDRAllowlist:Lorg/json/JSONArray;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const-string v3, "package"

    .line 99
    .line 100
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-nez v3, :cond_4

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    const-string p0, "support"

    .line 114
    .line 115
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    if-nez p0, :cond_5

    .line 120
    .line 121
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 122
    .line 123
    return-object p0

    .line 124
    :cond_5
    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result p0

    .line 128
    if-eqz p0, :cond_6

    .line 129
    .line 130
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string p1, "support "

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 151
    .line 152
    return-object p0

    .line 153
    :cond_6
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    return-object p0

    .line 156
    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_8
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 164
    .line 165
    return-object p0

    .line 166
    :cond_9
    :goto_2
    const-string p0, "Invalid args."

    .line 167
    .line 168
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 172
    .line 173
    return-object p0
.end method

.method public isInOpusOffloadEnabledList(Ljava/lang/String;I)Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "isInOpusOffloadEnabledList : param1("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ")"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "CodecSolution_SCPMV2Helper"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const-string p0, "Invalid args."

    .line 28
    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->isAvailable()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string p0, "SCPMv2 is not available."

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_1
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mOpusOffloadEnabledList:Lorg/json/JSONArray;

    .line 50
    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    invoke-direct {p0}, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->initOpusOffloadEnabledList()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const-string p0, "Failed to init isInOpusOffloadEnabledList."

    .line 60
    .line 61
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_2
    iget-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mOpusOffloadEnabledList:Lorg/json/JSONArray;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    const-string p0, "enabledList is null."

    .line 72
    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->SERVER_IS_NOT_AVAILABLE:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 77
    .line 78
    return-object p0

    .line 79
    :cond_3
    const/4 v0, 0x0

    .line 80
    :goto_0
    :try_start_0
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mOpusOffloadEnabledList:Lorg/json/JSONArray;

    .line 81
    .line 82
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-ge v0, v2, :cond_6

    .line 87
    .line 88
    iget-object v2, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mOpusOffloadEnabledList:Lorg/json/JSONArray;

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    const-string v3, "model"

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    const-string v4, "version"

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v5, "enabled_model, support_minimum_version :"

    .line 112
    .line 113
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v5, " "

    .line 120
    .line 121
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_5

    .line 139
    .line 140
    if-lt p2, v2, :cond_4

    .line 141
    .line 142
    const-string p0, "this model is supported "

    .line 143
    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 148
    .line 149
    return-object p0

    .line 150
    :cond_4
    const-string p0, "this model OPUS VERSION is smaller than supported version "

    .line 151
    .line 152
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-exception p0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_1
    sget-object p0, Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;->NOT_FOUND:Lvendor/samsung/frameworks/codecsolution/Utils$QueryResult;

    .line 164
    .line 165
    return-object p0
.end method

.method public registerToScpm()Z
    .locals 10

    .line 1
    const-string v0, "Exception : Failed to register : "

    .line 2
    .line 3
    const-string v1, "registerToScpm()"

    .line 4
    .line 5
    const-string v2, "CodecSolution_SCPMV2Helper"

    .line 6
    .line 7
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "packageName"

    .line 16
    .line 17
    const-string v4, "android"

    .line 18
    .line 19
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "appId"

    .line 23
    .line 24
    const-string v5, "oqfypdqvry"

    .line 25
    .line 26
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v3, "version"

    .line 30
    .line 31
    const-string v5, "0.0.0"

    .line 32
    .line 33
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v3, "receiverPackageName"

    .line 37
    .line 38
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    const/4 v3, 0x0

    .line 46
    :try_start_0
    iget-object v7, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    sget-object v8, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->SCPMV2_PROVIDER_URI:Landroid/net/Uri;

    .line 53
    .line 54
    const-string v9, "register"

    .line 55
    .line 56
    invoke-virtual {v7, v8, v9, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    .line 62
    .line 63
    if-nez v0, :cond_0

    .line 64
    .line 65
    const-string p0, "Bundle is null"

    .line 66
    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return v3

    .line 71
    :cond_0
    const-string v1, "rcode"

    .line 72
    .line 73
    const/4 v4, 0x1

    .line 74
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const-string v5, "rmsg"

    .line 79
    .line 80
    const-string v6, "null"

    .line 81
    .line 82
    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const/4 v6, 0x2

    .line 87
    const-string v7, "]"

    .line 88
    .line 89
    if-ne v1, v6, :cond_1

    .line 90
    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v0, "Failed to register : rcode["

    .line 94
    .line 95
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, "], rmsg["

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    return v3

    .line 120
    :cond_1
    const-string v1, "token"

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-nez v0, :cond_2

    .line 128
    .line 129
    const-string p0, "token is null"

    .line 130
    .line 131
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return v3

    .line 135
    :cond_2
    iget-object v1, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    const-string v0, "token is already set. initialize..."

    .line 140
    .line 141
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iput-object v5, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 145
    .line 146
    return v3

    .line 147
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v3, "token["

    .line 150
    .line 151
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mToken:Ljava/lang/String;

    .line 168
    .line 169
    return v4

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    goto :goto_0

    .line 172
    :catch_0
    move-exception p0

    .line 173
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .line 191
    .line 192
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    .line 194
    .line 195
    return v3

    .line 196
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 197
    .line 198
    .line 199
    throw p0
.end method

.method public setmOpusOffloadEnabledListToNull()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SCPMV2Helper;->mOpusOffloadEnabledList:Lorg/json/JSONArray;

    .line 3
    .line 4
    return-void
.end method
