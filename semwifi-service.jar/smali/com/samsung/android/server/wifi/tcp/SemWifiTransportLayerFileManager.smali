.class public Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DBG:Z

.field public static final FILE_TCP_MONITOR_AP_INFO:Ljava/lang/String; = "/data/misc/wifi/TcpMonitorApInfo.json"

.field public static final FILE_TCP_MONITOR_PACKAGE_INFO:Ljava/lang/String; = "/data/misc/wifi/TcpMonitorPackageInfo.json"

.field public static final FILE_TCP_SWITCHABLE_UID_INFO:Ljava/lang/String; = "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

.field private static final TAG:Ljava/lang/String; = "SemWifiTransportLayerFileManager"

.field private static final TEXT_AP_ACCUMULATED_CONNECTION_COUNT:Ljava/lang/String; = "AccumulatedConnectionCount"

.field private static final TEXT_AP_ACCUMULATED_CONNECTION_TIME:Ljava/lang/String; = "AccumulatedConnectionTime"

.field private static final TEXT_AP_DATA:Ljava/lang/String; = "Data"

.field private static final TEXT_AP_DETECTED_LAST_TIME:Ljava/lang/String; = "PackageLastDetectedTime"

.field private static final TEXT_AP_DETECTED_PACKAGE_COUNT:Ljava/lang/String; = "PackageDetectedCount"

.field private static final TEXT_AP_DETECTED_PACKAGE_LIST:Ljava/lang/String; = "DetectedPackageList"

.field private static final TEXT_AP_DETECTED_PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field private static final TEXT_AP_DETECTED_PACKAGE_NORMAL_OPERATION_TIME:Ljava/lang/String; = "PackageNormalOperationTime"

.field private static final TEXT_AP_SSID:Ljava/lang/String; = "SSID"

.field private static final TEXT_AP_SWITCH_FOR_INDIVIDUAL_APPS_DETECTION_COUNT:Ljava/lang/String; = "SwitchForIndividualAppsDetectionCount"

.field private static final TEXT_BROWSING:Ljava/lang/String; = "Browsing"

.field private static final TEXT_CATEGORY:Ljava/lang/String; = "Category"

.field private static final TEXT_CATEGORY_UPDATE_FAIL_COUNT:Ljava/lang/String; = "CategoryUpdateFailCount"

.field private static final TEXT_CHATTING_APP:Ljava/lang/String; = "ChattingApp"

.field private static final TEXT_DATA:Ljava/lang/String; = "Data"

.field private static final TEXT_DATA_USAGE:Ljava/lang/String; = "DataUsage"

.field private static final TEXT_DETECTED_COUNT:Ljava/lang/String; = "DetectedCount"

.field private static final TEXT_GAME:Ljava/lang/String; = "Game"

.field private static final TEXT_INTERNET_PERMISSION:Ljava/lang/String; = "InternetPermission"

.field private static final TEXT_LAUNCHABLE:Ljava/lang/String; = "Launchable"

.field private static final TEXT_PACKAGE_NAME:Ljava/lang/String; = "PackageName"

.field private static final TEXT_SWITCHABLE:Ljava/lang/String; = "Switchable"

.field private static final TEXT_SYSTEM_APP:Ljava/lang/String; = "SystemApp"

.field private static final TEXT_UID:Ljava/lang/String; = "UID"

.field private static final TEXT_USAGE_PATTERN:Ljava/lang/String; = "UsagePattern"

