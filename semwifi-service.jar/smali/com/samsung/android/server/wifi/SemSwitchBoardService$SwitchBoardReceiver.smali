.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwitchBoardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

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
    .locals 8

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v2, ", Package="

    .line 11
    .line 12
    const-string v3, "default"

    .line 13
    .line 14
    const-string v4, "Package"

    .line 15
    .line 16
    const-string v5, "SwitchBoardReceiver.onReceive: action="

    .line 17
    .line 18
    const/4 v6, -0x1

    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    sparse-switch v7, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    const-string v7, "com.samsung.android.SwitchBoard.SET_POLICY"

    .line 28
    .line 29
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-nez v7, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v6, 0x4

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string v7, "com.samsung.android.SwitchBoard.MIN_SWITCHING_DELAY"

    .line 39
    .line 40
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v6, 0x3

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    const-string v7, "com.samsung.android.SwitchBoard.STOP"

    .line 50
    .line 51
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    const/4 v6, 0x2

    .line 59
    goto :goto_0

    .line 60
    :sswitch_3
    const-string v7, "com.samsung.android.SwitchBoard.ENABLE_DEBUG"

    .line 61
    .line 62
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_4

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move v6, v0

    .line 70
    goto :goto_0

    .line 71
    :sswitch_4
    const-string v7, "com.samsung.android.SwitchBoard.START"

    .line 72
    .line 73
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_5

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    move v6, p1

    .line 81
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 82
    .line 83
    .line 84
    const-string p0, "SwitchBoardReceiver.onReceive: undefined case: action="

    .line 85
    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_0
    const-string v0, "Policy"

    .line 95
    .line 96
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    const-string p2, ", Policy="

    .line 101
    .line 102
    invoke-static {p1, v5, v1, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 110
    .line 111
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 116
    .line 117
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const/4 v0, 0x5

    .line 126
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    const-string v2, "WifiToLteDelayMillis"

    .line 141
    .line 142
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const-string v2, "LteToWifiDelayMillis"

    .line 156
    .line 157
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;I)V

    .line 162
    .line 163
    .line 164
    const-string p1, ", WifiToLteDelayMillis="

    .line 165
    .line 166
    invoke-static {v5, v1, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 171
    .line 172
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiToLteDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p2, ", LteToWifiDelayMillis="

    .line 180
    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 185
    .line 186
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLteToWifiDelayMillis(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p0

    .line 197
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_2
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-eqz p2, :cond_6

    .line 206
    .line 207
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    :cond_6
    invoke-static {v5, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 219
    .line 220
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 225
    .line 226
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {p0, v0, p1, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .line 236
    .line 237
    return-void

    .line 238
    :pswitch_3
    const-string p0, "Debug"

    .line 239
    .line 240
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$sfputVDBG(Z)V

    .line 245
    .line 246
    .line 247
    const-string p0, ", VDBG="

    .line 248
    .line 249
    invoke-static {v5, v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-static {}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$sfgetVDBG()Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :pswitch_4
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    if-eqz p2, :cond_7

    .line 273
    .line 274
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    :cond_7
    invoke-static {v5, v1, v2, v3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 286
    .line 287
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 292
    .line 293
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p0, v0, v0, p1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x7115109a -> :sswitch_4
        -0x31e8872d -> :sswitch_3
        -0x24ae17a2 -> :sswitch_2
        -0x58eb9f7 -> :sswitch_1
        0x6aaf1b2b -> :sswitch_0
    .end sparse-switch

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
