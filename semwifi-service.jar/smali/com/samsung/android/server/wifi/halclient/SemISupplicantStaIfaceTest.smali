.class public Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/IHalTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemISupplicantStaIfaceTest"

.field private static final TEST_SETTING_ADD_NETWORK:Ljava/lang/String; = "addNetwork"

.field private static final TEST_SETTING_ADD_QOS_POLICY_REQUEST_FOR_SCS:Ljava/lang/String; = "addQosPolicyRequestForScs"

.field private static final TEST_SETTING_ADD_RX_FILTER:Ljava/lang/String; = "addRxFilter"

.field private static final TEST_SETTING_DISCONNECT:Ljava/lang/String; = "disconnect"

.field private static final TEST_SETTING_ENABLE_AUTO_RECONNECT:Ljava/lang/String; = "enableAutoReconnect"

.field private static final TEST_SETTING_FILS_HLP_ADD_REQUEST:Ljava/lang/String; = "filsHlpAddRequest"

.field private static final TEST_SETTING_FILS_HLP_FLUSH_REQUEST:Ljava/lang/String; = "filsHlpFlushRequest"

.field private static final TEST_SETTING_GENERATE_SELF_DPP_CONFIGURATION:Ljava/lang/String; = "generateSelfDppConfiguration"

.field private static final TEST_SETTING_GET_CONNECTION_CAPABILITIES:Ljava/lang/String; = "getConnectionCapabilities"

.field private static final TEST_SETTING_GET_CONNECTION_MLO_LINKS_INFO:Ljava/lang/String; = "getConnectionMloLinksInfo"

.field private static final TEST_SETTING_GET_KEY_MGMT_CAPABILITIES:Ljava/lang/String; = "getKeyMgmtCapabilities"

.field private static final TEST_SETTING_GET_MACADDRESS:Ljava/lang/String; = "getMacAddress"

.field private static final TEST_SETTING_GET_SIGNAL_POLL_RESULTS:Ljava/lang/String; = "getSignalPollResults"

.field private static final TEST_SETTING_GET_WPA_DRIVER_CAPABILITIES:Ljava/lang/String; = "getWpaDriverCapabilities"

.field private static final TEST_SETTING_INITIATE_ANQP_QUERY:Ljava/lang/String; = "initiateAnqpQuery"

.field private static final TEST_SETTING_INITIATE_HS20_ICON_QUERY:Ljava/lang/String; = "initiateHs20IconQuery"

.field private static final TEST_SETTING_INITIATE_TDLS_DISCOVER:Ljava/lang/String; = "initiateTdlsDiscover"

.field private static final TEST_SETTING_INITIATE_TDLS_SETUP:Ljava/lang/String; = "initiateTdlsSetup"

.field private static final TEST_SETTING_INITIATE_TDLS_TEARDOWN:Ljava/lang/String; = "initiateTdlsTeardown"

.field private static final TEST_SETTING_INITIATE_VENUE_URL_ANQP_QUERY:Ljava/lang/String; = "initiateVenueUrlAnqpQuery"

.field private static final TEST_SETTING_LIST_NETWORKS:Ljava/lang/String; = "listNetworks"

.field static final TEST_SETTING_MODULE_ISUPPLICANTSTAIFACE:Ljava/lang/String; = "ISupplicantStaIface"

.field private static final TEST_SETTING_REASSOCIATE:Ljava/lang/String; = "reassociate"

.field private static final TEST_SETTING_RECONNECT:Ljava/lang/String; = "reconnect"

.field private static final TEST_SETTING_REGISTER_CALLBACK:Ljava/lang/String; = "registerCallback"

.field private static final TEST_SETTING_REMOVE_ALL_QOS_POLICIES:Ljava/lang/String; = "removeAllQosPolicies"

.field private static final TEST_SETTING_REMOVE_DPP_URI:Ljava/lang/String; = "removeDppUri"

.field private static final TEST_SETTING_REMOVE_NETWORK:Ljava/lang/String; = "removeNetwork"

.field private static final TEST_SETTING_REMOVE_QOS_POLICY_FOR_SCS:Ljava/lang/String; = "removeQosPolicyForScs"

