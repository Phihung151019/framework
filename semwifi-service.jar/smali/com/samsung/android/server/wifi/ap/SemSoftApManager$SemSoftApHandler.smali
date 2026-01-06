.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSoftApHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

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
    .locals 4

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v2, "SemSoftApManager"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/Network;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/ConnectivityManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/Network;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_0
    if-eqz v1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/ConnectivityManager;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    const/4 p1, 0x2

    .line 48
    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v0, v3

    .line 56
    :goto_0
    if-nez v0, :cond_2

    .line 57
    .line 58
    const-string p0, "SOFTAP_CELLULAR_DUN_TIME_OUT rcvd, isNetworkHasDunCapable:"

    .line 59
    .line 60
    invoke-static {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "DUN callback is not received, need to show popup message,mCallbackSoftApState:"

    .line 67
    .line 68
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ",isDunCheckRequired:"

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ",isUpstreamCellular:"

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ",isNetworkHasDunCapable:"

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    const/16 v0, 0xd

    .line 130
    .line 131
    if-ne p1, v0, :cond_4

    .line 132
    .line 133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 142
    .line 143
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 144
    .line 145
    .line 146
    new-instance p1, Landroid/content/Intent;

    .line 147
    .line 148
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v0, "com.android.settings"

    .line 152
    .line 153
    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 154
    .line 155
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    const/high16 v0, 0x10000000

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    const-string v0, "wifiap_warning_dialog_type"

    .line 169
    .line 170
    const/16 v1, 0x3b

    .line 171
    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 176
    .line 177
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmIsTurnOnScanMode()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_4

    .line 190
    .line 191
    const-string p1, "TURN_OFF_SCAN_TIME_OUT"

    .line 192
    .line 193
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfputmIsTurnOnScanMode()V

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 200
    .line 201
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetAOSPWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/WifiManager;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 210
    .line 211
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_4

    .line 216
    .line 217
    const-string p1, "RESET_SOFTAP_TIME_OUT"

    .line 218
    .line 219
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 223
    .line 224
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 228
    .line 229
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    const/16 v3, 0xa

    .line 234
    .line 235
    if-eq p1, v3, :cond_3

    .line 236
    .line 237
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    const/16 v3, 0xb

    .line 244
    .line 245
    if-eq p1, v3, :cond_3

    .line 246
    .line 247
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 248
    .line 249
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    const/16 v3, 0xe

    .line 254
    .line 255
    if-ne p1, v3, :cond_4

    .line 256
    .line 257
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 258
    .line 259
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    if-nez p0, :cond_4

    .line 268
    .line 269
    const-string p0, "enabled startTetheredHotspot : failed"

    .line 270
    .line 271
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    :cond_4
    :goto_1
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
