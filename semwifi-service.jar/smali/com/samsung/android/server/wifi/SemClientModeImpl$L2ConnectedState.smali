.class Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const-string v1, "entering L2ConnectedState"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msetConnectionSpeedTime(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 15
    .line 16
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->disableTracking()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 2
    .line 3
    const-string v0, "Leaving L2Connected state"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor$MloLinkInfoChangeReason;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "onMloLinksInfoChanged: reason "

    .line 17
    .line 18
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "SemClientModeImpl"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 40
    .line 41
    const-string v1, "Associated command w/o BSSID"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$200(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyRoamingStart(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v3, Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 82
    .line 83
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 88
    .line 89
    invoke-static {v5, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 97
    .line 98
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setBssid(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 106
    .line 107
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_1

    .line 116
    .line 117
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 118
    .line 119
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 124
    .line 125
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 130
    .line 131
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 146
    .line 147
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 152
    .line 153
    invoke-static {v5, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 158
    .line 159
    .line 160
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 161
    .line 162
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_3

    .line 167
    .line 168
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 169
    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    const-string v6, "L2Connected: NETWORK_CONNECTION_EVENT, networkId="

    .line 173
    .line 174
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 178
    .line 179
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iget v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    if-nez v0, :cond_2

    .line 189
    .line 190
    const-string v6, ", roamingBssid="

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_2
    const-string v6, ", bssid="

    .line 194
    .line 195
    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 199
    .line 200
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    invoke-virtual {v6, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :cond_3
    if-nez v0, :cond_a

    .line 219
    .line 220
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 221
    .line 222
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 227
    .line 228
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->setCurrentBssid(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 236
    .line 237
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    const/4 v3, 0x5

    .line 246
    if-eqz v0, :cond_4

    .line 247
    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 249
    .line 250
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-eqz v0, :cond_4

    .line 259
    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 261
    .line 262
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 267
    .line 268
    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 270
    .line 271
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 276
    .line 277
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getBssid()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForCcx(Landroid/net/wifi/ScanResult;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_4

    .line 294
    .line 295
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 296
    .line 297
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->enableExtendedFeature(Z)V

    .line 302
    .line 303
    .line 304
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 305
    .line 306
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 315
    .line 316
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->renewTwtSession(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 324
    .line 325
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->renewConnection(Z)V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 337
    .line 338
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIntelligentConnectionManager()Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 347
    .line 348
    .line 349
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 350
    .line 351
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    if-eqz v0, :cond_5

    .line 360
    .line 361
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 362
    .line 363
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiCtlFeatureMediator()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->renewConnection()V

    .line 372
    .line 373
    .line 374
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 375
    .line 376
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    if-eqz v0, :cond_6

    .line 385
    .line 386
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 387
    .line 388
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMultiLinkControl()Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->renewConnection(I)V

    .line 397
    .line 398
    .line 399
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 400
    .line 401
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 406
    .line 407
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 412
    .line 413
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 422
    .line 423
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getFrequency()I

    .line 428
    .line 429
    .line 430
    move-result v5

    .line 431
    const/4 v6, 0x2

    .line 432
    invoke-virtual {v0, v1, v6, v4, v5}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 436
    .line 437
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    if-eqz v0, :cond_7

    .line 446
    .line 447
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 448
    .line 449
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->updateConnectedDuration(Landroid/net/wifi/WifiInfo;)V

    .line 454
    .line 455
    .line 456
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 457
    .line 458
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    if-eqz v0, :cond_8

    .line 463
    .line 464
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 465
    .line 466
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 471
    .line 472
    .line 473
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 474
    .line 475
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    if-eqz v0, :cond_9

    .line 480
    .line 481
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 482
    .line 483
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiResourceManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiResourceManager;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiResourceManager;->handleWifiStateChanged(I)V

    .line 488
    .line 489
    .line 490
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 491
    .line 492
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkInfoCollector()Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->dongleRoamEvent()V

    .line 501
    .line 502
    .line 503
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 504
    .line 505
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLeakyApDetector()Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLeakyApDetector;->dongleRoamEvent()V

    .line 514
    .line 515
    .line 516
    goto :goto_2

    .line 517
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 518
    .line 519
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 524
    .line 525
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyL3Connected(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 533
    .line 534
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 539
    .line 540
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForDhcpResult(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    const/16 v3, 0x12c

    .line 549
    .line 550
    invoke-static {v0, v3, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 551
    .line 552
    .line 553
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 554
    .line 555
    const/4 v1, 0x3

    .line 556
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msetConnectionSpeedTime(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 557
    .line 558
    .line 559
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 560
    .line 561
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 566
    .line 567
    .line 568
    goto :goto_2

    .line 569
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 570
    .line 571
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 576
    .line 577
    .line 578
    :cond_a
    :goto_2
    move v1, v2

    .line 579
    :goto_3
    if-ne v1, v2, :cond_b

    .line 580
    .line 581
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 582
    .line 583
    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 584
    .line 585
    .line 586
    :cond_b
    return v1

    .line 587
    :sswitch_data_0
    .sparse-switch
        0x20049 -> :sswitch_4
        0x2008a -> :sswitch_3
        0x24003 -> :sswitch_2
        0x2402d -> :sswitch_1
        0x24075 -> :sswitch_0
    .end sparse-switch
.end method
