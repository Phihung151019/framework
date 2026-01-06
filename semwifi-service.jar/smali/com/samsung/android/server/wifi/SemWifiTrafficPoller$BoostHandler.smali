.class Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

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
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x1770

    .line 4
    .line 5
    const/16 v2, 0x1f4

    .line 6
    .line 7
    const/16 v3, 0xbb8

    .line 8
    .line 9
    const/16 v4, 0x3e8

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 17
    .line 18
    if-ne v0, v4, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msAllIfacesCallbacks:Ljava/util/Set;

    .line 23
    .line 24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 27
    .line 28
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-ne v0, v3, :cond_d

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msAllIfacesCallbacks:Ljava/util/Set;

    .line 37
    .line 38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 41
    .line 42
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    if-ne v0, v4, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 51
    .line 52
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputmPollingIntervalForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;I)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msAllIfacesCallbacks:Ljava/util/Set;

    .line 58
    .line 59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 62
    .line 63
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    if-ne v0, v3, :cond_d

    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 70
    .line 71
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fputmPollingIntervalForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;I)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msAllIfacesCallbacks:Ljava/util/Set;

    .line 77
    .line 78
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallbackForAllIfaces;

    .line 81
    .line 82
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 87
    .line 88
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmForegroundPkgList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 93
    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 103
    .line 104
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmForegroundPkgList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/HashMap;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 109
    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast p1, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 123
    .line 124
    if-ne v0, v2, :cond_2

    .line 125
    .line 126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 127
    .line 128
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    .line 129
    .line 130
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 133
    .line 134
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    if-ne v0, v4, :cond_3

    .line 139
    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    .line 143
    .line 144
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    .line 146
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 147
    .line 148
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    if-ne v0, v3, :cond_4

    .line 153
    .line 154
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    .line 157
    .line 158
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 161
    .line 162
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_4
    if-ne v0, v1, :cond_5

    .line 167
    .line 168
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    .line 171
    .line 172
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    .line 174
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 175
    .line 176
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 180
    .line 181
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$msetPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 186
    .line 187
    if-ne v0, v2, :cond_6

    .line 188
    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 190
    .line 191
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m500msCallbacks:Ljava/util/Set;

    .line 192
    .line 193
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 196
    .line 197
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_6
    if-ne v0, v4, :cond_7

    .line 202
    .line 203
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m1000msCallbacks:Ljava/util/Set;

    .line 206
    .line 207
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 210
    .line 211
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_7
    if-ne v0, v3, :cond_8

    .line 216
    .line 217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m3000msCallbacks:Ljava/util/Set;

    .line 220
    .line 221
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 224
    .line 225
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_8
    if-ne v0, v1, :cond_9

    .line 230
    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 232
    .line 233
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->m6000msCallbacks:Ljava/util/Set;

    .line 234
    .line 235
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 238
    .line 239
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    :cond_9
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 243
    .line 244
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$msetPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 245
    .line 246
    .line 247
    return-void

    .line 248
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 249
    .line 250
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-lez p1, :cond_a

    .line 255
    .line 256
    const/4 p1, 0x1

    .line 257
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 262
    .line 263
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmPollingInterval(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    int-to-long v0, v0

    .line 268
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 273
    .line 274
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmPolled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    .line 281
    .line 282
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$mupdateStaTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 285
    .line 286
    .line 287
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 288
    .line 289
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmTrafficPollTime(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 290
    .line 291
    .line 292
    move-result p1

    .line 293
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmPollingIntervalForAllIfaces(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    rem-int/2addr p1, v0

    .line 300
    if-nez p1, :cond_b

    .line 301
    .line 302
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 303
    .line 304
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$mupdateWifiTrafficStatsList(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 305
    .line 306
    .line 307
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 308
    .line 309
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmTrafficPollTime(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)I

    .line 310
    .line 311
    .line 312
    move-result p1

    .line 313
    rem-int/2addr p1, v4

    .line 314
    if-nez p1, :cond_c

    .line 315
    .line 316
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 317
    .line 318
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetisFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-eqz p1, :cond_c

    .line 323
    .line 324
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 325
    .line 326
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$msetBoostMode(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 327
    .line 328
    .line 329
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 330
    .line 331
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$fgetmPolled(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    if-eqz p1, :cond_d

    .line 340
    .line 341
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$BoostHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 342
    .line 343
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->-$$Nest$mnotifyTrafficStatsChanged(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;)V

    .line 344
    .line 345
    .line 346
    :cond_d
    :goto_3
    return-void

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
