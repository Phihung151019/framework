.class public Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/IHalTest;


# static fields
.field private static final BAND_24GHZ_UP_BOUND:I = 0xe

.field private static final BAND_5GHZ_UP_BOUND:I = 0xb1

.field private static final TAG:Ljava/lang/String; = "SemIWifiChipTest"

.field private static final TEST_SETTING_ENABLE_DEBUG_ERROR_ALERTS:Ljava/lang/String; = "enableDebugErrorAlerts"

.field private static final TEST_SETTING_ENABLE_STA_CHANNEL_FOR_PEER_NETWORK:Ljava/lang/String; = "enableStaChannelForPeerNetwork"

.field private static final TEST_SETTING_FLUSH_RINGBUFFER_TO_FILE:Ljava/lang/String; = "flushRingBufferToFile"

.field private static final TEST_SETTING_FORCE_DUMP_TO_DEBUG_RINGBUFFER:Ljava/lang/String; = "forceDumpToDebugRingBuffer"

.field private static final TEST_SETTING_GET_AVAILABLE_MODES:Ljava/lang/String; = "getAvailableModes"

.field private static final TEST_SETTING_GET_DEBUG_HOSTWAKE_REASON_STATS:Ljava/lang/String; = "getDebugHostWakeReasonStats"

.field private static final TEST_SETTING_GET_DEBUG_RINGBUFFER_STATUS:Ljava/lang/String; = "getDebugRingBuffersStatus"

.field private static final TEST_SETTING_GET_FEATURESET:Ljava/lang/String; = "getFeatureSet"

.field private static final TEST_SETTING_GET_ID:Ljava/lang/String; = "getId"

.field private static final TEST_SETTING_GET_MODE:Ljava/lang/String; = "getMode"

.field private static final TEST_SETTING_GET_STA_IFACE:Ljava/lang/String; = "getStaIface"

.field private static final TEST_SETTING_GET_STA_IFACE_NAMES:Ljava/lang/String; = "getStaIfaceNames"

.field private static final TEST_SETTING_GET_SUPPORTED_RADIO_COMBINATIONS:Ljava/lang/String; = "getSupportedRadioCombinations"

.field private static final TEST_SETTING_GET_USABLE_CHANNELS:Ljava/lang/String; = "getUsableChannels"

.field private static final TEST_SETTING_GET_WIFICHIP_CAPABILITIES:Ljava/lang/String; = "getWifiChipCapabilities"

.field static final TEST_SETTING_MODULE_IWIFICHIP:Ljava/lang/String; = "IWifiChip"

.field private static final TEST_SETTING_REQUEST_CHIP_DEBUG_INFO:Ljava/lang/String; = "requestChipDebugInfo"

.field private static final TEST_SETTING_REQUEST_DRIVER_DEBUG_DUMP:Ljava/lang/String; = "requestDriverDebugDump"

.field private static final TEST_SETTING_REQUEST_FIRMWARE_DEBUG_DUMP:Ljava/lang/String; = "requestFirmwareDebugDump"

.field private static final TEST_SETTING_RESET_TX_POWER_SCENARIO:Ljava/lang/String; = "resetTxPowerScenario"

.field private static final TEST_SETTING_SELECT_TX_POWER_SCENARIO:Ljava/lang/String; = "selectTxPowerScenario"

.field private static final TEST_SETTING_SET_AFC_CHANNEL_ALLOWANCE:Ljava/lang/String; = "setAfcChannelAllowance"

.field private static final TEST_SETTING_SET_COEX_UNSAFE_CHANNELS:Ljava/lang/String; = "setCoexUnsafeChannels"

.field private static final TEST_SETTING_SET_COUNTRYCODE:Ljava/lang/String; = "setCountryCode"

.field private static final TEST_SETTING_SET_LATENCY_MODE:Ljava/lang/String; = "setLatencyMode"

.field private static final TEST_SETTING_SET_MLO_MODE:Ljava/lang/String; = "setMloMode"

