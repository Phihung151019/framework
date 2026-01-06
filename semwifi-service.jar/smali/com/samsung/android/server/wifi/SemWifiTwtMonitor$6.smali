.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public updatedServiceStats([IIIF)V
    .locals 5

    .line 1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_7

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 14
    .line 15
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_7

    .line 24
    .line 25
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsMcfMultiControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 40
    .line 41
    invoke-static {p2, p4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmWakeRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlBeneficial(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const/4 p3, 0x2

    .line 51
    aget p4, p1, p3

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    const/4 v1, 0x1

    .line 55
    if-eq p4, v1, :cond_2

    .line 56
    .line 57
    if-ne p4, p3, :cond_1

    .line 58
    .line 59
    const/16 p4, 0x8

    .line 60
    .line 61
    aget p4, p1, p4

    .line 62
    .line 63
    if-ne p4, v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move p4, v0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    move p4, v1

    .line 69
    :goto_1
    invoke-virtual {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 73
    .line 74
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    const/4 p4, 0x7

    .line 83
    const-string v2, " "

    .line 84
    .line 85
    if-nez p2, :cond_4

    .line 86
    .line 87
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 88
    .line 89
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlBeneficial(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    if-eqz p2, :cond_4

    .line 98
    .line 99
    aget p2, p1, p3

    .line 100
    .line 101
    if-ne p2, v1, :cond_3

    .line 102
    .line 103
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 104
    .line 105
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    new-instance p4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v3, "RTA "

    .line 112
    .line 113
    invoke-direct {p4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v3, 0x6

    .line 117
    aget p1, p1, v3

    .line 118
    .line 119
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 126
    .line 127
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 132
    .line 133
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 145
    .line 146
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v4, "NRTA but TWT effective "

    .line 153
    .line 154
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    aget p1, p1, p4

    .line 158
    .line 159
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 172
    .line 173
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget p1, p1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 190
    .line 191
    if-nez p1, :cond_6

    .line 192
    .line 193
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 194
    .line 195
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    or-int/2addr p2, v1

    .line 205
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 209
    .line 210
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 218
    .line 219
    const/16 p2, 0xbb8

    .line 220
    .line 221
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_3

    .line 225
    .line 226
    :cond_4
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 227
    .line 228
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-eqz p2, :cond_6

    .line 237
    .line 238
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 239
    .line 240
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlBeneficial(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-nez p2, :cond_6

    .line 249
    .line 250
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 251
    .line 252
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v4, "NRTA/CG "

    .line 259
    .line 260
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    aget v4, p1, p4

    .line 264
    .line 265
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 272
    .line 273
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 278
    .line 279
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {p2, v2, p3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 290
    .line 291
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWaitingGrant(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    .line 297
    .line 298
    aget p2, p1, p3

    .line 299
    .line 300
    if-ne p2, p3, :cond_5

    .line 301
    .line 302
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 303
    .line 304
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->mIsAbnormalAP:Z

    .line 309
    .line 310
    if-eqz p2, :cond_5

    .line 311
    .line 312
    aget p1, p1, v1

    .line 313
    .line 314
    if-ne p1, v1, :cond_5

    .line 315
    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 317
    .line 318
    .line 319
    move-result-wide p1

    .line 320
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 321
    .line 322
    invoke-static {p3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 323
    .line 324
    .line 325
    move-result-object p3

    .line 326
    iget-wide v0, p3, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->abnormalApDetMilliSec:J

    .line 327
    .line 328
    sub-long/2addr p1, v0

    .line 329
    const-wide/16 v0, 0x1770

    .line 330
    .line 331
    cmp-long p1, p1, v0

    .line 332
    .line 333
    if-gtz p1, :cond_5

    .line 334
    .line 335
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 336
    .line 337
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetAbnormalApPatchStat()V

    .line 342
    .line 343
    .line 344
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 345
    .line 346
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtHandler(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-static {p1, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 355
    .line 356
    .line 357
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 358
    .line 359
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 364
    .line 365
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlBeneficial(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 366
    .line 367
    .line 368
    move-result-object p0

    .line 369
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 370
    .line 371
    .line 372
    move-result p0

    .line 373
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 374
    .line 375
    .line 376
    :cond_7
    :goto_4
    return-void
.end method
