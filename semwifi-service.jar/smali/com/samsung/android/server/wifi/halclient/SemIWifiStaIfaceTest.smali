.class public Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/IHalTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemIWifiStaIfaceTest"

.field private static final TEST_SETTING_CONFIGURE_ROAMING:Ljava/lang/String; = "configureRoaming"

.field private static final TEST_SETTING_ENABLE_LINKLAYER_STATS_COLLECTION:Ljava/lang/String; = "enableLinkLayerStatsCollection"

.field private static final TEST_SETTING_ENABLE_OFFLOAD:Ljava/lang/String; = "enableNdOffload"

.field private static final TEST_SETTING_GET_APF_PACKET_FILTER_CAPABILITIES:Ljava/lang/String; = "getApfPacketFilterCapabilities"

.field private static final TEST_SETTING_GET_BACKGROUND_SCAN_CAPABILITIES:Ljava/lang/String; = "getBackgroundScanCapabilities"

.field private static final TEST_SETTING_GET_DEBUG_RX_PACKET_FATES:Ljava/lang/String; = "getDebugRxPacketFates"

.field private static final TEST_SETTING_GET_DEBUG_TX_PACKET_FATES:Ljava/lang/String; = "getDebugTxPacketFates"

.field private static final TEST_SETTING_GET_FACTORY_MACADDRESS:Ljava/lang/String; = "getFactoryMacAddress"

.field private static final TEST_SETTING_GET_FEATURESET:Ljava/lang/String; = "getFeatureSet"

.field private static final TEST_SETTING_GET_LINKLAYER_STATS:Ljava/lang/String; = "getLinkLayerStats"

.field private static final TEST_SETTING_GET_ROAMING_CAPABILITIES:Ljava/lang/String; = "getRoamingCapabilities"

.field private static final TEST_SETTING_INSTALL_APF_PACKET_FILTER:Ljava/lang/String; = "installApfPacketFilter"

.field static final TEST_SETTING_MODULE_IWIFISTAIFACE:Ljava/lang/String; = "IWifiStaIface"

.field private static final TEST_SETTING_READ_APF_PACKET_FILTER_DATA:Ljava/lang/String; = "readApfPacketFilterData"

.field private static final TEST_SETTING_SET_DTIM_MULTIPLIER:Ljava/lang/String; = "setDtimMultiplier"

.field private static final TEST_SETTING_SET_MACADDRESS:Ljava/lang/String; = "setMacAddress"

.field private static final TEST_SETTING_SET_ROAMING_STATE:Ljava/lang/String; = "setRoamingState"

.field private static final TEST_SETTING_SET_SCAN_MODE:Ljava/lang/String; = "setScanMode"

.field private static final TEST_SETTING_START_BACKGROUND_SCAN:Ljava/lang/String; = "startBackgroundScan"

.field private static final TEST_SETTING_START_DEBUG_PACKET_FATE_MONITORING:Ljava/lang/String; = "startDebugPacketFateMonitoring"

.field private static final TEST_SETTING_START_RSSI_MONITORING:Ljava/lang/String; = "startRssiMonitoring"

.field private static final TEST_SETTING_STOP_BACKGROUND_SCAN:Ljava/lang/String; = "stopBackgroundScan"

.field private static final TEST_SETTING_STOP_RSSI_MONITORING:Ljava/lang/String; = "stopRssiMonitoring"

.field private static final TEST_SETTING_STOP_SENDING_KEEPALIVE_PACKETS:Ljava/lang/String; = "stopSendingKeepAlivePackets"


