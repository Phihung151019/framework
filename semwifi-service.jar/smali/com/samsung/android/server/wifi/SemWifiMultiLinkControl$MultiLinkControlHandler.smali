.class Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiLinkControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "Exp. latency: "

    .line 5
    .line 6
    move-object/from16 v3, p1

    .line 7
    .line 8
    iget v3, v3, Landroid/os/Message;->what:I

    .line 9
    .line 10
    const-wide/16 v4, 0xbb8

    .line 11
    .line 12
    const-wide/16 v6, 0x0

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    if-eqz v3, :cond_8

    .line 17
    .line 18
    if-eq v3, v9, :cond_6

    .line 19
    .line 20
    if-eq v3, v1, :cond_3

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    if-eq v3, v2, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    monitor-enter v2

    .line 36
    const/4 v3, 0x0

    .line 37
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 59
    .line 60
    .line 61
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloHas2G(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmCmdEnableMlo(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 80
    .line 81
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlStateCheck(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 89
    .line 90
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediator(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 97
    .line 98
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorRegistered(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-eqz v3, :cond_1

    .line 107
    .line 108
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 109
    .line 110
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediator(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v6, "MLO"

    .line 115
    .line 116
    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->unregisterCallback(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 120
    .line 121
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediator(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    const-string v6, "MLO"

    .line 126
    .line 127
    invoke-virtual {v3, v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->unregisterQuery(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 131
    .line 132
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorRegistered(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 143
    .line 144
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmRenewConnection(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    if-eqz v3, :cond_2

    .line 153
    .line 154
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 155
    .line 156
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 165
    .line 166
    .line 167
    :cond_2
    monitor-exit v2

    .line 168
    return-void

    .line 169
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    throw v0

    .line 171
    :cond_3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    .line 173
    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v3, "ML config check: "

    .line 177
    .line 178
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 182
    .line 183
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    monitor-enter v3

    .line 188
    :try_start_1
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 189
    .line 190
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$mcheckMloStatus(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 191
    .line 192
    .line 193
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 194
    .line 195
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmNumLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v6, " / "

    .line 203
    .line 204
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 208
    .line 209
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloHas2G(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v6, " / "

    .line 221
    .line 222
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 226
    .line 227
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlControlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v6, " / "

    .line 239
    .line 240
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 244
    .line 245
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmSamsungMloCtrlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 250
    .line 251
    .line 252
    move-result v6

    .line 253
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 257
    .line 258
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->getTxBandwidth()I

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    invoke-static {v6, v7}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;I)V

    .line 263
    .line 264
    .line 265
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 266
    .line 267
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmRenewConnection(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-virtual {v6, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 272
    .line 273
    .line 274
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 275
    .line 276
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    if-eqz v6, :cond_5

    .line 285
    .line 286
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 287
    .line 288
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$mmlStateUpdate(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 289
    .line 290
    .line 291
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 292
    .line 293
    new-array v7, v1, [D

    .line 294
    .line 295
    fill-array-data v7, :array_0

    .line 296
    .line 297
    .line 298
    invoke-static {v6, v7}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;[D)V

    .line 299
    .line 300
    .line 301
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 302
    .line 303
    new-array v1, v1, [D

    .line 304
    .line 305
    fill-array-data v1, :array_1

    .line 306
    .line 307
    .line 308
    invoke-static {v6, v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;[D)V

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 312
    .line 313
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 318
    .line 319
    .line 320
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 321
    .line 322
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    invoke-static {v1, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    const-wide/16 v6, 0x0

    .line 331
    .line 332
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 336
    .line 337
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlControlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_5

    .line 346
    .line 347
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 348
    .line 349
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmSamsungMloCtrlEnabled(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    if-eqz v1, :cond_5

    .line 358
    .line 359
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 360
    .line 361
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediator(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    if-eqz v1, :cond_4

    .line 366
    .line 367
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 368
    .line 369
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediator(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 374
    .line 375
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediatorGrantCallback(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    const-string v7, "MLO"

    .line 380
    .line 381
    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 385
    .line 386
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediator(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 391
    .line 392
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiCtlFeatureMediatorPerformanceQuery(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 393
    .line 394
    .line 395
    move-result-object v6

    .line 396
    const-string v7, "MLO"

    .line 397
    .line 398
    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->registerQuery(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 402
    .line 403
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorRegistered(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 408
    .line 409
    .line 410
    goto :goto_2

    .line 411
    :catchall_1
    move-exception v0

    .line 412
    goto :goto_3

    .line 413
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 414
    .line 415
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloHas2G(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_5

    .line 424
    .line 425
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 426
    .line 427
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-static {v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    .line 437
    .line 438
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 439
    .line 440
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmlPrevStateStr(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 441
    .line 442
    .line 443
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->addHistory(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 453
    .line 454
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmSetMlControlRes(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 455
    .line 456
    .line 457
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 458
    .line 459
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmMloDisabledTimeNs(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 460
    .line 461
    .line 462
    monitor-exit v3

    .line 463
    return-void

    .line 464
    :goto_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    throw v0

    .line 466
    :cond_6
    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    .line 468
    .line 469
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 470
    .line 471
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    monitor-enter v3

    .line 476
    :try_start_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 477
    .line 478
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 483
    .line 484
    .line 485
    move-result v2

    .line 486
    if-nez v2, :cond_7

    .line 487
    .line 488
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 489
    .line 490
    invoke-static {v2, v9, v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$menableMultiLinkOperation(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;ZI)V

    .line 491
    .line 492
    .line 493
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 494
    .line 495
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmCmdEnableMlo(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 500
    .line 501
    .line 502
    goto :goto_4

    .line 503
    :catchall_2
    move-exception v0

    .line 504
    goto :goto_5

    .line 505
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 506
    .line 507
    invoke-static {v1, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$menableMultiLinkOperation(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;ZI)V

    .line 508
    .line 509
    .line 510
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 511
    .line 512
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmCmdEnableMlo(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 517
    .line 518
    .line 519
    :goto_4
    monitor-exit v3

    .line 520
    return-void

    .line 521
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 522
    throw v0

    .line 523
    :cond_8
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    .line 525
    .line 526
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 527
    .line 528
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    monitor-enter v3

    .line 533
    :try_start_3
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 534
    .line 535
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 536
    .line 537
    .line 538
    move-result-object v10

    .line 539
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 540
    .line 541
    .line 542
    move-result v10

    .line 543
    if-eqz v10, :cond_10

    .line 544
    .line 545
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 546
    .line 547
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 548
    .line 549
    .line 550
    move-result-object v11

    .line 551
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getActiveLinkNumber()I

    .line 552
    .line 553
    .line 554
    move-result v11

    .line 555
    invoke-static {v10, v11}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;I)V

    .line 556
    .line 557
    .line 558
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 559
    .line 560
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 561
    .line 562
    .line 563
    move-result-object v11

    .line 564
    const-wide/16 v12, 0x3e8

    .line 565
    .line 566
    const/4 v14, 0x2

    .line 567
    const-wide/16 v15, 0xdac

    .line 568
    .line 569
    const/16 v17, 0x1

    .line 570
    .line 571
    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(JIJI)[D

    .line 572
    .line 573
    .line 574
    move-result-object v11

    .line 575
    invoke-static {v10, v11}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;[D)V

    .line 576
    .line 577
    .line 578
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 579
    .line 580
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 581
    .line 582
    .line 583
    move-result-object v11

    .line 584
    const-wide/16 v12, 0x3e8

    .line 585
    .line 586
    const/4 v14, 0x2

    .line 587
    const-wide/16 v15, 0xdac

    .line 588
    .line 589
    const/16 v17, 0x1

    .line 590
    .line 591
    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mlQosEstimation(JIJI)[D

    .line 592
    .line 593
    .line 594
    move-result-object v11

    .line 595
    invoke-static {v10, v11}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;[D)V

    .line 596
    .line 597
    .line 598
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 599
    .line 600
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->getTxBandwidth()I

    .line 601
    .line 602
    .line 603
    move-result v11

    .line 604
    invoke-static {v10, v11}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;I)V

    .line 605
    .line 606
    .line 607
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 608
    .line 609
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$mmlStateUpdate(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V

    .line 610
    .line 611
    .line 612
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 613
    .line 614
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 615
    .line 616
    .line 617
    move-result-wide v10

    .line 618
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 619
    .line 620
    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 621
    .line 622
    .line 623
    move-result-object v12

    .line 624
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getLinkStateUpdateNumber()J

    .line 625
    .line 626
    .line 627
    move-result-wide v12

    .line 628
    cmp-long v10, v10, v12

    .line 629
    .line 630
    if-eqz v10, :cond_a

    .line 631
    .line 632
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 633
    .line 634
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 635
    .line 636
    .line 637
    move-result-object v11

    .line 638
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getLinkStateUpdateNumber()J

    .line 639
    .line 640
    .line 641
    move-result-wide v11

    .line 642
    invoke-static {v10, v11, v12}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;J)V

    .line 643
    .line 644
    .line 645
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 646
    .line 647
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 648
    .line 649
    .line 650
    move-result-object v10

    .line 651
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 652
    .line 653
    .line 654
    move-result v10

    .line 655
    if-nez v10, :cond_9

    .line 656
    .line 657
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 658
    .line 659
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 660
    .line 661
    .line 662
    move-result-object v10

    .line 663
    iget v10, v10, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 664
    .line 665
    if-le v10, v9, :cond_9

    .line 666
    .line 667
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 668
    .line 669
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 670
    .line 671
    .line 672
    move-result v10

    .line 673
    if-le v10, v9, :cond_9

    .line 674
    .line 675
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 676
    .line 677
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 678
    .line 679
    .line 680
    move-result-wide v10

    .line 681
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 682
    .line 683
    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmOutageUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 684
    .line 685
    .line 686
    move-result-wide v12

    .line 687
    sub-long/2addr v10, v12

    .line 688
    const-wide/16 v12, 0xa

    .line 689
    .line 690
    cmp-long v10, v10, v12

    .line 691
    .line 692
    if-ltz v10, :cond_9

    .line 693
    .line 694
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 695
    .line 696
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 697
    .line 698
    .line 699
    move-result-object v10

    .line 700
    aget-wide v10, v10, v9

    .line 701
    .line 702
    cmpl-double v10, v10, v6

    .line 703
    .line 704
    if-lez v10, :cond_9

    .line 705
    .line 706
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 707
    .line 708
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 709
    .line 710
    .line 711
    move-result-object v10

    .line 712
    aget-wide v10, v10, v9

    .line 713
    .line 714
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 715
    .line 716
    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 717
    .line 718
    .line 719
    move-result-object v12

    .line 720
    aget-wide v12, v12, v9

    .line 721
    .line 722
    div-double/2addr v10, v12

    .line 723
    double-to-float v10, v10

    .line 724
    const/high16 v11, 0x3f800000    # 1.0f

    .line 725
    .line 726
    cmpl-float v10, v10, v11

    .line 727
    .line 728
    if-nez v10, :cond_9

    .line 729
    .line 730
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 731
    .line 732
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 733
    .line 734
    .line 735
    move-result-wide v11

    .line 736
    invoke-static {v10, v11, v12}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fputmOutageUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;J)V

    .line 737
    .line 738
    .line 739
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 740
    .line 741
    const-string v11, "Sec. link outage"

    .line 742
    .line 743
    invoke-virtual {v10, v11}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->addHistory(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    goto :goto_6

    .line 747
    :catchall_3
    move-exception v0

    .line 748
    goto/16 :goto_8

    .line 749
    .line 750
    :cond_9
    :goto_6
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 751
    .line 752
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 753
    .line 754
    .line 755
    move-result-object v10

    .line 756
    iget v10, v10, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 757
    .line 758
    if-le v10, v9, :cond_a

    .line 759
    .line 760
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 761
    .line 762
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 763
    .line 764
    .line 765
    move-result v10

    .line 766
    if-le v10, v9, :cond_a

    .line 767
    .line 768
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 769
    .line 770
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 771
    .line 772
    .line 773
    move-result-object v10

    .line 774
    aget-wide v10, v10, v8

    .line 775
    .line 776
    cmpl-double v6, v10, v6

    .line 777
    .line 778
    if-lez v6, :cond_a

    .line 779
    .line 780
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 781
    .line 782
    new-instance v7, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 788
    .line 789
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    const-string v2, " / "

    .line 797
    .line 798
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    const-string v2, "%.2f"

    .line 802
    .line 803
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 804
    .line 805
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 806
    .line 807
    .line 808
    move-result-object v10

    .line 809
    aget-wide v10, v10, v8

    .line 810
    .line 811
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 812
    .line 813
    .line 814
    move-result-object v10

    .line 815
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v10

    .line 819
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v2

    .line 823
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    const-string v2, " / "

    .line 827
    .line 828
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    const-string v2, "%.2f"

    .line 832
    .line 833
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 834
    .line 835
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 836
    .line 837
    .line 838
    move-result-object v10

    .line 839
    aget-wide v10, v10, v8

    .line 840
    .line 841
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 842
    .line 843
    .line 844
    move-result-object v10

    .line 845
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 846
    .line 847
    .line 848
    move-result-object v10

    .line 849
    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-virtual {v6, v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->addHistory(Ljava/lang/String;)V

    .line 861
    .line 862
    .line 863
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 864
    .line 865
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlStateCheck(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 866
    .line 867
    .line 868
    move-result-object v2

    .line 869
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    if-eqz v2, :cond_f

    .line 874
    .line 875
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 876
    .line 877
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlStateCheck(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 878
    .line 879
    .line 880
    move-result-object v2

    .line 881
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 882
    .line 883
    .line 884
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 885
    .line 886
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 887
    .line 888
    .line 889
    move-result v2

    .line 890
    const/16 v6, 0x140

    .line 891
    .line 892
    if-ge v2, v6, :cond_c

    .line 893
    .line 894
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 895
    .line 896
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmCmdEnableMlo(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 897
    .line 898
    .line 899
    move-result-object v2

    .line 900
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 901
    .line 902
    .line 903
    move-result v2

    .line 904
    if-eqz v2, :cond_c

    .line 905
    .line 906
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 907
    .line 908
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 909
    .line 910
    .line 911
    move-result-object v2

    .line 912
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->controlMode:I

    .line 913
    .line 914
    if-ne v2, v1, :cond_b

    .line 915
    .line 916
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 917
    .line 918
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 923
    .line 924
    if-ge v2, v1, :cond_c

    .line 925
    .line 926
    :cond_b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 927
    .line 928
    invoke-static {v2, v9, v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$menableMultiLinkOperation(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;ZI)V

    .line 929
    .line 930
    .line 931
    goto :goto_7

    .line 932
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 933
    .line 934
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmCmdEnableMlo(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 939
    .line 940
    .line 941
    move-result v1

    .line 942
    if-nez v1, :cond_d

    .line 943
    .line 944
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 945
    .line 946
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 947
    .line 948
    .line 949
    move-result-object v1

    .line 950
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->controlMode:I

    .line 951
    .line 952
    if-nez v1, :cond_e

    .line 953
    .line 954
    :cond_d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 955
    .line 956
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmCmdEnableMlo(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 961
    .line 962
    .line 963
    move-result v1

    .line 964
    if-eqz v1, :cond_f

    .line 965
    .line 966
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 967
    .line 968
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 969
    .line 970
    .line 971
    move-result v1

    .line 972
    if-ne v1, v6, :cond_f

    .line 973
    .line 974
    :cond_e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 975
    .line 976
    invoke-static {v1, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$menableMultiLinkOperation(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;ZI)V

    .line 977
    .line 978
    .line 979
    :cond_f
    :goto_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 980
    .line 981
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMultiLinkControlHandler(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MultiLinkControlHandler;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    invoke-static {v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 986
    .line 987
    .line 988
    move-result-object v1

    .line 989
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 990
    .line 991
    .line 992
    :cond_10
    monitor-exit v3

    .line 993
    return-void

    .line 994
    :goto_8
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 995
    throw v0

    .line 996
    nop

    .line 997
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
