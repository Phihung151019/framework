.class Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LlHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiOptimizer.LlHandler"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

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
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    goto/16 :goto_2

    .line 10
    .line 11
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mgetStateLowLatencyLockHeld(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 26
    .line 27
    const/16 v4, 0x20

    .line 28
    .line 29
    invoke-static {v2, v4, p1, v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$sfgetmOptimizerMode()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_5

    .line 37
    .line 38
    if-eq v0, p1, :cond_5

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v1, v3

    .line 46
    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$msetWifiScanDwell(Lcom/samsung/android/server/wifi/SemWifiOptimizer;I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 50
    .line 51
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$sfgetmOptimizerMode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$sfgetmOptimizerState()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockOwnerUid:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mLowLatencyLockActiveUserUid:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {p1, v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mlogOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;IILjava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 70
    .line 71
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Ljava/lang/String;

    .line 74
    .line 75
    if-ne v0, v2, :cond_1

    .line 76
    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v4}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_5

    .line 120
    .line 121
    if-ne v0, v2, :cond_2

    .line 122
    .line 123
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 124
    .line 125
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 138
    .line 139
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast p1, Ljava/lang/String;

    .line 146
    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-nez v0, :cond_5

    .line 158
    .line 159
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 160
    .line 161
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnectedStaIfaces(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/util/HashSet;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmStaIfaceName(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-eqz p1, :cond_3

    .line 181
    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 183
    .line 184
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_5

    .line 195
    .line 196
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 197
    .line 198
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mchangeNetworkConnectionState(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 203
    .line 204
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 205
    .line 206
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 207
    .line 208
    const/16 v1, 0x10

    .line 209
    .line 210
    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 215
    .line 216
    const/16 v0, 0x8

    .line 217
    .line 218
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 219
    .line 220
    invoke-static {p0, v0, p1, v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 225
    .line 226
    iget p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->mUsageStatsUid:I

    .line 227
    .line 228
    invoke-static {p0, v3, v3, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 233
    .line 234
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 235
    .line 236
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 237
    .line 238
    const/4 v1, 0x4

    .line 239
    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 244
    .line 245
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 246
    .line 247
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 248
    .line 249
    invoke-static {p0, v1, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 254
    .line 255
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 256
    .line 257
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 258
    .line 259
    invoke-static {p0, v2, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mupdateOptimizerMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;III)V

    .line 260
    .line 261
    .line 262
    return-void

    .line 263
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 264
    .line 265
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 268
    .line 269
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmTrafficStats(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 270
    .line 271
    .line 272
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 273
    .line 274
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$mcheckTraffic(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 275
    .line 276
    .line 277
    return-void

    .line 278
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 279
    .line 280
    const/16 v0, 0x3e8

    .line 281
    .line 282
    if-ne p1, v2, :cond_4

    .line 283
    .line 284
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 291
    .line 292
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 293
    .line 294
    .line 295
    move-result-object p0

    .line 296
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 307
    .line 308
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 313
    .line 314
    .line 315
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 316
    .line 317
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fgetmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_5

    .line 322
    .line 323
    const/4 p1, 0x5

    .line 324
    invoke-static {p0, p1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 332
    .line 333
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmTrafficMode(Lcom/samsung/android/server/wifi/SemWifiOptimizer;)V

    .line 334
    .line 335
    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiOptimizer$LlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiOptimizer;

    .line 337
    .line 338
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiOptimizer;->-$$Nest$fputmIsGamePkg(Lcom/samsung/android/server/wifi/SemWifiOptimizer;Z)V

    .line 339
    .line 340
    .line 341
    :cond_5
    :goto_2
    return-void

    .line 342
    nop

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