# instance fields
.field private mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setTestSettings(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "method_name"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "parameters"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "setTestSettings "

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "SemIWifiStaIfaceTest"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string v1, "enableLinkLayerStatsCollection"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 37
    .line 38
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableLinkLayerStatsCollection(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_0
    const-string v1, "getBackgroundScanCapabilities"

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 72
    .line 73
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getBackgroundScanCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanCapabilities;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_1
    const-string v1, "getFeatureSet"

    .line 89
    .line 90
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 97
    .line 98
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getFeatureSet(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_2
    const-string v1, "getDebugRxPacketFates"

    .line 114
    .line 115
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_3

    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 122
    .line 123
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getDebugRxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugRxPacketFateReport;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    return-object p0

    .line 138
    :cond_3
    const-string v1, "getDebugTxPacketFates"

    .line 139
    .line 140
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_4

    .line 145
    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 147
    .line 148
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getDebugTxPacketFates(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugTxPacketFateReport;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    return-object p0

    .line 163
    :cond_4
    const-string v1, "getFactoryMacAddress"

    .line 164
    .line 165
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_5

    .line 170
    .line 171
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 172
    .line 173
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getFactoryMacAddress(Ljava/lang/String;)[B

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    return-object p0

    .line 188
    :cond_5
    const-string v1, "getLinkLayerStats"

    .line 189
    .line 190
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_6

    .line 195
    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 197
    .line 198
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    check-cast p1, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :cond_6
    const-string v1, "getRoamingCapabilities"

    .line 214
    .line 215
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-eqz v1, :cond_7

    .line 220
    .line 221
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 222
    .line 223
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    check-cast p1, Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamingCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingCapabilities;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    return-object p0

    .line 238
    :cond_7
    const-string v1, "startBackgroundScan"

    .line 239
    .line 240
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    const/4 v4, 0x3

    .line 245
    const/4 v5, 0x2

    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;

    .line 249
    .line 250
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;-><init>()V

    .line 251
    .line 252
    .line 253
    new-array v1, v2, [Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;

    .line 254
    .line 255
    iput-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;->buckets:[Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;

    .line 256
    .line 257
    new-instance v6, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;

    .line 258
    .line 259
    invoke-direct {v6}, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;-><init>()V

    .line 260
    .line 261
    .line 262
    aput-object v6, v1, v3

    .line 263
    .line 264
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;->buckets:[Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;

    .line 265
    .line 266
    aget-object v1, v1, v3

    .line 267
    .line 268
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    check-cast v5, Ljava/lang/Integer;

    .line 273
    .line 274
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v5

    .line 278
    iput v5, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;->eventReportScheme:I

    .line 279
    .line 280
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;->buckets:[Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;

    .line 281
    .line 282
    aget-object v1, v1, v3

    .line 283
    .line 284
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    check-cast v4, Ljava/lang/Integer;

    .line 289
    .line 290
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    iput v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;->periodInMs:I

    .line 295
    .line 296
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;->buckets:[Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;

    .line 297
    .line 298
    aget-object v1, v1, v3

    .line 299
    .line 300
    const/4 v4, 0x4

    .line 301
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v4

    .line 305
    check-cast v4, [I

    .line 306
    .line 307
    iput-object v4, v1, Lcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanBucketParameters;->frequencies:[I

    .line 308
    .line 309
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 310
    .line 311
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    check-cast v1, Ljava/lang/String;

    .line 316
    .line 317
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    check-cast p1, Ljava/lang/Integer;

    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startBackgroundScan(Ljava/lang/String;ILcom/samsung/wifi/x/android/hardware/wifi/StaBackgroundScanParameters;)Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object p0

    .line 335
    return-object p0

    .line 336
    :cond_8
    const-string v1, "startDebugPacketFateMonitoring"

    .line 337
    .line 338
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-eqz v1, :cond_9

    .line 343
    .line 344
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 345
    .line 346
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    check-cast p1, Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startDebugPacketFateMonitoring(Ljava/lang/String;)Z

    .line 353
    .line 354
    .line 355
    move-result p0

    .line 356
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p0

    .line 360
    return-object p0

    .line 361
    :cond_9
    const-string v1, "stopBackgroundScan"

    .line 362
    .line 363
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-eqz v1, :cond_a

    .line 368
    .line 369
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 370
    .line 371
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Ljava/lang/String;

    .line 376
    .line 377
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    check-cast p1, Ljava/lang/Integer;

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->stopBackgroundScan(Ljava/lang/String;I)Z

    .line 388
    .line 389
    .line 390
    move-result p0

    .line 391
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p0

    .line 395
    return-object p0

    .line 396
    :cond_a
    const-string v1, "setScanMode"

    .line 397
    .line 398
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_b

    .line 403
    .line 404
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 405
    .line 406
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Ljava/lang/String;

    .line 411
    .line 412
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    check-cast p1, Ljava/lang/Boolean;

    .line 417
    .line 418
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 419
    .line 420
    .line 421
    move-result p1

    .line 422
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanMode(Ljava/lang/String;Z)Z

    .line 423
    .line 424
    .line 425
    move-result p0

    .line 426
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p0

    .line 430
    return-object p0

    .line 431
    :cond_b
    const-string v1, "configureRoaming"

    .line 432
    .line 433
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_c

    .line 438
    .line 439
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;

    .line 440
    .line 441
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;-><init>()V

    .line 442
    .line 443
    .line 444
    new-array v1, v2, [Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    .line 445
    .line 446
    iput-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;->bssidBlocklist:[Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    .line 447
    .line 448
    new-array v4, v2, [Lcom/samsung/wifi/x/android/hardware/wifi/Ssid;

    .line 449
    .line 450
    iput-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;->ssidAllowlist:[Lcom/samsung/wifi/x/android/hardware/wifi/Ssid;

    .line 451
    .line 452
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    .line 453
    .line 454
    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;-><init>()V

    .line 455
    .line 456
    .line 457
    aput-object v4, v1, v3

    .line 458
    .line 459
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;->ssidAllowlist:[Lcom/samsung/wifi/x/android/hardware/wifi/Ssid;

    .line 460
    .line 461
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/Ssid;

    .line 462
    .line 463
    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/Ssid;-><init>()V

    .line 464
    .line 465
    .line 466
    aput-object v4, v1, v3

    .line 467
    .line 468
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;->bssidBlocklist:[Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    .line 469
    .line 470
    aget-object v1, v1, v3

    .line 471
    .line 472
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    check-cast v2, Ljava/lang/String;

    .line 477
    .line 478
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    iput-object v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;->data:[B

    .line 483
    .line 484
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;->ssidAllowlist:[Lcom/samsung/wifi/x/android/hardware/wifi/Ssid;

    .line 485
    .line 486
    aget-object v1, v1, v3

    .line 487
    .line 488
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    check-cast v2, Ljava/lang/String;

    .line 493
    .line 494
    invoke-static {v2}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    iput-object v2, v1, Lcom/samsung/wifi/x/android/hardware/wifi/Ssid;->data:[B

    .line 499
    .line 500
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 501
    .line 502
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object p1

    .line 506
    check-cast p1, Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->configureRoaming(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/StaRoamingConfig;)Z

    .line 509
    .line 510
    .line 511
    move-result p0

    .line 512
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p0

    .line 516
    return-object p0

    .line 517
    :cond_c
    const-string v1, "enableNdOffload"

    .line 518
    .line 519
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_d

    .line 524
    .line 525
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 526
    .line 527
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    check-cast v0, Ljava/lang/String;

    .line 532
    .line 533
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object p1

    .line 537
    check-cast p1, Ljava/lang/Boolean;

    .line 538
    .line 539
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 540
    .line 541
    .line 542
    move-result p1

    .line 543
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableNdOffload(Ljava/lang/String;Z)Z

    .line 544
    .line 545
    .line 546
    move-result p0

    .line 547
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object p0

    .line 551
    return-object p0

    .line 552
    :cond_d
    const-string v1, "getApfPacketFilterCapabilities"

    .line 553
    .line 554
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-eqz v1, :cond_e

    .line 559
    .line 560
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 561
    .line 562
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    check-cast p1, Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getApfPacketFilterCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/StaApfPacketFilterCapabilities;

    .line 569
    .line 570
    .line 571
    move-result-object p0

    .line 572
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    return-object p0

    .line 577
    :cond_e
    const-string v1, "installApfPacketFilter"

    .line 578
    .line 579
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    if-eqz v1, :cond_f

    .line 584
    .line 585
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 586
    .line 587
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    check-cast v0, Ljava/lang/String;

    .line 592
    .line 593
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    check-cast p1, [B

    .line 598
    .line 599
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->installApfPacketFilter(Ljava/lang/String;[B)Z

    .line 600
    .line 601
    .line 602
    move-result p0

    .line 603
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p0

    .line 607
    return-object p0

    .line 608
    :cond_f
    const-string v1, "readApfPacketFilterData"

    .line 609
    .line 610
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    if-eqz v1, :cond_10

    .line 615
    .line 616
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 617
    .line 618
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object p1

    .line 622
    check-cast p1, Ljava/lang/String;

    .line 623
    .line 624
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->readApfPacketFilterData(Ljava/lang/String;)[B

    .line 625
    .line 626
    .line 627
    move-result-object p0

    .line 628
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object p0

    .line 632
    return-object p0

    .line 633
    :cond_10
    const-string v1, "setMacAddress"

    .line 634
    .line 635
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    if-eqz v1, :cond_11

    .line 640
    .line 641
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 642
    .line 643
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    check-cast v0, Ljava/lang/String;

    .line 648
    .line 649
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object p1

    .line 653
    check-cast p1, Ljava/lang/String;

    .line 654
    .line 655
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMacAddress(Ljava/lang/String;[B)Z

    .line 660
    .line 661
    .line 662
    move-result p0

    .line 663
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object p0

    .line 667
    return-object p0

    .line 668
    :cond_11
    const-string v1, "setRoamingState"

    .line 669
    .line 670
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    if-eqz v1, :cond_12

    .line 675
    .line 676
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 677
    .line 678
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    check-cast v0, Ljava/lang/String;

    .line 683
    .line 684
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object p1

    .line 688
    check-cast p1, Ljava/lang/Byte;

    .line 689
    .line 690
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setRoamingState(Ljava/lang/String;B)Z

    .line 695
    .line 696
    .line 697
    move-result p0

    .line 698
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object p0

    .line 702
    return-object p0

    .line 703
    :cond_12
    const-string v1, "setDtimMultiplier"

    .line 704
    .line 705
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    if-eqz v1, :cond_13

    .line 710
    .line 711
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 712
    .line 713
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    check-cast v0, Ljava/lang/String;

    .line 718
    .line 719
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object p1

    .line 723
    check-cast p1, Ljava/lang/Integer;

    .line 724
    .line 725
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 726
    .line 727
    .line 728
    move-result p1

    .line 729
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setDtimMultiplier(Ljava/lang/String;I)Z

    .line 730
    .line 731
    .line 732
    move-result p0

    .line 733
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object p0

    .line 737
    return-object p0

    .line 738
    :cond_13
    const-string v1, "startRssiMonitoring"

    .line 739
    .line 740
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 741
    .line 742
    .line 743
    move-result v1

    .line 744
    if-eqz v1, :cond_14

    .line 745
    .line 746
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 747
    .line 748
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v0

    .line 752
    check-cast v0, Ljava/lang/String;

    .line 753
    .line 754
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    check-cast v1, Ljava/lang/Integer;

    .line 759
    .line 760
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 761
    .line 762
    .line 763
    move-result v1

    .line 764
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    check-cast v2, Ljava/lang/Integer;

    .line 769
    .line 770
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object p1

    .line 778
    check-cast p1, Ljava/lang/Integer;

    .line 779
    .line 780
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 781
    .line 782
    .line 783
    move-result p1

    .line 784
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startRssiMonitoring(Ljava/lang/String;III)Z

    .line 785
    .line 786
    .line 787
    move-result p0

    .line 788
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object p0

    .line 792
    return-object p0

    .line 793
    :cond_14
    const-string v1, "stopRssiMonitoring"

    .line 794
    .line 795
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 796
    .line 797
    .line 798
    move-result v1

    .line 799
    if-eqz v1, :cond_15

    .line 800
    .line 801
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 802
    .line 803
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v0

    .line 807
    check-cast v0, Ljava/lang/String;

    .line 808
    .line 809
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object p1

    .line 813
    check-cast p1, Ljava/lang/Integer;

    .line 814
    .line 815
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 816
    .line 817
    .line 818
    move-result p1

    .line 819
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->stopRssiMonitoring(Ljava/lang/String;I)Z

    .line 820
    .line 821
    .line 822
    move-result p0

    .line 823
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object p0

    .line 827
    return-object p0

    .line 828
    :cond_15
    const-string v1, "stopSendingKeepAlivePackets"

    .line 829
    .line 830
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 831
    .line 832
    .line 833
    move-result v0

    .line 834
    if-eqz v0, :cond_16

    .line 835
    .line 836
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 837
    .line 838
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    check-cast v0, Ljava/lang/String;

    .line 843
    .line 844
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 845
    .line 846
    .line 847
    move-result-object p1

    .line 848
    check-cast p1, Ljava/lang/Integer;

    .line 849
    .line 850
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 851
    .line 852
    .line 853
    move-result p1

    .line 854
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->stopSendingKeepAlivePackets(Ljava/lang/String;I)Z

    .line 855
    .line 856
    .line 857
    move-result p0

    .line 858
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object p0

    .line 862
    return-object p0

    .line 863
    :cond_16
    const-string p0, "Exception"

    .line 864
    .line 865
    return-object p0
.end method