.field private static final TEXT_VOIP:Ljava/lang/String; = "VoIP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10

    .line 1
    const-string p0, "readJSONObjectFromFile - bufReader "

    .line 2
    .line 3
    const-string v0, "readJSONObjectFromFile - fileReader "

    .line 4
    .line 5
    const-string v1, "readJSONObjectFromFile - FileNotFoundException "

    .line 6
    .line 7
    const-string v2, "readJSONObjectFromFile - IOException "

    .line 8
    .line 9
    const-string v3, "readJSONObjectFromFile - JSONException "

    .line 10
    .line 11
    const-string v4, "readJSONObjectFromFile - Exception "

    .line 12
    .line 13
    const-string v5, "readJSONObjectFromFile"

    .line 14
    .line 15
    const-string v6, "SemWifiTransportLayerFileManager"

    .line 16
    .line 17
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    new-instance v5, Ljava/io/File;

    .line 21
    .line 22
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    .line 27
    .line 28
    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    .line 32
    .line 33
    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v8

    .line 40
    if-eqz v8, :cond_0

    .line 41
    .line 42
    new-instance v9, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    .line 46
    .line 47
    move-object p1, v9

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_d

    .line 51
    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :catch_1
    move-exception v1

    .line 56
    goto/16 :goto_6

    .line 57
    .line 58
    :catch_2
    move-exception v1

    .line 59
    goto/16 :goto_8

    .line 60
    .line 61
    :catch_3
    move-exception v2

    .line 62
    goto/16 :goto_a

    .line 63
    .line 64
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_4
    move-exception v1

    .line 69
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 70
    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    invoke-static {v0, v1, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_1
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 80
    .line 81
    .line 82
    goto/16 :goto_c

    .line 83
    .line 84
    :catch_5
    move-exception v0

    .line 85
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    :goto_2
    invoke-static {p0, v0, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .line 94
    .line 95
    goto/16 :goto_c

    .line 96
    .line 97
    :catchall_1
    move-exception v1

    .line 98
    move-object v5, p1

    .line 99
    :goto_3
    move-object p1, v1

    .line 100
    goto/16 :goto_d

    .line 101
    .line 102
    :catch_6
    move-exception v1

    .line 103
    move-object v5, p1

    .line 104
    goto :goto_4

    .line 105
    :catch_7
    move-exception v1

    .line 106
    move-object v5, p1

    .line 107
    goto/16 :goto_6

    .line 108
    .line 109
    :catch_8
    move-exception v1

    .line 110
    move-object v5, p1

    .line 111
    goto/16 :goto_8

    .line 112
    .line 113
    :catch_9
    move-exception v2

    .line 114
    move-object v5, p1

    .line 115
    goto/16 :goto_a

    .line 116
    .line 117
    :catchall_2
    move-exception v1

    .line 118
    move-object v5, p1

    .line 119
    move-object v7, v5

    .line 120
    goto :goto_3

    .line 121
    :catch_a
    move-exception v1

    .line 122
    move-object v5, p1

    .line 123
    move-object v7, v5

    .line 124
    goto :goto_4

    .line 125
    :catch_b
    move-exception v1

    .line 126
    move-object v5, p1

    .line 127
    move-object v7, v5

    .line 128
    goto :goto_6

    .line 129
    :catch_c
    move-exception v1

    .line 130
    move-object v5, p1

    .line 131
    move-object v7, v5

    .line 132
    goto/16 :goto_8

    .line 133
    .line 134
    :catch_d
    move-exception v2

    .line 135
    move-object v5, p1

    .line 136
    move-object v7, v5

    .line 137
    goto/16 :goto_a

    .line 138
    .line 139
    :goto_4
    :try_start_5
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 140
    .line 141
    if-eqz v2, :cond_3

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    .line 160
    .line 161
    if-eqz v7, :cond_5

    .line 162
    .line 163
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :catch_e
    move-exception v1

    .line 168
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 169
    .line 170
    if-eqz v2, :cond_4

    .line 171
    .line 172
    invoke-static {v0, v1, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_5
    :goto_5
    if-eqz v5, :cond_f

    .line 179
    .line 180
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f

    .line 181
    .line 182
    .line 183
    goto/16 :goto_c

    .line 184
    .line 185
    :catch_f
    move-exception v0

    .line 186
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 187
    .line 188
    if-eqz v1, :cond_2

    .line 189
    .line 190
    goto :goto_2

    .line 191
    :goto_6
    :try_start_8
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 192
    .line 193
    if-eqz v2, :cond_6

    .line 194
    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 211
    .line 212
    .line 213
    if-eqz v7, :cond_8

    .line 214
    .line 215
    :try_start_9
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_10

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :catch_10
    move-exception v1

    .line 220
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 221
    .line 222
    if-eqz v2, :cond_7

    .line 223
    .line 224
    invoke-static {v0, v1, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 228
    .line 229
    .line 230
    :cond_8
    :goto_7
    if-eqz v5, :cond_f

    .line 231
    .line 232
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11

    .line 233
    .line 234
    .line 235
    goto/16 :goto_c

    .line 236
    .line 237
    :catch_11
    move-exception v0

    .line 238
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 239
    .line 240
    if-eqz v1, :cond_2

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :goto_8
    :try_start_b
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 245
    .line 246
    if-eqz v3, :cond_9

    .line 247
    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    :cond_9
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 264
    .line 265
    .line 266
    if-eqz v7, :cond_b

    .line 267
    .line 268
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_12

    .line 269
    .line 270
    .line 271
    goto :goto_9

    .line 272
    :catch_12
    move-exception v1

    .line 273
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 274
    .line 275
    if-eqz v2, :cond_a

    .line 276
    .line 277
    invoke-static {v0, v1, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_9
    if-eqz v5, :cond_f

    .line 284
    .line 285
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_13

    .line 286
    .line 287
    .line 288
    goto :goto_c

    .line 289
    :catch_13
    move-exception v0

    .line 290
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 291
    .line 292
    if-eqz v1, :cond_2

    .line 293
    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :goto_a
    :try_start_e
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 297
    .line 298
    if-eqz v3, :cond_c

    .line 299
    .line 300
    new-instance v3, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :cond_c
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 316
    .line 317
    .line 318
    if-eqz v7, :cond_e

    .line 319
    .line 320
    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_14

    .line 321
    .line 322
    .line 323
    goto :goto_b

    .line 324
    :catch_14
    move-exception v1

    .line 325
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 326
    .line 327
    if-eqz v2, :cond_d

    .line 328
    .line 329
    invoke-static {v0, v1, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 333
    .line 334
    .line 335
    :cond_e
    :goto_b
    if-eqz v5, :cond_f

    .line 336
    .line 337
    :try_start_10
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15

    .line 338
    .line 339
    .line 340
    goto :goto_c

    .line 341
    :catch_15
    move-exception v0

    .line 342
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 343
    .line 344
    if-eqz v1, :cond_2

    .line 345
    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    :cond_f
    :goto_c
    return-object p1

    .line 349
    :goto_d
    if-eqz v7, :cond_11

    .line 350
    .line 351
    :try_start_11
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_16

    .line 352
    .line 353
    .line 354
    goto :goto_e

    .line 355
    :catch_16
    move-exception v1

    .line 356
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 357
    .line 358
    if-eqz v2, :cond_10

    .line 359
    .line 360
    invoke-static {v0, v1, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    :cond_10
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 364
    .line 365
    .line 366
    :cond_11
    :goto_e
    if-eqz v5, :cond_13

    .line 367
    .line 368
    :try_start_12
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_17

    .line 369
    .line 370
    .line 371
    goto :goto_f

    .line 372
    :catch_17
    move-exception v0

    .line 373
    sget-boolean v1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 374
    .line 375
    if-eqz v1, :cond_12

    .line 376
    .line 377
    invoke-static {p0, v0, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_12
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 381
    .line 382
    .line 383
    :cond_13
    :goto_f
    throw p1
.end method

.method private readSwitchEnabledUidInfoList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string p0, "readSwitchEnabledUidInfoList - bufReader "

    .line 2
    .line 3
    const-string v0, "readSwitchEnabledUidInfoList - fileReader "

    .line 4
    .line 5
    const-string v1, "readSwitchEnabledUidInfoList"

    .line 6
    .line 7
    const-string v2, "SemWifiTransportLayerFileManager"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/io/File;

    .line 18
    .line 19
    const-string v4, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    .line 26
    .line 27
    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 28
    .line 29
    .line 30
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 31
    .line 32
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    :goto_1
    move-object v4, v5

    .line 55
    goto/16 :goto_b

    .line 56
    .line 57
    :catch_0
    move-exception v4

    .line 58
    goto/16 :goto_4

    .line 59
    .line 60
    :catch_1
    move-exception v4

    .line 61
    goto/16 :goto_6

    .line 62
    .line 63
    :catch_2
    move-exception v4

    .line 64
    goto/16 :goto_8

    .line 65
    .line 66
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_3
    move-exception v4

    .line 71
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 72
    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    invoke-static {v0, v4, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 82
    .line 83
    .line 84
    goto/16 :goto_a

    .line 85
    .line 86
    :catch_4
    move-exception v0

    .line 87
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 88
    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    :goto_3
    invoke-static {p0, v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_a

    .line 98
    .line 99
    :catchall_1
    move-exception v1

    .line 100
    move-object v3, v4

    .line 101
    goto :goto_1

    .line 102
    :catch_5
    move-exception v3

    .line 103
    move-object v8, v4

    .line 104
    move-object v4, v3

    .line 105
    move-object v3, v8

    .line 106
    goto :goto_4

    .line 107
    :catch_6
    move-exception v3

    .line 108
    move-object v8, v4

    .line 109
    move-object v4, v3

    .line 110
    move-object v3, v8

    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :catch_7
    move-exception v3

    .line 114
    move-object v8, v4

    .line 115
    move-object v4, v3

    .line 116
    move-object v3, v8

    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :catchall_2
    move-exception v1

    .line 120
    move-object v3, v4

    .line 121
    goto/16 :goto_b

    .line 122
    .line 123
    :catch_8
    move-exception v3

    .line 124
    move-object v5, v4

    .line 125
    move-object v4, v3

    .line 126
    move-object v3, v5

    .line 127
    goto :goto_4

    .line 128
    :catch_9
    move-exception v3

    .line 129
    move-object v5, v4

    .line 130
    move-object v4, v3

    .line 131
    move-object v3, v5

    .line 132
    goto :goto_6

    .line 133
    :catch_a
    move-exception v3

    .line 134
    move-object v5, v4

    .line 135
    move-object v4, v3

    .line 136
    move-object v3, v5

    .line 137
    goto/16 :goto_8

    .line 138
    .line 139
    :goto_4
    :try_start_5
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 140
    .line 141
    if-eqz v6, :cond_3

    .line 142
    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v7, "readSwitchEnabledUidInfoList - Exception "

    .line 149
    .line 150
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    .line 165
    .line 166
    if-eqz v5, :cond_5

    .line 167
    .line 168
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :catch_b
    move-exception v4

    .line 173
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 174
    .line 175
    if-eqz v5, :cond_4

    .line 176
    .line 177
    invoke-static {v0, v4, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :cond_5
    :goto_5
    if-eqz v3, :cond_c

    .line 184
    .line 185
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .line 186
    .line 187
    .line 188
    goto/16 :goto_a

    .line 189
    .line 190
    :catch_c
    move-exception v0

    .line 191
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 192
    .line 193
    if-eqz v3, :cond_2

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :goto_6
    :try_start_8
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 197
    .line 198
    if-eqz v6, :cond_6

    .line 199
    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    const-string v7, "readSwitchEnabledUidInfoList - IOException "

    .line 206
    .line 207
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    :cond_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 221
    .line 222
    .line 223
    if-eqz v5, :cond_8

    .line 224
    .line 225
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    .line 226
    .line 227
    .line 228
    goto :goto_7

    .line 229
    :catch_d
    move-exception v4

    .line 230
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 231
    .line 232
    if-eqz v5, :cond_7

    .line 233
    .line 234
    invoke-static {v0, v4, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    .line 239
    .line 240
    :cond_8
    :goto_7
    if-eqz v3, :cond_c

    .line 241
    .line 242
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    .line 243
    .line 244
    .line 245
    goto :goto_a

    .line 246
    :catch_e
    move-exception v0

    .line 247
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 248
    .line 249
    if-eqz v3, :cond_2

    .line 250
    .line 251
    goto/16 :goto_3

    .line 252
    .line 253
    :goto_8
    :try_start_b
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 254
    .line 255
    if-eqz v6, :cond_9

    .line 256
    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    const-string v7, "readSwitchEnabledUidInfoList - FileNotFoundException "

    .line 263
    .line 264
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_9
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 278
    .line 279
    .line 280
    if-eqz v5, :cond_b

    .line 281
    .line 282
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_f

    .line 283
    .line 284
    .line 285
    goto :goto_9

    .line 286
    :catch_f
    move-exception v4

    .line 287
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 288
    .line 289
    if-eqz v5, :cond_a

    .line 290
    .line 291
    invoke-static {v0, v4, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    :cond_b
    :goto_9
    if-eqz v3, :cond_c

    .line 298
    .line 299
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_10

    .line 300
    .line 301
    .line 302
    goto :goto_a

    .line 303
    :catch_10
    move-exception v0

    .line 304
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 305
    .line 306
    if-eqz v3, :cond_2

    .line 307
    .line 308
    goto/16 :goto_3

    .line 309
    .line 310
    :cond_c
    :goto_a
    return-object v1

    .line 311
    :goto_b
    if-eqz v4, :cond_e

    .line 312
    .line 313
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_11

    .line 314
    .line 315
    .line 316
    goto :goto_c

    .line 317
    :catch_11
    move-exception v4

    .line 318
    sget-boolean v5, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 319
    .line 320
    if-eqz v5, :cond_d

    .line 321
    .line 322
    invoke-static {v0, v4, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    :cond_d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    .line 327
    .line 328
    :cond_e
    :goto_c
    if-eqz v3, :cond_10

    .line 329
    .line 330
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_12

    .line 331
    .line 332
    .line 333
    goto :goto_d

    .line 334
    :catch_12
    move-exception v0

    .line 335
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 336
    .line 337
    if-eqz v3, :cond_f

    .line 338
    .line 339
    invoke-static {p0, v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :cond_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 343
    .line 344
    .line 345
    :cond_10
    :goto_d
    throw v1
.end method

.method private readWifiApInfoList()Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v1, "SSID"

    .line 2
    .line 3
    const-string v2, "PackageName"

    .line 4
    .line 5
    const-string v3, "readWifiApInfoList - JSONException "

    .line 6
    .line 7
    const-string v0, "readWifiApInfoList"

    .line 8
    .line 9
    const-string v4, "SemWifiTransportLayerFileManager"

    .line 10
    .line 11
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "/data/misc/wifi/TcpMonitorApInfo.json"

    .line 20
    .line 21
    move-object/from16 v6, p0

    .line 22
    .line 23
    invoke-direct {v6, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_7

    .line 28
    .line 29
    :try_start_0
    const-string v6, "Data"

    .line 30
    .line 31
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    move-object v6, v0

    .line 36
    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 39
    .line 40
    if-eqz v6, :cond_0

    .line 41
    .line 42
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    goto :goto_0

    .line 62
    :goto_1
    if-eqz v6, :cond_7

    .line 63
    .line 64
    const/4 v8, 0x0

    .line 65
    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ge v8, v0, :cond_7

    .line 70
    .line 71
    :try_start_1
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    .line 75
    new-instance v15, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    :try_start_2
    const-string v0, "DetectedPackageList"

    .line 81
    .line 82
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 83
    .line 84
    .line 85
    move-result-object v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    .line 86
    if-eqz v10, :cond_3

    .line 87
    .line 88
    const/4 v11, 0x0

    .line 89
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-ge v11, v0, :cond_3

    .line 94
    .line 95
    :try_start_3
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 99
    :try_start_4
    new-instance v12, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    const-string v14, "PackageDetectedCount"

    .line 106
    .line 107
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v14

    .line 111
    const-string v7, "PackageLastDetectedTime"

    .line 112
    .line 113
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 117
    move-object/from16 v16, v6

    .line 118
    .line 119
    :try_start_5
    const-string v6, "PackageNormalOperationTime"

    .line 120
    .line 121
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    invoke-direct {v12, v13, v14, v7, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v15, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :catch_1
    move-exception v0

    .line 137
    goto :goto_4

    .line 138
    :catch_2
    move-exception v0

    .line 139
    move-object/from16 v16, v6

    .line 140
    .line 141
    :goto_4
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 142
    .line 143
    if-eqz v6, :cond_1

    .line 144
    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :catch_3
    move-exception v0

    .line 165
    move-object/from16 v16, v6

    .line 166
    .line 167
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 168
    .line 169
    if-eqz v6, :cond_2

    .line 170
    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 187
    .line 188
    .line 189
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 190
    .line 191
    move-object/from16 v6, v16

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    move-object/from16 v16, v6

    .line 195
    .line 196
    :try_start_6
    new-instance v10, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 197
    .line 198
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    const-string v0, "AccumulatedConnectionCount"

    .line 203
    .line 204
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    const-string v0, "AccumulatedConnectionTime"

    .line 209
    .line 210
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v13

    .line 214
    const-string v0, "SwitchForIndividualAppsDetectionCount"

    .line 215
    .line 216
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v14

    .line 220
    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;-><init>(Ljava/lang/String;IIILjava/util/HashMap;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v5, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :catch_4
    move-exception v0

    .line 232
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 233
    .line 234
    if-eqz v6, :cond_4

    .line 235
    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 252
    .line 253
    .line 254
    goto :goto_6

    .line 255
    :catch_5
    move-exception v0

    .line 256
    move-object/from16 v16, v6

    .line 257
    .line 258
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 259
    .line 260
    if-eqz v6, :cond_5

    .line 261
    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :catch_6
    move-exception v0

    .line 282
    move-object/from16 v16, v6

    .line 283
    .line 284
    sget-boolean v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 285
    .line 286
    if-eqz v6, :cond_6

    .line 287
    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_6
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 304
    .line 305
    .line 306
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 307
    .line 308
    move-object/from16 v6, v16

    .line 309
    .line 310
    goto/16 :goto_2

    .line 311
    .line 312
    :cond_7
    return-object v5
.end method

.method private readWifiPackageInfoList()Ljava/util/HashMap;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "readWifiPackageInfoList"

    .line 2
    .line 3
    const-string v1, "SemWifiTransportLayerFileManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    const-string v0, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    .line 14
    .line 15
    move-object/from16 v3, p0

    .line 16
    .line 17
    invoke-direct {v3, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const-string v3, "Data"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v3, 0x0

    .line 30
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ge v3, v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    new-instance v5, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 41
    .line 42
    const-string v6, "UID"

    .line 43
    .line 44
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const-string v7, "PackageName"

    .line 49
    .line 50
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    const-string v8, "Category"

    .line 55
    .line 56
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    const-string v9, "ChattingApp"

    .line 61
    .line 62
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    const-string v10, "VoIP"

    .line 67
    .line 68
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    const-string v11, "Game"

    .line 73
    .line 74
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v11

    .line 78
    const-string v12, "Browsing"

    .line 79
    .line 80
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v12

    .line 84
    const-string v13, "SystemApp"

    .line 85
    .line 86
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    const-string v14, "Launchable"

    .line 91
    .line 92
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    const-string v15, "Switchable"

    .line 97
    .line 98
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v15

    .line 102
    move-object/from16 p0, v0

    .line 103
    .line 104
    const-string v0, "DetectedCount"

    .line 105
    .line 106
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v16

    .line 110
    const-string v0, "DataUsage"

    .line 111
    .line 112
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v17

    .line 116
    const-string v0, "UsagePattern"

    .line 117
    .line 118
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    move-result v18

    .line 122
    const-string v0, "CategoryUpdateFailCount"

    .line 123
    .line 124
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v19

    .line 128
    const-string v0, "InternetPermission"

    .line 129
    .line 130
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v20

    .line 134
    invoke-direct/range {v5 .. v20}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZZZZZIIIIZ)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    move-object/from16 v0, p0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    sget-boolean v3, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 155
    .line 156
    if-eqz v3, :cond_0

    .line 157
    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v4, "readWifiPackageInfoList - JSONException "

    .line 161
    .line 162
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :cond_1
    return-object v2
.end method

.method private writeJSONObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string p0, "writeJSONObjectToFile - IOException(finally) "

    .line 2
    .line 3
    const-string v0, "writeJSONObjectToFile - IOException "

    .line 4
    .line 5
    const-string v1, "writeJSONObjectToFile - Exception "

    .line 6
    .line 7
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 8
    .line 9
    const-string v3, "SemWifiTransportLayerFileManager"

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const-string v2, "writeJSONObjectToFile"

    .line 14
    .line 15
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    new-instance v4, Ljava/io/File;

    .line 23
    .line 24
    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_2

    .line 38
    .line 39
    :goto_0
    return v2

    .line 40
    :cond_2
    const/4 v5, 0x0

    .line 41
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 46
    .line 47
    new-instance v4, Ljava/io/FileWriter;

    .line 48
    .line 49
    invoke-direct {v4, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    .line 51
    .line 52
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x1

    .line 63
    move-object v5, v4

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    move-object v5, v4

    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :catch_0
    move-exception p1

    .line 70
    move-object v5, v4

    .line 71
    goto :goto_3

    .line 72
    :catch_1
    move-exception p1

    .line 73
    move-object v5, v4

    .line 74
    goto :goto_4

    .line 75
    :catchall_1
    move-exception p1

    .line 76
    goto :goto_6

    .line 77
    :catch_2
    move-exception p1

    .line 78
    goto :goto_3

    .line 79
    :catch_3
    move-exception p1

    .line 80
    goto :goto_4

    .line 81
    :cond_3
    :goto_1
    if-eqz v5, :cond_7

    .line 82
    .line 83
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 84
    .line 85
    .line 86
    goto :goto_5

    .line 87
    :catch_4
    move-exception p1

    .line 88
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 89
    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    :goto_2
    invoke-static {p0, p1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    goto :goto_5

    .line 99
    :goto_3
    :try_start_3
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 100
    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .line 120
    .line 121
    if-eqz v5, :cond_7

    .line 122
    .line 123
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catch_5
    move-exception p1

    .line 128
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 129
    .line 130
    if-eqz p2, :cond_4

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :goto_4
    :try_start_5
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 134
    .line 135
    if-eqz p2, :cond_6

    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 153
    .line 154
    .line 155
    if-eqz v5, :cond_7

    .line 156
    .line 157
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 158
    .line 159
    .line 160
    goto :goto_5

    .line 161
    :catch_6
    move-exception p1

    .line 162
    sget-boolean p2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 163
    .line 164
    if-eqz p2, :cond_4

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_7
    :goto_5
    return v2

    .line 168
    :goto_6
    if-eqz v5, :cond_9

    .line 169
    .line 170
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 171
    .line 172
    .line 173
    goto :goto_7

    .line 174
    :catch_7
    move-exception p2

    .line 175
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 176
    .line 177
    if-eqz v0, :cond_8

    .line 178
    .line 179
    invoke-static {p0, p2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_8
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :cond_9
    :goto_7
    throw p1
.end method

.method private writeSwitchEnabledUidInfoList(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string p0, "writeSwitchEnabledUidInfoList - IOException(finally) "

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuffer;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "SemWifiTransportLayerFileManager"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    move v4, v2

    .line 24
    :goto_0
    if-ge v4, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    check-cast v5, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    new-instance v6, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v5, "\n"

    .line 47
    .line 48
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v4, "writeSwitchEnabledUidInfoList - ConcurrentModificationException "

    .line 63
    .line 64
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "writeSwitchEnabledUidInfoList - "

    .line 85
    .line 86
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    new-instance v3, Ljava/io/File;

    .line 94
    .line 95
    const-string v4, "/data/misc/wifi/TcpMonitorSwitchEnabledUID.xml"

    .line 96
    .line 97
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_1

    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_1

    .line 111
    .line 112
    return v2

    .line 113
    :cond_1
    const/4 v5, 0x0

    .line 114
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    new-instance v3, Ljava/io/FileWriter;

    .line 121
    .line 122
    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .line 124
    .line 125
    if-eqz p1, :cond_2

    .line 126
    .line 127
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catchall_0
    move-exception p1

    .line 153
    move-object v5, v3

    .line 154
    goto :goto_6

    .line 155
    :catch_1
    move-exception p1

    .line 156
    move-object v5, v3

    .line 157
    goto :goto_4

    .line 158
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 159
    move-object v5, v3

    .line 160
    goto :goto_2

    .line 161
    :catchall_1
    move-exception p1

    .line 162
    goto :goto_6

    .line 163
    :catch_2
    move-exception p1

    .line 164
    goto :goto_4

    .line 165
    :cond_3
    :goto_2
    if-eqz v5, :cond_5

    .line 166
    .line 167
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 168
    .line 169
    .line 170
    goto :goto_5

    .line 171
    :catch_3
    move-exception p1

    .line 172
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 173
    .line 174
    if-eqz v0, :cond_4

    .line 175
    .line 176
    :goto_3
    invoke-static {p0, p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    .line 181
    .line 182
    goto :goto_5

    .line 183
    :goto_4
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v3, "writeSwitchEnabledUidInfoList - IOException "

    .line 189
    .line 190
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 204
    .line 205
    .line 206
    if-eqz v5, :cond_5

    .line 207
    .line 208
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :catch_4
    move-exception p1

    .line 213
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 214
    .line 215
    if-eqz v0, :cond_4

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_5
    :goto_5
    return v2

    .line 219
    :goto_6
    if-eqz v5, :cond_7

    .line 220
    .line 221
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 222
    .line 223
    .line 224
    goto :goto_7

    .line 225
    :catch_5
    move-exception v0

    .line 226
    sget-boolean v2, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 227
    .line 228
    if-eqz v2, :cond_6

    .line 229
    .line 230
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/io/IOException;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    .line 235
    .line 236
    :cond_7
    :goto_7
    throw p1
.end method

.method private writeWifiApInfoList(Ljava/util/HashMap;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "writeWifiApInfoList"

    .line 2
    .line 3
    const-string v1, "SemWifiTransportLayerFileManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_5

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_5

    .line 15
    .line 16
    new-instance v0, Lorg/json/JSONArray;

    .line 17
    .line 18
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    .line 45
    .line 46
    new-instance v4, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "SSID"

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v5, "AccumulatedConnectionCount"

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionCount()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v5, "AccumulatedConnectionTime"

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v5, "SwitchForIndividualAppsDetectionCount"

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_1

    .line 98
    .line 99
    new-instance v5, Lorg/json/JSONArray;

    .line 100
    .line 101
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_0

    .line 117
    .line 118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    check-cast v6, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 123
    .line 124
    new-instance v7, Lorg/json/JSONObject;

    .line 125
    .line 126
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v8, "PackageName"

    .line 130
    .line 131
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageName()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v9

    .line 135
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    const-string v8, "PackageDetectedCount"

    .line 139
    .line 140
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    .line 146
    .line 147
    const-string v8, "PackageLastDetectedTime"

    .line 148
    .line 149
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getLastDetectedTime()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    .line 155
    .line 156
    const-string v8, "PackageNormalOperationTime"

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageNormalOperationTime()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :catch_0
    move-exception p0

    .line 170
    goto :goto_2

    .line 171
    :catch_1
    move-exception p0

    .line 172
    goto :goto_3

    .line 173
    :cond_0
    const-string v3, "DetectedPackageList"

    .line 174
    .line 175
    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .line 177
    .line 178
    :cond_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 179
    .line 180
    .line 181
    goto/16 :goto_0

    .line 182
    .line 183
    :cond_2
    const-string p1, "Data"

    .line 184
    .line 185
    invoke-virtual {v2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    const-string p1, "/data/misc/wifi/TcpMonitorApInfo.json"

    .line 189
    .line 190
    invoke-direct {p0, v2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeJSONObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return p0

    .line 195
    :goto_2
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 196
    .line 197
    if-eqz p1, :cond_3

    .line 198
    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    const-string v0, "writeWifiApInfoList - ConcurrentModificationException "

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_3
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 217
    .line 218
    .line 219
    goto :goto_4

    .line 220
    :goto_3
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 221
    .line 222
    if-eqz p1, :cond_4

    .line 223
    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v0, "writeWifiApInfoList - JSONException "

    .line 227
    .line 228
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    :cond_4
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 242
    .line 243
    .line 244
    :cond_5
    :goto_4
    const/4 p0, 0x0

    .line 245
    return p0
.end method

.method private writeWifiPackageInfoList(Ljava/util/HashMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "writeWifiPackageInfoList"

    .line 2
    .line 3
    const-string v1, "SemWifiTransportLayerFileManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    .line 13
    .line 14
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-nez v4, :cond_4

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;

    .line 47
    .line 48
    new-instance v5, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "UID"

    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUid()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string v6, "PackageName"

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getPackageName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    const-string v6, "Category"

    .line 72
    .line 73
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategory()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v6, "ChattingApp"

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isChatApp()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    const-string v6, "VoIP"

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isVoip()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    const-string v6, "Game"

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isGamingApp()Z

    .line 101
    .line 102
    .line 103
    move-result v7

    .line 104
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    const-string v6, "Browsing"

    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isBrowsingApp()Z

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    const-string v6, "SystemApp"

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSystemApp()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string v6, "Launchable"

    .line 126
    .line 127
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isLaunchable()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string v6, "Switchable"

    .line 135
    .line 136
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->isSwitchable()Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    const-string v6, "DetectedCount"

    .line 144
    .line 145
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDetectedCount()I

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    const-string v6, "DataUsage"

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getDataUsage()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    const-string v6, "UsagePattern"

    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getUsagePattern()I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    const-string v6, "CategoryUpdateFailCount"

    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->getCategoryUpdateFailCount()I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    const-string v6, "InternetPermission"

    .line 180
    .line 181
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;->hasInternetPermission()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :catch_0
    move-exception p0

    .line 194
    goto :goto_1

    .line 195
    :catch_1
    move-exception p0

    .line 196
    goto :goto_2

    .line 197
    :cond_1
    const-string p1, "Data"

    .line 198
    .line 199
    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    const-string p1, "/data/misc/wifi/TcpMonitorPackageInfo.json"

    .line 203
    .line 204
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeJSONObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    return p0

    .line 209
    :goto_1
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 210
    .line 211
    if-eqz p1, :cond_2

    .line 212
    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string v2, "writeWifiPackageInfoList - ConcurrentModificationException "

    .line 216
    .line 217
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_2
    invoke-virtual {p0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 231
    .line 232
    .line 233
    goto :goto_3

    .line 234
    :goto_2
    sget-boolean p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 235
    .line 236
    if-eqz p1, :cond_3

    .line 237
    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v2, "writeWifiPackageInfoList - JSONException "

    .line 241
    .line 242
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 256
    .line 257
    .line 258
    :cond_4
    :goto_3
    return v0
.end method


# virtual methods
.method public loadSwitchEnabledUidListFromFile()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SemWifiTransportLayerFileManager"

    .line 2
    .line 3
    const-string v1, "loadSwitchEnabledUidListFromFile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readSwitchEnabledUidInfoList()Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public loadWifiApInfoFromFile()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "loadWifiApInfoFromFile"

    .line 2
    .line 3
    const-string v1, "SemWifiTransportLayerFileManager"

    .line 4
    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readWifiApInfoList()Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->DBG:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "loadWifiPackageInfoFromFile - "

    .line 19
    .line 20
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object p0
.end method

.method public loadWifiPackageInfoFromFile()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "SemWifiTransportLayerFileManager"

    .line 2
    .line 3
    const-string v1, "loadWifiPackageInfoFromFile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->readWifiPackageInfoList()Ljava/util/HashMap;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public saveSwitchEnabledUidListToFile(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "SemWifiTransportLayerFileManager"

    .line 2
    .line 3
    const-string v1, "saveSwitchEnabledUidListToFile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeSwitchEnabledUidInfoList(Ljava/util/ArrayList;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public saveWifiApInfoToFile(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "SemWifiTransportLayerFileManager"

    .line 2
    .line 3
    const-string v1, "saveWifiApInfoToFile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeWifiApInfoList(Ljava/util/HashMap;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public saveWifiPackageInfoToFile(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiPackageInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "SemWifiTransportLayerFileManager"

    .line 2
    .line 3
    const-string v1, "saveWifiPackageInfoToFile"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerFileManager;->writeWifiPackageInfoList(Ljava/util/HashMap;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method
