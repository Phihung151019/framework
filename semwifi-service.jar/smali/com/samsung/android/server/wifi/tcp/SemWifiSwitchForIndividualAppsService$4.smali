.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 17
    .line 18
    const-string v0, "WIFI_TCP_MONITOR_ACTION_USE_MOBILE_DATA recieved"

    .line 19
    .line 20
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v0, 0x5

    .line 38
    iput v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmBigDataStatLock(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    monitor-enter p1

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOnByNotification(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    add-int/2addr v4, v3

    .line 54
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmTcpeOnByNotification(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V

    .line 55
    .line 56
    .line 57
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v4

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    sub-long/2addr v4, v6

    .line 75
    long-to-int v0, v4

    .line 76
    div-int/lit16 v0, v0, 0x3e8

    .line 77
    .line 78
    iput v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 79
    .line 80
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0

    .line 93
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 94
    .line 95
    const-string v0, "uid"

    .line 96
    .line 97
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    const-string v3, "packageName"

    .line 102
    .line 103
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const v4, 0x2120c

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v4, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiTransportLayerMonitor(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string v0, "packageName"

    .line 133
    .line 134
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance p1, Landroid/content/Intent;

    .line 142
    .line 143
    const-string p2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 144
    .line 145
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 149
    .line 150
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_1
    const-string v0, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    const/4 v4, 0x3

    .line 165
    const/4 v5, 0x4

    .line 166
    const/4 v6, 0x0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    .line 169
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 170
    .line 171
    const-string v0, "WIFI_TCP_MONITOR_ACTION_SETTINGS recieved"

    .line 172
    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    const-string p1, "TYPE"

    .line 177
    .line 178
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    const-string v0, "SemWifiSwitchForIndividualAppsService"

    .line 183
    .line 184
    const-string v1, "WIFI_TCP_MONITOR_ACTION_SETTINGS type "

    .line 185
    .line 186
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    const/4 v0, 0x6

    .line 194
    if-ne p1, v0, :cond_2

    .line 195
    .line 196
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 197
    .line 198
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_2

    .line 203
    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    iput v0, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_2
    if-ne p1, v5, :cond_3

    .line 214
    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 216
    .line 217
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_3

    .line 222
    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    iput v5, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 230
    .line 231
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 232
    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 234
    .line 235
    .line 236
    move-result-wide v0

    .line 237
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 240
    .line 241
    .line 242
    move-result-wide v7

    .line 243
    sub-long/2addr v0, v7

    .line 244
    long-to-int p1, v0

    .line 245
    div-int/lit16 p1, p1, 0x3e8

    .line 246
    .line 247
    iput p1, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 248
    .line 249
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 250
    .line 251
    invoke-static {p1, v6, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V

    .line 252
    .line 253
    .line 254
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 255
    .line 256
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 264
    .line 265
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    .line 270
    .line 271
    .line 272
    new-instance p1, Landroid/content/Intent;

    .line 273
    .line 274
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 275
    .line 276
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 280
    .line 281
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    .line 287
    .line 288
    :try_start_2
    new-instance p1, Landroid/content/Intent;

    .line 289
    .line 290
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v0, "com.android.settings"

    .line 294
    .line 295
    const-string v1, "com.android.settings.Settings$SwitchForIndividualAppsSettingsActivity"

    .line 296
    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    const/high16 v0, 0x10800000

    .line 301
    .line 302
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 303
    .line 304
    .line 305
    const-string v0, "show_individual_apps"

    .line 306
    .line 307
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    .line 309
    .line 310
    const-string v0, "UID"

    .line 311
    .line 312
    const-string v1, "UID"

    .line 313
    .line 314
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    .line 320
    .line 321
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 322
    .line 323
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    .line 329
    .line 330
    goto/16 :goto_b

    .line 331
    .line 332
    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_b

    .line 337
    .line 338
    :cond_5
    const-string v0, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    .line 339
    .line 340
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-eqz v0, :cond_9

    .line 345
    .line 346
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 347
    .line 348
    const-string v0, "WIFI_TCP_MONITOR_DELETE_NOTIFICATION recieved"

    .line 349
    .line 350
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    const-string p1, "TYPE"

    .line 354
    .line 355
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result p1

    .line 359
    if-ne p1, v1, :cond_6

    .line 360
    .line 361
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 362
    .line 363
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    if-eqz p2, :cond_6

    .line 368
    .line 369
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 370
    .line 371
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    goto :goto_2

    .line 376
    :cond_6
    if-ne p1, v4, :cond_7

    .line 377
    .line 378
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 379
    .line 380
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastAutoSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    if-eqz p2, :cond_7

    .line 385
    .line 386
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 387
    .line 388
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastAutoSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    goto :goto_2

    .line 393
    :cond_7
    if-ne p1, v3, :cond_8

    .line 394
    .line 395
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 396
    .line 397
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 398
    .line 399
    .line 400
    move-result-object p2

    .line 401
    if-eqz p2, :cond_8

    .line 402
    .line 403
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 404
    .line 405
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    :cond_8
    :goto_2
    if-eqz v6, :cond_16

    .line 410
    .line 411
    iput p1, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 412
    .line 413
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 414
    .line 415
    .line 416
    move-result-wide p1

    .line 417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 418
    .line 419
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 420
    .line 421
    .line 422
    move-result-wide v0

    .line 423
    sub-long/2addr p1, v0

    .line 424
    long-to-int p1, p1

    .line 425
    div-int/lit16 p1, p1, 0x3e8

    .line 426
    .line 427
    iput p1, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 428
    .line 429
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 430
    .line 431
    invoke-static {p0, v6, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V

    .line 432
    .line 433
    .line 434
    return-void

    .line 435
    :cond_9
    const-string v0, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED"

    .line 436
    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-eqz v0, :cond_a

    .line 442
    .line 443
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 444
    .line 445
    const-string v0, "WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED recieved"

    .line 446
    .line 447
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    const-string p1, "UID_LIST"

    .line 451
    .line 452
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    check-cast p1, Ljava/util/ArrayList;

    .line 457
    .line 458
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 459
    .line 460
    const p2, 0x2120e

    .line 461
    .line 462
    .line 463
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 464
    .line 465
    .line 466
    move-result-object p1

    .line 467
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    .line 469
    .line 470
    return-void

    .line 471
    :cond_a
    const-string p2, "android.samsung.media.action.AUDIO_MODE"

    .line 472
    .line 473
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result p2

    .line 477
    if-eqz p2, :cond_d

    .line 478
    .line 479
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 480
    .line 481
    const-string p2, "SEM_ACTION_AUDIO_MODE_CHANGED - Enter State"

    .line 482
    .line 483
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 487
    .line 488
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mgetAudioManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/media/AudioManager;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p1}, Landroid/media/AudioManager;->getModeInternal()I

    .line 493
    .line 494
    .line 495
    move-result p1

    .line 496
    if-eq p1, v1, :cond_b

    .line 497
    .line 498
    if-eq p1, v4, :cond_b

    .line 499
    .line 500
    if-ne p1, v5, :cond_c

    .line 501
    .line 502
    :cond_b
    move v2, v3

    .line 503
    :cond_c
    const-string p1, "SemWifiSwitchForIndividualAppsService"

    .line 504
    .line 505
    const-string p2, "SEM_ACTION_AUDIO_MODE_CHANGED - "

    .line 506
    .line 507
    invoke-static {p2, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 515
    .line 516
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msetVoipOngoing(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :cond_d
    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 521
    .line 522
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    if-eqz p1, :cond_16

    .line 527
    .line 528
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 529
    .line 530
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmCurrentUidBlockedList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/util/HashMap;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    if-eqz p1, :cond_11

    .line 535
    .line 536
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 537
    .line 538
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmCurrentUidBlockedList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/util/HashMap;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result p1

    .line 546
    if-nez p1, :cond_11

    .line 547
    .line 548
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 549
    .line 550
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOffByUser24H(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 551
    .line 552
    .line 553
    move-result p1

    .line 554
    if-eq p1, v3, :cond_11

    .line 555
    .line 556
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 557
    .line 558
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOffByUser(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 559
    .line 560
    .line 561
    move-result p1

    .line 562
    if-eq p1, v3, :cond_11

    .line 563
    .line 564
    :try_start_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 565
    .line 566
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmCurrentUidBlockedList(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/util/HashMap;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-virtual {p1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    check-cast p1, Ljava/util/HashMap;

    .line 575
    .line 576
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 577
    .line 578
    .line 579
    move-result-object p1

    .line 580
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 585
    .line 586
    .line 587
    move-result p2

    .line 588
    if-eqz p2, :cond_f

    .line 589
    .line 590
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object p2

    .line 594
    check-cast p2, Ljava/util/Map$Entry;

    .line 595
    .line 596
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 597
    .line 598
    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmBigDataStatLock(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 603
    :try_start_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 604
    .line 605
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmInUseCheckBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 606
    .line 607
    .line 608
    move-result-wide v4

    .line 609
    const-wide/16 v7, 0x0

    .line 610
    .line 611
    cmp-long v1, v4, v7

    .line 612
    .line 613
    if-lez v1, :cond_e

    .line 614
    .line 615
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 616
    .line 617
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmUsedBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 618
    .line 619
    .line 620
    move-result-wide v4

    .line 621
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v7

    .line 625
    check-cast v7, Ljava/lang/Integer;

    .line 626
    .line 627
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 628
    .line 629
    .line 630
    move-result v7

    .line 631
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    .line 632
    .line 633
    .line 634
    move-result-wide v7

    .line 635
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object p2

    .line 639
    check-cast p2, Ljava/lang/Integer;

    .line 640
    .line 641
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 642
    .line 643
    .line 644
    move-result p2

    .line 645
    invoke-static {p2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    .line 646
    .line 647
    .line 648
    move-result-wide v9

    .line 649
    add-long/2addr v7, v9

    .line 650
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 651
    .line 652
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmInUseCheckBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 653
    .line 654
    .line 655
    move-result-wide v9

    .line 656
    sub-long/2addr v7, v9

    .line 657
    add-long/2addr v7, v4

    .line 658
    invoke-static {v1, v7, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmUsedBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;J)V

    .line 659
    .line 660
    .line 661
    goto :goto_4

    .line 662
    :catchall_1
    move-exception p1

    .line 663
    goto :goto_5

    .line 664
    :cond_e
    :goto_4
    monitor-exit v0

    .line 665
    goto :goto_3

    .line 666
    :goto_5
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 667
    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 668
    :catch_1
    move-exception p1

    .line 669
    const-string p2, "SemWifiSwitchForIndividualAppsService"

    .line 670
    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    const-string v1, "dump - Exception "

    .line 674
    .line 675
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .line 687
    .line 688
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 689
    .line 690
    .line 691
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 692
    .line 693
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmBigDataStatLock(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object p1

    .line 697
    monitor-enter p1

    .line 698
    :try_start_6
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 699
    .line 700
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmInuseCheckTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 701
    .line 702
    .line 703
    move-result p2

    .line 704
    if-lez p2, :cond_10

    .line 705
    .line 706
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 707
    .line 708
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 709
    .line 710
    .line 711
    move-result-wide v0

    .line 712
    long-to-int v0, v0

    .line 713
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 714
    .line 715
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmInuseCheckTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    sub-int/2addr v0, v1

    .line 720
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 721
    .line 722
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmPrevAccumulatedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    sub-int/2addr v0, v1

    .line 727
    invoke-static {p2, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmInuseTotalTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V

    .line 728
    .line 729
    .line 730
    goto :goto_6

    .line 731
    :catchall_2
    move-exception p0

    .line 732
    goto :goto_7

    .line 733
    :cond_10
    :goto_6
    monitor-exit p1

    .line 734
    goto :goto_8

    .line 735
    :goto_7
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 736
    throw p0

    .line 737
    :cond_11
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 738
    .line 739
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmBigDataStatLock(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object p1

    .line 743
    monitor-enter p1

    .line 744
    :try_start_7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 745
    .line 746
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    .line 747
    .line 748
    .line 749
    move-result p2

    .line 750
    if-eqz p2, :cond_12

    .line 751
    .line 752
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 753
    .line 754
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    .line 755
    .line 756
    .line 757
    move-result p2

    .line 758
    if-nez p2, :cond_12

    .line 759
    .line 760
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 761
    .line 762
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOffByUser(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 763
    .line 764
    .line 765
    move-result p2

    .line 766
    if-nez p2, :cond_12

    .line 767
    .line 768
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 769
    .line 770
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmTcpeOffByUser24H(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 771
    .line 772
    .line 773
    goto :goto_9

    .line 774
    :catchall_3
    move-exception p0

    .line 775
    goto/16 :goto_a

    .line 776
    .line 777
    :cond_12
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 778
    .line 779
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    .line 780
    .line 781
    .line 782
    move-result p2

    .line 783
    if-nez p2, :cond_13

    .line 784
    .line 785
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 786
    .line 787
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    .line 788
    .line 789
    .line 790
    move-result p2

    .line 791
    if-nez p2, :cond_13

    .line 792
    .line 793
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 794
    .line 795
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmTcpeOffDefault(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 796
    .line 797
    .line 798
    :cond_13
    :goto_9
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    .line 799
    .line 800
    .line 801
    move-result p2

    .line 802
    if-eqz p2, :cond_14

    .line 803
    .line 804
    const-string p2, "SemWifiSwitchForIndividualAppsService"

    .line 805
    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    .line 807
    .line 808
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    .line 810
    .line 811
    const-string v1, "HQM_UPDATE_REQ mUsedBytes: "

    .line 812
    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 817
    .line 818
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmUsedBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 819
    .line 820
    .line 821
    move-result-wide v4

    .line 822
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    const-string v1, " mInUseCheckBytes"

    .line 826
    .line 827
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 831
    .line 832
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmInUseCheckBytes(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    .line 833
    .line 834
    .line 835
    move-result-wide v4

    .line 836
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    const-string v1, " mInuseCheckTime"

    .line 840
    .line 841
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 845
    .line 846
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmInuseCheckTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    const-string v1, " mInuseTotalTime "

    .line 854
    .line 855
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 859
    .line 860
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmInuseTotalTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 861
    .line 862
    .line 863
    move-result v1

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 865
    .line 866
    .line 867
    const-string v1, " mTcpeOnByNotification "

    .line 868
    .line 869
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 873
    .line 874
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOnByNotification(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v1, " mTcpeOnBySetting: "

    .line 882
    .line 883
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 887
    .line 888
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOnBySetting(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    const-string v1, " mTcpeOnByOther: "

    .line 896
    .line 897
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 901
    .line 902
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOnByOther(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 903
    .line 904
    .line 905
    move-result v1

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    const-string v1, " mTcpeOffByUser: "

    .line 910
    .line 911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 915
    .line 916
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOffByUser(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 917
    .line 918
    .line 919
    move-result v1

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 921
    .line 922
    .line 923
    const-string v1, " mTcpeOffByUser24H: "

    .line 924
    .line 925
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    .line 927
    .line 928
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 929
    .line 930
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOffByUser24H(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 931
    .line 932
    .line 933
    move-result v1

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    const-string v1, " mTcpeOffDefault: "

    .line 938
    .line 939
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    .line 941
    .line 942
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 943
    .line 944
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOffDefault(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 945
    .line 946
    .line 947
    move-result v1

    .line 948
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    const-string v1, "mNotificationCount: "

    .line 952
    .line 953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 957
    .line 958
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmNotificationCount(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 959
    .line 960
    .line 961
    move-result v1

    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    const-string v1, " mPrevAccumulatedTime: "

    .line 966
    .line 967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    .line 969
    .line 970
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 971
    .line 972
    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmPrevAccumulatedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 973
    .line 974
    .line 975
    move-result v1

    .line 976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v0

    .line 983
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    .line 985
    .line 986
    :cond_14
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 987
    .line 988
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    .line 989
    .line 990
    .line 991
    move-result p2

    .line 992
    if-eqz p2, :cond_15

    .line 993
    .line 994
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 995
    .line 996
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmTcpeOnBySetting(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    .line 997
    .line 998
    .line 999
    move-result p2

    .line 1000
    if-nez p2, :cond_15

    .line 1001
    .line 1002
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 1003
    .line 1004
    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmTcpeOnByOther(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 1005
    .line 1006
    .line 1007
    :cond_15
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1008
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 1009
    .line 1010
    invoke-static {p1, v6, v3, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTcpe(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;ZZ)V

    .line 1011
    .line 1012
    .line 1013
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 1014
    .line 1015
    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmBigDataStatLock(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object p2

    .line 1019
    monitor-enter p2

    .line 1020
    :try_start_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    .line 1021
    .line 1022
    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mresetBigDataValues(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 1023
    .line 1024
    .line 1025
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1026
    const-string p0, "SemWifiSwitchForIndividualAppsService"

    .line 1027
    .line 1028
    const-string p1, "HQM_UPDATE_REQ is called"

    .line 1029
    .line 1030
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    .line 1032
    .line 1033
    goto :goto_b

    .line 1034
    :catchall_4
    move-exception p0

    .line 1035
    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1036
    throw p0

    .line 1037
    :goto_a
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1038
    throw p0

    .line 1039
    :cond_16
    :goto_b
    return-void
.end method
