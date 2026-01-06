.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

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
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0xbb8

    .line 4
    .line 5
    const-string v2, "AI ser. bind err: "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_c

    .line 14
    .line 15
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 16
    .line 17
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmRawTrafficData(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mdetermineServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 34
    .line 35
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 48
    .line 49
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_3
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetaiServiceIntent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/ServiceConnection;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v0, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    move-exception p1

    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 77
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_c

    .line 97
    .line 98
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstopTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 114
    .line 115
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$munregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 139
    .line 140
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstopTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 144
    .line 145
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 146
    .line 147
    if-eqz p1, :cond_1

    .line 148
    .line 149
    :try_start_1
    invoke-interface {p1}, Lcom/samsung/android/wifi/ai/ISemWifiAiService;->nsdTerminate()V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 153
    .line 154
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 164
    .line 165
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/ServiceConnection;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 179
    .line 180
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetaiServiceIntent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 188
    .line 189
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-ltz p1, :cond_0

    .line 194
    .line 195
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 196
    .line 197
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    const/16 v2, 0x9

    .line 202
    .line 203
    invoke-static {p1, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :catch_1
    move-exception p1

    .line 208
    goto :goto_1

    .line 209
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 210
    .line 211
    const/4 v2, -0x1

    .line 212
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 216
    .line 217
    iput-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 221
    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v4, "AI ser. unbind err: "

    .line 225
    .line 226
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .line 241
    .line 242
    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 243
    .line 244
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 252
    .line 253
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 258
    .line 259
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_c

    .line 267
    .line 268
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 269
    .line 270
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$minitializeServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 271
    .line 272
    .line 273
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 274
    .line 275
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$minitializeTrafficTypeDetector(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 276
    .line 277
    .line 278
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 279
    .line 280
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$minitializeInternalVariables(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 281
    .line 282
    .line 283
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 284
    .line 285
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 286
    .line 287
    if-nez v0, :cond_2

    .line 288
    .line 289
    :try_start_2
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetaiServiceIntent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 300
    .line 301
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/ServiceConnection;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    invoke-virtual {p1, v0, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :catch_2
    move-exception p1

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 311
    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    .line 329
    .line 330
    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 331
    .line 332
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 333
    .line 334
    .line 335
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 336
    .line 337
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 345
    .line 346
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 350
    .line 351
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 355
    .line 356
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 361
    .line 362
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_c

    .line 370
    .line 371
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 372
    .line 373
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_6

    .line 382
    .line 383
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 384
    .line 385
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWakeRatioUnderLegacyPm(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)F

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 390
    .line 391
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWakeRatioSummationCnt(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    int-to-float v2, v2

    .line 396
    div-float/2addr v1, v2

    .line 397
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmLastWakeRatio(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;F)V

    .line 398
    .line 399
    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 401
    .line 402
    const/4 v1, 0x0

    .line 403
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmWakeRatioUnderLegacyPm(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;F)V

    .line 404
    .line 405
    .line 406
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 407
    .line 408
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmWakeRatioSummationCnt(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 412
    .line 413
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmLastWakeRatio(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)F

    .line 414
    .line 415
    .line 416
    move-result v0

    .line 417
    const/high16 v1, 0x42c80000    # 100.0f

    .line 418
    .line 419
    mul-float/2addr v0, v1

    .line 420
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 421
    .line 422
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetwakeDurationThresholdPercent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    int-to-float v1, v1

    .line 427
    cmpl-float v0, v0, v1

    .line 428
    .line 429
    if-lez v0, :cond_4

    .line 430
    .line 431
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 432
    .line 433
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_3

    .line 442
    .line 443
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 444
    .line 445
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtExpectationChanged(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 450
    .line 451
    .line 452
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 453
    .line 454
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 459
    .line 460
    .line 461
    goto :goto_4

    .line 462
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 463
    .line 464
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_5

    .line 473
    .line 474
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 475
    .line 476
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtExpectationChanged(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 481
    .line 482
    .line 483
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 484
    .line 485
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 490
    .line 491
    .line 492
    :cond_6
    :goto_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 495
    .line 496
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 497
    .line 498
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 499
    .line 500
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J

    .line 501
    .line 502
    .line 503
    move-result-wide v6

    .line 504
    sub-long/2addr v0, v6

    .line 505
    iget-wide v6, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 506
    .line 507
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 508
    .line 509
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J

    .line 510
    .line 511
    .line 512
    move-result-wide v8

    .line 513
    sub-long/2addr v6, v8

    .line 514
    add-long/2addr v6, v0

    .line 515
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 516
    .line 517
    .line 518
    move-result-wide v0

    .line 519
    const-wide/32 v8, 0x7a1200

    .line 520
    .line 521
    .line 522
    mul-long/2addr v6, v8

    .line 523
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 524
    .line 525
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J

    .line 526
    .line 527
    .line 528
    move-result-wide v8

    .line 529
    sub-long v8, v0, v8

    .line 530
    .line 531
    div-long/2addr v6, v8

    .line 532
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 533
    .line 534
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetNSD_SUSP_HIGH_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    int-to-long v8, v2

    .line 539
    cmp-long v2, v6, v8

    .line 540
    .line 541
    const-string v8, "T / "

    .line 542
    .line 543
    const-string v9, "F / "

    .line 544
    .line 545
    if-gtz v2, :cond_a

    .line 546
    .line 547
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 548
    .line 549
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmNsdResult(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)[I

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    aget v2, v2, v4

    .line 554
    .line 555
    if-ne v2, v4, :cond_7

    .line 556
    .line 557
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 558
    .line 559
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetNSD_SUSP_LOW_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    int-to-long v10, v2

    .line 564
    cmp-long v2, v6, v10

    .line 565
    .line 566
    if-gez v2, :cond_7

    .line 567
    .line 568
    goto :goto_7

    .line 569
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 570
    .line 571
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 572
    .line 573
    .line 574
    move-result-object v2

    .line 575
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 576
    .line 577
    .line 578
    move-result v2

    .line 579
    if-nez v2, :cond_f

    .line 580
    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    .line 582
    .line 583
    const-string v3, "Service det. resumed: "

    .line 584
    .line 585
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 589
    .line 590
    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 591
    .line 592
    if-nez v3, :cond_8

    .line 593
    .line 594
    move-object v3, v9

    .line 595
    goto :goto_5

    .line 596
    :cond_8
    move-object v3, v8

    .line 597
    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 601
    .line 602
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-eqz v3, :cond_9

    .line 607
    .line 608
    goto :goto_6

    .line 609
    :cond_9
    move-object v8, v9

    .line 610
    :goto_6
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 614
    .line 615
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 623
    .line 624
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 629
    .line 630
    .line 631
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 632
    .line 633
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 634
    .line 635
    .line 636
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 637
    .line 638
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 639
    .line 640
    .line 641
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 642
    .line 643
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 648
    .line 649
    .line 650
    goto/16 :goto_b

    .line 651
    .line 652
    :cond_a
    :goto_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 653
    .line 654
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_f

    .line 663
    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 665
    .line 666
    .line 667
    move-result-wide v6

    .line 668
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 669
    .line 670
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetlastAiServiceInitTimeMs(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J

    .line 671
    .line 672
    .line 673
    move-result-wide v10

    .line 674
    sub-long/2addr v6, v10

    .line 675
    const-wide/32 v10, 0xdbba0

    .line 676
    .line 677
    .line 678
    cmp-long v2, v6, v10

    .line 679
    .line 680
    if-lez v2, :cond_c

    .line 681
    .line 682
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 683
    .line 684
    iget-object v6, v2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 685
    .line 686
    if-eqz v6, :cond_b

    .line 687
    .line 688
    :try_start_3
    invoke-interface {v6}, Lcom/samsung/android/wifi/ai/ISemWifiAiService;->reInitialize()V

    .line 689
    .line 690
    .line 691
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 692
    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 694
    .line 695
    .line 696
    move-result-wide v6

    .line 697
    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputlastAiServiceInitTimeMs(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 698
    .line 699
    .line 700
    goto :goto_8

    .line 701
    :catch_3
    move-exception v2

    .line 702
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 703
    .line 704
    .line 705
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 706
    .line 707
    new-instance v7, Ljava/lang/StringBuilder;

    .line 708
    .line 709
    const-string v10, "AI re-init. err.: "

    .line 710
    .line 711
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    invoke-virtual {v6, v2, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 722
    .line 723
    .line 724
    goto :goto_8

    .line 725
    :cond_b
    const-string v6, "Wi-Fi AI ser. not available"

    .line 726
    .line 727
    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 728
    .line 729
    .line 730
    :cond_c
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 731
    .line 732
    const-string v6, "Service det. suspended: "

    .line 733
    .line 734
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 738
    .line 739
    iget-object v6, v6, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 740
    .line 741
    if-nez v6, :cond_d

    .line 742
    .line 743
    move-object v6, v9

    .line 744
    goto :goto_9

    .line 745
    :cond_d
    move-object v6, v8

    .line 746
    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 750
    .line 751
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 752
    .line 753
    .line 754
    move-result v6

    .line 755
    if-eqz v6, :cond_e

    .line 756
    .line 757
    goto :goto_a

    .line 758
    :cond_e
    move-object v8, v9

    .line 759
    :goto_a
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 763
    .line 764
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 772
    .line 773
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-virtual {v6, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 778
    .line 779
    .line 780
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 781
    .line 782
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mstopTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 783
    .line 784
    .line 785
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 786
    .line 787
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 788
    .line 789
    .line 790
    move-result-object v2

    .line 791
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 792
    .line 793
    .line 794
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    .line 796
    .line 797
    :cond_f
    :goto_b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 798
    .line 799
    iget-wide v3, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 800
    .line 801
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V

    .line 802
    .line 803
    .line 804
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 805
    .line 806
    iget-wide v3, p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 807
    .line 808
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V

    .line 809
    .line 810
    .line 811
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 812
    .line 813
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V

    .line 814
    .line 815
    .line 816
    goto/16 :goto_c

    .line 817
    .line 818
    :pswitch_8
    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 819
    .line 820
    .line 821
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 822
    .line 823
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 824
    .line 825
    .line 826
    move-result p1

    .line 827
    if-eqz p1, :cond_10

    .line 828
    .line 829
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 830
    .line 831
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$mrunServiceDetection(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 832
    .line 833
    .line 834
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 835
    .line 836
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWakeRatioUnderLegacyPm(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)F

    .line 837
    .line 838
    .line 839
    move-result v0

    .line 840
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 841
    .line 842
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->getWakeTimeRatio()F

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    add-float/2addr v1, v0

    .line 851
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmWakeRatioUnderLegacyPm(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;F)V

    .line 852
    .line 853
    .line 854
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 855
    .line 856
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmWakeRatioSummationCnt(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    add-int/2addr v0, v5

    .line 861
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmWakeRatioSummationCnt(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V

    .line 862
    .line 863
    .line 864
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 865
    .line 866
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 867
    .line 868
    .line 869
    move-result-object p1

    .line 870
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 871
    .line 872
    .line 873
    move-result p1

    .line 874
    if-eqz p1, :cond_11

    .line 875
    .line 876
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 877
    .line 878
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 879
    .line 880
    .line 881
    move-result-object p1

    .line 882
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 883
    .line 884
    .line 885
    move-result p1

    .line 886
    if-eqz p1, :cond_11

    .line 887
    .line 888
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 889
    .line 890
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 891
    .line 892
    .line 893
    move-result-object p1

    .line 894
    invoke-static {p1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 895
    .line 896
    .line 897
    move-result-object p1

    .line 898
    const-wide/16 v0, 0x1f4

    .line 899
    .line 900
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 901
    .line 902
    .line 903
    :cond_11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 904
    .line 905
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 906
    .line 907
    .line 908
    move-result p1

    .line 909
    if-eqz p1, :cond_12

    .line 910
    .line 911
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 912
    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    .line 914
    .line 915
    const-string v1, "Device IPv4 Addr: "

    .line 916
    .line 917
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 921
    .line 922
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDevIpv4Addr(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 934
    .line 935
    .line 936
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 937
    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    .line 939
    .line 940
    const-string v1, "Device IPv6 Addr: "

    .line 941
    .line 942
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 946
    .line 947
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDevIpv6Addr(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object p0

    .line 951
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object p0

    .line 958
    invoke-virtual {p1, p0, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 959
    .line 960
    .line 961
    :cond_12
    :goto_c
    return-void

    .line 962
    nop

    .line 963
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
