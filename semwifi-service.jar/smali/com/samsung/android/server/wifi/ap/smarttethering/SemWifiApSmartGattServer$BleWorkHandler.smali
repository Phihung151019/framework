.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "Got message:"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v3, v0, Landroid/os/Message;->what:I

    .line 13
    .line 14
    const-string v4, "SemWifiApSmartGattServer"

    .line 15
    .line 16
    invoke-static {v4, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    iget v2, v0, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const-string v3, "wifiap_set_security"

    .line 22
    .line 23
    const-string v7, "wifiap_security"

    .line 24
    .line 25
    const-string v8, "wifiap_band"

    .line 26
    .line 27
    const-string v9, "wifiap_warning_dialog_type"

    .line 28
    .line 29
    const-string v10, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 30
    .line 31
    const-string v12, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 32
    .line 33
    const-string v15, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 34
    .line 35
    const-wide/16 v16, 0xc8

    .line 36
    .line 37
    const-string v13, " state"

    .line 38
    .line 39
    const-string v14, "isMhsEnabledsmartly"

    .line 40
    .line 41
    const/16 v5, 0xd

    .line 42
    .line 43
    const-string v6, "com.android.settings"

    .line 44
    .line 45
    const/4 v11, 0x1

    .line 46
    packed-switch v2, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    :pswitch_0
    goto/16 :goto_1d

    .line 50
    .line 51
    :pswitch_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 62
    .line 63
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getWifiApConnectedStationCount()I

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 77
    .line 78
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v6, "count "

    .line 92
    .line 93
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {v4, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 97
    .line 98
    .line 99
    if-ne v0, v5, :cond_43

    .line 100
    .line 101
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_43

    .line 108
    .line 109
    if-nez v2, :cond_43

    .line 110
    .line 111
    const-string v0, "Disabling Smart MHS after client disconnected 30secs"

    .line 112
    .line 113
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v2, "SemWifiApSmartGattServer:\tGattServer STOP_HOTSPOT_TIMEOUT_AFTER_CLIENT_DISCONNECT stopSoftAp"

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/4 v1, 0x0

    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :pswitch_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 140
    .line 141
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const v1, 0x1041116

    .line 146
    .line 147
    .line 148
    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-lez v0, :cond_43

    .line 163
    .line 164
    const-string v0, "TRY_TO_GET_AES AES key is not matched startSmartTetheringApk"

    .line 165
    .line 166
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->updateAESKeyUsingLocalGroupSmartTetheringApk()I

    .line 176
    .line 177
    .line 178
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v2, "SemWifiApSmartGattServer:\tTRY_TO_GET_AES AES key is not matched startSmartTetheringApk"

    .line 185
    .line 186
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 190
    .line 191
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    sub-int/2addr v1, v11

    .line 196
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :pswitch_4
    const-string v0, "need delay for auto hotspot"

    .line 201
    .line 202
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 206
    .line 207
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    .line 208
    .line 209
    const/4 v2, 0x0

    .line 210
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :pswitch_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 215
    .line 216
    invoke-static {v0, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 220
    .line 221
    invoke-static {v0, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 225
    .line 226
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mpreProvisioning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_0

    .line 231
    .line 232
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 233
    .line 234
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 243
    .line 244
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 251
    .line 252
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 253
    .line 254
    invoke-virtual {v0, v2, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 255
    .line 256
    .line 257
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 258
    .line 259
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v2, "SemWifiApSmartGattServer\tenableHotspot startSoftAp START_RESTART_HOTSPOT_TO_CHANGE_CHANNEL"

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_1

    .line 269
    .line 270
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-ne v0, v11, :cond_1

    .line 283
    .line 284
    new-instance v0, Landroid/content/Intent;

    .line 285
    .line 286
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v2, "sending WIFIAP_WARNING_STOP_DIALOG2 "

    .line 290
    .line 291
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 301
    .line 302
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    .line 308
    .line 309
    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 315
    .line 316
    .line 317
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 318
    .line 319
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    .line 324
    .line 325
    const/high16 v2, 0x10000000

    .line 326
    .line 327
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    .line 332
    .line 333
    const/4 v2, 0x5

    .line 334
    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    .line 336
    .line 337
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 338
    .line 339
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 340
    .line 341
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    array-length v2, v2

    .line 346
    if-ne v2, v11, :cond_2

    .line 347
    .line 348
    const-string v2, "WifiApWarning len =1"

    .line 349
    .line 350
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 354
    .line 355
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 356
    .line 357
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    .line 363
    .line 364
    :cond_2
    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    .line 366
    .line 367
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 368
    .line 369
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 370
    .line 371
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    .line 377
    .line 378
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 379
    .line 380
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 385
    .line 386
    .line 387
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 388
    .line 389
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    const-string v2, "SemWifiApSmartGattServer:\tenableHotspot startSoftAp START_RESTART_HOTSPOT_TO_CHANGE_CHANNEL"

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :goto_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 399
    .line 400
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-eqz v0, :cond_43

    .line 405
    .line 406
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 407
    .line 408
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    const-wide/32 v1, 0xea60

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v11, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 416
    .line 417
    .line 418
    goto/16 :goto_1d

    .line 419
    .line 420
    :pswitch_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 421
    .line 422
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 436
    .line 437
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 438
    .line 439
    .line 440
    move-result v3

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    if-ne v0, v5, :cond_43

    .line 458
    .line 459
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 460
    .line 461
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-eqz v0, :cond_43

    .line 466
    .line 467
    const-string v0, "Disabling Smart MHS"

    .line 468
    .line 469
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 473
    .line 474
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    const-string v2, "SemWifiApSmartGattServer:\tGattServer START_HOTSPOT_ENABLED_TIMEOUT_WITHOUT_CLIENT stopSoftAp"

    .line 479
    .line 480
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 484
    .line 485
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    const/4 v1, 0x0

    .line 490
    const/4 v2, 0x0

    .line 491
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 492
    .line 493
    .line 494
    return-void

    .line 495
    :pswitch_7
    const/4 v2, 0x0

    .line 496
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 497
    .line 498
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    .line 499
    .line 500
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 501
    .line 502
    .line 503
    return-void

    .line 504
    :pswitch_8
    const/4 v2, 0x0

    .line 505
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 506
    .line 507
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForAcceptStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_43

    .line 512
    .line 513
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 514
    .line 515
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_ACCEPT_INVITATION:Ljava/util/UUID;

    .line 516
    .line 517
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 518
    .line 519
    .line 520
    return-void

    .line 521
    :pswitch_9
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 522
    .line 523
    check-cast v0, Ljava/lang/String;

    .line 524
    .line 525
    if-eqz v0, :cond_43

    .line 526
    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string v3, "Adding to bondedd devices:"

    .line 530
    .line 531
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 535
    .line 536
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .line 553
    .line 554
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 555
    .line 556
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    new-instance v3, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    const-string v4, "SemWifiApSmartGattServer:\tAdding to bondedd devices :"

    .line 563
    .line 564
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 568
    .line 569
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    :pswitch_a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 589
    .line 590
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    const v1, 0x1041104

    .line 595
    .line 596
    .line 597
    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 602
    .line 603
    .line 604
    return-void

    .line 605
    :pswitch_b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 606
    .line 607
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    const v1, 0x10410f2

    .line 612
    .line 613
    .line 614
    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 619
    .line 620
    .line 621
    return-void

    .line 622
    :pswitch_c
    const-string v0, "Got message COMMAND_ENABLE_HOTSPOT and removeMessage(TRY_TO_GET_AES)"

    .line 623
    .line 624
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    const/16 v0, 0xc

    .line 628
    .line 629
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 630
    .line 631
    .line 632
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 633
    .line 634
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    const-string v13, "SemWifiApSmartGattServer:\tGot message COMMAND_ENABLE_HOTSPOT"

    .line 639
    .line 640
    invoke-virtual {v2, v13}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    new-instance v2, Ljava/lang/StringBuilder;

    .line 644
    .line 645
    const-string v13, "mGetBandFromClient "

    .line 646
    .line 647
    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 651
    .line 652
    invoke-static {v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 653
    .line 654
    .line 655
    move-result v14

    .line 656
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v14, " mGetSecurityFromClient : "

    .line 660
    .line 661
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 665
    .line 666
    invoke-static {v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 667
    .line 668
    .line 669
    move-result v14

    .line 670
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    const-string v14, ",mGetOWESecurityFromClient:"

    .line 674
    .line 675
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 679
    .line 680
    invoke-static {v14}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 681
    .line 682
    .line 683
    move-result v14

    .line 684
    invoke-static {v4, v14, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 685
    .line 686
    .line 687
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 688
    .line 689
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 690
    .line 691
    .line 692
    move-result-object v14

    .line 693
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 694
    .line 695
    .line 696
    move-result-object v14

    .line 697
    iput-object v14, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 698
    .line 699
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 700
    .line 701
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 702
    .line 703
    .line 704
    move-result-object v2

    .line 705
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    .line 706
    .line 707
    .line 708
    move-result v2

    .line 709
    if-eqz v2, :cond_3

    .line 710
    .line 711
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 712
    .line 713
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 714
    .line 715
    .line 716
    move-result-object v14

    .line 717
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 718
    .line 719
    .line 720
    move-result-object v14

    .line 721
    iput-object v14, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 722
    .line 723
    :cond_3
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 724
    .line 725
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 726
    .line 727
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    iget-object v14, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 732
    .line 733
    iget-object v14, v14, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 734
    .line 735
    invoke-virtual {v14}, Landroid/net/wifi/SoftApConfiguration;->getChannels()Landroid/util/SparseIntArray;

    .line 736
    .line 737
    .line 738
    move-result-object v14

    .line 739
    iget-object v11, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 740
    .line 741
    iget-object v11, v11, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 742
    .line 743
    invoke-virtual {v11}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 744
    .line 745
    .line 746
    move-result v11

    .line 747
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 748
    .line 749
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp5GBasedOnCountry()Z

    .line 754
    .line 755
    .line 756
    move-result v20

    .line 757
    array-length v0, v2

    .line 758
    const/4 v5, 0x0

    .line 759
    const/16 v21, 0x0

    .line 760
    .line 761
    :goto_2
    if-ge v5, v0, :cond_7

    .line 762
    .line 763
    aget v22, v2, v5

    .line 764
    .line 765
    and-int/lit8 v23, v22, 0x4

    .line 766
    .line 767
    if-eqz v23, :cond_4

    .line 768
    .line 769
    or-int/lit8 v21, v21, 0x4

    .line 770
    .line 771
    goto :goto_3

    .line 772
    :cond_4
    and-int/lit8 v23, v22, 0x2

    .line 773
    .line 774
    if-eqz v23, :cond_5

    .line 775
    .line 776
    or-int/lit8 v21, v21, 0x2

    .line 777
    .line 778
    goto :goto_3

    .line 779
    :cond_5
    and-int/lit8 v22, v22, 0x1

    .line 780
    .line 781
    if-eqz v22, :cond_6

    .line 782
    .line 783
    or-int/lit8 v21, v21, 0x1

    .line 784
    .line 785
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 786
    .line 787
    goto :goto_2

    .line 788
    :cond_7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 789
    .line 790
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 795
    .line 796
    .line 797
    move-result v5

    .line 798
    move-object/from16 v22, v2

    .line 799
    .line 800
    new-instance v2, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 801
    .line 802
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 803
    .line 804
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 805
    .line 806
    invoke-direct {v2, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 807
    .line 808
    .line 809
    move-object/from16 v23, v3

    .line 810
    .line 811
    const-string v3, " uiConfiguredChannels : "

    .line 812
    .line 813
    move-object/from16 v24, v7

    .line 814
    .line 815
    const/16 v25, 0x2

    .line 816
    .line 817
    const/16 v26, 0x4

    .line 818
    .line 819
    const/16 v0, 0xd

    .line 820
    .line 821
    if-eq v5, v0, :cond_1f

    .line 822
    .line 823
    const/16 v0, 0xc

    .line 824
    .line 825
    if-ne v5, v0, :cond_8

    .line 826
    .line 827
    goto/16 :goto_e

    .line 828
    .line 829
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    const-string v7, "uiConfiguredBands : "

    .line 832
    .line 833
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v7

    .line 840
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .line 855
    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    .line 857
    .line 858
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    .line 860
    .line 861
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 862
    .line 863
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 864
    .line 865
    .line 866
    move-result v3

    .line 867
    invoke-static {v4, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 868
    .line 869
    .line 870
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 871
    .line 872
    const/4 v3, 0x0

    .line 873
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 874
    .line 875
    .line 876
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 877
    .line 878
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 879
    .line 880
    .line 881
    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->supportWifiAp6GBasedOnCountry()Z

    .line 883
    .line 884
    .line 885
    move-result v0

    .line 886
    if-eqz v0, :cond_b

    .line 887
    .line 888
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 889
    .line 890
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    and-int/lit8 v0, v0, 0x4

    .line 895
    .line 896
    if-eqz v0, :cond_b

    .line 897
    .line 898
    and-int/lit8 v0, v21, 0x4

    .line 899
    .line 900
    if-eqz v0, :cond_9

    .line 901
    .line 902
    move/from16 v3, v26

    .line 903
    .line 904
    invoke-virtual {v2, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 905
    .line 906
    .line 907
    const/4 v3, 0x4

    .line 908
    goto :goto_6

    .line 909
    :cond_9
    and-int/lit8 v0, v21, 0x2

    .line 910
    .line 911
    if-eqz v0, :cond_a

    .line 912
    .line 913
    move/from16 v3, v25

    .line 914
    .line 915
    const/16 v7, 0x95

    .line 916
    .line 917
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 918
    .line 919
    .line 920
    goto :goto_6

    .line 921
    :cond_a
    move/from16 v3, v25

    .line 922
    .line 923
    const/4 v7, 0x1

    .line 924
    invoke-virtual {v2, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 925
    .line 926
    .line 927
    :goto_4
    const/4 v3, 0x1

    .line 928
    goto :goto_6

    .line 929
    :cond_b
    move/from16 v3, v25

    .line 930
    .line 931
    if-eqz v20, :cond_e

    .line 932
    .line 933
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 934
    .line 935
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 936
    .line 937
    .line 938
    move-result v0

    .line 939
    and-int/2addr v0, v3

    .line 940
    if-eqz v0, :cond_e

    .line 941
    .line 942
    and-int/lit8 v0, v21, 0x2

    .line 943
    .line 944
    if-eqz v0, :cond_c

    .line 945
    .line 946
    const/16 v7, 0x95

    .line 947
    .line 948
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 949
    .line 950
    .line 951
    goto :goto_6

    .line 952
    :cond_c
    const/16 v7, 0x95

    .line 953
    .line 954
    const/4 v13, 0x1

    .line 955
    and-int/lit8 v0, v21, 0x1

    .line 956
    .line 957
    if-eqz v0, :cond_d

    .line 958
    .line 959
    invoke-virtual {v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 960
    .line 961
    .line 962
    :goto_5
    move v3, v13

    .line 963
    goto :goto_6

    .line 964
    :cond_d
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 965
    .line 966
    .line 967
    const-string v0, "MHS is configured in 6GHz but client supports only 2.4 and 5 Ghz"

    .line 968
    .line 969
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    const/4 v3, 0x2

    .line 973
    goto :goto_6

    .line 974
    :cond_e
    const/4 v13, 0x1

    .line 975
    and-int/lit8 v0, v21, 0x1

    .line 976
    .line 977
    if-eqz v0, :cond_f

    .line 978
    .line 979
    invoke-virtual {v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 980
    .line 981
    .line 982
    goto :goto_5

    .line 983
    :cond_f
    const-string v0, "MHS is configured in 5 or 6 GHz but client supports only 2.4"

    .line 984
    .line 985
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    .line 987
    .line 988
    invoke-virtual {v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 989
    .line 990
    .line 991
    goto :goto_4

    .line 992
    :goto_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 993
    .line 994
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    if-nez v0, :cond_12

    .line 999
    .line 1000
    const/4 v7, 0x5

    .line 1001
    if-ne v11, v7, :cond_12

    .line 1002
    .line 1003
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 1008
    .line 1009
    .line 1010
    move-result v0

    .line 1011
    const/16 v26, 0x4

    .line 1012
    .line 1013
    and-int/lit8 v0, v0, 0x4

    .line 1014
    .line 1015
    if-eqz v0, :cond_11

    .line 1016
    .line 1017
    if-eqz v20, :cond_10

    .line 1018
    .line 1019
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1020
    .line 1021
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1022
    .line 1023
    .line 1024
    move-result v0

    .line 1025
    const/4 v3, 0x2

    .line 1026
    and-int/2addr v0, v3

    .line 1027
    if-eqz v0, :cond_10

    .line 1028
    .line 1029
    const-string v0, "MHS is configured in 6GHz and OWE but client wont support OWE,so enable in 5GHz"

    .line 1030
    .line 1031
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    .line 1033
    .line 1034
    const/16 v7, 0x95

    .line 1035
    .line 1036
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1037
    .line 1038
    .line 1039
    const/4 v7, 0x1

    .line 1040
    const/16 v19, 0x2

    .line 1041
    .line 1042
    goto :goto_7

    .line 1043
    :cond_10
    const-string v0, "MHS is configured in 6GHz and OWE but client wont support OWE,so enable in 2GHz"

    .line 1044
    .line 1045
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    .line 1047
    .line 1048
    const/4 v7, 0x1

    .line 1049
    invoke-virtual {v2, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1050
    .line 1051
    .line 1052
    move/from16 v19, v7

    .line 1053
    .line 1054
    goto :goto_7

    .line 1055
    :cond_11
    const/4 v7, 0x1

    .line 1056
    move/from16 v19, v3

    .line 1057
    .line 1058
    :goto_7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1059
    .line 1060
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1061
    .line 1062
    .line 1063
    const/4 v3, 0x0

    .line 1064
    const/4 v11, 0x0

    .line 1065
    invoke-virtual {v2, v3, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1066
    .line 1067
    .line 1068
    move/from16 v3, v19

    .line 1069
    .line 1070
    const/4 v7, 0x0

    .line 1071
    goto/16 :goto_a

    .line 1072
    .line 1073
    :cond_12
    const/4 v7, 0x1

    .line 1074
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1075
    .line 1076
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1077
    .line 1078
    .line 1079
    move-result v0

    .line 1080
    if-ne v0, v7, :cond_13

    .line 1081
    .line 1082
    const/4 v13, 0x3

    .line 1083
    if-ne v11, v13, :cond_13

    .line 1084
    .line 1085
    const-string v0, "MHS is configured in WPA3 but client supports only WPA2"

    .line 1086
    .line 1087
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    .line 1089
    .line 1090
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1091
    .line 1092
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1096
    .line 1097
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1098
    .line 1099
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 1100
    .line 1101
    .line 1102
    move-result-object v0

    .line 1103
    const/4 v7, 0x2

    .line 1104
    invoke-virtual {v2, v0, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1105
    .line 1106
    .line 1107
    goto :goto_a

    .line 1108
    :cond_13
    const/4 v7, 0x2

    .line 1109
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1110
    .line 1111
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1112
    .line 1113
    .line 1114
    move-result v0

    .line 1115
    if-nez v0, :cond_14

    .line 1116
    .line 1117
    const/4 v13, 0x3

    .line 1118
    if-eq v11, v13, :cond_15

    .line 1119
    .line 1120
    if-ne v11, v7, :cond_14

    .line 1121
    .line 1122
    goto :goto_8

    .line 1123
    :cond_14
    move v13, v7

    .line 1124
    const/4 v7, 0x1

    .line 1125
    goto :goto_9

    .line 1126
    :cond_15
    :goto_8
    const-string v0, "MHS is configured in WPA3 but client capability is not known, so enabling in WPA2/3"

    .line 1127
    .line 1128
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    .line 1130
    .line 1131
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1132
    .line 1133
    const/4 v7, 0x1

    .line 1134
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1135
    .line 1136
    .line 1137
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1138
    .line 1139
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1140
    .line 1141
    .line 1142
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1143
    .line 1144
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1145
    .line 1146
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    const/4 v13, 0x2

    .line 1151
    invoke-virtual {v2, v0, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1152
    .line 1153
    .line 1154
    move v7, v13

    .line 1155
    goto :goto_a

    .line 1156
    :goto_9
    if-eq v3, v7, :cond_16

    .line 1157
    .line 1158
    if-ne v3, v13, :cond_17

    .line 1159
    .line 1160
    :cond_16
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1161
    .line 1162
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1163
    .line 1164
    .line 1165
    move-result v0

    .line 1166
    if-ne v0, v13, :cond_17

    .line 1167
    .line 1168
    const/4 v7, 0x3

    .line 1169
    if-ne v11, v7, :cond_17

    .line 1170
    .line 1171
    const-string v0, "Even though client device supports WPA3, for next client need to use WPA2/3"

    .line 1172
    .line 1173
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    .line 1175
    .line 1176
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1177
    .line 1178
    const/4 v7, 0x1

    .line 1179
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1180
    .line 1181
    .line 1182
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1183
    .line 1184
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1185
    .line 1186
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    invoke-virtual {v2, v0, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1191
    .line 1192
    .line 1193
    const/4 v7, 0x2

    .line 1194
    goto :goto_a

    .line 1195
    :cond_17
    move v7, v11

    .line 1196
    :goto_a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1197
    .line 1198
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v2

    .line 1202
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1203
    .line 1204
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1205
    .line 1206
    const/4 v13, 0x1

    .line 1207
    invoke-static {v0, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1208
    .line 1209
    .line 1210
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1211
    .line 1212
    invoke-static {v0, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisMHSEnabledSmartly(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    .line 1216
    .line 1217
    .line 1218
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1219
    .line 1220
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisJDMDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v0

    .line 1224
    const-string v2, ",mSSID:"

    .line 1225
    .line 1226
    if-nez v0, :cond_18

    .line 1227
    .line 1228
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1229
    .line 1230
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1231
    .line 1232
    .line 1233
    move-result-object v0

    .line 1234
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 1235
    .line 1236
    .line 1237
    move-result v0

    .line 1238
    if-eqz v0, :cond_1b

    .line 1239
    .line 1240
    :cond_18
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1241
    .line 1242
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mpreProvisioning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v0

    .line 1246
    if-nez v0, :cond_1b

    .line 1247
    .line 1248
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1249
    .line 1250
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v0

    .line 1254
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 1255
    .line 1256
    .line 1257
    move-result v0

    .line 1258
    if-eqz v0, :cond_1b

    .line 1259
    .line 1260
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1261
    .line 1262
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1263
    .line 1264
    .line 1265
    move-result-object v0

    .line 1266
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingEnabled()Z

    .line 1267
    .line 1268
    .line 1269
    move-result v0

    .line 1270
    if-eqz v0, :cond_19

    .line 1271
    .line 1272
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1273
    .line 1274
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisJDMDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 1275
    .line 1276
    .line 1277
    move-result v0

    .line 1278
    if-eqz v0, :cond_1a

    .line 1279
    .line 1280
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1281
    .line 1282
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1283
    .line 1284
    .line 1285
    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 1287
    .line 1288
    .line 1289
    move-result v0

    .line 1290
    if-eqz v0, :cond_1a

    .line 1291
    .line 1292
    :cond_19
    const-string v0, "Wifi sharing is OFF or JDM model, therefore disabling the WiFi for Auto hotspot"

    .line 1293
    .line 1294
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    .line 1296
    .line 1297
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1298
    .line 1299
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1300
    .line 1301
    .line 1302
    move-result-object v0

    .line 1303
    const-string v3, "ap.smart"

    .line 1304
    .line 1305
    const/4 v11, 0x0

    .line 1306
    invoke-virtual {v0, v11, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 1307
    .line 1308
    .line 1309
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1310
    .line 1311
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v0

    .line 1319
    const-string v3, "wifi_saved_state"

    .line 1320
    .line 1321
    const/4 v7, 0x1

    .line 1322
    invoke-static {v0, v3, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1323
    .line 1324
    .line 1325
    const-wide/16 v3, 0x1f4

    .line 1326
    .line 1327
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1328
    .line 1329
    .line 1330
    goto :goto_b

    .line 1331
    :catch_1
    move-exception v0

    .line 1332
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1333
    .line 1334
    .line 1335
    :cond_1a
    :goto_b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1336
    .line 1337
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v0

    .line 1341
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1342
    .line 1343
    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1344
    .line 1345
    const/4 v7, 0x1

    .line 1346
    invoke-virtual {v0, v3, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 1347
    .line 1348
    .line 1349
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1350
    .line 1351
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    const-string v3, "SemWifiApSmartGattServer\tWiFiSharingLiteSupported case , enableHotspot startSoftAp state :"

    .line 1356
    .line 1357
    invoke-static {v3, v5, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v2

    .line 1361
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1362
    .line 1363
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v3

    .line 1367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v2

    .line 1374
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1375
    .line 1376
    .line 1377
    goto/16 :goto_d

    .line 1378
    .line 1379
    :cond_1b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1380
    .line 1381
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mpreProvisioning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v0

    .line 1385
    if-nez v0, :cond_1d

    .line 1386
    .line 1387
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1388
    .line 1389
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v0

    .line 1393
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v0

    .line 1397
    if-nez v0, :cond_1d

    .line 1398
    .line 1399
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1400
    .line 1401
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$misWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 1402
    .line 1403
    .line 1404
    move-result v0

    .line 1405
    if-eqz v0, :cond_1c

    .line 1406
    .line 1407
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1408
    .line 1409
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    .line 1414
    .line 1415
    .line 1416
    move-result v0

    .line 1417
    if-nez v0, :cond_1c

    .line 1418
    .line 1419
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1420
    .line 1421
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$msetWifiSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)V

    .line 1422
    .line 1423
    .line 1424
    :cond_1c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1425
    .line 1426
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v0

    .line 1430
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1431
    .line 1432
    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1433
    .line 1434
    const/4 v7, 0x1

    .line 1435
    invoke-virtual {v0, v3, v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 1436
    .line 1437
    .line 1438
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1439
    .line 1440
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v0

    .line 1444
    const-string v3, "SemWifiApSmartGattServer\tenableHotspot startSoftAp state :"

    .line 1445
    .line 1446
    invoke-static {v3, v5, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v2

    .line 1450
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1451
    .line 1452
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v3

    .line 1456
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1457
    .line 1458
    .line 1459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v2

    .line 1463
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1464
    .line 1465
    .line 1466
    goto/16 :goto_d

    .line 1467
    .line 1468
    :cond_1d
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 1473
    .line 1474
    .line 1475
    move-result-object v0

    .line 1476
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    .line 1477
    .line 1478
    .line 1479
    move-result v0

    .line 1480
    const/4 v13, 0x1

    .line 1481
    if-ne v0, v13, :cond_1e

    .line 1482
    .line 1483
    const-string v0, "sending WIFIAP_WARNING_STOP_DIALOG "

    .line 1484
    .line 1485
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    .line 1487
    .line 1488
    new-instance v0, Landroid/content/Intent;

    .line 1489
    .line 1490
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1491
    .line 1492
    .line 1493
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual {v0, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    .line 1498
    .line 1499
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1500
    .line 1501
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v4

    .line 1505
    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1506
    .line 1507
    .line 1508
    :try_start_2
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1509
    .line 1510
    .line 1511
    goto :goto_c

    .line 1512
    :catch_2
    move-exception v0

    .line 1513
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1514
    .line 1515
    .line 1516
    :cond_1e
    :goto_c
    new-instance v0, Landroid/content/Intent;

    .line 1517
    .line 1518
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1519
    .line 1520
    .line 1521
    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1522
    .line 1523
    .line 1524
    const/high16 v4, 0x10000000

    .line 1525
    .line 1526
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    .line 1531
    .line 1532
    const/4 v4, 0x5

    .line 1533
    invoke-virtual {v0, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v0, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1537
    .line 1538
    .line 1539
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1540
    .line 1541
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmChangeSecurity(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 1542
    .line 1543
    .line 1544
    move-result v3

    .line 1545
    move-object/from16 v4, v24

    .line 1546
    .line 1547
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1548
    .line 1549
    .line 1550
    move-object/from16 v3, v23

    .line 1551
    .line 1552
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1553
    .line 1554
    .line 1555
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1556
    .line 1557
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/content/Context;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v3

    .line 1561
    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1562
    .line 1563
    .line 1564
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1565
    .line 1566
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v0

    .line 1570
    const-string v3, "SemWifiApSmartGattServer:\tenableHotspot start wifiapwarning SoftAp state :"

    .line 1571
    .line 1572
    invoke-static {v3, v5, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v2

    .line 1576
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1577
    .line 1578
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Ljava/lang/String;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v3

    .line 1582
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    .line 1585
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v2

    .line 1589
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1590
    .line 1591
    .line 1592
    :goto_d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1593
    .line 1594
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v0

    .line 1598
    if-eqz v0, :cond_43

    .line 1599
    .line 1600
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1601
    .line 1602
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 1603
    .line 1604
    .line 1605
    move-result-object v0

    .line 1606
    const-wide/32 v1, 0xea60

    .line 1607
    .line 1608
    .line 1609
    const/4 v7, 0x1

    .line 1610
    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1611
    .line 1612
    .line 1613
    goto/16 :goto_1d

    .line 1614
    .line 1615
    :cond_1f
    :goto_e
    :try_start_3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v0

    .line 1619
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 1620
    .line 1621
    .line 1622
    move-result-object v0

    .line 1623
    const-string v5, "SAE_SECURITY"

    .line 1624
    .line 1625
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v0

    .line 1629
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1630
    .line 1631
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v6

    .line 1635
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApTetheredClientInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;

    .line 1636
    .line 1637
    .line 1638
    move-result-object v6

    .line 1639
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApTetheredClientInfo;->getNumOfConnectedDevices()I

    .line 1640
    .line 1641
    .line 1642
    move-result v6

    .line 1643
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputconnected_num_sta(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;I)V

    .line 1644
    .line 1645
    .line 1646
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1647
    .line 1648
    .line 1649
    move-result v5

    .line 1650
    if-nez v5, :cond_20

    .line 1651
    .line 1652
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1653
    .line 1654
    .line 1655
    move-result v11

    .line 1656
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1657
    .line 1658
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1659
    .line 1660
    .line 1661
    const-string v5, "hostapd_security:"

    .line 1662
    .line 1663
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    .line 1665
    .line 1666
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1667
    .line 1668
    .line 1669
    const-string v5, ",connected_num_sta:"

    .line 1670
    .line 1671
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    .line 1673
    .line 1674
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1675
    .line 1676
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetconnected_num_sta(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1677
    .line 1678
    .line 1679
    move-result v5

    .line 1680
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1681
    .line 1682
    .line 1683
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v0

    .line 1687
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    .line 1689
    .line 1690
    goto :goto_f

    .line 1691
    :catch_3
    move-exception v0

    .line 1692
    goto/16 :goto_11

    .line 1693
    .line 1694
    :cond_20
    :goto_f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v0

    .line 1698
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v0

    .line 1702
    const-string v5, "GET_FREQ"

    .line 1703
    .line 1704
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1709
    .line 1710
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1711
    .line 1712
    .line 1713
    const-string v6, "hostapd_freq:"

    .line 1714
    .line 1715
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    .line 1717
    .line 1718
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    .line 1720
    .line 1721
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1722
    .line 1723
    .line 1724
    move-result-object v5

    .line 1725
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    .line 1727
    .line 1728
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1729
    .line 1730
    .line 1731
    move-result v5

    .line 1732
    if-nez v5, :cond_2a

    .line 1733
    .line 1734
    const-string v5, " "

    .line 1735
    .line 1736
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v0

    .line 1740
    array-length v5, v0

    .line 1741
    const/16 v6, 0x1388

    .line 1742
    .line 1743
    const/16 v7, 0x960

    .line 1744
    .line 1745
    const/16 v8, 0x9b4

    .line 1746
    .line 1747
    const/16 v9, 0x170c

    .line 1748
    .line 1749
    const/4 v13, 0x1

    .line 1750
    if-le v5, v13, :cond_27

    .line 1751
    .line 1752
    const/16 v18, 0x0

    .line 1753
    .line 1754
    aget-object v5, v0, v18

    .line 1755
    .line 1756
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1757
    .line 1758
    .line 1759
    move-result v5

    .line 1760
    aget-object v0, v0, v13

    .line 1761
    .line 1762
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1763
    .line 1764
    .line 1765
    move-result v0

    .line 1766
    if-gt v5, v8, :cond_21

    .line 1767
    .line 1768
    if-lt v5, v7, :cond_21

    .line 1769
    .line 1770
    const/4 v5, 0x1

    .line 1771
    goto :goto_10

    .line 1772
    :cond_21
    if-le v5, v9, :cond_22

    .line 1773
    .line 1774
    const/4 v5, 0x4

    .line 1775
    goto :goto_10

    .line 1776
    :cond_22
    if-le v5, v6, :cond_23

    .line 1777
    .line 1778
    if-ge v5, v9, :cond_23

    .line 1779
    .line 1780
    const/4 v5, 0x2

    .line 1781
    goto :goto_10

    .line 1782
    :cond_23
    const/4 v5, 0x0

    .line 1783
    :goto_10
    if-gt v0, v8, :cond_24

    .line 1784
    .line 1785
    if-lt v0, v7, :cond_24

    .line 1786
    .line 1787
    or-int/lit8 v0, v5, 0x1

    .line 1788
    .line 1789
    goto :goto_12

    .line 1790
    :cond_24
    if-le v0, v9, :cond_25

    .line 1791
    .line 1792
    or-int/lit8 v0, v5, 0x4

    .line 1793
    .line 1794
    goto :goto_12

    .line 1795
    :cond_25
    if-le v0, v6, :cond_26

    .line 1796
    .line 1797
    if-ge v0, v9, :cond_26

    .line 1798
    .line 1799
    or-int/lit8 v0, v5, 0x2

    .line 1800
    .line 1801
    goto :goto_12

    .line 1802
    :cond_26
    move v0, v5

    .line 1803
    goto :goto_12

    .line 1804
    :cond_27
    const/16 v18, 0x0

    .line 1805
    .line 1806
    aget-object v0, v0, v18

    .line 1807
    .line 1808
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1809
    .line 1810
    .line 1811
    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1812
    if-gt v0, v8, :cond_28

    .line 1813
    .line 1814
    if-lt v0, v7, :cond_28

    .line 1815
    .line 1816
    const/4 v0, 0x1

    .line 1817
    goto :goto_12

    .line 1818
    :cond_28
    if-le v0, v9, :cond_29

    .line 1819
    .line 1820
    const/4 v0, 0x4

    .line 1821
    goto :goto_12

    .line 1822
    :cond_29
    if-le v0, v6, :cond_2a

    .line 1823
    .line 1824
    if-ge v0, v9, :cond_2a

    .line 1825
    .line 1826
    const/4 v0, 0x2

    .line 1827
    goto :goto_12

    .line 1828
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1829
    .line 1830
    .line 1831
    :cond_2a
    const/4 v0, 0x0

    .line 1832
    :goto_12
    const-string v5, "MHS already enabled , hostapdBand:"

    .line 1833
    .line 1834
    const-string v6, ",uiConfiguredBands : "

    .line 1835
    .line 1836
    invoke-static {v5, v0, v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    .line 1838
    .line 1839
    move-result-object v5

    .line 1840
    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v6

    .line 1844
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1854
    .line 1855
    .line 1856
    move-result-object v3

    .line 1857
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    .line 1859
    .line 1860
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1861
    .line 1862
    const-string v5, "MHS already enabled ,,mGetBandFromClient "

    .line 1863
    .line 1864
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1865
    .line 1866
    .line 1867
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1868
    .line 1869
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1870
    .line 1871
    .line 1872
    move-result v5

    .line 1873
    invoke-static {v4, v5, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1874
    .line 1875
    .line 1876
    if-nez v0, :cond_2d

    .line 1877
    .line 1878
    const-string v0, "not able to fetch band info from hostapd"

    .line 1879
    .line 1880
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    .line 1882
    .line 1883
    const/4 v7, 0x1

    .line 1884
    invoke-virtual {v2, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1885
    .line 1886
    .line 1887
    and-int/lit8 v0, v21, 0x4

    .line 1888
    .line 1889
    if-nez v0, :cond_2c

    .line 1890
    .line 1891
    const/16 v25, 0x2

    .line 1892
    .line 1893
    and-int/lit8 v0, v21, 0x2

    .line 1894
    .line 1895
    if-eqz v0, :cond_2b

    .line 1896
    .line 1897
    goto :goto_14

    .line 1898
    :cond_2b
    :goto_13
    const/4 v13, 0x1

    .line 1899
    goto/16 :goto_17

    .line 1900
    .line 1901
    :cond_2c
    :goto_14
    const-string v0, "not able to fetch band info from hostapd, so set 2GHz"

    .line 1902
    .line 1903
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    .line 1905
    .line 1906
    :goto_15
    const/4 v13, 0x1

    .line 1907
    goto/16 :goto_18

    .line 1908
    .line 1909
    :cond_2d
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1910
    .line 1911
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1912
    .line 1913
    .line 1914
    move-result v3

    .line 1915
    const/4 v5, 0x4

    .line 1916
    and-int/2addr v3, v5

    .line 1917
    if-eqz v3, :cond_31

    .line 1918
    .line 1919
    and-int/lit8 v3, v0, 0x4

    .line 1920
    .line 1921
    if-eqz v3, :cond_2e

    .line 1922
    .line 1923
    const-string v0, "client supports 6Ghz, MHS is enabled in 6 GHz ,so set same Band"

    .line 1924
    .line 1925
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {v2, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1929
    .line 1930
    .line 1931
    goto :goto_13

    .line 1932
    :cond_2e
    and-int/lit8 v3, v0, 0x2

    .line 1933
    .line 1934
    if-eqz v3, :cond_2f

    .line 1935
    .line 1936
    const/16 v19, 0x1

    .line 1937
    .line 1938
    and-int/lit8 v0, v0, 0x1

    .line 1939
    .line 1940
    if-eqz v0, :cond_2f

    .line 1941
    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1943
    .line 1944
    const-string v3, "client supports 6Ghz, MHS is enabled in dual band:len"

    .line 1945
    .line 1946
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1947
    .line 1948
    .line 1949
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1950
    .line 1951
    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 1952
    .line 1953
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 1954
    .line 1955
    .line 1956
    move-result-object v3

    .line 1957
    array-length v3, v3

    .line 1958
    invoke-static {v4, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 1959
    .line 1960
    .line 1961
    goto :goto_13

    .line 1962
    :cond_2f
    if-eqz v3, :cond_30

    .line 1963
    .line 1964
    const-string v0, "client supports 6GHz, MHS is enabled in 5 GHz ,so set same Band"

    .line 1965
    .line 1966
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    .line 1968
    .line 1969
    const/4 v3, 0x2

    .line 1970
    const/16 v7, 0x95

    .line 1971
    .line 1972
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1973
    .line 1974
    .line 1975
    goto :goto_13

    .line 1976
    :cond_30
    const/4 v3, 0x2

    .line 1977
    const-string v0, "client supports 6GHz, MHS is enabled in 2.4 GHz ,so set same Band"

    .line 1978
    .line 1979
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    .line 1981
    .line 1982
    const/4 v7, 0x1

    .line 1983
    invoke-virtual {v2, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 1984
    .line 1985
    .line 1986
    move v13, v7

    .line 1987
    goto :goto_17

    .line 1988
    :cond_31
    const/4 v3, 0x2

    .line 1989
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 1990
    .line 1991
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 1992
    .line 1993
    .line 1994
    move-result v5

    .line 1995
    and-int/2addr v5, v3

    .line 1996
    if-eqz v5, :cond_36

    .line 1997
    .line 1998
    and-int/lit8 v3, v0, 0x2

    .line 1999
    .line 2000
    if-eqz v3, :cond_32

    .line 2001
    .line 2002
    and-int/lit8 v5, v0, 0x1

    .line 2003
    .line 2004
    if-eqz v5, :cond_32

    .line 2005
    .line 2006
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2007
    .line 2008
    const-string v3, "client supports 5Ghz, MHS is enabled in dual band:len"

    .line 2009
    .line 2010
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2011
    .line 2012
    .line 2013
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2014
    .line 2015
    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 2016
    .line 2017
    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getBands()[I

    .line 2018
    .line 2019
    .line 2020
    move-result-object v3

    .line 2021
    array-length v3, v3

    .line 2022
    invoke-static {v4, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 2023
    .line 2024
    .line 2025
    goto :goto_13

    .line 2026
    :cond_32
    if-eqz v3, :cond_33

    .line 2027
    .line 2028
    const-string v0, "client supports 5Ghz, MHS is enabled in 5 GHz ,so set same Band"

    .line 2029
    .line 2030
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    .line 2032
    .line 2033
    const/4 v3, 0x2

    .line 2034
    const/16 v7, 0x95

    .line 2035
    .line 2036
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2037
    .line 2038
    .line 2039
    goto/16 :goto_13

    .line 2040
    .line 2041
    :cond_33
    const/4 v3, 0x2

    .line 2042
    const/16 v7, 0x95

    .line 2043
    .line 2044
    const/4 v13, 0x1

    .line 2045
    and-int/2addr v0, v13

    .line 2046
    if-eqz v0, :cond_34

    .line 2047
    .line 2048
    const-string v0, "client supports 5GHz, MHS is enabled in 2.4 GHz ,so set same Band"

    .line 2049
    .line 2050
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    .line 2052
    .line 2053
    invoke-virtual {v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2054
    .line 2055
    .line 2056
    goto :goto_17

    .line 2057
    :cond_34
    if-eqz v20, :cond_35

    .line 2058
    .line 2059
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2060
    .line 2061
    .line 2062
    goto :goto_16

    .line 2063
    :cond_35
    invoke-virtual {v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2064
    .line 2065
    .line 2066
    :goto_16
    const-string v0, "MHS is enabled in 6GHz but client supports only 2.4 and 5 Ghz"

    .line 2067
    .line 2068
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    .line 2070
    .line 2071
    goto :goto_18

    .line 2072
    :cond_36
    const/4 v13, 0x1

    .line 2073
    and-int/2addr v0, v13

    .line 2074
    if-eqz v0, :cond_37

    .line 2075
    .line 2076
    const-string v0, "client only supports 2.4GHz,MHS is enabled in 2.4 GHz ,so set same Band"

    .line 2077
    .line 2078
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2082
    .line 2083
    .line 2084
    :goto_17
    const/4 v13, 0x0

    .line 2085
    goto :goto_18

    .line 2086
    :cond_37
    const-string v0, "MHS is enabled in 5 or 6 GHz but client supports only 2.4"

    .line 2087
    .line 2088
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    .line 2090
    .line 2091
    invoke-virtual {v2, v13}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2092
    .line 2093
    .line 2094
    goto/16 :goto_15

    .line 2095
    .line 2096
    :goto_18
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2097
    .line 2098
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetOWESecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 2099
    .line 2100
    .line 2101
    move-result v0

    .line 2102
    if-nez v0, :cond_3a

    .line 2103
    .line 2104
    const/4 v3, 0x4

    .line 2105
    if-ne v11, v3, :cond_3a

    .line 2106
    .line 2107
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 2108
    .line 2109
    .line 2110
    move-result-object v0

    .line 2111
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    .line 2112
    .line 2113
    .line 2114
    move-result v0

    .line 2115
    and-int/2addr v0, v3

    .line 2116
    if-eqz v0, :cond_38

    .line 2117
    .line 2118
    if-eqz v20, :cond_39

    .line 2119
    .line 2120
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2121
    .line 2122
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetBandFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 2123
    .line 2124
    .line 2125
    move-result v0

    .line 2126
    const/4 v3, 0x2

    .line 2127
    and-int/2addr v0, v3

    .line 2128
    if-eqz v0, :cond_39

    .line 2129
    .line 2130
    const-string v0, "MHS is enabled in 6GHz and OWE but client wont support OWE,so enable in 5GHz"

    .line 2131
    .line 2132
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    .line 2134
    .line 2135
    const/16 v7, 0x95

    .line 2136
    .line 2137
    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2138
    .line 2139
    .line 2140
    :cond_38
    const/4 v7, 0x1

    .line 2141
    goto :goto_19

    .line 2142
    :cond_39
    const-string v0, "MHS is enabled in 6GHz and OWE but client wont support OWE,so enable in 2GHz"

    .line 2143
    .line 2144
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    .line 2146
    .line 2147
    const/4 v7, 0x1

    .line 2148
    invoke-virtual {v2, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2149
    .line 2150
    .line 2151
    :goto_19
    const-string v0, "MHS is enabled in OWE but client does not support so enable in Open"

    .line 2152
    .line 2153
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    .line 2155
    .line 2156
    const/4 v3, 0x0

    .line 2157
    const/4 v11, 0x0

    .line 2158
    invoke-virtual {v2, v3, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2159
    .line 2160
    .line 2161
    move v11, v7

    .line 2162
    goto/16 :goto_1c

    .line 2163
    .line 2164
    :cond_3a
    const/4 v7, 0x1

    .line 2165
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2166
    .line 2167
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 2168
    .line 2169
    .line 2170
    move-result v0

    .line 2171
    if-ne v0, v7, :cond_3b

    .line 2172
    .line 2173
    const/4 v7, 0x3

    .line 2174
    if-ne v11, v7, :cond_3b

    .line 2175
    .line 2176
    const-string v0, "MHS is enabled in WPA3 but client supports only WPA2, so apply WPA3/2"

    .line 2177
    .line 2178
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    .line 2180
    .line 2181
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2182
    .line 2183
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 2184
    .line 2185
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v0

    .line 2189
    const/4 v3, 0x2

    .line 2190
    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2191
    .line 2192
    .line 2193
    const/4 v11, 0x1

    .line 2194
    goto :goto_1c

    .line 2195
    :cond_3b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2196
    .line 2197
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmGetSecurityFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)I

    .line 2198
    .line 2199
    .line 2200
    move-result v0

    .line 2201
    if-nez v0, :cond_3d

    .line 2202
    .line 2203
    const/4 v7, 0x1

    .line 2204
    if-eq v11, v7, :cond_3d

    .line 2205
    .line 2206
    if-eqz v11, :cond_3d

    .line 2207
    .line 2208
    const/4 v3, 0x4

    .line 2209
    if-eq v11, v3, :cond_3d

    .line 2210
    .line 2211
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2212
    .line 2213
    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisNeededSecurityWpa2(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 2214
    .line 2215
    .line 2216
    const-string v0, "MHS is enabled in WPA3 but dont know about client support, so apply WPA2/3"

    .line 2217
    .line 2218
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    .line 2220
    .line 2221
    const/4 v3, 0x2

    .line 2222
    if-eq v11, v3, :cond_3c

    .line 2223
    .line 2224
    const/4 v11, 0x1

    .line 2225
    goto :goto_1a

    .line 2226
    :cond_3c
    move v11, v13

    .line 2227
    :goto_1a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2228
    .line 2229
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 2230
    .line 2231
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 2232
    .line 2233
    .line 2234
    move-result-object v0

    .line 2235
    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2236
    .line 2237
    .line 2238
    goto :goto_1c

    .line 2239
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2240
    .line 2241
    const-string v3, "MHS is enabled in hostapd_security :"

    .line 2242
    .line 2243
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    const-string v3, ",applying same"

    .line 2250
    .line 2251
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    .line 2253
    .line 2254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v0

    .line 2258
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    .line 2260
    .line 2261
    const/4 v7, 0x1

    .line 2262
    if-lt v11, v7, :cond_3e

    .line 2263
    .line 2264
    const/4 v7, 0x3

    .line 2265
    if-gt v11, v7, :cond_3e

    .line 2266
    .line 2267
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2268
    .line 2269
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 2270
    .line 2271
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    .line 2272
    .line 2273
    .line 2274
    move-result-object v0

    .line 2275
    invoke-virtual {v2, v0, v11}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2276
    .line 2277
    .line 2278
    goto :goto_1b

    .line 2279
    :cond_3e
    if-nez v11, :cond_3f

    .line 2280
    .line 2281
    const/4 v3, 0x0

    .line 2282
    const/4 v5, 0x0

    .line 2283
    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2284
    .line 2285
    .line 2286
    goto :goto_1b

    .line 2287
    :cond_3f
    const/4 v3, 0x0

    .line 2288
    const/4 v5, 0x4

    .line 2289
    if-ne v11, v5, :cond_40

    .line 2290
    .line 2291
    const/4 v7, 0x5

    .line 2292
    invoke-virtual {v2, v3, v7}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 2293
    .line 2294
    .line 2295
    :cond_40
    :goto_1b
    move v11, v13

    .line 2296
    :goto_1c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2297
    .line 2298
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 2299
    .line 2300
    .line 2301
    move-result-object v2

    .line 2302
    iput-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mSoftApConfiguration:Landroid/net/wifi/SoftApConfiguration;

    .line 2303
    .line 2304
    if-nez v11, :cond_41

    .line 2305
    .line 2306
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2307
    .line 2308
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    .line 2309
    .line 2310
    const/4 v11, 0x0

    .line 2311
    invoke-static {v0, v2, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 2312
    .line 2313
    .line 2314
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2315
    .line 2316
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 2317
    .line 2318
    .line 2319
    move-result-object v0

    .line 2320
    const-string v1, "SemWifiApSmartGattServer:\tMHS already Enabled"

    .line 2321
    .line 2322
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2323
    .line 2324
    .line 2325
    goto :goto_1d

    .line 2326
    :cond_41
    const/4 v11, 0x0

    .line 2327
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2328
    .line 2329
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2330
    .line 2331
    .line 2332
    move-result-object v0

    .line 2333
    const/4 v3, 0x0

    .line 2334
    invoke-virtual {v0, v3, v11}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 2335
    .line 2336
    .line 2337
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2338
    .line 2339
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v0

    .line 2343
    if-eqz v0, :cond_42

    .line 2344
    .line 2345
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2346
    .line 2347
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v0

    .line 2351
    const/16 v2, 0xa

    .line 2352
    .line 2353
    const-wide/16 v5, 0x3e8

    .line 2354
    .line 2355
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2356
    .line 2357
    .line 2358
    :cond_42
    const-string v0, "restart MHS"

    .line 2359
    .line 2360
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    .line 2362
    .line 2363
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2364
    .line 2365
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 2366
    .line 2367
    .line 2368
    move-result-object v0

    .line 2369
    const-string v1, "SemWifiApSmartGattServer:\tMHS already Enabled and disable"

    .line 2370
    .line 2371
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2372
    .line 2373
    .line 2374
    goto :goto_1d

    .line 2375
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2376
    .line 2377
    const-string v2, "Got message START_HOTSPOT_ENABLING_TIMEOUT: isWaitingForMHSStatus "

    .line 2378
    .line 2379
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2380
    .line 2381
    .line 2382
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2383
    .line 2384
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 2385
    .line 2386
    .line 2387
    move-result v2

    .line 2388
    invoke-static {v0, v2, v4}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 2389
    .line 2390
    .line 2391
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2392
    .line 2393
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Landroid/util/LocalLog;

    .line 2394
    .line 2395
    .line 2396
    move-result-object v0

    .line 2397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2398
    .line 2399
    const-string v3, "SemWifiApSmartGattServer:\tGot message START_HOTSPOT_ENABLING_TIMEOUT: isWaitingForMHSStatus "

    .line 2400
    .line 2401
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2402
    .line 2403
    .line 2404
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2405
    .line 2406
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 2407
    .line 2408
    .line 2409
    move-result v3

    .line 2410
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2411
    .line 2412
    .line 2413
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v2

    .line 2417
    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2418
    .line 2419
    .line 2420
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2421
    .line 2422
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fgetisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;)Z

    .line 2423
    .line 2424
    .line 2425
    move-result v0

    .line 2426
    if-eqz v0, :cond_43

    .line 2427
    .line 2428
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2429
    .line 2430
    const/4 v11, 0x0

    .line 2431
    invoke-static {v0, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$fputisWaitingForMHSStatus(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Z)V

    .line 2432
    .line 2433
    .line 2434
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 2435
    .line 2436
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_NOTIFY_MHS_ENABLED:Ljava/util/UUID;

    .line 2437
    .line 2438
    invoke-static {v0, v1, v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->-$$Nest$mnotifyConnectedDevices(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;Ljava/util/UUID;I)V

    .line 2439
    .line 2440
    .line 2441
    :cond_43
    :goto_1d
    return-void

    .line 2442
    nop

    .line 2443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_0
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
    .end packed-switch
.end method
