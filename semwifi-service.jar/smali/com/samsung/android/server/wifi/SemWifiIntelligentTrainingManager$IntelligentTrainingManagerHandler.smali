.class Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntelligentTrainingManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

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
    .locals 7

    .line 1
    const-string v0, "Tr. Cond. check error:"

    .line 2
    .line 3
    const-string v1, " (1)"

    .line 4
    .line 5
    const-string v2, " (2) / "

    .line 6
    .line 7
    const-string v3, "Tr. cond. check: "

    .line 8
    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 23
    .line 24
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmBatteryManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/BatteryManager;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eqz v4, :cond_7

    .line 31
    .line 32
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 33
    .line 34
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/PowerManager;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 50
    .line 51
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$misCharging(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v3, " / "

    .line 59
    .line 60
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$mgetBatteryLevel(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/PowerManager;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " / "

    .line 89
    .line 90
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/PowerManager;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_3

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Ljava/lang/String;

    .line 141
    .line 142
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;

    .line 153
    .line 154
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;->trainingStateCheck()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    .line 160
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v3, "Tr. state: "

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_3

    .line 183
    .line 184
    :catchall_0
    move-exception v0

    .line 185
    goto/16 :goto_4

    .line 186
    .line 187
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 188
    .line 189
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$misCharging(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Z

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    if-eqz v0, :cond_5

    .line 194
    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 196
    .line 197
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$mgetBatteryLevel(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    const/4 v1, 0x2

    .line 202
    if-ne v0, v1, :cond_5

    .line 203
    .line 204
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/PowerManager;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-gt v0, v6, :cond_5

    .line 215
    .line 216
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 217
    .line 218
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    if-eqz v1, :cond_a

    .line 235
    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    check-cast v1, Ljava/lang/String;

    .line 241
    .line 242
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 243
    .line 244
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;

    .line 253
    .line 254
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;->trainingTriggerQuery()Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_4

    .line 259
    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 261
    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v3, "Tr. query: "

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_3

    .line 283
    .line 284
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    if-eqz v1, :cond_a

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Ljava/lang/String;

    .line 309
    .line 310
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 311
    .line 312
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;

    .line 321
    .line 322
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;->testMode()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_6

    .line 327
    .line 328
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 329
    .line 330
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;

    .line 339
    .line 340
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$TrainingQuery;->trainingTriggerQuery()Z

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v3, "Tr. query (test mode): "

    .line 351
    .line 352
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 367
    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 374
    .line 375
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmBatteryManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/BatteryManager;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    if-nez v0, :cond_8

    .line 380
    .line 381
    move v0, v6

    .line 382
    goto :goto_1

    .line 383
    :cond_8
    move v0, v5

    .line 384
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    const-string v0, " / "

    .line 388
    .line 389
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 393
    .line 394
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Landroid/os/PowerManager;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    if-nez v0, :cond_9

    .line 399
    .line 400
    goto :goto_2

    .line 401
    :cond_9
    move v6, v5

    .line 402
    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 413
    .line 414
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Ljava/util/Map;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    if-nez v0, :cond_b

    .line 423
    .line 424
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 425
    .line 426
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmIntelligentTrainingManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 431
    .line 432
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$fgetmIntelligentTrainingManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-static {v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    const-wide/16 v2, 0x7530

    .line 441
    .line 442
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 443
    .line 444
    .line 445
    :cond_b
    monitor-exit p1

    .line 446
    return-void

    .line 447
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 449
    :catch_0
    move-exception p1

    .line 450
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager$IntelligentTrainingManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;

    .line 451
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v1, "Tr. cond. check err: "

    .line 455
    .line 456
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object p1

    .line 463
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentTrainingManager;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :goto_5
    return-void
.end method
