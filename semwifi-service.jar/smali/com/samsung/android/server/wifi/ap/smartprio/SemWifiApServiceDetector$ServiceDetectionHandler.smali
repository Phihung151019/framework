.class Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceDetectionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

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
    const-string v0, "SemWifiApServiceDetector"

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :pswitch_0
    goto/16 :goto_1

    .line 11
    .line 12
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 13
    .line 14
    const-string v0, "Disable priority."

    .line 15
    .line 16
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$mresetPriorityVariables(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->enablePriority()V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 37
    .line 38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmIsPriorityEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$mdecidePriority(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 53
    .line 54
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/Set;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$SemWifiApServiceDetectionCallback;

    .line 61
    .line 62
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 67
    .line 68
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$SemWifiApServiceDetectionCallback;

    .line 75
    .line 76
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :pswitch_6
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 81
    .line 82
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "enable"

    .line 86
    .line 87
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmUseUdpMlModel(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    .line 99
    .line 100
    const-string v1, "com.samsung.android.mhs.ai"

    .line 101
    .line 102
    const-string v2, "com.samsung.android.mhs.ai.MhsAiService"

    .line 103
    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 114
    .line 115
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/ServiceConnection;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_0

    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 126
    .line 127
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fputisMhsAiServiceBinded(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;Z)V

    .line 128
    .line 129
    .line 130
    const-string p0, "Bind MhsAiService Succeeded"

    .line 131
    .line 132
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catch_0
    move-exception p0

    .line 137
    goto :goto_0

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 139
    .line 140
    const/4 p1, 0x0

    .line 141
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fputisMhsAiServiceBinded(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;Z)V

    .line 142
    .line 143
    .line 144
    const-string p0, "Bind MhsAiService failed"

    .line 145
    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .line 152
    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v1, "AI Intent error"

    .line 156
    .line 157
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    goto/16 :goto_1

    .line 171
    .line 172
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 183
    .line 184
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$mresetVariables(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 198
    .line 199
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_9
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 207
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v1, "Service update poll status --- isMlLibraryReady: "

    .line 211
    .line 212
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 216
    .line 217
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, " --- mSoftApEnabled: "

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 234
    .line 235
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmSoftApEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v1, " --- mServiceUpdateActivated: "

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 252
    .line 253
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 272
    .line 273
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    if-eqz p1, :cond_1

    .line 282
    .line 283
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 284
    .line 285
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$moperateNsd(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V

    .line 286
    .line 287
    .line 288
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 289
    .line 290
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmSoftApEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_2

    .line 299
    .line 300
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_2

    .line 311
    .line 312
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 313
    .line 314
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-static {p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    const-wide/16 v0, 0x1f4

    .line 323
    .line 324
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    .line 326
    .line 327
    :cond_2
    :goto_1
    return-void

    .line 328
    nop

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
