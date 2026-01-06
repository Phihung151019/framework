.class Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwtControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

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
    .locals 8

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$minitializeVariables(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 23
    .line 24
    const-string v1, "Cmd timeout"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->querySessionExistence(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 52
    .line 53
    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mteardownAllTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 63
    .line 64
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgeterrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    add-int/2addr v1, v4

    .line 74
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 75
    .line 76
    .line 77
    if-lt v1, v2, :cond_2

    .line 78
    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmFirmwareAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 85
    .line 86
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    .line 109
    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 111
    .line 112
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 113
    .line 114
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_f

    .line 129
    .line 130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 140
    .line 141
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 142
    .line 143
    const/16 v0, 0xff

    .line 144
    .line 145
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 154
    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    const-string v6, "Teardown completed "

    .line 158
    .line 159
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget v6, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 163
    .line 164
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v6, " "

    .line 168
    .line 169
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget v6, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 173
    .line 174
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 185
    .line 186
    const/4 v1, 0x6

    .line 187
    if-eq v0, v1, :cond_4

    .line 188
    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 190
    .line 191
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 195
    .line 196
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiatedSessionId(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiatedDuration(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmNegotiatedInterval(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 210
    .line 211
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 216
    .line 217
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgeterrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    add-int/2addr v6, v4

    .line 222
    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 223
    .line 224
    .line 225
    :goto_1
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 226
    .line 227
    const-wide/16 v6, 0x320

    .line 228
    .line 229
    if-eqz v0, :cond_7

    .line 230
    .line 231
    if-eq v0, v1, :cond_5

    .line 232
    .line 233
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 238
    .line 239
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgeterrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-lt v0, v2, :cond_6

    .line 244
    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 246
    .line 247
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForTwtTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 251
    .line 252
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    or-int/lit8 v2, v2, 0x10

    .line 257
    .line 258
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputmApAbnormality(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 265
    .line 266
    iget v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 267
    .line 268
    iget v3, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 269
    .line 270
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_6
    const/4 v0, 0x2

    .line 275
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 284
    .line 285
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_8

    .line 294
    .line 295
    invoke-static {p0, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 300
    .line 301
    .line 302
    goto :goto_2

    .line 303
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 304
    .line 305
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_9

    .line 314
    .line 315
    invoke-static {p0, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    .line 321
    .line 322
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 323
    .line 324
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-nez v0, :cond_a

    .line 333
    .line 334
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 335
    .line 336
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-nez v0, :cond_a

    .line 345
    .line 346
    iget v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->reasonCode:I

    .line 347
    .line 348
    if-eq v0, v1, :cond_a

    .line 349
    .line 350
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 351
    .line 352
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 353
    .line 354
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mreportTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;II)V

    .line 355
    .line 356
    .line 357
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 358
    .line 359
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 364
    .line 365
    .line 366
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 367
    .line 368
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 375
    .line 376
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 377
    .line 378
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNegotiationStatus(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_b

    .line 383
    .line 384
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 385
    .line 386
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-nez v0, :cond_b

    .line 395
    .line 396
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 397
    .line 398
    const-string p1, "Ignore unexpected setup event"

    .line 399
    .line 400
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    return-void

    .line 404
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 405
    .line 406
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mhandleNegotiationResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    .line 407
    .line 408
    .line 409
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 410
    .line 411
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmNeedSetupAfterTeardown(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 416
    .line 417
    .line 418
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 419
    .line 420
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingRenegotiation(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    .line 426
    .line 427
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 428
    .line 429
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 434
    .line 435
    .line 436
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 437
    .line 438
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fputerrorDetectionCntForCmdTimeout(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 443
    .line 444
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    if-nez v0, :cond_f

    .line 453
    .line 454
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    .line 456
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 457
    .line 458
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 459
    .line 460
    iget-object v2, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 461
    .line 462
    iget v3, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 463
    .line 464
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mteardownTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;I)I

    .line 465
    .line 466
    .line 467
    move-result v0

    .line 468
    if-nez v0, :cond_c

    .line 469
    .line 470
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 471
    .line 472
    const-string v0, "Teardown requested"

    .line 473
    .line 474
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 478
    .line 479
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingTeardownResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 480
    .line 481
    .line 482
    move-result-object p0

    .line 483
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 484
    .line 485
    .line 486
    return-void

    .line 487
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 488
    .line 489
    const-string v3, "Teardown request failed "

    .line 490
    .line 491
    invoke-static {v0, v3}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    .line 500
    .line 501
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 502
    .line 503
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mhandleTeardownFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;ILcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;)V

    .line 504
    .line 505
    .line 506
    return-void

    .line 507
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    .line 509
    if-eqz p1, :cond_d

    .line 510
    .line 511
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 512
    .line 513
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 514
    .line 515
    iput-object p1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 516
    .line 517
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 518
    .line 519
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 520
    .line 521
    .line 522
    move-result-object p1

    .line 523
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    if-nez p1, :cond_f

    .line 528
    .line 529
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 530
    .line 531
    iget-object v0, p1, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->mRequestedSession:Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;

    .line 532
    .line 533
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->ifaceName:Ljava/lang/String;

    .line 534
    .line 535
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->id:I

    .line 536
    .line 537
    iget v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->duration:I

    .line 538
    .line 539
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtSession;->interval:I

    .line 540
    .line 541
    invoke-static {p1, v2, v3, v5, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$msetupTwt(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;III)I

    .line 542
    .line 543
    .line 544
    move-result p1

    .line 545
    if-nez p1, :cond_e

    .line 546
    .line 547
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 548
    .line 549
    const-string v0, "Setup requested"

    .line 550
    .line 551
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 555
    .line 556
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$fgetmWaitingSetupResult(Lcom/samsung/android/server/wifi/SemWifiTwtControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 557
    .line 558
    .line 559
    move-result-object p0

    .line 560
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 561
    .line 562
    .line 563
    return-void

    .line 564
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 565
    .line 566
    const-string v2, "Setup request failed "

    .line 567
    .line 568
    invoke-static {p1, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mlogTwtControlHistory(Lcom/samsung/android/server/wifi/SemWifiTwtControl;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    .line 577
    .line 578
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtControl$TwtControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 579
    .line 580
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->-$$Nest$mhandleSetupFailures(Lcom/samsung/android/server/wifi/SemWifiTwtControl;I)V

    .line 581
    .line 582
    .line 583
    :cond_f
    :goto_3
    return-void

    .line 584
    nop

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
