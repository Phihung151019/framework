.class Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLnaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LnaControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

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
    .locals 12

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-wide/32 v1, 0x3b9aca00

    .line 4
    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    const/4 v6, 0x3

    .line 12
    const-wide/16 v7, 0x0

    .line 13
    .line 14
    if-eq v0, v5, :cond_4

    .line 15
    .line 16
    if-eq v0, v4, :cond_3

    .line 17
    .line 18
    if-eq v0, v6, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    if-eq v0, p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_5

    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    div-long/2addr v5, v1

    .line 42
    invoke-static {p1, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 55
    .line 56
    invoke-static {p1, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Landroid/net/wifi/WifiInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_2

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetwifiStandardBound(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-lt p1, v0, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mpolicyComplianceCheck(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_2

    .line 95
    .line 96
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 105
    .line 106
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_10

    .line 121
    .line 122
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast p1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 127
    .line 128
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_10

    .line 148
    .line 149
    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_5
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_10

    .line 175
    .line 176
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 177
    .line 178
    .line 179
    move-result-wide v6

    .line 180
    div-long/2addr v6, v1

    .line 181
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-eqz p1, :cond_6

    .line 188
    .line 189
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v0

    .line 195
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 196
    .line 197
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v8

    .line 201
    sub-long v8, v6, v8

    .line 202
    .line 203
    add-long/2addr v8, v0

    .line 204
    invoke-static {p1, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 205
    .line 206
    .line 207
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 208
    .line 209
    invoke-static {p1, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetscreenOn(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_d

    .line 223
    .line 224
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 225
    .line 226
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Landroid/net/wifi/WifiInfo;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_7

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    goto :goto_0

    .line 237
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 244
    .line 245
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlHighThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-ge p1, v0, :cond_b

    .line 250
    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 252
    .line 253
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-le p1, v0, :cond_b

    .line 258
    .line 259
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 260
    .line 261
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 262
    .line 263
    .line 264
    move-result v0

    .line 265
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 266
    .line 267
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetwifiStandardBound(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-lt v0, v1, :cond_b

    .line 272
    .line 273
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 274
    .line 275
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$sfgetMIN_SENSITIVITY_TABLE()[[I

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 284
    .line 285
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    sub-int/2addr v2, v5

    .line 290
    aget-object v1, v1, v2

    .line 291
    .line 292
    array-length v1, v1

    .line 293
    if-ge v0, v1, :cond_b

    .line 294
    .line 295
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 296
    .line 297
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 302
    .line 303
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    sub-int/2addr v0, v5

    .line 308
    aget p1, p1, v0

    .line 309
    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 311
    .line 312
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 317
    .line 318
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    sub-int/2addr v1, v5

    .line 323
    aget v0, v0, v1

    .line 324
    .line 325
    add-int/2addr p1, v0

    .line 326
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 327
    .line 328
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 333
    .line 334
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    sub-int/2addr v1, v5

    .line 339
    aget v0, v0, v1

    .line 340
    .line 341
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 342
    .line 343
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 348
    .line 349
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 354
    .line 355
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 360
    .line 361
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 362
    .line 363
    .line 364
    move-result v8

    .line 365
    if-nez v8, :cond_8

    .line 366
    .line 367
    move v8, v3

    .line 368
    goto :goto_1

    .line 369
    :cond_8
    move v8, v5

    .line 370
    :goto_1
    invoke-static {v1, v2, v6, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRssi(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 375
    .line 376
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    if-nez v2, :cond_9

    .line 381
    .line 382
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 383
    .line 384
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 385
    .line 386
    .line 387
    move-result v6

    .line 388
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 389
    .line 390
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 395
    .line 396
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaGain(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 397
    .line 398
    .line 399
    move-result v8

    .line 400
    sub-int/2addr v1, v8

    .line 401
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 402
    .line 403
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    invoke-static {v2, v6, v7, v1, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mfindExpectedMCS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 412
    .line 413
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 414
    .line 415
    .line 416
    move-result v6

    .line 417
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 418
    .line 419
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 420
    .line 421
    .line 422
    move-result v7

    .line 423
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 424
    .line 425
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 426
    .line 427
    .line 428
    move-result v8

    .line 429
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 430
    .line 431
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 432
    .line 433
    .line 434
    move-result v9

    .line 435
    invoke-static {v2, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    .line 436
    .line 437
    .line 438
    move-result-wide v6

    .line 439
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 440
    .line 441
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 446
    .line 447
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 452
    .line 453
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 454
    .line 455
    .line 456
    move-result v10

    .line 457
    invoke-static {v2, v8, v9, v10, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    .line 458
    .line 459
    .line 460
    move-result-wide v1

    .line 461
    goto :goto_2

    .line 462
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 463
    .line 464
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 469
    .line 470
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 471
    .line 472
    .line 473
    move-result v7

    .line 474
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 475
    .line 476
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaGain(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    add-int/2addr v1, v8

    .line 481
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 482
    .line 483
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 484
    .line 485
    .line 486
    move-result v8

    .line 487
    invoke-static {v2, v6, v7, v1, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mfindExpectedMCS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I

    .line 488
    .line 489
    .line 490
    move-result v1

    .line 491
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 492
    .line 493
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 494
    .line 495
    .line 496
    move-result v6

    .line 497
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 498
    .line 499
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 500
    .line 501
    .line 502
    move-result v7

    .line 503
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 504
    .line 505
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    invoke-static {v2, v6, v7, v8, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    .line 510
    .line 511
    .line 512
    move-result-wide v6

    .line 513
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 514
    .line 515
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 516
    .line 517
    .line 518
    move-result v2

    .line 519
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 520
    .line 521
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 526
    .line 527
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 532
    .line 533
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 534
    .line 535
    .line 536
    move-result v10

    .line 537
    invoke-static {v1, v2, v8, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    .line 538
    .line 539
    .line 540
    move-result-wide v1

    .line 541
    :goto_2
    int-to-double v8, v0

    .line 542
    int-to-double v10, p1

    .line 543
    div-double/2addr v8, v10

    .line 544
    div-double v10, v6, v1

    .line 545
    .line 546
    mul-double/2addr v10, v8

    .line 547
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 548
    .line 549
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxTimeRatioPercent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    .line 550
    .line 551
    .line 552
    move-result-wide v8

    .line 553
    long-to-double v8, v8

    .line 554
    mul-double/2addr v10, v8

    .line 555
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 556
    .line 557
    div-double/2addr v10, v8

    .line 558
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 559
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    .line 561
    .line 562
    const-string v8, "Met. "

    .line 563
    .line 564
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    const-string v6, " | "

    .line 571
    .line 572
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v1, " / "

    .line 579
    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 584
    .line 585
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxTimeRatioPercent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    .line 586
    .line 587
    .line 588
    move-result-wide v6

    .line 589
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 603
    .line 604
    .line 605
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 606
    .line 607
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 608
    .line 609
    .line 610
    move-result p1

    .line 611
    const-string v0, "Chng. mode: "

    .line 612
    .line 613
    if-eq p1, v5, :cond_a

    .line 614
    .line 615
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 616
    .line 617
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaEnableSensitivityRatio(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)D

    .line 618
    .line 619
    .line 620
    move-result-wide v1

    .line 621
    cmpg-double p1, v10, v1

    .line 622
    .line 623
    if-gez p1, :cond_a

    .line 624
    .line 625
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 626
    .line 627
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 628
    .line 629
    .line 630
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 631
    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    .line 633
    .line 634
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 638
    .line 639
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 644
    .line 645
    .line 646
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_3

    .line 654
    .line 655
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 656
    .line 657
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 658
    .line 659
    .line 660
    move-result p1

    .line 661
    if-eqz p1, :cond_e

    .line 662
    .line 663
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 664
    .line 665
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaEnableSensitivityRatio(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)D

    .line 666
    .line 667
    .line 668
    move-result-wide v1

    .line 669
    cmpl-double p1, v10, v1

    .line 670
    .line 671
    if-lez p1, :cond_e

    .line 672
    .line 673
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 674
    .line 675
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 676
    .line 677
    .line 678
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 679
    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    .line 681
    .line 682
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 686
    .line 687
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 699
    .line 700
    .line 701
    goto/16 :goto_3

    .line 702
    .line 703
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 704
    .line 705
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 706
    .line 707
    .line 708
    move-result v0

    .line 709
    if-gt p1, v0, :cond_c

    .line 710
    .line 711
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 712
    .line 713
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    if-eqz v0, :cond_c

    .line 718
    .line 719
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 720
    .line 721
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 722
    .line 723
    .line 724
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 725
    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    .line 727
    .line 728
    const-string v1, "RSSI lower bound / mode: "

    .line 729
    .line 730
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 731
    .line 732
    .line 733
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 734
    .line 735
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 743
    .line 744
    .line 745
    move-result-object v0

    .line 746
    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 747
    .line 748
    .line 749
    goto :goto_3

    .line 750
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 751
    .line 752
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlHighThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 753
    .line 754
    .line 755
    move-result v0

    .line 756
    if-lt p1, v0, :cond_e

    .line 757
    .line 758
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 759
    .line 760
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 761
    .line 762
    .line 763
    move-result p1

    .line 764
    if-eq p1, v5, :cond_e

    .line 765
    .line 766
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 767
    .line 768
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 769
    .line 770
    .line 771
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 772
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    .line 774
    .line 775
    const-string v1, "RSSI upper bound / mode: "

    .line 776
    .line 777
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 781
    .line 782
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 783
    .line 784
    .line 785
    move-result v1

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 794
    .line 795
    .line 796
    goto :goto_3

    .line 797
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 798
    .line 799
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 800
    .line 801
    .line 802
    move-result p1

    .line 803
    if-eq p1, v4, :cond_e

    .line 804
    .line 805
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 806
    .line 807
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 808
    .line 809
    .line 810
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 811
    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    .line 813
    .line 814
    const-string v1, "Scr. off / mode: "

    .line 815
    .line 816
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 817
    .line 818
    .line 819
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 820
    .line 821
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v0

    .line 832
    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 833
    .line 834
    .line 835
    :cond_e
    :goto_3
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 836
    .line 837
    .line 838
    move-result-object p1

    .line 839
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 840
    .line 841
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatusChanged(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 846
    .line 847
    .line 848
    move-result v0

    .line 849
    if-eqz v0, :cond_f

    .line 850
    .line 851
    const-wide/16 v0, 0x2710

    .line 852
    .line 853
    goto :goto_4

    .line 854
    :cond_f
    const-wide/16 v0, 0xbb8

    .line 855
    .line 856
    :goto_4
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 857
    .line 858
    .line 859
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 860
    .line 861
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatusChanged(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 862
    .line 863
    .line 864
    move-result-object p0

    .line 865
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 866
    .line 867
    .line 868
    :cond_10
    :goto_5
    return-void
.end method
