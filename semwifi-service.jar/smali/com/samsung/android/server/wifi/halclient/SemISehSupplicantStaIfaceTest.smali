.class public Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/IHalTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemISehSupplicantStaIfaceTest"

.field private static final TEST_SETTING_ADD_NETWORK:Ljava/lang/String; = "addNetwork"

.field private static final TEST_SETTING_ADD_ROAM_SCAN_FREQUENCIES:Ljava/lang/String; = "addRoamScanFrequencies"

.field private static final TEST_SETTING_ADD_ROAM_SCAN_FREQUENCIES_LEGACY:Ljava/lang/String; = "addRoamScanFrequenciesLegacy"

.field private static final TEST_SETTING_CLEAR_TWT_STATISTICS:Ljava/lang/String; = "clearTwtStatistics"

.field private static final TEST_SETTING_DO_LEAKY_AP_ACTIVE_DETECTION:Ljava/lang/String; = "doLeakyApActiveDetection"

.field private static final TEST_SETTING_ELNA_CONTROL:Ljava/lang/String; = "eLnaControl"

.field private static final TEST_SETTING_ELNA_STATUS:Ljava/lang/String; = "eLnaStatus"

.field private static final TEST_SETTING_ENABLE_80211BE:Ljava/lang/String; = "enable80211be"

.field private static final TEST_SETTING_ENABLE_BEACON_INTERVAL:Ljava/lang/String; = "enableBeaconInterval"

.field private static final TEST_SETTING_END_LEAKY_AP_PASSIVE_DETECTION:Ljava/lang/String; = "endLeakyApPassiveDetection"

.field private static final TEST_SETTING_GET_AVERAGE_TXPOWER:Ljava/lang/String; = "getAverageTxPower"

.field private static final TEST_SETTING_GET_CHANNEL_UTILIZATION:Ljava/lang/String; = "getChannelUtilization"

.field private static final TEST_SETTING_GET_ML_STATE:Ljava/lang/String; = "getMlState"

.field private static final TEST_SETTING_GET_NETWORK:Ljava/lang/String; = "getNetwork"

.field private static final TEST_SETTING_GET_ROAM_BAND:Ljava/lang/String; = "getRoamBand"

.field private static final TEST_SETTING_GET_ROAM_DELTA:Ljava/lang/String; = "getRoamDelta"

.field private static final TEST_SETTING_GET_ROAM_SCAN_PERIOD:Ljava/lang/String; = "getRoamScanPeriod"

.field private static final TEST_SETTING_GET_ROAM_TRIGGER:Ljava/lang/String; = "getRoamTrigger"

.field private static final TEST_SETTING_GET_ROAM_TRIGGER_LEGACY:Ljava/lang/String; = "getRoamTriggerLegacy"

.field private static final TEST_SETTING_GET_TAS_MODE:Ljava/lang/String; = "getSupportedTasMode"

.field private static final TEST_SETTING_GET_TX_MODE:Ljava/lang/String; = "getTxMode"

.field private static final TEST_SETTING_GET_TX_POWER:Ljava/lang/String; = "getTxPower"

.field private static final TEST_SETTING_GET_TX_POWER_FROM_DSI_TABLE:Ljava/lang/String; = "getTxPowerFromDsiTable"

.field private static final TEST_SETTING_GET_WIFI_STA_INFO:Ljava/lang/String; = "getWifiStaInfo"

.field private static final TEST_SETTING_IS_CAPTURE_RUNNING:Ljava/lang/String; = "isCaptureRunning"

.field private static final TEST_SETTING_IS_NCHO_MODE_ENABLED:Ljava/lang/String; = "isNCHOModeEnabled"

.field private static final TEST_SETTING_IS_WIDER_BANDWIDTH_TDLS_SUPPORTED:Ljava/lang/String; = "isWiderBandwidthTdlsSupported"

.field static final TEST_SETTING_MODULE_ISEHSUPPLICANTSTAIFACE:Ljava/lang/String; = "ISehSupplicantStaIface"

.field private static final TEST_SETTING_QUERY_SCHEDULED_PM_STATUS:Ljava/lang/String; = "queryScheduledPmStatus"

.field private static final TEST_SETTING_QUERY_TWT_CAPABILITIES:Ljava/lang/String; = "queryTwtCapabilities"

.field private static final TEST_SETTING_QUERY_TWT_STATUS:Ljava/lang/String; = "queryTwtStatus"

.field private static final TEST_SETTING_REGISTER_CALLBACK:Ljava/lang/String; = "registerCallback"

.field private static final TEST_SETTING_RESUME_TWT:Ljava/lang/String; = "resumeTwt"

.field private static final TEST_SETTING_SEND_LEGACY_REASSOCIATION_FREQUENCY_REQUEST_FRAME:Ljava/lang/String; = "sendLegacyReassociationFrequencyRequestFrame"

.field private static final TEST_SETTING_SETUP_SCEDULED_PM:Ljava/lang/String; = "setupScheduledPm"

.field private static final TEST_SETTING_SETUP_TWT:Ljava/lang/String; = "setupTwt"

.field private static final TEST_SETTING_SET_ADPS_ENABLED:Ljava/lang/String; = "setAdpsEnabled"

.field private static final TEST_SETTING_SET_AFFINITY_BOOSTER:Ljava/lang/String; = "setAffinityBooster"

.field private static final TEST_SETTING_SET_FCC_CHANNEL_BACKOFF_ENABLED:Ljava/lang/String; = "setFccChannelBackoffEnabled"

.field private static final TEST_SETTING_SET_LATENCY_CRITICAL:Ljava/lang/String; = "setLatencyCritical"

.field private static final TEST_SETTING_SET_LEAKY_AP_GRACE_PERIOD:Ljava/lang/String; = "setLeakyApGracePeriod"

.field private static final TEST_SETTING_SET_MAX_BANDWIDTH:Ljava/lang/String; = "setMaxBandwidth"

.field private static final TEST_SETTING_SET_ML_CONTROL:Ljava/lang/String; = "setMlControl"

.field private static final TEST_SETTING_SET_NCHO_MODE_ENABLED:Ljava/lang/String; = "setNCHOModeEnabled"

.field private static final TEST_SETTING_SET_NUM_OF_ALLOWED_MLO_LINK:Ljava/lang/String; = "setNumOfAllowedMloLink"

.field private static final TEST_SETTING_SET_PCIE_MODE:Ljava/lang/String; = "setPcieMode"

.field private static final TEST_SETTING_SET_ROAM_BAND:Ljava/lang/String; = "setRoamBand"

.field private static final TEST_SETTING_SET_ROAM_DELTA:Ljava/lang/String; = "setRoamDelta"

.field private static final TEST_SETTING_SET_ROAM_SCAN_PERIOD:Ljava/lang/String; = "setRoamScanPeriod"

.field private static final TEST_SETTING_SET_ROAM_TRIGGER:Ljava/lang/String; = "setRoamTrigger"

.field private static final TEST_SETTING_SET_ROAM_TRIGGER_LEGACY:Ljava/lang/String; = "setRoamTriggerLegacy"

