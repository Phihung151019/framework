.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mIsTurnOnScanMode:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmIsTurnOnScanMode()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " onCapabilityChanged:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "SemSoftApManager"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v2, "oldCountryCode:"

    .line 39
    .line 40
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, "\nold6GhzChannel:"

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, "\nold5GhzChannel:"

    .line 67
    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 72
    .line 73
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v3, "\nold2GhzChannel:"

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 86
    .line 87
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-static {v1, v3, v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 102
    .line 103
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v2, " old6GhzChannel:"

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 116
    .line 117
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, " old5GhzChannel:"

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 130
    .line 131
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v2, " old2GhzChannel:"

    .line 139
    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 144
    .line 145
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/net/wifi/SoftApCapability;->getCountryCode()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const/4 v2, 0x4

    .line 164
    invoke-virtual {p1, v2}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    array-length v2, v2

    .line 169
    const/4 v3, 0x2

    .line 170
    invoke-virtual {p1, v3}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    array-length v3, v3

    .line 175
    const/4 v4, 0x1

    .line 176
    invoke-virtual {p1, v4}, Landroid/net/wifi/SoftApCapability;->getSupportedChannelList(I)[I

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    array-length v4, v4

    .line 181
    new-instance v5, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v6, "newCountryCode:"

    .line 184
    .line 185
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v7, "\nnew6GhzChannel:"

    .line 192
    .line 193
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v7, "\nnew5GhzChannel:"

    .line 200
    .line 201
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v7, "\nnew2GhzChannel:"

    .line 208
    .line 209
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 223
    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v6, " new6GhzChannel:"

    .line 233
    .line 234
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v6, " new5GhzChannel:"

    .line 241
    .line 242
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v6, " new2GhzChannel:"

    .line 246
    .line 247
    const-string v8, " "

    .line 248
    .line 249
    invoke-static {v7, v3, v6, v4, v8}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    if-eqz v0, :cond_9

    .line 263
    .line 264
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 265
    .line 266
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/SoftApCapability;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    if-eqz v5, :cond_8

    .line 271
    .line 272
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 273
    .line 274
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    if-nez v5, :cond_1

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 283
    .line 284
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-nez v5, :cond_2

    .line 293
    .line 294
    const-string v5, "case2"

    .line 295
    .line 296
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 300
    .line 301
    const-string v5, "case 2"

    .line 302
    .line 303
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 307
    .line 308
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 314
    .line 315
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-nez v5, :cond_3

    .line 320
    .line 321
    if-eqz v2, :cond_3

    .line 322
    .line 323
    const-string v5, "case3"

    .line 324
    .line 325
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 329
    .line 330
    const-string v5, "case 3"

    .line 331
    .line 332
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 336
    .line 337
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 338
    .line 339
    .line 340
    goto/16 :goto_1

    .line 341
    .line 342
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 343
    .line 344
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-nez v5, :cond_4

    .line 349
    .line 350
    if-eqz v3, :cond_4

    .line 351
    .line 352
    const-string v5, "case4"

    .line 353
    .line 354
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 358
    .line 359
    const-string v5, "case 4"

    .line 360
    .line 361
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 365
    .line 366
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 372
    .line 373
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-nez v5, :cond_5

    .line 378
    .line 379
    if-eqz v4, :cond_5

    .line 380
    .line 381
    const-string v5, "case5"

    .line 382
    .line 383
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 387
    .line 388
    const-string v5, "case 5"

    .line 389
    .line 390
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 394
    .line 395
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 396
    .line 397
    .line 398
    goto :goto_1

    .line 399
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 400
    .line 401
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 402
    .line 403
    .line 404
    move-result v5

    .line 405
    if-lez v5, :cond_6

    .line 406
    .line 407
    if-nez v2, :cond_6

    .line 408
    .line 409
    const-string v5, "case6"

    .line 410
    .line 411
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 415
    .line 416
    const-string v5, "case 6"

    .line 417
    .line 418
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 422
    .line 423
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 424
    .line 425
    .line 426
    goto :goto_1

    .line 427
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 428
    .line 429
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 430
    .line 431
    .line 432
    move-result v5

    .line 433
    if-lez v5, :cond_7

    .line 434
    .line 435
    if-nez v3, :cond_7

    .line 436
    .line 437
    const-string v5, "case7"

    .line 438
    .line 439
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 443
    .line 444
    const-string v5, "case 7"

    .line 445
    .line 446
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 450
    .line 451
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 452
    .line 453
    .line 454
    goto :goto_1

    .line 455
    :cond_7
    const-string p1, "case8"

    .line 456
    .line 457
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 461
    .line 462
    const-string v1, "case 8"

    .line 463
    .line 464
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto :goto_2

    .line 468
    :cond_8
    :goto_0
    const-string v5, "case1"

    .line 469
    .line 470
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    .line 472
    .line 473
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 474
    .line 475
    const-string v5, "case 1"

    .line 476
    .line 477
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 481
    .line 482
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/net/wifi/SoftApCapability;)V

    .line 483
    .line 484
    .line 485
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 486
    .line 487
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputoldCountryCode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 491
    .line 492
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputold6GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 493
    .line 494
    .line 495
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 496
    .line 497
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputold5GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 498
    .line 499
    .line 500
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 501
    .line 502
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputold2GhzChannel(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 503
    .line 504
    .line 505
    :cond_9
    :goto_2
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmIsTurnOnScanMode()Z

    .line 506
    .line 507
    .line 508
    move-result p1

    .line 509
    if-eqz p1, :cond_a

    .line 510
    .line 511
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 512
    .line 513
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApCapability(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/SoftApCapability;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    if-eqz p1, :cond_a

    .line 518
    .line 519
    if-eqz v0, :cond_a

    .line 520
    .line 521
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfputmIsTurnOnScanMode()V

    .line 522
    .line 523
    .line 524
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 525
    .line 526
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetAOSPWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/WifiManager;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    const/4 v0, 0x0

    .line 531
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 532
    .line 533
    .line 534
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 535
    .line 536
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    const/16 p1, 0x65

    .line 541
    .line 542
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    .line 544
    .line 545
    :cond_a
    :goto_3
    return-void
.end method

.method public onConnectedClientsChanged(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/SoftApInfo;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "SemSoftApManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "onConnectedClientsChanged:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",:clients size,"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/net/wifi/WifiClient;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/net/wifi/WifiClient;->getMacAddress()Landroid/net/MacAddress;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 79
    .line 80
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public onInfoChanged(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/SoftApInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmWifiApFirstFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmWifiApSecondFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Reason = onInfoChanged callback"

    .line 20
    .line 21
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    move v4, v2

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const-string v6, "SemSoftApManager"

    .line 39
    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/net/wifi/SoftApInfo;

    .line 47
    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v8, " "

    .line 51
    .line 52
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    if-nez v4, :cond_0

    .line 70
    .line 71
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    invoke-static {v7, v9}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmWifiApFirstFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    .line 84
    .line 85
    .line 86
    move-result v9

    .line 87
    invoke-static {v7, v9}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmWifiApSecondFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 88
    .line 89
    .line 90
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v9, "mWifiApFirstFreq:"

    .line 93
    .line 94
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 98
    .line 99
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiApFirstFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v9, " mWifiApSecondFreq:"

    .line 107
    .line 108
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 112
    .line 113
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiApSecondFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v9, " i:"

    .line 121
    .line 122
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetMHSDBG()Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_1

    .line 140
    .line 141
    new-instance v7, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v9, "onInfoChanged:"

    .line 144
    .line 145
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_1
    invoke-virtual {v5}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    add-int/lit8 v4, v4, 0x1

    .line 163
    .line 164
    const-string v7, ",, SoftApInfo ======>"

    .line 165
    .line 166
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v7, ",, Interface ="

    .line 173
    .line 174
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v7, ":"

    .line 185
    .line 186
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 190
    .line 191
    invoke-virtual {v7, v6}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isInterfaceUp(Ljava/lang/String;)Z

    .line 192
    .line 193
    .line 194
    move-result v7

    .line 195
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v7, ",, More Info = "

    .line 199
    .line 200
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 207
    .line 208
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetdual_softap_interface(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/Set;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 216
    .line 217
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApInfoMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    invoke-virtual {v7, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Landroid/net/wifi/SoftApInfo;->getFrequency()I

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    goto/16 :goto_0

    .line 235
    .line 236
    :cond_2
    if-lez v4, :cond_3

    .line 237
    .line 238
    new-instance p1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v4, "Event =Hotspot channel switch,, Freq ="

    .line 241
    .line 242
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v3, "#tag_wifi_ap_lab_channel_switch_event#"

    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    .line 260
    .line 261
    const-string p1, "#tag_wifi_ap_lab_hotspot_connection_event#"

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiApFirstFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    const/16 v1, 0x170c

    .line 277
    .line 278
    const/16 v3, 0x1388

    .line 279
    .line 280
    if-le p1, v3, :cond_4

    .line 281
    .line 282
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 283
    .line 284
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiApFirstFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    if-lt p1, v1, :cond_5

    .line 289
    .line 290
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiApSecondFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-le p1, v3, :cond_6

    .line 297
    .line 298
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 299
    .line 300
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiApSecondFreq(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 301
    .line 302
    .line 303
    move-result p1

    .line 304
    if-ge p1, v1, :cond_6

    .line 305
    .line 306
    :cond_5
    const/4 v2, 0x1

    .line 307
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string v1, "mWifiAp5GhzBackOffState:"

    .line 310
    .line 311
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmWifiAp5GhzBackOffState()Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string v1, " is5GhzEnabled:"

    .line 322
    .line 323
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p1

    .line 333
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmWifiAp5GhzBackOffState()Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-eq p1, v2, :cond_7

    .line 341
    .line 342
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfputmWifiAp5GhzBackOffState(Z)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 346
    .line 347
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mhandleModemPowerBackoff5G(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 348
    .line 349
    .line 350
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmWifiApFreqInfo(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 360
    .line 361
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mmakeChannelHistoryState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 362
    .line 363
    .line 364
    return-void
.end method

.method public onStateChanged(II)V
    .locals 4

    .line 1
    const-string p2, "SemSoftApManager"

    .line 2
    .line 3
    const-string v0, "onStateChanged:"

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 p2, 0xd

    .line 9
    .line 10
    const/16 v0, 0x66

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-ne p1, p2, :cond_2

    .line 14
    .line 15
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isSKT()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const-string p2, "SemSoftApManager"

    .line 24
    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "SKT launch DUN 10 timeout + isDunCheckRequired :"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 33
    .line 34
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-static {v2, v3, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const-wide/16 v2, 0x2710

    .line 48
    .line 49
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->isLGT()Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    const-string p2, "SemSoftApManager"

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "LGT launch DUN 20 timeout + isDunCheckRequired :"

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-static {v2, v3, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 80
    .line 81
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    const-wide/16 v2, 0x4e20

    .line 86
    .line 87
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 92
    .line 93
    invoke-static {p2, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 94
    .line 95
    .line 96
    const-string p2, "SemSoftApManager"

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v3, "wifiap enabled set isDunCheckRequired :"

    .line 101
    .line 102
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 106
    .line 107
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-static {v2, v3, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_0
    const/16 p2, 0xc

    .line 115
    .line 116
    if-ne p1, p2, :cond_3

    .line 117
    .line 118
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 119
    .line 120
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->isRegisteredHostapdAidl()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-nez p2, :cond_3

    .line 129
    .line 130
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 131
    .line 132
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->setUpHostapdAidl()I

    .line 137
    .line 138
    .line 139
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 140
    .line 141
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 142
    .line 143
    .line 144
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 145
    .line 146
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    const-string v3, "airplane_mode_on"

    .line 155
    .line 156
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    const/4 v3, 0x1

    .line 161
    if-eqz v2, :cond_4

    .line 162
    .line 163
    move v1, v3

    .line 164
    :cond_4
    invoke-static {p2, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 165
    .line 166
    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v1, "isAirplaneMode:"

    .line 170
    .line 171
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 175
    .line 176
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, " mSoftApState "

    .line 184
    .line 185
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 189
    .line 190
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v1, " csc_op "

    .line 198
    .line 199
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "SemSoftApManager"

    .line 207
    .line 208
    invoke-static {p2, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 212
    .line 213
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    if-eqz p2, :cond_6

    .line 218
    .line 219
    const-string p2, "VZW"

    .line 220
    .line 221
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    if-nez p2, :cond_5

    .line 230
    .line 231
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 232
    .line 233
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isHotspotDongleProduct()Z

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    if-eqz p2, :cond_6

    .line 242
    .line 243
    :cond_5
    const/16 p2, 0xa

    .line 244
    .line 245
    if-ne p1, p2, :cond_6

    .line 246
    .line 247
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 248
    .line 249
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mpersistWifiApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 250
    .line 251
    .line 252
    :cond_6
    const/16 p2, 0xb

    .line 253
    .line 254
    if-eq p1, p2, :cond_8

    .line 255
    .line 256
    const/16 p2, 0xe

    .line 257
    .line 258
    if-ne p1, p2, :cond_7

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :cond_7
    return-void

    .line 262
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 263
    .line 264
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetdual_softap_interface(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/Set;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 269
    .line 270
    .line 271
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 272
    .line 273
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mclearGuestClientDB(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 274
    .line 275
    .line 276
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 277
    .line 278
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 286
    .line 287
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 291
    .line 292
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 296
    .line 297
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->stopHostapdAidl()V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 310
    .line 311
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    monitor-enter p1

    .line 316
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 317
    .line 318
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAospClientsHashMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 323
    .line 324
    .line 325
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 326
    .line 327
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApInfoMap(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 332
    .line 333
    .line 334
    monitor-exit p1

    .line 335
    return-void

    .line 336
    :catchall_0
    move-exception p0

    .line 337
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    throw p0
.end method
