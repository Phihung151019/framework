.class Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemWifiApTrafficPollerWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

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
    const/16 v0, 0xb

    .line 4
    .line 5
    const-string v1, "SemWifiApTrafficPoller"

    .line 6
    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    packed-switch p1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->checkTpHotspot()V

    .line 17
    .line 18
    .line 19
    const-string p0, "received START_TPUT_LOG"

    .line 20
    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const-string v0, "Failed to stop tracking interface hotspot : "

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const-string p1, "mPacketTrackerForDualHotspot stop "

    .line 44
    .line 45
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v2, "stop logging ap_br_swlan0"

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->addDnsLogsInDump()V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 83
    .line 84
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForDualHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_5

    .line 88
    .line 89
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v2, 0x0

    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    const-string p1, "mPacketTrackerForHotspot stop "

    .line 99
    .line 100
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v3, "stop logging swlan0"

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->addDnsLogsInDump()V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_1
    move-exception p1

    .line 134
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 138
    .line 139
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmIsSupportWifiSharing(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 151
    .line 152
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-eqz p1, :cond_3

    .line 157
    .line 158
    const-string p1, "mPacketTrackerForWlan0 stop "

    .line 159
    .line 160
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :try_start_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 164
    .line 165
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string v0, "stop logging wlan0"

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    .line 182
    .line 183
    goto :goto_2

    .line 184
    :catch_2
    move-exception p1

    .line 185
    const-string v0, "Failed to stop tracking interface station : "

    .line 186
    .line 187
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 191
    .line 192
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_5

    .line 196
    .line 197
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 198
    .line 199
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$sfgetsPktLogsMhs()Ljava/util/concurrent/ConcurrentHashMap;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 204
    .line 205
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    check-cast v0, Landroid/util/LocalLog;

    .line 214
    .line 215
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V

    .line 216
    .line 217
    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v0, "createPacketTracker swlan0 mApInterfaceName : "

    .line 221
    .line 222
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 226
    .line 227
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 242
    .line 243
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v0}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 252
    .line 253
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$mcreatePacketTracker(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 265
    .line 266
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    if-eqz p1, :cond_2

    .line 271
    .line 272
    new-instance p1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    const-string v0, "mPacketTrackerForHotspot start mApInterfaceName : "

    .line 275
    .line 276
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 280
    .line 281
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 296
    .line 297
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    const-string v0, "Start logging swlan0"

    .line 302
    .line 303
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 307
    .line 308
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForHotspot(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 313
    .line 314
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->start(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 322
    .line 323
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmUsedDual(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 324
    .line 325
    .line 326
    goto :goto_3

    .line 327
    :catch_3
    move-exception p1

    .line 328
    const-string v0, "Failed to start tracking interface hotspot : "

    .line 329
    .line 330
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 334
    .line 335
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmIsSupportWifiSharing(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-eqz p1, :cond_2

    .line 340
    .line 341
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 342
    .line 343
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$sfgetsPktLogsMhs()Ljava/util/concurrent/ConcurrentHashMap;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const-string v2, "wlan0"

    .line 348
    .line 349
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    check-cast v0, Landroid/util/LocalLog;

    .line 354
    .line 355
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Landroid/util/LocalLog;)V

    .line 356
    .line 357
    .line 358
    const-string p1, "createPacketTracker INTERFACE_NAME_OF_WLAN : wlan0"

    .line 359
    .line 360
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 364
    .line 365
    invoke-static {v2}, Lcom/android/net/module/util/InterfaceParams;->getByName(Ljava/lang/String;)Lcom/android/net/module/util/InterfaceParams;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 370
    .line 371
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-static {p1, v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$mcreatePacketTracker(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/android/net/module/util/InterfaceParams;Landroid/util/LocalLog;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fputmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 383
    .line 384
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    if-eqz p1, :cond_2

    .line 389
    .line 390
    const-string p1, "mPacketTrackerForWlan0 start INTERFACE_NAME_OF_WLAN : wlan0"

    .line 391
    .line 392
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .line 394
    .line 395
    :try_start_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 396
    .line 397
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmConnectivityPacketLogForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Landroid/util/LocalLog;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    const-string v0, "Start logging wlan0"

    .line 402
    .line 403
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 407
    .line 408
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmPacketTrackerForWlan0(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemConnectivityPacketTracker;->start(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 413
    .line 414
    .line 415
    goto :goto_4

    .line 416
    :catch_4
    move-exception p0

    .line 417
    const-string p1, "Failed to start tracking interface station : "

    .line 418
    .line 419
    invoke-static {p1, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    :cond_2
    :goto_4
    const-string p0, "received START_PACKET_LOG"

    .line 423
    .line 424
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    :cond_3
    :goto_5
    return-void

    .line 428
    :pswitch_3
    const-string p0, "received SET_CHANGE_PCIE_CORE"

    .line 429
    .line 430
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    return-void

    .line 434
    :pswitch_4
    const-string p0, "received STOP_TRAFFIC_CHECK"

    .line 435
    .line 436
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .line 438
    .line 439
    return-void

    .line 440
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 441
    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->determineMaximumTpHotspot()V

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    :cond_4
    const-string p1, " setAntMode(1)"

    .line 447
    .line 448
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller$SemWifiApTrafficPollerWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;

    .line 452
    .line 453
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApTrafficPoller;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 454
    .line 455
    .line 456
    move-result-object p0

    .line 457
    const/4 p1, 0x1

    .line 458
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setAntMode(I)V

    .line 459
    .line 460
    .line 461
    return-void

    .line 462
    nop

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