.field private static final TEST_SETTING_SET_SCAN_DEWLL:Ljava/lang/String; = "setScanDwell"

.field private static final TEST_SETTING_SET_TXPOWER_BACKOFF:Ljava/lang/String; = "setTxPowerBackOff"

.field private static final TEST_SETTING_SET_TXPOWER_BACKOFF_ANT:Ljava/lang/String; = "setTxPowerBackOffAnt"

.field private static final TEST_SETTING_SET_TX_MODE:Ljava/lang/String; = "setTxMode"

.field private static final TEST_SETTING_SET_WIFI_CUSTOM_BACKOFF:Ljava/lang/String; = "setWifiCustomBackoff"

.field private static final TEST_SETTING_SET_WIFI_TO_CELLUAR:Ljava/lang/String; = "setWifiToCellular"

.field private static final TEST_SETTING_SET_WIFI_UWBCOEX_ENABLED:Ljava/lang/String; = "setWifiUwbCoexEnabled"

.field private static final TEST_SETTING_SET_WIFI_UWBCOEX_ENABLED_TYPE_5G:Ljava/lang/String; = "setWifiUwbCoexEnabledType5g"

.field private static final TEST_SETTING_SET_WIFI_UWBCOEX_ENABLED_TYPE_6G:Ljava/lang/String; = "setWifiUwbCoexEnabledType6g"

.field private static final TEST_SETTING_SET_WSEC_INFO:Ljava/lang/String; = "setWsecInfo"

.field private static final TEST_SETTING_START_CAPTURE:Ljava/lang/String; = "startCapture"

.field private static final TEST_SETTING_START_LEAKY_AP_PASSIVE_DETECTION:Ljava/lang/String; = "startLeakyApPassiveDetection"

.field private static final TEST_SETTING_STOP_CAPTURE:Ljava/lang/String; = "stopCapture"

.field private static final TEST_SETTING_SUSPEND_TWT:Ljava/lang/String; = "suspendTwt"

.field private static final TEST_SETTING_TEARDOWN_SCHEDULED_PM:Ljava/lang/String; = "teardownScheduledPm"

.field private static final TEST_SETTING_TEARDOWN_TWT:Ljava/lang/String; = "teardownTwt"

