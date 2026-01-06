.class Lcom/samsung/android/hqm/b;
.super Landroid/content/BroadcastReceiver;
.source "HqmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HqmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/hqm/HqmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HqmManagerService;)V
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
    iput-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

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
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "receive the ACTION_BOOT_COMPLETED Intent"

    .line 18
    .line 19
    invoke-static {p1, p2}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_8

    .line 29
    .line 30
    sget-boolean p1, Ld/a;->i:Z

    .line 31
    .line 32
    if-eqz p1, :cond_8

    .line 33
    .line 34
    sget p1, La/h;->h:I

    .line 35
    .line 36
    const/4 p2, 0x2

    .line 37
    if-ne p1, p2, :cond_0

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 40
    .line 41
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, La/g;->I()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->f(Lcom/samsung/android/hqm/HqmManagerService;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 55
    .line 56
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, La/g;->H()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const-string v0, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const-wide/16 v1, 0x1388

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    sget-boolean p1, Lc/k;->C:Z

    .line 75
    .line 76
    const/4 p2, 0x1

    .line 77
    if-ne p1, p2, :cond_8

    .line 78
    .line 79
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string v0, "receive the HQM_STATUS_REQ Intent"

    .line 84
    .line 85
    invoke-static {p1, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_8

    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, La/g;->j0()V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->j(Lcom/samsung/android/hqm/HqmManagerService;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput p2, p1, Landroid/os/Message;->what:I

    .line 121
    .line 122
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 123
    .line 124
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_2
    const-string v0, "com.sec.android.intent.action.ACT_HQM_UPDATE_REQ"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    sget p1, Lc/k;->G:I

    .line 141
    .line 142
    sget p2, Lc/b;->F:I

    .line 143
    .line 144
    if-eq p1, p2, :cond_3

    .line 145
    .line 146
    sget p1, Lc/k;->G:I

    .line 147
    .line 148
    sget p2, Lc/b;->I:I

    .line 149
    .line 150
    if-ne p1, p2, :cond_8

    .line 151
    .line 152
    :cond_3
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const-string p2, "receive the ACT_HQM_REQ Intent"

    .line 157
    .line 158
    invoke-static {p1, p2}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->a(Lcom/samsung/android/hqm/HqmManagerService;)La/g;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const-wide/16 v3, -0x1

    .line 176
    .line 177
    invoke-virtual {p1, v3, v4}, La/g;->i0(J)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->h(Lcom/samsung/android/hqm/HqmManagerService;)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 186
    .line 187
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const/4 p2, 0x4

    .line 196
    iput p2, p1, Landroid/os/Message;->what:I

    .line 197
    .line 198
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 199
    .line 200
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_4
    const-string v0, "com.sec.android.intent.action.ACT_HQM_TEST_DIVISION"

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    const-wide/16 v1, 0x64

    .line 215
    .line 216
    if-eqz v0, :cond_6

    .line 217
    .line 218
    sget p1, Lc/k;->G:I

    .line 219
    .line 220
    sget v0, Lc/b;->F:I

    .line 221
    .line 222
    if-eq p1, v0, :cond_5

    .line 223
    .line 224
    sget p1, Lc/k;->G:I

    .line 225
    .line 226
    sget v0, Lc/b;->I:I

    .line 227
    .line 228
    if-ne p1, v0, :cond_8

    .line 229
    .line 230
    :cond_5
    const-string p1, "TESTDIVISION"

    .line 231
    .line 232
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p2

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v3, "receive the ACT_HQM_TESTDIVISION Intent "

    .line 246
    .line 247
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {p2, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    if-eqz p1, :cond_8

    .line 261
    .line 262
    sput-object p1, Lc/k;->O:Ljava/lang/String;

    .line 263
    .line 264
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 265
    .line 266
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    const/4 p2, 0x3

    .line 275
    iput p2, p1, Landroid/os/Message;->what:I

    .line 276
    .line 277
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 278
    .line 279
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_6
    const-string v0, "com.samsung.android.dqagent.ACTION_DQA_EXTRA_INFO"

    .line 288
    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    if-eqz v0, :cond_7

    .line 294
    .line 295
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    const-string v0, "receive the DQA_EXTRA_INFO Intent "

    .line 300
    .line 301
    invoke-static {p1, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 305
    .line 306
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    const/4 v0, 0x5

    .line 315
    iput v0, p1, Landroid/os/Message;->what:I

    .line 316
    .line 317
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    .line 319
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 320
    .line 321
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_7
    const-string v0, "com.sec.intent.action.SYSSCOPESTATUS"

    .line 330
    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_8

    .line 336
    .line 337
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->k()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    const-string v0, "receive the ACTION_SYSSCOPE_STATUS Intent "

    .line 342
    .line 343
    invoke-static {p1, v0}, La/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 347
    .line 348
    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    const/4 v0, 0x7

    .line 357
    iput v0, p1, Landroid/os/Message;->what:I

    .line 358
    .line 359
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 360
    .line 361
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    .line 362
    .line 363
    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    .line 369
    .line 370
    :cond_8
    return-void
.end method