.field private static final TEST_SETTING_REMOVE_RX_FILTER:Ljava/lang/String; = "removeRxFilter"

.field private static final TEST_SETTING_SEND_QOS_POLICY_RESPONSE:Ljava/lang/String; = "sendQosPolicyResponse"

.field private static final TEST_SETTING_SET_BTCOEXISTENCE_MODE:Ljava/lang/String; = "setBtCoexistenceMode"

.field private static final TEST_SETTING_SET_BTCOEXISTENCE_SCANMODE_ENABLED:Ljava/lang/String; = "setBtCoexistenceScanModeEnabled"

.field private static final TEST_SETTING_SET_COUNTRYCODE:Ljava/lang/String; = "setCountryCode"

.field private static final TEST_SETTING_SET_EXTERNAL_SIM:Ljava/lang/String; = "setExternalSim"

.field private static final TEST_SETTING_SET_MBO_CELLULAR_DATASTATUS:Ljava/lang/String; = "setMboCellularDataStatus"

.field private static final TEST_SETTING_SET_POWERSAVE:Ljava/lang/String; = "setPowerSave"

.field private static final TEST_SETTING_SET_QOS_POLICY_FEATURE_ENABLED:Ljava/lang/String; = "setQosPolicyFeatureEnabled"

.field private static final TEST_SETTING_SET_SUSPENDMODE_ENABLED:Ljava/lang/String; = "setSuspendModeEnabled"

.field private static final TEST_SETTING_START_DPP_ENROLLEE_RESONDER:Ljava/lang/String; = "startDppEnrolleeResponder"

.field private static final TEST_SETTING_START_RX_FILTER:Ljava/lang/String; = "startRxFilter"

.field private static final TEST_SETTING_STOP_DPP_INITIATOR:Ljava/lang/String; = "stopDppInitiator"

.field private static final TEST_SETTING_STOP_DPP_RESPONDER:Ljava/lang/String; = "stopDppResponder"

