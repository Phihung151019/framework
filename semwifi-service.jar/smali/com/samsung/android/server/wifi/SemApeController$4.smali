.class Lcom/samsung/android/server/wifi/SemApeController$4;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemApeController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeController;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

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
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-wide/16 v3, 0xbb8

    .line 9
    .line 10
    const-string v5, ""

    .line 11
    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, -0x1

    .line 14
    const/4 v8, 0x0

    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "MainHandler.handleMessage: undefined case: msg="

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p1, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 39
    .line 40
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/util/List;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mupdateStreamingState(Lcom/samsung/android/server/wifi/SemApeController;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "Incorrect object type "

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->loge(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mevaluateApeState(Lcom/samsung/android/server/wifi/SemApeController;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 75
    .line 76
    if-ne p1, v1, :cond_0

    .line 77
    .line 78
    move p1, v1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move p1, v8

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eq p1, v0, :cond_6

    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    const-string v0, "New APE policy: enabled"

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 97
    .line 98
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmApeEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_2

    .line 108
    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 124
    .line 125
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 126
    .line 127
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 134
    .line 135
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    .line 140
    .line 141
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$msendBroadcastEnableApe(Lcom/samsung/android/server/wifi/SemApeController;IILjava/lang/String;I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmStreamingUidList(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/HashSet;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$msendBroadcastStreamingInfo(Lcom/samsung/android/server/wifi/SemApeController;Ljava/util/HashSet;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    const-string v0, "New APE policy: disabled"

    .line 155
    .line 156
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 160
    .line 161
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmApeEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_2

    .line 171
    .line 172
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 173
    .line 174
    invoke-static {v0, v8, v7, v5, v8}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$msendBroadcastEnableApe(Lcom/samsung/android/server/wifi/SemApeController;IILjava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 178
    .line 179
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;Z)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 184
    .line 185
    if-ne v0, v1, :cond_3

    .line 186
    .line 187
    move v0, v1

    .line 188
    goto :goto_2

    .line 189
    :cond_3
    move v0, v8

    .line 190
    :goto_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 191
    .line 192
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Ljava/lang/String;

    .line 195
    .line 196
    if-eqz v0, :cond_4

    .line 197
    .line 198
    if-eq v2, v7, :cond_4

    .line 199
    .line 200
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 201
    .line 202
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmAudioMode(Lcom/samsung/android/server/wifi/SemApeController;)I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-ne v3, v1, :cond_4

    .line 207
    .line 208
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 209
    .line 210
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmRingToneAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-ne v2, v1, :cond_4

    .line 215
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v1, "Start VoIP with RINGTONE uid="

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, " package="

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 242
    .line 243
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 244
    .line 245
    .line 246
    move-result-object p0

    .line 247
    invoke-virtual {p0, v8, v2, v8, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 256
    .line 257
    const/16 v1, 0x10

    .line 258
    .line 259
    invoke-static {p0, v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 264
    .line 265
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/media/AudioManager;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/media/AudioManager;->getModeInternal()I

    .line 270
    .line 271
    .line 272
    move-result p1

    .line 273
    const-string v0, "Check audioMode="

    .line 274
    .line 275
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 283
    .line 284
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 289
    .line 290
    .line 291
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 292
    .line 293
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-eq v0, v7, :cond_6

    .line 298
    .line 299
    const/4 v0, 0x3

    .line 300
    if-eq p1, v0, :cond_5

    .line 301
    .line 302
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 303
    .line 304
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 309
    .line 310
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 311
    .line 312
    .line 313
    move-result-object p0

    .line 314
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    const-wide/16 v0, 0x3e8

    .line 319
    .line 320
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 325
    .line 326
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 331
    .line 332
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 337
    .line 338
    .line 339
    move-result-object p0

    .line 340
    invoke-virtual {p1, p0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 341
    .line 342
    .line 343
    :cond_6
    :goto_3
    return-void

    .line 344
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 345
    .line 346
    invoke-static {p1, v7}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;I)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 350
    .line 351
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 355
    .line 356
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmAppInfos(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/TreeMap;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    if-eqz p1, :cond_7

    .line 365
    .line 366
    const-string p1, "VoIP stopped"

    .line 367
    .line 368
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 372
    .line 373
    invoke-static {p1, v8, v1, v7, v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V

    .line 374
    .line 375
    .line 376
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 377
    .line 378
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    .line 384
    .line 385
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 386
    .line 387
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 388
    .line 389
    .line 390
    move-result-object p0

    .line 391
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 396
    .line 397
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 398
    .line 399
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;I)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 403
    .line 404
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast p1, Ljava/lang/String;

    .line 407
    .line 408
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 412
    .line 413
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmAppInfos(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/TreeMap;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    check-cast p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    .line 422
    .line 423
    if-eqz p1, :cond_8

    .line 424
    .line 425
    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    .line 426
    .line 427
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 428
    .line 429
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eq p1, v0, :cond_9

    .line 434
    .line 435
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    const-string v0, "VoIP started: uid="

    .line 438
    .line 439
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 443
    .line 444
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    .line 445
    .line 446
    .line 447
    move-result v0

    .line 448
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    const-string v0, " "

    .line 452
    .line 453
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 457
    .line 458
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 473
    .line 474
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 479
    .line 480
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    invoke-static {p1, v1, v1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V

    .line 485
    .line 486
    .line 487
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 488
    .line 489
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 490
    .line 491
    .line 492
    move-result-object p1

    .line 493
    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    .line 495
    .line 496
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 497
    .line 498
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 503
    .line 504
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 513
    .line 514
    .line 515
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$4;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    .line 516
    .line 517
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    .line 518
    .line 519
    .line 520
    move-result-object p0

    .line 521
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    .line 523
    .line 524
    return-void

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