.field private static final TEST_SETTING_SET_MULTI_STA_PRIMARY_CONNECTION:Ljava/lang/String; = "setMultiStaPrimaryConnection"

.field private static final TEST_SETTING_SET_MULTI_STA_USECASE:Ljava/lang/String; = "setMultiStaUseCase"

.field private static final TEST_SETTING_START_LOGGING_TO_DEBUG_RINGBUFFER:Ljava/lang/String; = "startLoggingToDebugRingBuffer"

.field private static final TEST_SETTING_STOP_LOGGING_TO_DEBUG_RINGBUFFER:Ljava/lang/String; = "stopLoggingToDebugRingBuffer"


# instance fields
.field private mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 5
    .line 6
    return-void
.end method

.method private getBandFromChannel(I)I
    .locals 0

    .line 1
    const/16 p0, 0xe

    .line 2
    .line 3
    if-gt p1, p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/16 p0, 0xb1

    .line 8
    .line 9
    if-gt p1, p0, :cond_1

    .line 10
    .line 11
    const/4 p0, 0x2

    .line 12
    return p0

    .line 13
    :cond_1
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method private getCoexUnsafeChannel(I)[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;-><init>()V

    .line 4
    .line 5
    .line 6
    filled-new-array {v0}, [Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v1, v0, v1

    .line 12
    .line 13
    iput p1, v1, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;->channel:I

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->getBandFromChannel(I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    iput p0, v1, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;->band:I

    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public setTestSettings(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

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
    const-string v2, "SemIWifiChipTest"

    .line 22
    .line 23
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string v1, "flushRingBufferToFile"

    .line 27
    .line 28
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->flushRingBufferToFile()Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_0
    const-string v1, "forceDumpToDebugRingBuffer"

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 55
    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->forceDumpToDebugRingBuffer(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :cond_1
    const-string v1, "getAvailableModes"

    .line 72
    .line 73
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getAvailableModes()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_2
    const-string v1, "getFeatureSet"

    .line 91
    .line 92
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getFeatureSet()Z

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_3
    const-string v1, "getDebugHostWakeReasonStats"

    .line 110
    .line 111
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_4

    .line 116
    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getDebugHostWakeReasonStats()Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0

    .line 128
    :cond_4
    const-string v1, "getDebugRingBuffersStatus"

    .line 129
    .line 130
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getDebugRingBuffersStatus()Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    return-object p0

    .line 147
    :cond_5
    const-string v1, "getId"

    .line 148
    .line 149
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_6

    .line 154
    .line 155
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getId()I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    return-object p0

    .line 166
    :cond_6
    const-string v1, "getMode"

    .line 167
    .line 168
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getMode()I

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    return-object p0

    .line 185
    :cond_7
    const-string v1, "getStaIface"

    .line 186
    .line 187
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_8

    .line 192
    .line 193
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 194
    .line 195
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getStaIface(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiStaIface;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    return-object p0

    .line 210
    :cond_8
    const-string v1, "getStaIfaceNames"

    .line 211
    .line 212
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_9

    .line 217
    .line 218
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getStaIfaceNames()Ljava/util/List;

    .line 221
    .line 222
    .line 223
    move-result-object p0

    .line 224
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    return-object p0

    .line 229
    :cond_9
    const-string v1, "getWifiChipCapabilities"

    .line 230
    .line 231
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_a

    .line 236
    .line 237
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 238
    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getWifiChipCapabilities()Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    return-object p0

    .line 248
    :cond_a
    const-string v1, "getUsableChannels"

    .line 249
    .line 250
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    const/4 v3, 0x2

    .line 255
    const/4 v4, 0x1

    .line 256
    if-eqz v1, :cond_b

    .line 257
    .line 258
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 259
    .line 260
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Ljava/lang/Integer;

    .line 265
    .line 266
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Ljava/lang/Integer;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Ljava/lang/Integer;

    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getUsableChannels(III)Z

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    return-object p0

    .line 299
    :cond_b
    const-string v1, "requestChipDebugInfo"

    .line 300
    .line 301
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-eqz v1, :cond_c

    .line 306
    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->requestChipDebugInfo()Z

    .line 310
    .line 311
    .line 312
    move-result p0

    .line 313
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    return-object p0

    .line 318
    :cond_c
    const-string v1, "requestDriverDebugDump"

    .line 319
    .line 320
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_d

    .line 325
    .line 326
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->requestDriverDebugDump()Z

    .line 329
    .line 330
    .line 331
    move-result p0

    .line 332
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    return-object p0

    .line 337
    :cond_d
    const-string v1, "requestFirmwareDebugDump"

    .line 338
    .line 339
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_e

    .line 344
    .line 345
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 346
    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->requestFirmwareDebugDump()Z

    .line 348
    .line 349
    .line 350
    move-result p0

    .line 351
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p0

    .line 355
    return-object p0

    .line 356
    :cond_e
    const-string v1, "resetTxPowerScenario"

    .line 357
    .line 358
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_f

    .line 363
    .line 364
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 365
    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->resetTxPowerScenario()Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p0

    .line 374
    return-object p0

    .line 375
    :cond_f
    const-string v1, "setCoexUnsafeChannels"

    .line 376
    .line 377
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-eqz v1, :cond_10

    .line 382
    .line 383
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    check-cast v0, Ljava/lang/Integer;

    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->getCoexUnsafeChannel(I)[Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 398
    .line 399
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    check-cast p1, Ljava/lang/Integer;

    .line 404
    .line 405
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setCoexUnsafeChannels([Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$CoexUnsafeChannel;I)Z

    .line 410
    .line 411
    .line 412
    move-result p0

    .line 413
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p0

    .line 417
    return-object p0

    .line 418
    :cond_10
    const-string v1, "setLatencyMode"

    .line 419
    .line 420
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    if-eqz v1, :cond_11

    .line 425
    .line 426
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 427
    .line 428
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    check-cast p1, Ljava/lang/Integer;

    .line 433
    .line 434
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setLatencyMode(I)Z

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    return-object p0

    .line 447
    :cond_11
    const-string v1, "setMloMode"

    .line 448
    .line 449
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_12

    .line 454
    .line 455
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 456
    .line 457
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    check-cast p1, Ljava/lang/Integer;

    .line 462
    .line 463
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setMloMode(I)Z

    .line 468
    .line 469
    .line 470
    move-result p0

    .line 471
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p0

    .line 475
    return-object p0

    .line 476
    :cond_12
    const-string v1, "enableDebugErrorAlerts"

    .line 477
    .line 478
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-eqz v1, :cond_13

    .line 483
    .line 484
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 485
    .line 486
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    check-cast p1, Ljava/lang/Boolean;

    .line 491
    .line 492
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->enableDebugErrorAlerts(Z)Z

    .line 497
    .line 498
    .line 499
    move-result p0

    .line 500
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object p0

    .line 504
    return-object p0

    .line 505
    :cond_13
    const-string v1, "getSupportedRadioCombinations"

    .line 506
    .line 507
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 508
    .line 509
    .line 510
    move-result v1

    .line 511
    if-eqz v1, :cond_14

    .line 512
    .line 513
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 514
    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->getSupportedRadioCombinations()Ljava/util/List;

    .line 516
    .line 517
    .line 518
    move-result-object p0

    .line 519
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object p0

    .line 523
    return-object p0

    .line 524
    :cond_14
    const-string v1, "selectTxPowerScenario"

    .line 525
    .line 526
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_15

    .line 531
    .line 532
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 533
    .line 534
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    check-cast p1, Ljava/lang/Integer;

    .line 539
    .line 540
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 541
    .line 542
    .line 543
    move-result p1

    .line 544
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->selectTxPowerScenario(I)Z

    .line 545
    .line 546
    .line 547
    move-result p0

    .line 548
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object p0

    .line 552
    return-object p0

    .line 553
    :cond_15
    const-string v1, "setCountryCode"

    .line 554
    .line 555
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    if-eqz v1, :cond_16

    .line 560
    .line 561
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    check-cast p1, Ljava/lang/String;

    .line 566
    .line 567
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 568
    .line 569
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setCountryCode([B)Z

    .line 574
    .line 575
    .line 576
    move-result p0

    .line 577
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object p0

    .line 581
    return-object p0

    .line 582
    :cond_16
    const-string v1, "setMultiStaUseCase"

    .line 583
    .line 584
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_17

    .line 589
    .line 590
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 591
    .line 592
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    check-cast p1, Ljava/lang/Integer;

    .line 597
    .line 598
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setMultiStaUseCase(I)Z

    .line 603
    .line 604
    .line 605
    move-result p0

    .line 606
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object p0

    .line 610
    return-object p0

    .line 611
    :cond_17
    const-string v1, "startLoggingToDebugRingBuffer"

    .line 612
    .line 613
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 614
    .line 615
    .line 616
    move-result v1

    .line 617
    if-eqz v1, :cond_18

    .line 618
    .line 619
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 620
    .line 621
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    check-cast v0, Ljava/lang/String;

    .line 626
    .line 627
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    check-cast v1, Ljava/lang/Integer;

    .line 632
    .line 633
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    check-cast v2, Ljava/lang/Integer;

    .line 642
    .line 643
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    const/4 v3, 0x3

    .line 648
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object p1

    .line 652
    check-cast p1, Ljava/lang/Integer;

    .line 653
    .line 654
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 655
    .line 656
    .line 657
    move-result p1

    .line 658
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->startLoggingToDebugRingBuffer(Ljava/lang/String;III)Z

    .line 659
    .line 660
    .line 661
    move-result p0

    .line 662
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object p0

    .line 666
    return-object p0

    .line 667
    :cond_18
    const-string v1, "stopLoggingToDebugRingBuffer"

    .line 668
    .line 669
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    if-eqz v1, :cond_19

    .line 674
    .line 675
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 676
    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->stopLoggingToDebugRingBuffer()Z

    .line 678
    .line 679
    .line 680
    move-result p0

    .line 681
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object p0

    .line 685
    return-object p0

    .line 686
    :cond_19
    const-string v1, "setAfcChannelAllowance"

    .line 687
    .line 688
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_1a

    .line 693
    .line 694
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 695
    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setAfcChannelAllowance()Z

    .line 697
    .line 698
    .line 699
    move-result p0

    .line 700
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object p0

    .line 704
    return-object p0

    .line 705
    :cond_1a
    const-string v1, "setMultiStaPrimaryConnection"

    .line 706
    .line 707
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 708
    .line 709
    .line 710
    move-result v1

    .line 711
    if-eqz v1, :cond_1b

    .line 712
    .line 713
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 714
    .line 715
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object p1

    .line 719
    check-cast p1, Ljava/lang/String;

    .line 720
    .line 721
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->setMultiStaPrimaryConnection(Ljava/lang/String;)Z

    .line 722
    .line 723
    .line 724
    move-result p0

    .line 725
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object p0

    .line 729
    return-object p0

    .line 730
    :cond_1b
    const-string v1, "enableStaChannelForPeerNetwork"

    .line 731
    .line 732
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 733
    .line 734
    .line 735
    move-result v0

    .line 736
    if-eqz v0, :cond_1c

    .line 737
    .line 738
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemIWifiChipTest;->mSemHalDeviceManager:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 739
    .line 740
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    check-cast p1, Ljava/lang/Integer;

    .line 745
    .line 746
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 747
    .line 748
    .line 749
    move-result p1

    .line 750
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->enableStaChannelForPeerNetwork(I)Z

    .line 751
    .line 752
    .line 753
    move-result p0

    .line 754
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object p0

    .line 758
    return-object p0

    .line 759
    :cond_1c
    const-string p0, "Exception"

    .line 760
    .line 761
    return-object p0
.end method