.field private static final TEST_SETTING_STOP_RX_FILTER:Ljava/lang/String; = "stopRxFilter"


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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

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
    const-string v2, "parameters"

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v2, "setTestSettings "

    .line 16
    .line 17
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "SemISupplicantStaIfaceTest"

    .line 22
    .line 23
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const-string v2, "setPowerSave"

    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 37
    .line 38
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

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
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setPowerSave(Ljava/lang/String;Z)Z

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
    const-string v2, "getMacAddress"

    .line 64
    .line 65
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 72
    .line 73
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getMacAddress(Ljava/lang/String;)[B

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
    const-string v2, "registerCallback"

    .line 89
    .line 90
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 97
    .line 98
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->registerCallbackForISupplicantStaIface(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p0

    .line 108
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0

    .line 113
    :cond_2
    const-string v2, "setCountryCode"

    .line 114
    .line 115
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 122
    .line 123
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/String;

    .line 128
    .line 129
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setCountryCode(Ljava/lang/String;[B)Z

    .line 140
    .line 141
    .line 142
    move-result p0

    .line 143
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    return-object p0

    .line 148
    :cond_3
    const-string v2, "getKeyMgmtCapabilities"

    .line 149
    .line 150
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 157
    .line 158
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getKeyMgmtCapabilities(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0

    .line 173
    :cond_4
    const-string v2, "getWpaDriverCapabilities"

    .line 174
    .line 175
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-eqz v2, :cond_5

    .line 180
    .line 181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 182
    .line 183
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWpaDriverCapabilities(Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    return-object p0

    .line 198
    :cond_5
    const-string v2, "setMboCellularDataStatus"

    .line 199
    .line 200
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_6

    .line 205
    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 207
    .line 208
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljava/lang/String;

    .line 213
    .line 214
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Ljava/lang/Boolean;

    .line 219
    .line 220
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMboCellularDataStatus(Ljava/lang/String;Z)Z

    .line 225
    .line 226
    .line 227
    move-result p0

    .line 228
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    return-object p0

    .line 233
    :cond_6
    const-string v2, "setQosPolicyFeatureEnabled"

    .line 234
    .line 235
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_7

    .line 240
    .line 241
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 242
    .line 243
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    check-cast v0, Ljava/lang/String;

    .line 248
    .line 249
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setQosPolicyFeatureEnabled(Ljava/lang/String;Z)Z

    .line 260
    .line 261
    .line 262
    move-result p0

    .line 263
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    return-object p0

    .line 268
    :cond_7
    const-string v2, "addNetwork"

    .line 269
    .line 270
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-eqz v2, :cond_8

    .line 275
    .line 276
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 277
    .line 278
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    check-cast p1, Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addNetworkExternal(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result p0

    .line 288
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    return-object p0

    .line 293
    :cond_8
    const-string v2, "listNetworks"

    .line 294
    .line 295
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-eqz v2, :cond_9

    .line 300
    .line 301
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 302
    .line 303
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->listNetworksExternal(Ljava/lang/String;)[I

    .line 310
    .line 311
    .line 312
    move-result-object p0

    .line 313
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    return-object p0

    .line 318
    :cond_9
    const-string v2, "reassociate"

    .line 319
    .line 320
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_a

    .line 325
    .line 326
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 327
    .line 328
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->reassociate(Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result p0

    .line 338
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :cond_a
    const-string v2, "reconnect"

    .line 344
    .line 345
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_b

    .line 350
    .line 351
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 352
    .line 353
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p1, Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->reconnect(Ljava/lang/String;)Z

    .line 360
    .line 361
    .line 362
    move-result p0

    .line 363
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    return-object p0

    .line 368
    :cond_b
    const-string v2, "initiateTdlsDiscover"

    .line 369
    .line 370
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-eqz v2, :cond_c

    .line 375
    .line 376
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 377
    .line 378
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Ljava/lang/String;

    .line 383
    .line 384
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    check-cast p1, Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initiateTdlsDiscover(Ljava/lang/String;[B)Z

    .line 395
    .line 396
    .line 397
    move-result p0

    .line 398
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p0

    .line 402
    return-object p0

    .line 403
    :cond_c
    const-string v2, "initiateTdlsSetup"

    .line 404
    .line 405
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_d

    .line 410
    .line 411
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 412
    .line 413
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Ljava/lang/String;

    .line 418
    .line 419
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    check-cast p1, Ljava/lang/String;

    .line 424
    .line 425
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initiateTdlsSetup(Ljava/lang/String;[B)Z

    .line 430
    .line 431
    .line 432
    move-result p0

    .line 433
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p0

    .line 437
    return-object p0

    .line 438
    :cond_d
    const-string v2, "initiateTdlsTeardown"

    .line 439
    .line 440
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    if-eqz v2, :cond_e

    .line 445
    .line 446
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 447
    .line 448
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    check-cast v0, Ljava/lang/String;

    .line 453
    .line 454
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    check-cast p1, Ljava/lang/String;

    .line 459
    .line 460
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->macAddressToByteArray(Ljava/lang/String;)[B

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initiateTdlsTeardown(Ljava/lang/String;[B)Z

    .line 465
    .line 466
    .line 467
    move-result p0

    .line 468
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    return-object p0

    .line 473
    :cond_e
    const-string v2, "initiateAnqpQuery"

    .line 474
    .line 475
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    if-eqz v2, :cond_f

    .line 480
    .line 481
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 482
    .line 483
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Ljava/lang/String;

    .line 488
    .line 489
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    check-cast p1, Ljava/lang/String;

    .line 494
    .line 495
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    new-array v1, v4, [I

    .line 500
    .line 501
    new-array v2, v4, [I

    .line 502
    .line 503
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initiateAnqpQuery(Ljava/lang/String;[B[I[I)Z

    .line 504
    .line 505
    .line 506
    move-result p0

    .line 507
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    return-object p0

    .line 512
    :cond_f
    const-string v2, "initiateVenueUrlAnqpQuery"

    .line 513
    .line 514
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    if-eqz v2, :cond_10

    .line 519
    .line 520
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 521
    .line 522
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    check-cast v0, Ljava/lang/String;

    .line 527
    .line 528
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object p1

    .line 532
    check-cast p1, Ljava/lang/String;

    .line 533
    .line 534
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initiateVenueUrlAnqpQuery(Ljava/lang/String;[B)Z

    .line 539
    .line 540
    .line 541
    move-result p0

    .line 542
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object p0

    .line 546
    return-object p0

    .line 547
    :cond_10
    const-string v2, "initiateHs20IconQuery"

    .line 548
    .line 549
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    const/4 v5, 0x2

    .line 554
    if-eqz v2, :cond_11

    .line 555
    .line 556
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 557
    .line 558
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    check-cast v0, Ljava/lang/String;

    .line 563
    .line 564
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    check-cast v1, Ljava/lang/String;

    .line 569
    .line 570
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object p1

    .line 578
    check-cast p1, Ljava/lang/String;

    .line 579
    .line 580
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->initiateHs20IconQuery(Ljava/lang/String;[BLjava/lang/String;)Z

    .line 581
    .line 582
    .line 583
    move-result p0

    .line 584
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    return-object p0

    .line 589
    :cond_11
    const-string v2, "startRxFilter"

    .line 590
    .line 591
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 592
    .line 593
    .line 594
    move-result v2

    .line 595
    if-eqz v2, :cond_12

    .line 596
    .line 597
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 598
    .line 599
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    check-cast p1, Ljava/lang/String;

    .line 604
    .line 605
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startRxFilter(Ljava/lang/String;)Z

    .line 606
    .line 607
    .line 608
    move-result p0

    .line 609
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object p0

    .line 613
    return-object p0

    .line 614
    :cond_12
    const-string v2, "stopRxFilter"

    .line 615
    .line 616
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_13

    .line 621
    .line 622
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 623
    .line 624
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    check-cast p1, Ljava/lang/String;

    .line 629
    .line 630
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->stopRxFilter(Ljava/lang/String;)Z

    .line 631
    .line 632
    .line 633
    move-result p0

    .line 634
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object p0

    .line 638
    return-object p0

    .line 639
    :cond_13
    const-string v2, "addRxFilter"

    .line 640
    .line 641
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    if-eqz v2, :cond_14

    .line 646
    .line 647
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 648
    .line 649
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    check-cast v0, Ljava/lang/String;

    .line 654
    .line 655
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object p1

    .line 659
    check-cast p1, Ljava/lang/Byte;

    .line 660
    .line 661
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 662
    .line 663
    .line 664
    move-result p1

    .line 665
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addRxFilter(Ljava/lang/String;B)Z

    .line 666
    .line 667
    .line 668
    move-result p0

    .line 669
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p0

    .line 673
    return-object p0

    .line 674
    :cond_14
    const-string v2, "removeRxFilter"

    .line 675
    .line 676
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    if-eqz v2, :cond_15

    .line 681
    .line 682
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 683
    .line 684
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v0

    .line 688
    check-cast v0, Ljava/lang/String;

    .line 689
    .line 690
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object p1

    .line 694
    check-cast p1, Ljava/lang/Byte;

    .line 695
    .line 696
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 697
    .line 698
    .line 699
    move-result p1

    .line 700
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeRxFilter(Ljava/lang/String;B)Z

    .line 701
    .line 702
    .line 703
    move-result p0

    .line 704
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object p0

    .line 708
    return-object p0

    .line 709
    :cond_15
    const-string v2, "setBtCoexistenceScanModeEnabled"

    .line 710
    .line 711
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 712
    .line 713
    .line 714
    move-result v2

    .line 715
    if-eqz v2, :cond_16

    .line 716
    .line 717
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 718
    .line 719
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    move-result-object v0

    .line 723
    check-cast v0, Ljava/lang/String;

    .line 724
    .line 725
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object p1

    .line 729
    check-cast p1, Ljava/lang/Boolean;

    .line 730
    .line 731
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 732
    .line 733
    .line 734
    move-result p1

    .line 735
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setBtCoexistenceScanModeEnabled(Ljava/lang/String;Z)Z

    .line 736
    .line 737
    .line 738
    move-result p0

    .line 739
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object p0

    .line 743
    return-object p0

    .line 744
    :cond_16
    const-string v2, "setSuspendModeEnabled"

    .line 745
    .line 746
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 747
    .line 748
    .line 749
    move-result v2

    .line 750
    if-eqz v2, :cond_17

    .line 751
    .line 752
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 753
    .line 754
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    check-cast v0, Ljava/lang/String;

    .line 759
    .line 760
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    move-result-object p1

    .line 764
    check-cast p1, Ljava/lang/Boolean;

    .line 765
    .line 766
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 767
    .line 768
    .line 769
    move-result p1

    .line 770
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setSuspendModeEnabled(Ljava/lang/String;Z)Z

    .line 771
    .line 772
    .line 773
    move-result p0

    .line 774
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object p0

    .line 778
    return-object p0

    .line 779
    :cond_17
    const-string v2, "filsHlpFlushRequest"

    .line 780
    .line 781
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 782
    .line 783
    .line 784
    move-result v2

    .line 785
    if-eqz v2, :cond_18

    .line 786
    .line 787
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 788
    .line 789
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 790
    .line 791
    .line 792
    move-result-object p1

    .line 793
    check-cast p1, Ljava/lang/String;

    .line 794
    .line 795
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->filsHlpFlushRequest(Ljava/lang/String;)Z

    .line 796
    .line 797
    .line 798
    move-result p0

    .line 799
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object p0

    .line 803
    return-object p0

    .line 804
    :cond_18
    const-string v2, "filsHlpAddRequest"

    .line 805
    .line 806
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-eqz v2, :cond_19

    .line 811
    .line 812
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 813
    .line 814
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v0

    .line 818
    check-cast v0, Ljava/lang/String;

    .line 819
    .line 820
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 821
    .line 822
    .line 823
    move-result-object v1

    .line 824
    check-cast v1, Ljava/lang/String;

    .line 825
    .line 826
    invoke-static {v1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 827
    .line 828
    .line 829
    move-result-object v1

    .line 830
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object p1

    .line 834
    check-cast p1, [B

    .line 835
    .line 836
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->filsHlpAddRequest(Ljava/lang/String;[B[B)Z

    .line 837
    .line 838
    .line 839
    move-result p0

    .line 840
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object p0

    .line 844
    return-object p0

    .line 845
    :cond_19
    const-string v2, "setExternalSim"

    .line 846
    .line 847
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 848
    .line 849
    .line 850
    move-result v2

    .line 851
    if-eqz v2, :cond_1a

    .line 852
    .line 853
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 854
    .line 855
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    check-cast v0, Ljava/lang/String;

    .line 860
    .line 861
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object p1

    .line 865
    check-cast p1, Ljava/lang/Boolean;

    .line 866
    .line 867
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 868
    .line 869
    .line 870
    move-result p1

    .line 871
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setExternalSim(Ljava/lang/String;Z)Z

    .line 872
    .line 873
    .line 874
    move-result p0

    .line 875
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object p0

    .line 879
    return-object p0

    .line 880
    :cond_1a
    const-string v2, "enableAutoReconnect"

    .line 881
    .line 882
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 883
    .line 884
    .line 885
    move-result v2

    .line 886
    if-eqz v2, :cond_1b

    .line 887
    .line 888
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 889
    .line 890
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v0

    .line 894
    check-cast v0, Ljava/lang/String;

    .line 895
    .line 896
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object p1

    .line 900
    check-cast p1, Ljava/lang/Boolean;

    .line 901
    .line 902
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 903
    .line 904
    .line 905
    move-result p1

    .line 906
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->enableAutoReconnect(Ljava/lang/String;Z)Z

    .line 907
    .line 908
    .line 909
    move-result p0

    .line 910
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object p0

    .line 914
    return-object p0

    .line 915
    :cond_1b
    const-string v2, "removeDppUri"

    .line 916
    .line 917
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    if-eqz v2, :cond_1c

    .line 922
    .line 923
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 924
    .line 925
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    check-cast v0, Ljava/lang/String;

    .line 930
    .line 931
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object p1

    .line 935
    check-cast p1, Ljava/lang/Integer;

    .line 936
    .line 937
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 938
    .line 939
    .line 940
    move-result p1

    .line 941
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeDppUri(Ljava/lang/String;I)Z

    .line 942
    .line 943
    .line 944
    move-result p0

    .line 945
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object p0

    .line 949
    return-object p0

    .line 950
    :cond_1c
    const-string v2, "stopDppInitiator"

    .line 951
    .line 952
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 953
    .line 954
    .line 955
    move-result v2

    .line 956
    if-eqz v2, :cond_1d

    .line 957
    .line 958
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 959
    .line 960
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 961
    .line 962
    .line 963
    move-result-object p1

    .line 964
    check-cast p1, Ljava/lang/String;

    .line 965
    .line 966
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->stopDppInitiator(Ljava/lang/String;)Z

    .line 967
    .line 968
    .line 969
    move-result p0

    .line 970
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 971
    .line 972
    .line 973
    move-result-object p0

    .line 974
    return-object p0

    .line 975
    :cond_1d
    const-string v2, "startDppEnrolleeResponder"

    .line 976
    .line 977
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 978
    .line 979
    .line 980
    move-result v2

    .line 981
    if-eqz v2, :cond_1e

    .line 982
    .line 983
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 984
    .line 985
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    check-cast v0, Ljava/lang/String;

    .line 990
    .line 991
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object p1

    .line 995
    check-cast p1, Ljava/lang/Integer;

    .line 996
    .line 997
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 998
    .line 999
    .line 1000
    move-result p1

    .line 1001
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->startDppEnrolleeResponder(Ljava/lang/String;I)Z

    .line 1002
    .line 1003
    .line 1004
    move-result p0

    .line 1005
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p0

    .line 1009
    return-object p0

    .line 1010
    :cond_1e
    const-string v2, "stopDppResponder"

    .line 1011
    .line 1012
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    if-eqz v2, :cond_1f

    .line 1017
    .line 1018
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1019
    .line 1020
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    check-cast v0, Ljava/lang/String;

    .line 1025
    .line 1026
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object p1

    .line 1030
    check-cast p1, Ljava/lang/Integer;

    .line 1031
    .line 1032
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 1033
    .line 1034
    .line 1035
    move-result p1

    .line 1036
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->stopDppResponder(Ljava/lang/String;I)Z

    .line 1037
    .line 1038
    .line 1039
    move-result p0

    .line 1040
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object p0

    .line 1044
    return-object p0

    .line 1045
    :cond_1f
    const-string v2, "sendQosPolicyResponse"

    .line 1046
    .line 1047
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1048
    .line 1049
    .line 1050
    move-result v2

    .line 1051
    if-eqz v2, :cond_20

    .line 1052
    .line 1053
    const/4 v0, 0x3

    .line 1054
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    check-cast v0, [B

    .line 1059
    .line 1060
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;

    .line 1061
    .line 1062
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    filled-new-array {v1}, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    aget-object v2, v1, v4

    .line 1070
    .line 1071
    aget-byte v6, v0, v4

    .line 1072
    .line 1073
    iput-byte v6, v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;->policyId:B

    .line 1074
    .line 1075
    aget-byte v0, v0, v3

    .line 1076
    .line 1077
    iput-byte v0, v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;->status:B

    .line 1078
    .line 1079
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1080
    .line 1081
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v0

    .line 1085
    check-cast v0, Ljava/lang/String;

    .line 1086
    .line 1087
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    check-cast v2, Ljava/lang/Integer;

    .line 1092
    .line 1093
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1094
    .line 1095
    .line 1096
    move-result v2

    .line 1097
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1098
    .line 1099
    .line 1100
    move-result-object p1

    .line 1101
    check-cast p1, Ljava/lang/Boolean;

    .line 1102
    .line 1103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1104
    .line 1105
    .line 1106
    move-result p1

    .line 1107
    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->sendQosPolicyResponse(Ljava/lang/String;IZ[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyStatus;)Z

    .line 1108
    .line 1109
    .line 1110
    move-result p0

    .line 1111
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object p0

    .line 1115
    return-object p0

    .line 1116
    :cond_20
    const-string v2, "removeAllQosPolicies"

    .line 1117
    .line 1118
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1119
    .line 1120
    .line 1121
    move-result v2

    .line 1122
    if-eqz v2, :cond_21

    .line 1123
    .line 1124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1125
    .line 1126
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object p1

    .line 1130
    check-cast p1, Ljava/lang/String;

    .line 1131
    .line 1132
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeAllQosPolicies(Ljava/lang/String;)Z

    .line 1133
    .line 1134
    .line 1135
    move-result p0

    .line 1136
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object p0

    .line 1140
    return-object p0

    .line 1141
    :cond_21
    const-string v2, "addQosPolicyRequestForScs"

    .line 1142
    .line 1143
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result v2

    .line 1147
    if-eqz v2, :cond_22

    .line 1148
    .line 1149
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    check-cast v0, [B

    .line 1154
    .line 1155
    new-instance v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;

    .line 1156
    .line 1157
    invoke-direct {v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;-><init>()V

    .line 1158
    .line 1159
    .line 1160
    filled-new-array {v2}, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v2

    .line 1164
    aget-object v5, v2, v4

    .line 1165
    .line 1166
    aget-byte v6, v0, v4

    .line 1167
    .line 1168
    iput-byte v6, v5, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;->policyId:B

    .line 1169
    .line 1170
    aget-byte v0, v0, v3

    .line 1171
    .line 1172
    iput-byte v0, v5, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;->userPriority:B

    .line 1173
    .line 1174
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;

    .line 1175
    .line 1176
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;-><init>()V

    .line 1177
    .line 1178
    .line 1179
    iput-object v0, v5, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;->classifierParams:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;

    .line 1180
    .line 1181
    aget-object v0, v2, v4

    .line 1182
    .line 1183
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;->classifierParams:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;

    .line 1184
    .line 1185
    iput-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->domainName:Ljava/lang/String;

    .line 1186
    .line 1187
    new-array v1, v3, [B

    .line 1188
    .line 1189
    iput-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcIp:[B

    .line 1190
    .line 1191
    new-array v1, v3, [B

    .line 1192
    .line 1193
    iput-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstIp:[B

    .line 1194
    .line 1195
    new-array v1, v3, [B

    .line 1196
    .line 1197
    iput-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->flowLabelIpv6:[B

    .line 1198
    .line 1199
    new-instance v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    .line 1200
    .line 1201
    invoke-direct {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;-><init>()V

    .line 1202
    .line 1203
    .line 1204
    iput-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    .line 1205
    .line 1206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1207
    .line 1208
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1209
    .line 1210
    .line 1211
    move-result-object p1

    .line 1212
    check-cast p1, Ljava/lang/String;

    .line 1213
    .line 1214
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->addQosPolicyRequestForScs(Ljava/lang/String;[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsData;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 1215
    .line 1216
    .line 1217
    move-result-object p0

    .line 1218
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object p0

    .line 1222
    return-object p0

    .line 1223
    :cond_22
    const-string v1, "removeQosPolicyForScs"

    .line 1224
    .line 1225
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v1

    .line 1229
    if-eqz v1, :cond_23

    .line 1230
    .line 1231
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1232
    .line 1233
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    check-cast v0, Ljava/lang/String;

    .line 1238
    .line 1239
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1240
    .line 1241
    .line 1242
    move-result-object p1

    .line 1243
    check-cast p1, [B

    .line 1244
    .line 1245
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeQosPolicyForScs(Ljava/lang/String;[B)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyScsRequestStatus;

    .line 1246
    .line 1247
    .line 1248
    move-result-object p0

    .line 1249
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object p0

    .line 1253
    return-object p0

    .line 1254
    :cond_23
    const-string v1, "generateSelfDppConfiguration"

    .line 1255
    .line 1256
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1257
    .line 1258
    .line 1259
    move-result v1

    .line 1260
    if-eqz v1, :cond_24

    .line 1261
    .line 1262
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1263
    .line 1264
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    check-cast v0, Ljava/lang/String;

    .line 1269
    .line 1270
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1

    .line 1274
    check-cast v1, Ljava/lang/String;

    .line 1275
    .line 1276
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    move-result-object p1

    .line 1280
    check-cast p1, Ljava/lang/String;

    .line 1281
    .line 1282
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/SemNativeUtil;->stringToByteArray(Ljava/lang/String;)[B

    .line 1283
    .line 1284
    .line 1285
    move-result-object p1

    .line 1286
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->generateSelfDppConfiguration(Ljava/lang/String;Ljava/lang/String;[B)Z

    .line 1287
    .line 1288
    .line 1289
    move-result p0

    .line 1290
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object p0

    .line 1294
    return-object p0

    .line 1295
    :cond_24
    const-string v1, "disconnect"

    .line 1296
    .line 1297
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1298
    .line 1299
    .line 1300
    move-result v1

    .line 1301
    if-eqz v1, :cond_25

    .line 1302
    .line 1303
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1304
    .line 1305
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1306
    .line 1307
    .line 1308
    move-result-object p1

    .line 1309
    check-cast p1, Ljava/lang/String;

    .line 1310
    .line 1311
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->disconnect(Ljava/lang/String;)Z

    .line 1312
    .line 1313
    .line 1314
    move-result p0

    .line 1315
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object p0

    .line 1319
    return-object p0

    .line 1320
    :cond_25
    const-string v1, "setBtCoexistenceMode"

    .line 1321
    .line 1322
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1323
    .line 1324
    .line 1325
    move-result v1

    .line 1326
    if-eqz v1, :cond_26

    .line 1327
    .line 1328
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1329
    .line 1330
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v0

    .line 1334
    check-cast v0, Ljava/lang/String;

    .line 1335
    .line 1336
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1337
    .line 1338
    .line 1339
    move-result-object p1

    .line 1340
    check-cast p1, Ljava/lang/Byte;

    .line 1341
    .line 1342
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    .line 1343
    .line 1344
    .line 1345
    move-result p1

    .line 1346
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setBtCoexistenceMode(Ljava/lang/String;B)Z

    .line 1347
    .line 1348
    .line 1349
    move-result p0

    .line 1350
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1351
    .line 1352
    .line 1353
    move-result-object p0

    .line 1354
    return-object p0

    .line 1355
    :cond_26
    const-string v1, "getConnectionCapabilities"

    .line 1356
    .line 1357
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1358
    .line 1359
    .line 1360
    move-result v1

    .line 1361
    if-eqz v1, :cond_27

    .line 1362
    .line 1363
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1364
    .line 1365
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1366
    .line 1367
    .line 1368
    move-result-object p1

    .line 1369
    check-cast p1, Ljava/lang/String;

    .line 1370
    .line 1371
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getConnectionCapabilities(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ConnectionCapabilities;

    .line 1372
    .line 1373
    .line 1374
    move-result-object p0

    .line 1375
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1376
    .line 1377
    .line 1378
    move-result-object p0

    .line 1379
    return-object p0

    .line 1380
    :cond_27
    const-string v1, "getSignalPollResults"

    .line 1381
    .line 1382
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1383
    .line 1384
    .line 1385
    move-result v1

    .line 1386
    if-eqz v1, :cond_28

    .line 1387
    .line 1388
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1389
    .line 1390
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1391
    .line 1392
    .line 1393
    move-result-object p1

    .line 1394
    check-cast p1, Ljava/lang/String;

    .line 1395
    .line 1396
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getSignalPollResults(Ljava/lang/String;)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/SignalPollResult;

    .line 1397
    .line 1398
    .line 1399
    move-result-object p0

    .line 1400
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1401
    .line 1402
    .line 1403
    move-result-object p0

    .line 1404
    return-object p0

    .line 1405
    :cond_28
    const-string v1, "getConnectionMloLinksInfo"

    .line 1406
    .line 1407
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result v0

    .line 1411
    if-eqz v0, :cond_29

    .line 1412
    .line 1413
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemISupplicantStaIfaceTest;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 1414
    .line 1415
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1416
    .line 1417
    .line 1418
    move-result-object p1

    .line 1419
    check-cast p1, Ljava/lang/String;

    .line 1420
    .line 1421
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getConnectionMloLinksInfo(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MloLinksInfo;

    .line 1422
    .line 1423
    .line 1424
    move-result-object p0

    .line 1425
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1426
    .line 1427
    .line 1428
    move-result-object p0

    .line 1429
    return-object p0

    .line 1430
    :cond_29
    const-string p0, "Exception"

    .line 1431
    .line 1432
    return-object p0
.end method
