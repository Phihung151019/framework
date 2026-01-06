.class Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

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
    .locals 7

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const-string v1, "DISABLE NSD+ debug mode"

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const-string v3, "SemWifiApServiceDetector"

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    sparse-switch v5, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :sswitch_0
    const-string v5, "samsung.framework.smartprio.toggle_debug"

    .line 39
    .line 40
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-nez p2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v4, p1

    .line 48
    goto :goto_0

    .line 49
    :sswitch_1
    const-string v5, "samsung.framework.smartprio.toggle_datcol"

    .line 50
    .line 51
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-nez p2, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v4, 0x2

    .line 59
    goto :goto_0

    .line 60
    :sswitch_2
    const-string v5, "samsung.framework.smartprio.get_datcol"

    .line 61
    .line 62
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    if-nez p2, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move v4, v0

    .line 70
    goto :goto_0

    .line 71
    :sswitch_3
    const-string v5, "samsung.framework.smartprio.get_debug"

    .line 72
    .line 73
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    move v4, v2

    .line 81
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 87
    .line 88
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 93
    .line 94
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    xor-int/2addr v4, v0

    .line 103
    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 104
    .line 105
    .line 106
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 107
    .line 108
    iget-object v4, p2, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->iMhsAiService:Lcom/samsung/android/mhs/ai/ISemMhsAiService;

    .line 109
    .line 110
    if-eqz v4, :cond_4

    .line 111
    .line 112
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-interface {v4, p2}, Lcom/samsung/android/mhs/ai/ISemMhsAiService;->toggleDebugMode(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 124
    .line 125
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmSemApTrafficStatsMonitor(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 130
    .line 131
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-virtual {p2, v4}, Lcom/samsung/android/server/wifi/ap/smartprio/SemApTrafficStatsMonitor;->setDebugMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catch_0
    move-exception p2

    .line 144
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 145
    .line 146
    .line 147
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 148
    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v6, "NSD+ debug mode err.: "

    .line 152
    .line 153
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    invoke-virtual {v4, p2, v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 171
    .line 172
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    const-string v0, "ENABLE NSD+ debug mode"

    .line 181
    .line 182
    if-eqz p2, :cond_5

    .line 183
    .line 184
    move-object p2, v0

    .line 185
    goto :goto_2

    .line 186
    :cond_5
    move-object p2, v1

    .line 187
    :goto_2
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 191
    .line 192
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 197
    .line 198
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_6

    .line 207
    .line 208
    move-object v1, v0

    .line 209
    :cond_6
    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_4

    .line 217
    .line 218
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 219
    .line 220
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisDataColModeEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApTrafficPriority()Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApTrafficPriority;->toggleDcMode()Z

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    .line 238
    .line 239
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 240
    .line 241
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisDataColModeEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-eqz p2, :cond_7

    .line 250
    .line 251
    const-string v1, "ENABLE NSD+ data collection mode"

    .line 252
    .line 253
    :cond_7
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 257
    .line 258
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 263
    .line 264
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisDataColModeEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_8

    .line 273
    .line 274
    const-string v0, "ENABLE NSD+ DC mode"

    .line 275
    .line 276
    goto :goto_3

    .line 277
    :cond_8
    const-string v0, "DISABLE NSD+ DC mode"

    .line 278
    .line 279
    :goto_3
    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 284
    .line 285
    .line 286
    goto/16 :goto_4

    .line 287
    .line 288
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v0, "Is DC mode enabled: "

    .line 291
    .line 292
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 296
    .line 297
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisDataColModeEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 316
    .line 317
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 327
    .line 328
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetisDataColModeEnabled(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 348
    .line 349
    .line 350
    goto :goto_4

    .line 351
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v0, "Is debug mode enabled: "

    .line 354
    .line 355
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 359
    .line 360
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object p2

    .line 375
    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 379
    .line 380
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Landroid/content/Context;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 390
    .line 391
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 407
    .line 408
    .line 409
    move-result-object p2

    .line 410
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 411
    .line 412
    .line 413
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;

    .line 414
    .line 415
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector;)Lcom/samsung/android/server/wifi/ap/smartprio/SemWifiApServiceDetector$ServiceDetectionHandler;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 420
    .line 421
    .line 422
    move-result-object p0

    .line 423
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :sswitch_data_0
    .sparse-switch
        -0x21935877 -> :sswitch_3
        -0x110827ed -> :sswitch_2
        0x63e20db3 -> :sswitch_1
        0x6e953de9 -> :sswitch_0
    .end sparse-switch

    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
