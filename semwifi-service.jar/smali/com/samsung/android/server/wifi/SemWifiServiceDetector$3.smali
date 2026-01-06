.class Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

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
    .locals 9

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "Change NSD_SUSP_LOW_THRESHOLD_KBPS to: "

    .line 5
    .line 6
    const-string v3, "Change NSD_SUSP_HIGH_THRESHOLD_KBPS to: "

    .line 7
    .line 8
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 9
    .line 10
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/4 v5, 0x4

    .line 15
    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string v6, "SemWifiServiceDetector"

    .line 30
    .line 31
    const/4 v7, -0x1

    .line 32
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    sparse-switch v8, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    :goto_0
    move v5, v7

    .line 40
    goto :goto_1

    .line 41
    :sswitch_0
    const-string v8, "samsung.framework.wifi.nsd.setnsdthreshigh"

    .line 42
    .line 43
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_4

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "samsung.framework.wifi.nsd.getnsdthreshigh"

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v5, p1

    .line 60
    goto :goto_1

    .line 61
    :sswitch_2
    const-string v5, "samsung.framework.wifi.nsd.getnsdthreslow"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v5, 0x2

    .line 71
    goto :goto_1

    .line 72
    :sswitch_3
    const-string v5, "samsung.framework.wifi.nsd.setnsdthreslow"

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-nez v4, :cond_2

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move v5, v0

    .line 82
    goto :goto_1

    .line 83
    :sswitch_4
    const-string v5, "samsung.framework.wifi.nsd.toggle_debug"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move v5, v1

    .line 93
    :cond_4
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 94
    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 99
    .line 100
    const-string v1, "sth"

    .line 101
    .line 102
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputNSD_SUSP_HIGH_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V

    .line 111
    .line 112
    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetNSD_SUSP_HIGH_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto/16 :goto_4

    .line 135
    .line 136
    :catch_0
    move-exception p2

    .line 137
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    goto/16 :goto_4

    .line 145
    .line 146
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v0, "NSD_SUSP_HIGH_THRESHOLD_KBPS: "

    .line 149
    .line 150
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetNSD_SUSP_HIGH_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-static {v6, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v0, "NSD_SUSP_LOW_THRESHOLD_KBPS: "

    .line 167
    .line 168
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 172
    .line 173
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetNSD_SUSP_LOW_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-static {v6, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :pswitch_3
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 183
    .line 184
    const-string v1, "stl"

    .line 185
    .line 186
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputNSD_SUSP_LOW_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V

    .line 195
    .line 196
    .line 197
    new-instance p2, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetNSD_SUSP_LOW_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .line 217
    .line 218
    goto/16 :goto_4

    .line 219
    .line 220
    :catch_1
    move-exception p2

    .line 221
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    goto/16 :goto_4

    .line 229
    .line 230
    :pswitch_4
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 231
    .line 232
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    xor-int/2addr v2, v0

    .line 237
    invoke-static {p2, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fputmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Z)V

    .line 238
    .line 239
    .line 240
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 241
    .line 242
    iget-object v2, p2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 243
    .line 244
    if-eqz v2, :cond_5

    .line 245
    .line 246
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    if-eqz p2, :cond_5

    .line 251
    .line 252
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 253
    .line 254
    iget-object v2, p2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 255
    .line 256
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    invoke-interface {v2, p2}, Lcom/samsung/android/wifi/ai/ISemWifiAiService;->toggleDebugMode(Z)V

    .line 261
    .line 262
    .line 263
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 264
    .line 265
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 270
    .line 271
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    invoke-virtual {p2, v2}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->toggleDebugMode(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 276
    .line 277
    .line 278
    goto :goto_2

    .line 279
    :catch_2
    move-exception p2

    .line 280
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 281
    .line 282
    .line 283
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 284
    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v4, "Debug mode configuration error: "

    .line 288
    .line 289
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p2

    .line 296
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    invoke-virtual {v2, p2, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 304
    .line 305
    .line 306
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 307
    .line 308
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    const-string v0, "DISABLE NSD debug mode"

    .line 313
    .line 314
    const-string v2, "ENABLE NSD debug mode"

    .line 315
    .line 316
    if-eqz p2, :cond_6

    .line 317
    .line 318
    move-object p2, v2

    .line 319
    goto :goto_3

    .line 320
    :cond_6
    move-object p2, v0

    .line 321
    :goto_3
    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 325
    .line 326
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;

    .line 327
    .line 328
    .line 329
    move-result-object p2

    .line 330
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 331
    .line 332
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_7

    .line 337
    .line 338
    move-object v0, v2

    .line 339
    :cond_7
    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 344
    .line 345
    .line 346
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 347
    .line 348
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->-$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 353
    .line 354
    .line 355
    move-result-object p0

    .line 356
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 357
    .line 358
    .line 359
    return-void

    .line 360
    nop

    .line 361
    :sswitch_data_0
    .sparse-switch
        -0x3764e034 -> :sswitch_4
        -0x253ba217 -> :sswitch_3
        0x445eea75 -> :sswitch_2
        0x477c7aa1 -> :sswitch_1
        0x7dc575ad -> :sswitch_0
    .end sparse-switch

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
