.class Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchBoardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

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
    const-string v1, "AlwaysEnabledPolicy"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "SwitchBoardHandler.handleMessage: undefined case: msg="

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 33
    .line 34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "Primary Wi-Fi changed: "

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Landroid/net/Network;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashMap;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Long;

    .line 86
    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v7

    .line 107
    cmp-long p1, v7, v5

    .line 108
    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 112
    .line 113
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string v0, "Wi-Fi disconnected, but ignored for non primary interface (%x)"

    .line 122
    .line 123
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 132
    .line 133
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 137
    .line 138
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 139
    .line 140
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    if-nez v0, :cond_1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 148
    .line 149
    .line 150
    move-result-wide v2

    .line 151
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    const-string v0, "Wi-Fi disconnected: %s (%x)"

    .line 160
    .line 161
    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast p1, Landroid/net/Network;

    .line 172
    .line 173
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 174
    .line 175
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$mgetLinkProperties(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    if-eqz v0, :cond_5

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_2

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 188
    .line 189
    .line 190
    move-result-wide v2

    .line 191
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashMap;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-eqz p1, :cond_4

    .line 211
    .line 212
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_3

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_3
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 226
    .line 227
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v0, "Wi-Fi connected, but ignored: %s (%x)"

    .line 236
    .line 237
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 246
    .line 247
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 251
    .line 252
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V

    .line 253
    .line 254
    .line 255
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 256
    .line 257
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    const-string v0, "Wi-Fi connected: %s (%x)"

    .line 266
    .line 267
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void

    .line 275
    :cond_5
    const-string p0, "Wi-Fi connected, but ignored"

    .line 276
    .line 277
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logi(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 282
    .line 283
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p1, Ljava/lang/Integer;

    .line 286
    .line 287
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->valueOf(I)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 299
    .line 300
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 305
    .line 306
    if-ne p1, v0, :cond_6

    .line 307
    .line 308
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 309
    .line 310
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 311
    .line 312
    .line 313
    move-result p1

    .line 314
    if-nez p1, :cond_6

    .line 315
    .line 316
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 317
    .line 318
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-eqz p1, :cond_12

    .line 323
    .line 324
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 325
    .line 326
    invoke-static {p0, v5, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 327
    .line 328
    .line 329
    return-void

    .line 330
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 331
    .line 332
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 337
    .line 338
    if-ne p1, v0, :cond_7

    .line 339
    .line 340
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 341
    .line 342
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 343
    .line 344
    .line 345
    move-result p1

    .line 346
    if-eqz p1, :cond_7

    .line 347
    .line 348
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 349
    .line 350
    const-string p1, "AlwaysDisabledPolicy"

    .line 351
    .line 352
    invoke-static {p0, v4, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 357
    .line 358
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 363
    .line 364
    if-ne p1, v0, :cond_12

    .line 365
    .line 366
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 367
    .line 368
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    const-string v0, "DefaultPolicy"

    .line 373
    .line 374
    if-nez p1, :cond_8

    .line 375
    .line 376
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 377
    .line 378
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-nez p1, :cond_8

    .line 387
    .line 388
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 389
    .line 390
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    if-eqz p1, :cond_12

    .line 395
    .line 396
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 397
    .line 398
    invoke-static {p0, v5, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    return-void

    .line 402
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 403
    .line 404
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 405
    .line 406
    .line 407
    move-result p1

    .line 408
    if-eqz p1, :cond_12

    .line 409
    .line 410
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 411
    .line 412
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    .line 417
    .line 418
    .line 419
    move-result p1

    .line 420
    if-eqz p1, :cond_12

    .line 421
    .line 422
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 423
    .line 424
    invoke-static {p0, v4, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :pswitch_4
    const-string p1, "EVENT_AUTO_STOP"

    .line 429
    .line 430
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 434
    .line 435
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 440
    .line 441
    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    const-string v0, "The number of packages using SwitchBoard="

    .line 445
    .line 446
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 450
    .line 451
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 470
    .line 471
    const-string p1, "AutoStop"

    .line 472
    .line 473
    invoke-static {p0, v4, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :pswitch_5
    const-string p1, "EVENT_GET_WIFIINFO_POLL"

    .line 478
    .line 479
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 483
    .line 484
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 485
    .line 486
    .line 487
    move-result p1

    .line 488
    if-eqz p1, :cond_a

    .line 489
    .line 490
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 491
    .line 492
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$mgetWifiLinkLayerStats(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    if-eqz p1, :cond_a

    .line 501
    .line 502
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 503
    .line 504
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 509
    .line 510
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    .line 515
    .line 516
    .line 517
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 518
    .line 519
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    if-eqz p1, :cond_9

    .line 528
    .line 529
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 530
    .line 531
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 532
    .line 533
    .line 534
    move-result-object p1

    .line 535
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z

    .line 536
    .line 537
    .line 538
    move-result p1

    .line 539
    if-eqz p1, :cond_9

    .line 540
    .line 541
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 542
    .line 543
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$mdetermineDataPathPriority(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    .line 544
    .line 545
    .line 546
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 547
    .line 548
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 553
    .line 554
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmCurWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mupdate(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    .line 559
    .line 560
    .line 561
    goto :goto_2

    .line 562
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 563
    .line 564
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 565
    .line 566
    .line 567
    move-result p1

    .line 568
    if-eqz p1, :cond_b

    .line 569
    .line 570
    new-instance p1, Ljava/lang/StringBuilder;

    .line 571
    .line 572
    const-string v0, "getWifiLinkLayerStats failed with "

    .line 573
    .line 574
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 578
    .line 579
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPrimaryWifiIfaceName(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object p1

    .line 590
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 594
    .line 595
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mvalid(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)Z

    .line 600
    .line 601
    .line 602
    move-result p1

    .line 603
    if-eqz p1, :cond_c

    .line 604
    .line 605
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 606
    .line 607
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmLastWifiMetric(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/SemSwitchBoardService$WifiMetric;)V

    .line 612
    .line 613
    .line 614
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 615
    .line 616
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmWifiInfoPollingEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 617
    .line 618
    .line 619
    move-result p1

    .line 620
    if-eqz p1, :cond_12

    .line 621
    .line 622
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 623
    .line 624
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 629
    .line 630
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;

    .line 631
    .line 632
    .line 633
    move-result-object p0

    .line 634
    const/4 v0, 0x3

    .line 635
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 636
    .line 637
    .line 638
    move-result-object p0

    .line 639
    const-wide/16 v0, 0x3e8

    .line 640
    .line 641
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 642
    .line 643
    .line 644
    return-void

    .line 645
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 646
    .line 647
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)V

    .line 648
    .line 649
    .line 650
    const-string p1, "EVENT_BOOT_COMPLETED"

    .line 651
    .line 652
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 656
    .line 657
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$mcheckDefaultEnabled(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 658
    .line 659
    .line 660
    move-result p1

    .line 661
    if-eqz p1, :cond_d

    .line 662
    .line 663
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 664
    .line 665
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 666
    .line 667
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;)V

    .line 668
    .line 669
    .line 670
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 671
    .line 672
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 673
    .line 674
    .line 675
    move-result p1

    .line 676
    if-eqz p1, :cond_e

    .line 677
    .line 678
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 679
    .line 680
    const-string p1, "EnableRequestBeforeBootComplete"

    .line 681
    .line 682
    invoke-static {p0, v5, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 683
    .line 684
    .line 685
    return-void

    .line 686
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 687
    .line 688
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmEnablePolicy(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 693
    .line 694
    if-ne p1, v0, :cond_12

    .line 695
    .line 696
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 697
    .line 698
    invoke-static {p0, v5, v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 699
    .line 700
    .line 701
    return-void

    .line 702
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 703
    .line 704
    if-eqz v0, :cond_f

    .line 705
    .line 706
    move v4, v5

    .line 707
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    .line 709
    check-cast p1, Ljava/lang/String;

    .line 710
    .line 711
    if-eqz v4, :cond_10

    .line 712
    .line 713
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 714
    .line 715
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 716
    .line 717
    .line 718
    move-result-object v0

    .line 719
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    goto :goto_3

    .line 723
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 724
    .line 725
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 726
    .line 727
    .line 728
    move-result-object v0

    .line 729
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    const-string v1, "EVENT_ENABLE_SWITCHBOARD: "

    .line 735
    .line 736
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    const-string v1, ", packageName="

    .line 743
    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    const-string v1, ", sizeOf packages="

    .line 751
    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 756
    .line 757
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 758
    .line 759
    .line 760
    move-result-object v1

    .line 761
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logv(Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 776
    .line 777
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Z

    .line 778
    .line 779
    .line 780
    move-result v0

    .line 781
    if-nez v0, :cond_11

    .line 782
    .line 783
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 784
    .line 785
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fputmSwitchBoardRequestBeforeBootCompleted(Lcom/samsung/android/server/wifi/SemSwitchBoardService;Z)V

    .line 786
    .line 787
    .line 788
    new-instance p0, Ljava/lang/StringBuilder;

    .line 789
    .line 790
    const-string p1, "setSwitchBoardState: pending a request before boot completed [enable="

    .line 791
    .line 792
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    const-string p1, "]"

    .line 799
    .line 800
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object p0

    .line 807
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->logd(Ljava/lang/String;)V

    .line 808
    .line 809
    .line 810
    return-void

    .line 811
    :cond_11
    if-nez v4, :cond_13

    .line 812
    .line 813
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 814
    .line 815
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$fgetmPackageNames(Lcom/samsung/android/server/wifi/SemSwitchBoardService;)Ljava/util/HashSet;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    if-eqz v0, :cond_12

    .line 824
    .line 825
    goto :goto_4

    .line 826
    :cond_12
    return-void

    .line 827
    :cond_13
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$SwitchBoardHandler;->this$0:Lcom/samsung/android/server/wifi/SemSwitchBoardService;

    .line 828
    .line 829
    const-string v0, "AppsRequest:"

    .line 830
    .line 831
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object p1

    .line 835
    invoke-static {p0, v4, p1}, Lcom/samsung/android/server/wifi/SemSwitchBoardService;->-$$Nest$msetSwitchBoardState(Lcom/samsung/android/server/wifi/SemSwitchBoardService;ZLjava/lang/String;)V

    .line 836
    .line 837
    .line 838
    return-void

    .line 839
    :pswitch_data_0
    .packed-switch 0x1
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