.field private static final TEST_SETTING_UPDATE_CELLULAR_CAPABILITIES:Ljava/lang/String; = "updateCellularCapabilities"


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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setTestSettings(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "method_name"

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "parameters"

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "setTestSettings "

    .line 20
    .line 21
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "SemISehSupplicantStaIfaceTest"

    .line 26
    .line 27
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    const-string v3, "registerCallback"

    .line 31
    .line 32
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 40
    .line 41
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->registerCallbackExternalForISehSupplicantStaIface(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :cond_0
    const-string v3, "addNetwork"

    .line 57
    .line 58
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 65
    .line 66
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addNetworkExternal(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0

    .line 81
    :cond_1
    const-string v3, "getNetwork"

    .line 82
    .line 83
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v5, 0x1

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 91
    .line 92
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/Integer;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getNetworkExternal(Ljava/lang/String;I)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :cond_2
    const-string v3, "enableBeaconInterval"

    .line 118
    .line 119
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_3

    .line 124
    .line 125
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 126
    .line 127
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Ljava/lang/Boolean;

    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableBeaconInterval(Ljava/lang/String;Z)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    return-object v0

    .line 152
    :cond_3
    const-string v3, "setRoamTrigger"

    .line 153
    .line 154
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_4

    .line 159
    .line 160
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 161
    .line 162
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/lang/String;

    .line 167
    .line 168
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setRoamTrigger(Ljava/lang/String;I)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    return-object v0

    .line 187
    :cond_4
    const-string v3, "setRoamTriggerLegacy"

    .line 188
    .line 189
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_5

    .line 194
    .line 195
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 196
    .line 197
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Ljava/lang/String;

    .line 202
    .line 203
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    check-cast v1, Ljava/lang/Integer;

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setRoamTriggerLegacy(Ljava/lang/String;I)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0

    .line 222
    :cond_5
    const-string v3, "setRoamDelta"

    .line 223
    .line 224
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eqz v3, :cond_6

    .line 229
    .line 230
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 231
    .line 232
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    check-cast v2, Ljava/lang/String;

    .line 237
    .line 238
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Ljava/lang/Integer;

    .line 243
    .line 244
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setRoamDelta(Ljava/lang/String;I)Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    return-object v0

    .line 257
    :cond_6
    const-string v3, "setRoamScanPeriod"

    .line 258
    .line 259
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_7

    .line 264
    .line 265
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 266
    .line 267
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    check-cast v2, Ljava/lang/String;

    .line 272
    .line 273
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Ljava/lang/Integer;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setRoamScanPeriod(Ljava/lang/String;I)Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    return-object v0

    .line 292
    :cond_7
    const-string v3, "setRoamBand"

    .line 293
    .line 294
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_8

    .line 299
    .line 300
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 301
    .line 302
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    check-cast v2, Ljava/lang/String;

    .line 307
    .line 308
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setRoamBand(Ljava/lang/String;I)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0

    .line 327
    :cond_8
    const-string v3, "setNCHOModeEnabled"

    .line 328
    .line 329
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    if-eqz v3, :cond_9

    .line 334
    .line 335
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 336
    .line 337
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    check-cast v2, Ljava/lang/String;

    .line 342
    .line 343
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    check-cast v1, Ljava/lang/Boolean;

    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setNCHOModeEnabled(Ljava/lang/String;Z)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    return-object v0

    .line 362
    :cond_9
    const-string v3, "setFccChannelBackoffEnabled"

    .line 363
    .line 364
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_a

    .line 369
    .line 370
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 371
    .line 372
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    check-cast v2, Ljava/lang/String;

    .line 377
    .line 378
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    check-cast v1, Ljava/lang/Integer;

    .line 383
    .line 384
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setFccChannelBackoffEnabled(Ljava/lang/String;I)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    return-object v0

    .line 397
    :cond_a
    const-string v3, "setTxPowerBackOff"

    .line 398
    .line 399
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    if-eqz v3, :cond_b

    .line 404
    .line 405
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 406
    .line 407
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    check-cast v2, Ljava/lang/String;

    .line 412
    .line 413
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    check-cast v1, Ljava/lang/Integer;

    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setTxPowerBackOff(Ljava/lang/String;I)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    return-object v0

    .line 432
    :cond_b
    const-string v3, "setTxPowerBackOffAnt"

    .line 433
    .line 434
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    const/4 v6, 0x2

    .line 439
    if-eqz v3, :cond_c

    .line 440
    .line 441
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 442
    .line 443
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    check-cast v2, Ljava/lang/String;

    .line 448
    .line 449
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    check-cast v3, Ljava/lang/Integer;

    .line 454
    .line 455
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Ljava/lang/Integer;

    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setTxPowerBackOff(Ljava/lang/String;II)Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    return-object v0

    .line 478
    :cond_c
    const-string v3, "setWsecInfo"

    .line 479
    .line 480
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 481
    .line 482
    .line 483
    move-result v3

    .line 484
    if-eqz v3, :cond_d

    .line 485
    .line 486
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 487
    .line 488
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    check-cast v2, Ljava/lang/String;

    .line 493
    .line 494
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Ljava/lang/Boolean;

    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 501
    .line 502
    .line 503
    move-result v1

    .line 504
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWsecInfo(Ljava/lang/String;Z)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    return-object v0

    .line 513
    :cond_d
    const-string v3, "updateCellularCapabilities"

    .line 514
    .line 515
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    const/4 v7, 0x4

    .line 520
    const/4 v8, 0x3

    .line 521
    if-eqz v3, :cond_e

    .line 522
    .line 523
    iget-object v9, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 524
    .line 525
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    move-object v10, v0

    .line 530
    check-cast v10, Ljava/lang/String;

    .line 531
    .line 532
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    check-cast v0, Ljava/lang/Integer;

    .line 537
    .line 538
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 539
    .line 540
    .line 541
    move-result v11

    .line 542
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    check-cast v0, Ljava/lang/Integer;

    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 549
    .line 550
    .line 551
    move-result v12

    .line 552
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    check-cast v0, Ljava/lang/Integer;

    .line 557
    .line 558
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 559
    .line 560
    .line 561
    move-result v13

    .line 562
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    check-cast v0, Ljava/lang/Integer;

    .line 567
    .line 568
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 569
    .line 570
    .line 571
    move-result v14

    .line 572
    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->updateCellularCapabilities(Ljava/lang/String;IIII)Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    return-object v0

    .line 581
    :cond_e
    const-string v3, "setAdpsEnabled"

    .line 582
    .line 583
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    if-eqz v3, :cond_f

    .line 588
    .line 589
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 590
    .line 591
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    check-cast v2, Ljava/lang/String;

    .line 596
    .line 597
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    check-cast v1, Ljava/lang/Boolean;

    .line 602
    .line 603
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAdpsEnabled(Ljava/lang/String;Z)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    return-object v0

    .line 616
    :cond_f
    const-string v3, "setWifiUwbCoexEnabled"

    .line 617
    .line 618
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    const/4 v9, 0x5

    .line 623
    if-eqz v3, :cond_10

    .line 624
    .line 625
    iget-object v10, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 626
    .line 627
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    move-object v11, v0

    .line 632
    check-cast v11, Ljava/lang/String;

    .line 633
    .line 634
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Ljava/lang/Boolean;

    .line 639
    .line 640
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 641
    .line 642
    .line 643
    move-result v12

    .line 644
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    check-cast v0, Ljava/lang/Integer;

    .line 649
    .line 650
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 651
    .line 652
    .line 653
    move-result v13

    .line 654
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    check-cast v0, Ljava/lang/Integer;

    .line 659
    .line 660
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 661
    .line 662
    .line 663
    move-result v14

    .line 664
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    check-cast v0, Ljava/lang/Integer;

    .line 669
    .line 670
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 671
    .line 672
    .line 673
    move-result v15

    .line 674
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    check-cast v0, Ljava/lang/Integer;

    .line 679
    .line 680
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 681
    .line 682
    .line 683
    move-result v16

    .line 684
    invoke-virtual/range {v10 .. v16}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIII)Z

    .line 685
    .line 686
    .line 687
    move-result v0

    .line 688
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    return-object v0

    .line 693
    :cond_10
    const-string v3, "setWifiUwbCoexEnabledType6g"

    .line 694
    .line 695
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    const/4 v10, 0x6

    .line 700
    if-eqz v3, :cond_11

    .line 701
    .line 702
    iget-object v11, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 703
    .line 704
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    move-result-object v0

    .line 708
    move-object v12, v0

    .line 709
    check-cast v12, Ljava/lang/String;

    .line 710
    .line 711
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    check-cast v0, Ljava/lang/Boolean;

    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 718
    .line 719
    .line 720
    move-result v13

    .line 721
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    check-cast v0, Ljava/lang/Integer;

    .line 726
    .line 727
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 728
    .line 729
    .line 730
    move-result v14

    .line 731
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Ljava/lang/Integer;

    .line 736
    .line 737
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 738
    .line 739
    .line 740
    move-result v15

    .line 741
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    check-cast v0, Ljava/lang/Integer;

    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 748
    .line 749
    .line 750
    move-result v16

    .line 751
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v0

    .line 755
    check-cast v0, Ljava/lang/Integer;

    .line 756
    .line 757
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 758
    .line 759
    .line 760
    move-result v17

    .line 761
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    check-cast v0, Ljava/lang/Integer;

    .line 766
    .line 767
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 768
    .line 769
    .line 770
    move-result v18

    .line 771
    invoke-virtual/range {v11 .. v18}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIII)Z

    .line 772
    .line 773
    .line 774
    move-result v0

    .line 775
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v0

    .line 779
    return-object v0

    .line 780
    :cond_11
    const-string v3, "setWifiUwbCoexEnabledType5g"

    .line 781
    .line 782
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 783
    .line 784
    .line 785
    move-result v3

    .line 786
    if-eqz v3, :cond_12

    .line 787
    .line 788
    iget-object v11, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 789
    .line 790
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    move-object v12, v0

    .line 795
    check-cast v12, Ljava/lang/String;

    .line 796
    .line 797
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    check-cast v0, Ljava/lang/Boolean;

    .line 802
    .line 803
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 804
    .line 805
    .line 806
    move-result v13

    .line 807
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    check-cast v0, Ljava/lang/Integer;

    .line 812
    .line 813
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 814
    .line 815
    .line 816
    move-result v14

    .line 817
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 818
    .line 819
    .line 820
    move-result-object v0

    .line 821
    check-cast v0, Ljava/lang/Integer;

    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 824
    .line 825
    .line 826
    move-result v15

    .line 827
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    check-cast v0, Ljava/lang/Integer;

    .line 832
    .line 833
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 834
    .line 835
    .line 836
    move-result v16

    .line 837
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    check-cast v0, Ljava/lang/Integer;

    .line 842
    .line 843
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 844
    .line 845
    .line 846
    move-result v17

    .line 847
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    check-cast v0, Ljava/lang/Integer;

    .line 852
    .line 853
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 854
    .line 855
    .line 856
    move-result v18

    .line 857
    const/4 v0, 0x7

    .line 858
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v0

    .line 862
    check-cast v0, Ljava/lang/Integer;

    .line 863
    .line 864
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 865
    .line 866
    .line 867
    move-result v19

    .line 868
    invoke-virtual/range {v11 .. v19}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiUwbCoexEnabled(Ljava/lang/String;ZIIIIII)Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    return-object v0

    .line 877
    :cond_12
    const-string v3, "isWiderBandwidthTdlsSupported"

    .line 878
    .line 879
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 880
    .line 881
    .line 882
    move-result v3

    .line 883
    if-eqz v3, :cond_13

    .line 884
    .line 885
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 886
    .line 887
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    check-cast v1, Ljava/lang/String;

    .line 892
    .line 893
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isWiderBandwidthTdlsSupported(Ljava/lang/String;)Z

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    return-object v0

    .line 902
    :cond_13
    const-string v3, "setWifiCustomBackoff"

    .line 903
    .line 904
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 905
    .line 906
    .line 907
    move-result v3

    .line 908
    if-eqz v3, :cond_14

    .line 909
    .line 910
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 911
    .line 912
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 913
    .line 914
    .line 915
    move-result-object v2

    .line 916
    check-cast v2, Ljava/lang/String;

    .line 917
    .line 918
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    check-cast v1, Ljava/lang/String;

    .line 923
    .line 924
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiCustomBackoff(Ljava/lang/String;Ljava/lang/String;)Z

    .line 925
    .line 926
    .line 927
    move-result v0

    .line 928
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v0

    .line 932
    return-object v0

    .line 933
    :cond_14
    const-string v3, "setTxMode"

    .line 934
    .line 935
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    if-eqz v3, :cond_15

    .line 940
    .line 941
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 942
    .line 943
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    move-result-object v2

    .line 947
    check-cast v2, Ljava/lang/String;

    .line 948
    .line 949
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    check-cast v1, Ljava/lang/Integer;

    .line 954
    .line 955
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 956
    .line 957
    .line 958
    move-result v1

    .line 959
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setTxMode(Ljava/lang/String;I)Z

    .line 960
    .line 961
    .line 962
    move-result v0

    .line 963
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    return-object v0

    .line 968
    :cond_15
    const-string v3, "setPcieMode"

    .line 969
    .line 970
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 971
    .line 972
    .line 973
    move-result v3

    .line 974
    if-eqz v3, :cond_16

    .line 975
    .line 976
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    check-cast v2, [I

    .line 981
    .line 982
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 983
    .line 984
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 985
    .line 986
    .line 987
    move-result-object v1

    .line 988
    check-cast v1, Ljava/lang/String;

    .line 989
    .line 990
    aget v3, v2, v4

    .line 991
    .line 992
    aget v2, v2, v5

    .line 993
    .line 994
    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPcieMode(Ljava/lang/String;II)Z

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    return-object v0

    .line 1003
    :cond_16
    const-string v3, "enable80211be"

    .line 1004
    .line 1005
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1006
    .line 1007
    .line 1008
    move-result v3

    .line 1009
    if-eqz v3, :cond_17

    .line 1010
    .line 1011
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1012
    .line 1013
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v2

    .line 1017
    check-cast v2, Ljava/lang/String;

    .line 1018
    .line 1019
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v1

    .line 1023
    check-cast v1, Ljava/lang/Integer;

    .line 1024
    .line 1025
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1026
    .line 1027
    .line 1028
    move-result v1

    .line 1029
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enable80211be(Ljava/lang/String;I)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v0

    .line 1033
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    return-object v0

    .line 1038
    :cond_17
    const-string v3, "setNumOfAllowedMloLink"

    .line 1039
    .line 1040
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1041
    .line 1042
    .line 1043
    move-result v3

    .line 1044
    if-eqz v3, :cond_18

    .line 1045
    .line 1046
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1047
    .line 1048
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v2

    .line 1052
    check-cast v2, Ljava/lang/String;

    .line 1053
    .line 1054
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    check-cast v1, Ljava/lang/Integer;

    .line 1059
    .line 1060
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1061
    .line 1062
    .line 1063
    move-result v1

    .line 1064
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setNumOfAllowedMloLink(Ljava/lang/String;I)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v0

    .line 1072
    return-object v0

    .line 1073
    :cond_18
    const-string v3, "getChannelUtilization"

    .line 1074
    .line 1075
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v3

    .line 1079
    if-eqz v3, :cond_19

    .line 1080
    .line 1081
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1082
    .line 1083
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v1

    .line 1087
    check-cast v1, Ljava/lang/String;

    .line 1088
    .line 1089
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChannelUtilization(Ljava/lang/String;)I

    .line 1090
    .line 1091
    .line 1092
    move-result v0

    .line 1093
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    return-object v0

    .line 1098
    :cond_19
    const-string v3, "getRoamTrigger"

    .line 1099
    .line 1100
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v3

    .line 1104
    if-eqz v3, :cond_1a

    .line 1105
    .line 1106
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1107
    .line 1108
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v1

    .line 1112
    check-cast v1, Ljava/lang/String;

    .line 1113
    .line 1114
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamTrigger(Ljava/lang/String;)I

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    return-object v0

    .line 1123
    :cond_1a
    const-string v3, "getRoamTriggerLegacy"

    .line 1124
    .line 1125
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1126
    .line 1127
    .line 1128
    move-result v3

    .line 1129
    if-eqz v3, :cond_1b

    .line 1130
    .line 1131
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1132
    .line 1133
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    move-result-object v1

    .line 1137
    check-cast v1, Ljava/lang/String;

    .line 1138
    .line 1139
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamTriggerLegacy(Ljava/lang/String;)I

    .line 1140
    .line 1141
    .line 1142
    move-result v0

    .line 1143
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    return-object v0

    .line 1148
    :cond_1b
    const-string v3, "getRoamDelta"

    .line 1149
    .line 1150
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v3

    .line 1154
    if-eqz v3, :cond_1c

    .line 1155
    .line 1156
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1157
    .line 1158
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v1

    .line 1162
    check-cast v1, Ljava/lang/String;

    .line 1163
    .line 1164
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamDelta(Ljava/lang/String;)I

    .line 1165
    .line 1166
    .line 1167
    move-result v0

    .line 1168
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    return-object v0

    .line 1173
    :cond_1c
    const-string v3, "getRoamScanPeriod"

    .line 1174
    .line 1175
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v3

    .line 1179
    if-eqz v3, :cond_1d

    .line 1180
    .line 1181
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1182
    .line 1183
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    check-cast v1, Ljava/lang/String;

    .line 1188
    .line 1189
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamScanPeriod(Ljava/lang/String;)I

    .line 1190
    .line 1191
    .line 1192
    move-result v0

    .line 1193
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v0

    .line 1197
    return-object v0

    .line 1198
    :cond_1d
    const-string v3, "getRoamBand"

    .line 1199
    .line 1200
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1201
    .line 1202
    .line 1203
    move-result v3

    .line 1204
    if-eqz v3, :cond_1e

    .line 1205
    .line 1206
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1207
    .line 1208
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v1

    .line 1212
    check-cast v1, Ljava/lang/String;

    .line 1213
    .line 1214
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getRoamBand(Ljava/lang/String;)I

    .line 1215
    .line 1216
    .line 1217
    move-result v0

    .line 1218
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v0

    .line 1222
    return-object v0

    .line 1223
    :cond_1e
    const-string v3, "getAverageTxPower"

    .line 1224
    .line 1225
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v3

    .line 1229
    if-eqz v3, :cond_1f

    .line 1230
    .line 1231
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1232
    .line 1233
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v2

    .line 1237
    check-cast v2, Ljava/lang/String;

    .line 1238
    .line 1239
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v1

    .line 1243
    check-cast v1, Ljava/lang/Boolean;

    .line 1244
    .line 1245
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1246
    .line 1247
    .line 1248
    move-result v1

    .line 1249
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getAverageTxPower(Ljava/lang/String;Z)[I

    .line 1250
    .line 1251
    .line 1252
    move-result-object v0

    .line 1253
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    return-object v0

    .line 1258
    :cond_1f
    const-string v3, "getTxMode"

    .line 1259
    .line 1260
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1261
    .line 1262
    .line 1263
    move-result v3

    .line 1264
    if-eqz v3, :cond_20

    .line 1265
    .line 1266
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1267
    .line 1268
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v1

    .line 1272
    check-cast v1, Ljava/lang/String;

    .line 1273
    .line 1274
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxMode(Ljava/lang/String;)I

    .line 1275
    .line 1276
    .line 1277
    move-result v0

    .line 1278
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v0

    .line 1282
    return-object v0

    .line 1283
    :cond_20
    const-string v3, "getTxPower"

    .line 1284
    .line 1285
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v3

    .line 1289
    if-eqz v3, :cond_21

    .line 1290
    .line 1291
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1292
    .line 1293
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v1

    .line 1297
    check-cast v1, Ljava/lang/String;

    .line 1298
    .line 1299
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxPower(Ljava/lang/String;)Ljava/lang/String;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    return-object v0

    .line 1308
    :cond_21
    const-string v3, "getTxPowerFromDsiTable"

    .line 1309
    .line 1310
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v3

    .line 1314
    if-eqz v3, :cond_22

    .line 1315
    .line 1316
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1317
    .line 1318
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v2

    .line 1322
    check-cast v2, Ljava/lang/String;

    .line 1323
    .line 1324
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    move-result-object v1

    .line 1328
    check-cast v1, Ljava/lang/Integer;

    .line 1329
    .line 1330
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1331
    .line 1332
    .line 1333
    move-result v1

    .line 1334
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getTxPowerFromDsiTable(Ljava/lang/String;I)Ljava/lang/String;

    .line 1335
    .line 1336
    .line 1337
    move-result-object v0

    .line 1338
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1339
    .line 1340
    .line 1341
    move-result-object v0

    .line 1342
    return-object v0

    .line 1343
    :cond_22
    const-string v3, "startCapture"

    .line 1344
    .line 1345
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1346
    .line 1347
    .line 1348
    move-result v3

    .line 1349
    if-eqz v3, :cond_23

    .line 1350
    .line 1351
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1352
    .line 1353
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v2

    .line 1357
    check-cast v2, Ljava/lang/String;

    .line 1358
    .line 1359
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1360
    .line 1361
    .line 1362
    move-result-object v1

    .line 1363
    check-cast v1, Ljava/lang/Integer;

    .line 1364
    .line 1365
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1366
    .line 1367
    .line 1368
    move-result v1

    .line 1369
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startCapture(Ljava/lang/String;I)I

    .line 1370
    .line 1371
    .line 1372
    move-result v0

    .line 1373
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object v0

    .line 1377
    return-object v0

    .line 1378
    :cond_23
    const-string v3, "stopCapture"

    .line 1379
    .line 1380
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1381
    .line 1382
    .line 1383
    move-result v3

    .line 1384
    if-eqz v3, :cond_24

    .line 1385
    .line 1386
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1387
    .line 1388
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v1

    .line 1392
    check-cast v1, Ljava/lang/String;

    .line 1393
    .line 1394
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->stopCapture(Ljava/lang/String;)I

    .line 1395
    .line 1396
    .line 1397
    move-result v0

    .line 1398
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v0

    .line 1402
    return-object v0

    .line 1403
    :cond_24
    const-string v3, "isCaptureRunning"

    .line 1404
    .line 1405
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v3

    .line 1409
    if-eqz v3, :cond_25

    .line 1410
    .line 1411
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1412
    .line 1413
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v1

    .line 1417
    check-cast v1, Ljava/lang/String;

    .line 1418
    .line 1419
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isCaptureRunning(Ljava/lang/String;)I

    .line 1420
    .line 1421
    .line 1422
    move-result v0

    .line 1423
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v0

    .line 1427
    return-object v0

    .line 1428
    :cond_25
    const-string v3, "setAffinityBooster"

    .line 1429
    .line 1430
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1431
    .line 1432
    .line 1433
    move-result v3

    .line 1434
    if-eqz v3, :cond_26

    .line 1435
    .line 1436
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1437
    .line 1438
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1439
    .line 1440
    .line 1441
    move-result-object v2

    .line 1442
    check-cast v2, Ljava/lang/String;

    .line 1443
    .line 1444
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1445
    .line 1446
    .line 1447
    move-result-object v1

    .line 1448
    check-cast v1, Ljava/lang/Integer;

    .line 1449
    .line 1450
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1451
    .line 1452
    .line 1453
    move-result v1

    .line 1454
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setAffinityBooster(Ljava/lang/String;I)Z

    .line 1455
    .line 1456
    .line 1457
    move-result v0

    .line 1458
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1459
    .line 1460
    .line 1461
    move-result-object v0

    .line 1462
    return-object v0

    .line 1463
    :cond_26
    const-string v3, "sendLegacyReassociationFrequencyRequestFrame"

    .line 1464
    .line 1465
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1466
    .line 1467
    .line 1468
    move-result v3

    .line 1469
    if-eqz v3, :cond_27

    .line 1470
    .line 1471
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1472
    .line 1473
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v2

    .line 1477
    check-cast v2, Ljava/lang/String;

    .line 1478
    .line 1479
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v3

    .line 1483
    check-cast v3, Ljava/lang/String;

    .line 1484
    .line 1485
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v1

    .line 1489
    check-cast v1, Ljava/lang/Integer;

    .line 1490
    .line 1491
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1492
    .line 1493
    .line 1494
    move-result v1

    .line 1495
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1496
    .line 1497
    .line 1498
    move-result v0

    .line 1499
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v0

    .line 1503
    return-object v0

    .line 1504
    :cond_27
    const-string v3, "addRoamScanFrequencies"

    .line 1505
    .line 1506
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1507
    .line 1508
    .line 1509
    move-result v3

    .line 1510
    if-eqz v3, :cond_28

    .line 1511
    .line 1512
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1513
    .line 1514
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v2

    .line 1518
    check-cast v2, Ljava/lang/String;

    .line 1519
    .line 1520
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    check-cast v1, Ljava/lang/String;

    .line 1525
    .line 1526
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanFrequencies(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    .line 1528
    .line 1529
    move-result v0

    .line 1530
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    return-object v0

    .line 1535
    :cond_28
    const-string v3, "addRoamScanFrequenciesLegacy"

    .line 1536
    .line 1537
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1538
    .line 1539
    .line 1540
    move-result v3

    .line 1541
    if-eqz v3, :cond_29

    .line 1542
    .line 1543
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1544
    .line 1545
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v2

    .line 1549
    check-cast v2, Ljava/lang/String;

    .line 1550
    .line 1551
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v1

    .line 1555
    check-cast v1, Ljava/lang/String;

    .line 1556
    .line 1557
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRoamScanFrequenciesLegacy(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .line 1559
    .line 1560
    move-result v0

    .line 1561
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v0

    .line 1565
    return-object v0

    .line 1566
    :cond_29
    const-string v3, "setLatencyCritical"

    .line 1567
    .line 1568
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1569
    .line 1570
    .line 1571
    move-result v3

    .line 1572
    if-eqz v3, :cond_2a

    .line 1573
    .line 1574
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1575
    .line 1576
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v2

    .line 1580
    check-cast v2, Ljava/lang/String;

    .line 1581
    .line 1582
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1583
    .line 1584
    .line 1585
    move-result-object v1

    .line 1586
    check-cast v1, Ljava/lang/Integer;

    .line 1587
    .line 1588
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1589
    .line 1590
    .line 1591
    move-result v1

    .line 1592
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLatencyCritical(Ljava/lang/String;I)Z

    .line 1593
    .line 1594
    .line 1595
    move-result v0

    .line 1596
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1597
    .line 1598
    .line 1599
    move-result-object v0

    .line 1600
    return-object v0

    .line 1601
    :cond_2a
    const-string v3, "setScanDwell"

    .line 1602
    .line 1603
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1604
    .line 1605
    .line 1606
    move-result v3

    .line 1607
    if-eqz v3, :cond_2b

    .line 1608
    .line 1609
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1610
    .line 1611
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1612
    .line 1613
    .line 1614
    move-result-object v2

    .line 1615
    check-cast v2, Ljava/lang/String;

    .line 1616
    .line 1617
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v1

    .line 1621
    check-cast v1, Ljava/lang/String;

    .line 1622
    .line 1623
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setScanDwell(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1624
    .line 1625
    .line 1626
    move-result v0

    .line 1627
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1628
    .line 1629
    .line 1630
    move-result-object v0

    .line 1631
    return-object v0

    .line 1632
    :cond_2b
    const-string v3, "setWifiToCellular"

    .line 1633
    .line 1634
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1635
    .line 1636
    .line 1637
    move-result v3

    .line 1638
    if-eqz v3, :cond_2c

    .line 1639
    .line 1640
    iget-object v11, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1641
    .line 1642
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v0

    .line 1646
    move-object v12, v0

    .line 1647
    check-cast v12, Ljava/lang/String;

    .line 1648
    .line 1649
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v0

    .line 1653
    check-cast v0, Ljava/lang/Integer;

    .line 1654
    .line 1655
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1656
    .line 1657
    .line 1658
    move-result v13

    .line 1659
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1660
    .line 1661
    .line 1662
    move-result-object v0

    .line 1663
    check-cast v0, Ljava/lang/Integer;

    .line 1664
    .line 1665
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1666
    .line 1667
    .line 1668
    move-result v14

    .line 1669
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    check-cast v0, Ljava/lang/Integer;

    .line 1674
    .line 1675
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1676
    .line 1677
    .line 1678
    move-result v15

    .line 1679
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v0

    .line 1683
    check-cast v0, Ljava/lang/Integer;

    .line 1684
    .line 1685
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1686
    .line 1687
    .line 1688
    move-result v16

    .line 1689
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1690
    .line 1691
    .line 1692
    move-result-object v0

    .line 1693
    check-cast v0, Ljava/lang/Integer;

    .line 1694
    .line 1695
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1696
    .line 1697
    .line 1698
    move-result v17

    .line 1699
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v0

    .line 1703
    check-cast v0, Ljava/lang/Integer;

    .line 1704
    .line 1705
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1706
    .line 1707
    .line 1708
    move-result v18

    .line 1709
    invoke-virtual/range {v11 .. v18}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWifiToCellular(Ljava/lang/String;IIIIII)Z

    .line 1710
    .line 1711
    .line 1712
    move-result v0

    .line 1713
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1714
    .line 1715
    .line 1716
    move-result-object v0

    .line 1717
    return-object v0

    .line 1718
    :cond_2c
    const-string v3, "setupTwt"

    .line 1719
    .line 1720
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1721
    .line 1722
    .line 1723
    move-result v3

    .line 1724
    if-eqz v3, :cond_2d

    .line 1725
    .line 1726
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1727
    .line 1728
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v2

    .line 1732
    check-cast v2, Ljava/lang/String;

    .line 1733
    .line 1734
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v1

    .line 1738
    check-cast v1, Ljava/lang/String;

    .line 1739
    .line 1740
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    .line 1742
    .line 1743
    move-result v0

    .line 1744
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1745
    .line 1746
    .line 1747
    move-result-object v0

    .line 1748
    return-object v0

    .line 1749
    :cond_2d
    const-string v3, "teardownTwt"

    .line 1750
    .line 1751
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1752
    .line 1753
    .line 1754
    move-result v3

    .line 1755
    if-eqz v3, :cond_2e

    .line 1756
    .line 1757
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1758
    .line 1759
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v2

    .line 1763
    check-cast v2, Ljava/lang/String;

    .line 1764
    .line 1765
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1766
    .line 1767
    .line 1768
    move-result-object v1

    .line 1769
    check-cast v1, Ljava/lang/String;

    .line 1770
    .line 1771
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    .line 1773
    .line 1774
    move-result v0

    .line 1775
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v0

    .line 1779
    return-object v0

    .line 1780
    :cond_2e
    const-string v3, "suspendTwt"

    .line 1781
    .line 1782
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1783
    .line 1784
    .line 1785
    move-result v3

    .line 1786
    if-eqz v3, :cond_2f

    .line 1787
    .line 1788
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1789
    .line 1790
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v2

    .line 1794
    check-cast v2, Ljava/lang/String;

    .line 1795
    .line 1796
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1797
    .line 1798
    .line 1799
    move-result-object v1

    .line 1800
    check-cast v1, Ljava/lang/String;

    .line 1801
    .line 1802
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->suspendTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    .line 1804
    .line 1805
    move-result v0

    .line 1806
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v0

    .line 1810
    return-object v0

    .line 1811
    :cond_2f
    const-string v3, "resumeTwt"

    .line 1812
    .line 1813
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1814
    .line 1815
    .line 1816
    move-result v3

    .line 1817
    if-eqz v3, :cond_30

    .line 1818
    .line 1819
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1820
    .line 1821
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v2

    .line 1825
    check-cast v2, Ljava/lang/String;

    .line 1826
    .line 1827
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1828
    .line 1829
    .line 1830
    move-result-object v1

    .line 1831
    check-cast v1, Ljava/lang/String;

    .line 1832
    .line 1833
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->resumeTwt(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    .line 1835
    .line 1836
    move-result v0

    .line 1837
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1838
    .line 1839
    .line 1840
    move-result-object v0

    .line 1841
    return-object v0

    .line 1842
    :cond_30
    const-string v3, "clearTwtStatistics"

    .line 1843
    .line 1844
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1845
    .line 1846
    .line 1847
    move-result v3

    .line 1848
    if-eqz v3, :cond_31

    .line 1849
    .line 1850
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1851
    .line 1852
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v2

    .line 1856
    check-cast v2, Ljava/lang/String;

    .line 1857
    .line 1858
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v1

    .line 1862
    check-cast v1, Ljava/lang/Integer;

    .line 1863
    .line 1864
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1865
    .line 1866
    .line 1867
    move-result v1

    .line 1868
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->clearTwtStatistics(Ljava/lang/String;I)Z

    .line 1869
    .line 1870
    .line 1871
    move-result v0

    .line 1872
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v0

    .line 1876
    return-object v0

    .line 1877
    :cond_31
    const-string v3, "setupScheduledPm"

    .line 1878
    .line 1879
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1880
    .line 1881
    .line 1882
    move-result v3

    .line 1883
    if-eqz v3, :cond_32

    .line 1884
    .line 1885
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1886
    .line 1887
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1888
    .line 1889
    .line 1890
    move-result-object v2

    .line 1891
    check-cast v2, Ljava/lang/String;

    .line 1892
    .line 1893
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v1

    .line 1897
    check-cast v1, Ljava/lang/String;

    .line 1898
    .line 1899
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setupScheduledPm(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    .line 1901
    .line 1902
    move-result v0

    .line 1903
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v0

    .line 1907
    return-object v0

    .line 1908
    :cond_32
    const-string v3, "teardownScheduledPm"

    .line 1909
    .line 1910
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1911
    .line 1912
    .line 1913
    move-result v3

    .line 1914
    if-eqz v3, :cond_33

    .line 1915
    .line 1916
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1917
    .line 1918
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1919
    .line 1920
    .line 1921
    move-result-object v1

    .line 1922
    check-cast v1, Ljava/lang/String;

    .line 1923
    .line 1924
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->teardownScheduledPm(Ljava/lang/String;)I

    .line 1925
    .line 1926
    .line 1927
    move-result v0

    .line 1928
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v0

    .line 1932
    return-object v0

    .line 1933
    :cond_33
    const-string v3, "setLeakyApGracePeriod"

    .line 1934
    .line 1935
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1936
    .line 1937
    .line 1938
    move-result v3

    .line 1939
    if-eqz v3, :cond_34

    .line 1940
    .line 1941
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1942
    .line 1943
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v2

    .line 1947
    check-cast v2, Ljava/lang/String;

    .line 1948
    .line 1949
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1950
    .line 1951
    .line 1952
    move-result-object v1

    .line 1953
    check-cast v1, Ljava/lang/String;

    .line 1954
    .line 1955
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setLeakyApGracePeriod(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    .line 1957
    .line 1958
    move-result v0

    .line 1959
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1960
    .line 1961
    .line 1962
    move-result-object v0

    .line 1963
    return-object v0

    .line 1964
    :cond_34
    const-string v3, "eLnaControl"

    .line 1965
    .line 1966
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1967
    .line 1968
    .line 1969
    move-result v3

    .line 1970
    if-eqz v3, :cond_35

    .line 1971
    .line 1972
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1973
    .line 1974
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1975
    .line 1976
    .line 1977
    move-result-object v2

    .line 1978
    check-cast v2, Ljava/lang/String;

    .line 1979
    .line 1980
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1981
    .line 1982
    .line 1983
    move-result-object v1

    .line 1984
    check-cast v1, Ljava/lang/Integer;

    .line 1985
    .line 1986
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1987
    .line 1988
    .line 1989
    move-result v1

    .line 1990
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->eLnaControl(Ljava/lang/String;I)I

    .line 1991
    .line 1992
    .line 1993
    move-result v0

    .line 1994
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v0

    .line 1998
    return-object v0

    .line 1999
    :cond_35
    const-string v3, "setMlControl"

    .line 2000
    .line 2001
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2002
    .line 2003
    .line 2004
    move-result v3

    .line 2005
    if-eqz v3, :cond_36

    .line 2006
    .line 2007
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2008
    .line 2009
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v2

    .line 2013
    check-cast v2, Ljava/lang/String;

    .line 2014
    .line 2015
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v1

    .line 2019
    check-cast v1, Ljava/lang/String;

    .line 2020
    .line 2021
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMlControl(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    .line 2023
    .line 2024
    move-result v0

    .line 2025
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2026
    .line 2027
    .line 2028
    move-result-object v0

    .line 2029
    return-object v0

    .line 2030
    :cond_36
    const-string v3, "setMaxBandwidth"

    .line 2031
    .line 2032
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2033
    .line 2034
    .line 2035
    move-result v3

    .line 2036
    if-eqz v3, :cond_37

    .line 2037
    .line 2038
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2039
    .line 2040
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2041
    .line 2042
    .line 2043
    move-result-object v2

    .line 2044
    check-cast v2, Ljava/lang/String;

    .line 2045
    .line 2046
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2047
    .line 2048
    .line 2049
    move-result-object v3

    .line 2050
    check-cast v3, Ljava/lang/Integer;

    .line 2051
    .line 2052
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2053
    .line 2054
    .line 2055
    move-result v3

    .line 2056
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2057
    .line 2058
    .line 2059
    move-result-object v4

    .line 2060
    check-cast v4, Ljava/lang/Integer;

    .line 2061
    .line 2062
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 2063
    .line 2064
    .line 2065
    move-result v4

    .line 2066
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2067
    .line 2068
    .line 2069
    move-result-object v1

    .line 2070
    check-cast v1, Ljava/lang/Integer;

    .line 2071
    .line 2072
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2073
    .line 2074
    .line 2075
    move-result v1

    .line 2076
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxBandwidth(Ljava/lang/String;III)Z

    .line 2077
    .line 2078
    .line 2079
    move-result v0

    .line 2080
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 2081
    .line 2082
    .line 2083
    move-result-object v0

    .line 2084
    return-object v0

    .line 2085
    :cond_37
    const-string v3, "isNCHOModeEnabled"

    .line 2086
    .line 2087
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2088
    .line 2089
    .line 2090
    move-result v3

    .line 2091
    if-eqz v3, :cond_38

    .line 2092
    .line 2093
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2094
    .line 2095
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2096
    .line 2097
    .line 2098
    move-result-object v1

    .line 2099
    check-cast v1, Ljava/lang/String;

    .line 2100
    .line 2101
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 2102
    .line 2103
    .line 2104
    move-result v0

    .line 2105
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 2106
    .line 2107
    .line 2108
    move-result-object v0

    .line 2109
    return-object v0

    .line 2110
    :cond_38
    const-string v3, "queryTwtCapabilities"

    .line 2111
    .line 2112
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2113
    .line 2114
    .line 2115
    move-result v3

    .line 2116
    if-eqz v3, :cond_39

    .line 2117
    .line 2118
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2119
    .line 2120
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2121
    .line 2122
    .line 2123
    move-result-object v1

    .line 2124
    check-cast v1, Ljava/lang/String;

    .line 2125
    .line 2126
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtCapabilities(Ljava/lang/String;)Ljava/lang/String;

    .line 2127
    .line 2128
    .line 2129
    move-result-object v0

    .line 2130
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2131
    .line 2132
    .line 2133
    move-result-object v0

    .line 2134
    return-object v0

    .line 2135
    :cond_39
    const-string v3, "queryTwtStatus"

    .line 2136
    .line 2137
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2138
    .line 2139
    .line 2140
    move-result v3

    .line 2141
    if-eqz v3, :cond_3a

    .line 2142
    .line 2143
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2144
    .line 2145
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2146
    .line 2147
    .line 2148
    move-result-object v2

    .line 2149
    check-cast v2, Ljava/lang/String;

    .line 2150
    .line 2151
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2152
    .line 2153
    .line 2154
    move-result-object v1

    .line 2155
    check-cast v1, Ljava/lang/Integer;

    .line 2156
    .line 2157
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 2158
    .line 2159
    .line 2160
    move-result v1

    .line 2161
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryTwtStatus(Ljava/lang/String;I)Ljava/lang/String;

    .line 2162
    .line 2163
    .line 2164
    move-result-object v0

    .line 2165
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2166
    .line 2167
    .line 2168
    move-result-object v0

    .line 2169
    return-object v0

    .line 2170
    :cond_3a
    const-string v3, "queryScheduledPmStatus"

    .line 2171
    .line 2172
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2173
    .line 2174
    .line 2175
    move-result v3

    .line 2176
    if-eqz v3, :cond_3b

    .line 2177
    .line 2178
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2179
    .line 2180
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2181
    .line 2182
    .line 2183
    move-result-object v1

    .line 2184
    check-cast v1, Ljava/lang/String;

    .line 2185
    .line 2186
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->queryScheduledPmStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 2187
    .line 2188
    .line 2189
    move-result-object v0

    .line 2190
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2191
    .line 2192
    .line 2193
    move-result-object v0

    .line 2194
    return-object v0

    .line 2195
    :cond_3b
    const-string v3, "getMlState"

    .line 2196
    .line 2197
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2198
    .line 2199
    .line 2200
    move-result v3

    .line 2201
    if-eqz v3, :cond_3c

    .line 2202
    .line 2203
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2204
    .line 2205
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2206
    .line 2207
    .line 2208
    move-result-object v1

    .line 2209
    check-cast v1, Ljava/lang/String;

    .line 2210
    .line 2211
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getMlState(Ljava/lang/String;)Ljava/lang/String;

    .line 2212
    .line 2213
    .line 2214
    move-result-object v0

    .line 2215
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2216
    .line 2217
    .line 2218
    move-result-object v0

    .line 2219
    return-object v0

    .line 2220
    :cond_3c
    const-string v3, "eLnaStatus"

    .line 2221
    .line 2222
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2223
    .line 2224
    .line 2225
    move-result v3

    .line 2226
    if-eqz v3, :cond_3d

    .line 2227
    .line 2228
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2229
    .line 2230
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v1

    .line 2234
    check-cast v1, Ljava/lang/String;

    .line 2235
    .line 2236
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->eLnaStatus(Ljava/lang/String;)Ljava/lang/String;

    .line 2237
    .line 2238
    .line 2239
    move-result-object v0

    .line 2240
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v0

    .line 2244
    return-object v0

    .line 2245
    :cond_3d
    const-string v3, "getWifiStaInfo"

    .line 2246
    .line 2247
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2248
    .line 2249
    .line 2250
    move-result v3

    .line 2251
    if-eqz v3, :cond_3e

    .line 2252
    .line 2253
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2254
    .line 2255
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2256
    .line 2257
    .line 2258
    move-result-object v1

    .line 2259
    check-cast v1, Ljava/lang/String;

    .line 2260
    .line 2261
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiStaInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 2262
    .line 2263
    .line 2264
    move-result-object v0

    .line 2265
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v0

    .line 2269
    return-object v0

    .line 2270
    :cond_3e
    const-string v3, "endLeakyApPassiveDetection"

    .line 2271
    .line 2272
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2273
    .line 2274
    .line 2275
    move-result v3

    .line 2276
    if-eqz v3, :cond_3f

    .line 2277
    .line 2278
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2279
    .line 2280
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2281
    .line 2282
    .line 2283
    move-result-object v1

    .line 2284
    check-cast v1, Ljava/lang/String;

    .line 2285
    .line 2286
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->endLeakyApPassiveDetection(Ljava/lang/String;)I

    .line 2287
    .line 2288
    .line 2289
    move-result v0

    .line 2290
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2291
    .line 2292
    .line 2293
    move-result-object v0

    .line 2294
    return-object v0

    .line 2295
    :cond_3f
    const-string v3, "doLeakyApActiveDetection"

    .line 2296
    .line 2297
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2298
    .line 2299
    .line 2300
    move-result v3

    .line 2301
    if-eqz v3, :cond_40

    .line 2302
    .line 2303
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2304
    .line 2305
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2306
    .line 2307
    .line 2308
    move-result-object v2

    .line 2309
    check-cast v2, Ljava/lang/String;

    .line 2310
    .line 2311
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2312
    .line 2313
    .line 2314
    move-result-object v1

    .line 2315
    check-cast v1, Ljava/lang/String;

    .line 2316
    .line 2317
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->doLeakyApActiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    .line 2319
    .line 2320
    move-result v0

    .line 2321
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2322
    .line 2323
    .line 2324
    move-result-object v0

    .line 2325
    return-object v0

    .line 2326
    :cond_40
    const-string v3, "startLeakyApPassiveDetection"

    .line 2327
    .line 2328
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2329
    .line 2330
    .line 2331
    move-result v3

    .line 2332
    if-eqz v3, :cond_41

    .line 2333
    .line 2334
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2335
    .line 2336
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2337
    .line 2338
    .line 2339
    move-result-object v2

    .line 2340
    check-cast v2, Ljava/lang/String;

    .line 2341
    .line 2342
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2343
    .line 2344
    .line 2345
    move-result-object v1

    .line 2346
    check-cast v1, Ljava/lang/String;

    .line 2347
    .line 2348
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startLeakyApPassiveDetection(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    .line 2350
    .line 2351
    move-result v0

    .line 2352
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 2353
    .line 2354
    .line 2355
    move-result-object v0

    .line 2356
    return-object v0

    .line 2357
    :cond_41
    const-string v3, "getSupportedTasMode"

    .line 2358
    .line 2359
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 2360
    .line 2361
    .line 2362
    move-result v2

    .line 2363
    if-eqz v2, :cond_42

    .line 2364
    .line 2365
    iget-object v0, v0, Lcom/samsung/android/server/wifi/halclient/SemISehSupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2366
    .line 2367
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2368
    .line 2369
    .line 2370
    move-result-object v1

    .line 2371
    check-cast v1, Ljava/lang/String;

    .line 2372
    .line 2373
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getSupportedTasMode(Ljava/lang/String;)Ljava/lang/String;

    .line 2374
    .line 2375
    .line 2376
    move-result-object v0

    .line 2377
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2378
    .line 2379
    .line 2380
    move-result-object v0

    .line 2381
    return-object v0

    .line 2382
    :cond_42
    const-string v0, "Exception"

    .line 2383
    .line 2384
    return-object v0
.end method
