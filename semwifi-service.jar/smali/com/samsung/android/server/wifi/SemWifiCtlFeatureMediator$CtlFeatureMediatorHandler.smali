.class Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CtlFeatureMediatorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

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
    .locals 51

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const-wide/16 v6, 0x0

    .line 11
    .line 12
    const/4 v8, 0x2

    .line 13
    const/4 v9, 0x1

    .line 14
    const/4 v10, 0x0

    .line 15
    if-eq v2, v9, :cond_6

    .line 16
    .line 17
    const/16 v1, 0xbb8

    .line 18
    .line 19
    if-eq v2, v8, :cond_4

    .line 20
    .line 21
    const/4 v5, 0x3

    .line 22
    if-eq v2, v5, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 36
    .line 37
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v2, v5, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 71
    .line 72
    .line 73
    move-result-wide v9

    .line 74
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 77
    .line 78
    .line 79
    move-result-wide v11

    .line 80
    add-double/2addr v9, v11

    .line 81
    invoke-static {v1, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmAccumulatedConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 91
    .line 92
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 93
    .line 94
    .line 95
    move-result-wide v11

    .line 96
    add-double/2addr v9, v11

    .line 97
    invoke-static {v1, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmAccumulatedCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    add-double/2addr v9, v11

    .line 113
    invoke-static {v1, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmAccumulatedMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 114
    .line 115
    .line 116
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 117
    .line 118
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 119
    .line 120
    .line 121
    move-result-wide v9

    .line 122
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 125
    .line 126
    .line 127
    move-result-wide v11

    .line 128
    add-double/2addr v9, v11

    .line 129
    invoke-static {v1, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmAccumulatedLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 130
    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v2, ""

    .line 135
    .line 136
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 142
    .line 143
    .line 144
    move-result-wide v9

    .line 145
    cmpl-double v2, v9, v6

    .line 146
    .line 147
    if-nez v2, :cond_1

    .line 148
    .line 149
    const-string v2, "0.0% / "

    .line 150
    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_1
    const-string v2, "%.2f"

    .line 156
    .line 157
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 158
    .line 159
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 160
    .line 161
    .line 162
    move-result-wide v9

    .line 163
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 164
    .line 165
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 166
    .line 167
    .line 168
    move-result-wide v11

    .line 169
    sub-double/2addr v9, v11

    .line 170
    mul-double/2addr v9, v3

    .line 171
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 172
    .line 173
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 174
    .line 175
    .line 176
    move-result-wide v11

    .line 177
    div-double/2addr v9, v11

    .line 178
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    const-string v5, "% / "

    .line 191
    .line 192
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    :goto_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 200
    .line 201
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 202
    .line 203
    .line 204
    move-result-wide v9

    .line 205
    cmpl-double v2, v9, v6

    .line 206
    .line 207
    if-nez v2, :cond_2

    .line 208
    .line 209
    const-string v2, "0.0%"

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_2
    const-string v2, "%.2f"

    .line 216
    .line 217
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 218
    .line 219
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 220
    .line 221
    .line 222
    move-result-wide v5

    .line 223
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 224
    .line 225
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 226
    .line 227
    .line 228
    move-result-wide v9

    .line 229
    sub-double/2addr v5, v9

    .line 230
    mul-double/2addr v5, v3

    .line 231
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 232
    .line 233
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmAccumulatedMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 234
    .line 235
    .line 236
    move-result-wide v3

    .line 237
    div-double/2addr v5, v3

    .line 238
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-string v3, "%"

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    :goto_1
    const-string v2, "SemWifiCtlFeatureMediator"

    .line 260
    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->addHistory(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 278
    .line 279
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrenewConnection(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_3

    .line 288
    .line 289
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 290
    .line 291
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-nez v1, :cond_3

    .line 300
    .line 301
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 302
    .line 303
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCtlFeatureMediatorHandler(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 312
    .line 313
    .line 314
    :cond_3
    :goto_2
    return-void

    .line 315
    :cond_4
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 319
    .line 320
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 328
    .line 329
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmFirstStatUpdate(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    .line 335
    .line 336
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 337
    .line 338
    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 339
    .line 340
    .line 341
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 342
    .line 343
    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 344
    .line 345
    .line 346
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 347
    .line 348
    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 352
    .line 353
    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 354
    .line 355
    .line 356
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 357
    .line 358
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;[D)V

    .line 359
    .line 360
    .line 361
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 362
    .line 363
    const-wide/16 v3, 0x0

    .line 364
    .line 365
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 366
    .line 367
    .line 368
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 369
    .line 370
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 371
    .line 372
    .line 373
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 374
    .line 375
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 380
    .line 381
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 386
    .line 387
    .line 388
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 389
    .line 390
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 395
    .line 396
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 401
    .line 402
    .line 403
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 404
    .line 405
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrenewConnection(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 410
    .line 411
    .line 412
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 413
    .line 414
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getLinkSpeedInDecisionTree()I

    .line 419
    .line 420
    .line 421
    move-result v2

    .line 422
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;I)V

    .line 423
    .line 424
    .line 425
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 426
    .line 427
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)I

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    if-gez v1, :cond_5

    .line 432
    .line 433
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 434
    .line 435
    const/16 v2, 0x6c

    .line 436
    .line 437
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;I)V

    .line 438
    .line 439
    .line 440
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 441
    .line 442
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastQosLatencyArrayMs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/ArrayList;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 447
    .line 448
    .line 449
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 450
    .line 451
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastQosLatencyUpdateTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_6
    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    .line 457
    .line 458
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 459
    .line 460
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    monitor-enter v2

    .line 465
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 468
    .line 469
    iget-wide v11, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 470
    .line 471
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 472
    .line 473
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 474
    .line 475
    .line 476
    move-result-wide v13

    .line 477
    sub-long/2addr v11, v13

    .line 478
    iget-wide v13, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 479
    .line 480
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 481
    .line 482
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 483
    .line 484
    .line 485
    move-result-wide v15

    .line 486
    sub-long/2addr v13, v15

    .line 487
    add-long/2addr v13, v11

    .line 488
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 489
    .line 490
    .line 491
    move-result-wide v11

    .line 492
    const-wide/16 v15, 0x1f40

    .line 493
    .line 494
    mul-long/2addr v13, v15

    .line 495
    long-to-double v13, v13

    .line 496
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 497
    .line 498
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 499
    .line 500
    .line 501
    move-result-wide v15

    .line 502
    move-wide/from16 v17, v3

    .line 503
    .line 504
    sub-long v3, v11, v15

    .line 505
    .line 506
    long-to-double v3, v3

    .line 507
    div-double/2addr v13, v3

    .line 508
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 509
    .line 510
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 511
    .line 512
    .line 513
    move-result-wide v3

    .line 514
    sub-long v3, v11, v3

    .line 515
    .line 516
    long-to-double v3, v3

    .line 517
    const-wide v15, 0x41cdcd6500000000L    # 1.0E9

    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    div-double/2addr v3, v15

    .line 523
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 524
    .line 525
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 526
    .line 527
    .line 528
    move-result-wide v20

    .line 529
    move-wide/from16 v22, v6

    .line 530
    .line 531
    add-double v6, v20, v3

    .line 532
    .line 533
    invoke-static {v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 534
    .line 535
    .line 536
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 537
    .line 538
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 539
    .line 540
    .line 541
    move-result-wide v5

    .line 542
    sub-long v5, v11, v5

    .line 543
    .line 544
    const-wide v20, 0x2cb417800L

    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    cmp-long v5, v5, v20

    .line 550
    .line 551
    if-lez v5, :cond_7

    .line 552
    .line 553
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 554
    .line 555
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastQosLatencyArrayMs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/ArrayList;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 560
    .line 561
    .line 562
    goto :goto_3

    .line 563
    :catchall_0
    move-exception v0

    .line 564
    goto/16 :goto_20

    .line 565
    .line 566
    :cond_7
    :goto_3
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 567
    .line 568
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 569
    .line 570
    .line 571
    move-result-object v24

    .line 572
    const-wide/16 v25, 0x2710

    .line 573
    .line 574
    const/16 v27, 0x2

    .line 575
    .line 576
    const-wide/16 v28, 0xdac

    .line 577
    .line 578
    const/16 v30, 0x1

    .line 579
    .line 580
    invoke-virtual/range {v24 .. v30}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(JIJI)[D

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 585
    .line 586
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 587
    .line 588
    .line 589
    move-result-wide v6

    .line 590
    move-wide/from16 v20, v15

    .line 591
    .line 592
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 593
    .line 594
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 595
    .line 596
    .line 597
    move-result-object v15

    .line 598
    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getLinkStateUpdateNumber()J

    .line 599
    .line 600
    .line 601
    move-result-wide v15

    .line 602
    cmp-long v6, v6, v15

    .line 603
    .line 604
    if-eqz v6, :cond_9

    .line 605
    .line 606
    if-eqz v5, :cond_9

    .line 607
    .line 608
    aget-wide v6, v5, v9

    .line 609
    .line 610
    cmpl-double v6, v6, v22

    .line 611
    .line 612
    if-lez v6, :cond_9

    .line 613
    .line 614
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 615
    .line 616
    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    .line 617
    .line 618
    .line 619
    move-result-object v5

    .line 620
    check-cast v5, [D

    .line 621
    .line 622
    invoke-static {v6, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;[D)V

    .line 623
    .line 624
    .line 625
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 626
    .line 627
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastQosLatencyArrayMs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/ArrayList;

    .line 628
    .line 629
    .line 630
    move-result-object v5

    .line 631
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 632
    .line 633
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 634
    .line 635
    .line 636
    move-result-object v22

    .line 637
    const-wide/16 v23, 0x3e8

    .line 638
    .line 639
    const/16 v25, 0x2

    .line 640
    .line 641
    const-wide/16 v26, 0xdac

    .line 642
    .line 643
    const/16 v28, 0x1

    .line 644
    .line 645
    invoke-virtual/range {v22 .. v28}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(JIJI)[D

    .line 646
    .line 647
    .line 648
    move-result-object v6

    .line 649
    aget-wide v6, v6, v10

    .line 650
    .line 651
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 652
    .line 653
    .line 654
    move-result-object v6

    .line 655
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 659
    .line 660
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastQosLatencyArrayMs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/ArrayList;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-le v5, v8, :cond_8

    .line 669
    .line 670
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 671
    .line 672
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastQosLatencyArrayMs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/ArrayList;

    .line 673
    .line 674
    .line 675
    move-result-object v5

    .line 676
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 677
    .line 678
    .line 679
    :cond_8
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 680
    .line 681
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 682
    .line 683
    .line 684
    move-result-object v6

    .line 685
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getLinkStateUpdateNumber()J

    .line 686
    .line 687
    .line 688
    move-result-wide v6

    .line 689
    invoke-static {v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 690
    .line 691
    .line 692
    move v5, v9

    .line 693
    goto :goto_4

    .line 694
    :cond_9
    move v5, v10

    .line 695
    :goto_4
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 696
    .line 697
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)[D

    .line 698
    .line 699
    .line 700
    move-result-object v6

    .line 701
    if-eqz v6, :cond_43

    .line 702
    .line 703
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 704
    .line 705
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 706
    .line 707
    .line 708
    move-result-object v6

    .line 709
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getLinkSpeed()I

    .line 710
    .line 711
    .line 712
    move-result v6

    .line 713
    int-to-double v6, v6

    .line 714
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 715
    .line 716
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 717
    .line 718
    .line 719
    move-result-wide v22

    .line 720
    const-wide/16 v24, 0x1

    .line 721
    .line 722
    move/from16 v16, v8

    .line 723
    .line 724
    move/from16 v26, v9

    .line 725
    .line 726
    add-long v8, v22, v24

    .line 727
    .line 728
    invoke-static {v15, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 729
    .line 730
    .line 731
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 732
    .line 733
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)[D

    .line 734
    .line 735
    .line 736
    move-result-object v8

    .line 737
    aget-wide v8, v8, v26

    .line 738
    .line 739
    div-double v8, v13, v8

    .line 740
    .line 741
    new-instance v15, Ljava/lang/StringBuilder;

    .line 742
    .line 743
    const-string v10, "Trf ratio: "

    .line 744
    .line 745
    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 746
    .line 747
    .line 748
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 749
    .line 750
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmQueryMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 751
    .line 752
    .line 753
    move-result-object v10

    .line 754
    move-wide/from16 v27, v3

    .line 755
    .line 756
    const-string v3, "TWT/S-PM"

    .line 757
    .line 758
    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    move-result v3

    .line 762
    if-eqz v3, :cond_c

    .line 763
    .line 764
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 765
    .line 766
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmQueryMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    const-string v10, "TWT/S-PM"

    .line 771
    .line 772
    invoke-interface {v3, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    .line 774
    .line 775
    move-result-object v3

    .line 776
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 777
    .line 778
    invoke-interface {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;->queryPerformance()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 779
    .line 780
    .line 781
    move-result-object v3

    .line 782
    iget-boolean v10, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 783
    .line 784
    if-eqz v10, :cond_a

    .line 785
    .line 786
    iget v10, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 787
    .line 788
    move/from16 p1, v5

    .line 789
    .line 790
    const/high16 v23, 0x3f800000    # 1.0f

    .line 791
    .line 792
    float-to-double v4, v10

    .line 793
    div-double/2addr v8, v4

    .line 794
    div-double/2addr v6, v4

    .line 795
    goto :goto_5

    .line 796
    :cond_a
    move/from16 p1, v5

    .line 797
    .line 798
    const/high16 v23, 0x3f800000    # 1.0f

    .line 799
    .line 800
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .line 804
    .line 805
    const-string v5, "%.1f"

    .line 806
    .line 807
    mul-double v17, v17, v8

    .line 808
    .line 809
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 810
    .line 811
    .line 812
    move-result-object v10

    .line 813
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v10

    .line 817
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    const-string v5, "% ("

    .line 825
    .line 826
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    const-string v5, "%.2f"

    .line 830
    .line 831
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 832
    .line 833
    .line 834
    move-result-object v10

    .line 835
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object v10

    .line 839
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v5

    .line 843
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string v5, " / "

    .line 847
    .line 848
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    const-string v5, "%.2f"

    .line 852
    .line 853
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 854
    .line 855
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)[D

    .line 856
    .line 857
    .line 858
    move-result-object v10

    .line 859
    aget-wide v13, v10, v26

    .line 860
    .line 861
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 862
    .line 863
    .line 864
    move-result-object v10

    .line 865
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    move-result-object v10

    .line 869
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 870
    .line 871
    .line 872
    move-result-object v5

    .line 873
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    const-string v5, ") (TWT/S-PM: "

    .line 877
    .line 878
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    iget-boolean v5, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 882
    .line 883
    if-eqz v5, :cond_b

    .line 884
    .line 885
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 886
    .line 887
    goto :goto_6

    .line 888
    :cond_b
    move/from16 v3, v23

    .line 889
    .line 890
    :goto_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string v3, ") "

    .line 894
    .line 895
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    goto :goto_7

    .line 906
    :cond_c
    move/from16 p1, v5

    .line 907
    .line 908
    const/high16 v23, 0x3f800000    # 1.0f

    .line 909
    .line 910
    new-instance v3, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string v4, "%.1f"

    .line 916
    .line 917
    mul-double v17, v17, v8

    .line 918
    .line 919
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 920
    .line 921
    .line 922
    move-result-object v5

    .line 923
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 924
    .line 925
    .line 926
    move-result-object v5

    .line 927
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v4

    .line 931
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    const-string v4, "% ("

    .line 935
    .line 936
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    const-string v4, "%.2f"

    .line 940
    .line 941
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 942
    .line 943
    .line 944
    move-result-object v5

    .line 945
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v5

    .line 949
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v4

    .line 953
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    const-string v4, " / "

    .line 957
    .line 958
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    const-string v4, "%.2f"

    .line 962
    .line 963
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 964
    .line 965
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)[D

    .line 966
    .line 967
    .line 968
    move-result-object v5

    .line 969
    aget-wide v13, v5, v26

    .line 970
    .line 971
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 972
    .line 973
    .line 974
    move-result-object v5

    .line 975
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 976
    .line 977
    .line 978
    move-result-object v5

    .line 979
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v4

    .line 983
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    const-string v4, ") "

    .line 987
    .line 988
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .line 990
    .line 991
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v3

    .line 995
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    :goto_7
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 999
    .line 1000
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v3

    .line 1004
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getMloDeterminedByDecisionTree()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v3

    .line 1008
    if-eqz v3, :cond_d

    .line 1009
    .line 1010
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1011
    .line 1012
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetgameServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v3

    .line 1016
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1017
    .line 1018
    .line 1019
    move-result v3

    .line 1020
    if-nez v3, :cond_d

    .line 1021
    .line 1022
    move/from16 v3, v26

    .line 1023
    .line 1024
    goto :goto_8

    .line 1025
    :cond_d
    const/4 v3, 0x0

    .line 1026
    :goto_8
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    cmpl-double v10, v8, v4

    .line 1032
    .line 1033
    const-wide v13, 0x3fd999999999999aL    # 0.4

    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    const/16 v17, 0x0

    .line 1039
    .line 1040
    if-gtz v10, :cond_11

    .line 1041
    .line 1042
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1043
    .line 1044
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v10

    .line 1048
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1049
    .line 1050
    .line 1051
    move-result v10

    .line 1052
    if-eqz v10, :cond_e

    .line 1053
    .line 1054
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1055
    .line 1056
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)I

    .line 1057
    .line 1058
    .line 1059
    move-result v10

    .line 1060
    move-wide/from16 v29, v4

    .line 1061
    .line 1062
    int-to-double v4, v10

    .line 1063
    cmpg-double v4, v6, v4

    .line 1064
    .line 1065
    if-gez v4, :cond_f

    .line 1066
    .line 1067
    goto :goto_a

    .line 1068
    :cond_e
    move-wide/from16 v29, v4

    .line 1069
    .line 1070
    :cond_f
    cmpg-double v4, v8, v13

    .line 1071
    .line 1072
    if-gez v4, :cond_10

    .line 1073
    .line 1074
    const-string v4, "v"

    .line 1075
    .line 1076
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    .line 1079
    move/from16 v10, v17

    .line 1080
    .line 1081
    move/from16 v4, v23

    .line 1082
    .line 1083
    :goto_9
    move/from16 v5, v26

    .line 1084
    .line 1085
    goto :goto_b

    .line 1086
    :cond_10
    move/from16 v4, v17

    .line 1087
    .line 1088
    move v10, v4

    .line 1089
    goto :goto_9

    .line 1090
    :cond_11
    move-wide/from16 v29, v4

    .line 1091
    .line 1092
    :goto_a
    const-string v4, "^"

    .line 1093
    .line 1094
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    const/high16 v4, 0x42c80000    # 100.0f

    .line 1098
    .line 1099
    move/from16 v10, v23

    .line 1100
    .line 1101
    const/4 v5, 0x0

    .line 1102
    :goto_b
    if-nez v5, :cond_12

    .line 1103
    .line 1104
    move-wide/from16 v31, v13

    .line 1105
    .line 1106
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1107
    .line 1108
    invoke-static {v13, v11, v12}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastLinkTpQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 1109
    .line 1110
    .line 1111
    goto :goto_c

    .line 1112
    :cond_12
    move-wide/from16 v31, v13

    .line 1113
    .line 1114
    :goto_c
    if-nez v3, :cond_13

    .line 1115
    .line 1116
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1117
    .line 1118
    invoke-static {v13, v11, v12}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastLinkLtQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 1119
    .line 1120
    .line 1121
    :cond_13
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1122
    .line 1123
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$mcheckLastQosLatency(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result v13

    .line 1127
    const-string v14, " ("

    .line 1128
    .line 1129
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    iget-object v14, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1133
    .line 1134
    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmPerformanceDegraded(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v14

    .line 1138
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1139
    .line 1140
    .line 1141
    move-result v14

    .line 1142
    if-eqz v14, :cond_14

    .line 1143
    .line 1144
    const-string v14, "APE"

    .line 1145
    .line 1146
    goto :goto_d

    .line 1147
    :cond_14
    const-string v14, ""

    .line 1148
    .line 1149
    :goto_d
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    .line 1152
    iget-object v14, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1153
    .line 1154
    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmPerformanceDegraded(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v14

    .line 1158
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1159
    .line 1160
    .line 1161
    move-result v14

    .line 1162
    if-eqz v14, :cond_15

    .line 1163
    .line 1164
    const-string v14, " / "

    .line 1165
    .line 1166
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    .line 1169
    :cond_15
    if-eqz v13, :cond_16

    .line 1170
    .line 1171
    const-string v14, ""

    .line 1172
    .line 1173
    goto :goto_e

    .line 1174
    :cond_16
    const-string v14, " PL"

    .line 1175
    .line 1176
    :goto_e
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    .line 1179
    if-nez v13, :cond_17

    .line 1180
    .line 1181
    const-string v14, " / "

    .line 1182
    .line 1183
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    .line 1186
    :cond_17
    iget-object v14, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1187
    .line 1188
    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v14

    .line 1192
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1193
    .line 1194
    .line 1195
    move-result v14

    .line 1196
    if-eqz v14, :cond_18

    .line 1197
    .line 1198
    const-string v14, " R"

    .line 1199
    .line 1200
    goto :goto_f

    .line 1201
    :cond_18
    const-string v14, " NR"

    .line 1202
    .line 1203
    :goto_f
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    iget-object v14, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1207
    .line 1208
    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetgameServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v14

    .line 1212
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1213
    .line 1214
    .line 1215
    move-result v14

    .line 1216
    if-eqz v14, :cond_19

    .line 1217
    .line 1218
    const-string v14, " / G"

    .line 1219
    .line 1220
    goto :goto_10

    .line 1221
    :cond_19
    const-string v14, ""

    .line 1222
    .line 1223
    :goto_10
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    .line 1225
    .line 1226
    iget-object v14, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1227
    .line 1228
    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v14

    .line 1232
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getMloDeterminedByDecisionTree()Z

    .line 1233
    .line 1234
    .line 1235
    move-result v14

    .line 1236
    if-eqz v14, :cond_1a

    .line 1237
    .line 1238
    const-string v14, ") || "

    .line 1239
    .line 1240
    goto :goto_11

    .line 1241
    :cond_1a
    const-string v14, " / LD) || "

    .line 1242
    .line 1243
    :goto_11
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    new-instance v14, Ljava/util/HashMap;

    .line 1247
    .line 1248
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1249
    .line 1250
    .line 1251
    move/from16 v18, v3

    .line 1252
    .line 1253
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1254
    .line 1255
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 1256
    .line 1257
    .line 1258
    move-result v3

    .line 1259
    if-eqz v3, :cond_1b

    .line 1260
    .line 1261
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1262
    .line 1263
    move/from16 v33, v4

    .line 1264
    .line 1265
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 1266
    .line 1267
    .line 1268
    move-result-object v4

    .line 1269
    move-wide/from16 v34, v6

    .line 1270
    .line 1271
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1272
    .line 1273
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Landroid/content/Context;

    .line 1274
    .line 1275
    .line 1276
    move-result-object v6

    .line 1277
    invoke-virtual {v4, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v4

    .line 1281
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$mforegroundPackageUpdate(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Ljava/lang/String;)V

    .line 1282
    .line 1283
    .line 1284
    goto :goto_12

    .line 1285
    :cond_1b
    move/from16 v33, v4

    .line 1286
    .line 1287
    move-wide/from16 v34, v6

    .line 1288
    .line 1289
    :goto_12
    const-string v3, "Query: "

    .line 1290
    .line 1291
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    .line 1294
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1295
    .line 1296
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmQueryMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v3

    .line 1300
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v3

    .line 1304
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1305
    .line 1306
    .line 1307
    move-result-object v3

    .line 1308
    move/from16 v6, v17

    .line 1309
    .line 1310
    move-wide/from16 v37, v27

    .line 1311
    .line 1312
    move/from16 v36, v33

    .line 1313
    .line 1314
    const/4 v4, 0x0

    .line 1315
    const/4 v7, 0x0

    .line 1316
    move-object/from16 v33, v3

    .line 1317
    .line 1318
    const/4 v3, 0x0

    .line 1319
    :goto_13
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    .line 1320
    .line 1321
    .line 1322
    move-result v39

    .line 1323
    const-wide v40, 0x165a0bc00L

    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    if-eqz v39, :cond_2d

    .line 1329
    .line 1330
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v39

    .line 1334
    move-wide/from16 v42, v8

    .line 1335
    .line 1336
    move-object/from16 v8, v39

    .line 1337
    .line 1338
    check-cast v8, Ljava/lang/String;

    .line 1339
    .line 1340
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1341
    .line 1342
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmQueryMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v9

    .line 1346
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v9

    .line 1350
    check-cast v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 1351
    .line 1352
    invoke-interface {v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;->queryPerformance()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v9

    .line 1356
    move/from16 v39, v10

    .line 1357
    .line 1358
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1359
    .line 1360
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 1361
    .line 1362
    .line 1363
    move-result v10

    .line 1364
    if-eqz v10, :cond_1c

    .line 1365
    .line 1366
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1367
    .line 1368
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmPackageUpdated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v10

    .line 1372
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1373
    .line 1374
    .line 1375
    move-result v10

    .line 1376
    if-nez v10, :cond_1c

    .line 1377
    .line 1378
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 1379
    .line 1380
    if-eqz v10, :cond_1c

    .line 1381
    .line 1382
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1383
    .line 1384
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1385
    .line 1386
    .line 1387
    move-result-object v10

    .line 1388
    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1389
    .line 1390
    .line 1391
    move-result v10

    .line 1392
    if-eqz v10, :cond_1c

    .line 1393
    .line 1394
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1395
    .line 1396
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v10

    .line 1400
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v10

    .line 1404
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 1405
    .line 1406
    move/from16 v44, v13

    .line 1407
    .line 1408
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1409
    .line 1410
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v13

    .line 1414
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    .line 1416
    .line 1417
    move-result-object v13

    .line 1418
    check-cast v13, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 1419
    .line 1420
    move-wide/from16 v45, v11

    .line 1421
    .line 1422
    iget-wide v11, v13, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 1423
    .line 1424
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1425
    .line 1426
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 1427
    .line 1428
    .line 1429
    move-result-wide v47

    .line 1430
    move-wide/from16 v49, v11

    .line 1431
    .line 1432
    sub-long v11, v45, v47

    .line 1433
    .line 1434
    long-to-double v11, v11

    .line 1435
    div-double v11, v11, v20

    .line 1436
    .line 1437
    add-double v11, v11, v49

    .line 1438
    .line 1439
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 1440
    .line 1441
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1442
    .line 1443
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v10

    .line 1447
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    .line 1449
    .line 1450
    move-result-object v10

    .line 1451
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 1452
    .line 1453
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1454
    .line 1455
    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v11

    .line 1459
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v11

    .line 1463
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 1464
    .line 1465
    iget-wide v11, v11, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->rxBytes:J

    .line 1466
    .line 1467
    move-wide/from16 v47, v11

    .line 1468
    .line 1469
    iget-wide v11, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 1470
    .line 1471
    add-long v11, v47, v11

    .line 1472
    .line 1473
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1474
    .line 1475
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastPackageRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 1476
    .line 1477
    .line 1478
    move-result-wide v47

    .line 1479
    sub-long v11, v11, v47

    .line 1480
    .line 1481
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->rxBytes:J

    .line 1482
    .line 1483
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1484
    .line 1485
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v10

    .line 1489
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v10

    .line 1493
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 1494
    .line 1495
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1496
    .line 1497
    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v11

    .line 1501
    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v11

    .line 1505
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 1506
    .line 1507
    iget-wide v11, v11, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->txBytes:J

    .line 1508
    .line 1509
    move-wide/from16 v47, v11

    .line 1510
    .line 1511
    iget-wide v11, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 1512
    .line 1513
    add-long v11, v47, v11

    .line 1514
    .line 1515
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1516
    .line 1517
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastPackageTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 1518
    .line 1519
    .line 1520
    move-result-wide v47

    .line 1521
    sub-long v11, v11, v47

    .line 1522
    .line 1523
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->txBytes:J

    .line 1524
    .line 1525
    goto :goto_14

    .line 1526
    :cond_1c
    move-wide/from16 v45, v11

    .line 1527
    .line 1528
    move/from16 v44, v13

    .line 1529
    .line 1530
    :goto_14
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1531
    .line 1532
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmFeatureStateMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v10

    .line 1536
    iget-boolean v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 1537
    .line 1538
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v11

    .line 1542
    invoke-interface {v10, v8, v11}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    .line 1548
    const-string v10, " "

    .line 1549
    .line 1550
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    .line 1552
    .line 1553
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 1554
    .line 1555
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1556
    .line 1557
    .line 1558
    const-string v10, " ("

    .line 1559
    .line 1560
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    .line 1562
    .line 1563
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 1564
    .line 1565
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1566
    .line 1567
    .line 1568
    const-string v10, ") "

    .line 1569
    .line 1570
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    .line 1572
    .line 1573
    const-string v10, "%.1f"

    .line 1574
    .line 1575
    iget v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 1576
    .line 1577
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v11

    .line 1581
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 1582
    .line 1583
    .line 1584
    move-result-object v11

    .line 1585
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v10

    .line 1589
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    .line 1592
    const-string v10, " "

    .line 1593
    .line 1594
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1595
    .line 1596
    .line 1597
    const-string v10, "%.1f"

    .line 1598
    .line 1599
    iget v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 1600
    .line 1601
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v11

    .line 1605
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v11

    .line 1609
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v10

    .line 1613
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    .line 1616
    const-string v10, " "

    .line 1617
    .line 1618
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1619
    .line 1620
    .line 1621
    const-string v10, "%.1f"

    .line 1622
    .line 1623
    iget v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 1624
    .line 1625
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1626
    .line 1627
    .line 1628
    move-result-object v11

    .line 1629
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 1630
    .line 1631
    .line 1632
    move-result-object v11

    .line 1633
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1634
    .line 1635
    .line 1636
    move-result-object v10

    .line 1637
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    .line 1639
    .line 1640
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1641
    .line 1642
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v10

    .line 1646
    invoke-interface {v10, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1647
    .line 1648
    .line 1649
    move-result v10

    .line 1650
    if-eqz v10, :cond_2b

    .line 1651
    .line 1652
    const-string v10, " / "

    .line 1653
    .line 1654
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    .line 1656
    .line 1657
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1658
    .line 1659
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 1660
    .line 1661
    .line 1662
    move-result v10

    .line 1663
    if-eqz v10, :cond_1d

    .line 1664
    .line 1665
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1666
    .line 1667
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->getDateToday()I

    .line 1668
    .line 1669
    .line 1670
    move-result v10

    .line 1671
    rem-int/lit8 v10, v10, 0x2

    .line 1672
    .line 1673
    if-nez v10, :cond_1d

    .line 1674
    .line 1675
    iget-boolean v9, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 1676
    .line 1677
    if-eqz v9, :cond_2c

    .line 1678
    .line 1679
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1680
    .line 1681
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v9

    .line 1685
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    .line 1687
    .line 1688
    move-result-object v8

    .line 1689
    check-cast v8, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 1690
    .line 1691
    const/4 v9, 0x0

    .line 1692
    invoke-interface {v8, v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 1693
    .line 1694
    .line 1695
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1696
    .line 1697
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 1698
    .line 1699
    .line 1700
    move-result-wide v9

    .line 1701
    invoke-static {v8, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 1702
    .line 1703
    .line 1704
    goto/16 :goto_17

    .line 1705
    .line 1706
    :cond_1d
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 1707
    .line 1708
    if-eqz v10, :cond_1e

    .line 1709
    .line 1710
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 1711
    .line 1712
    if-nez v10, :cond_1e

    .line 1713
    .line 1714
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1715
    .line 1716
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1717
    .line 1718
    .line 1719
    move-result-object v9

    .line 1720
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v9

    .line 1724
    check-cast v9, Ljava/lang/Long;

    .line 1725
    .line 1726
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 1727
    .line 1728
    .line 1729
    move-result-wide v9

    .line 1730
    sub-long v11, v45, v9

    .line 1731
    .line 1732
    const-wide v9, 0xee6b2800L

    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    cmp-long v9, v11, v9

    .line 1738
    .line 1739
    if-ltz v9, :cond_2c

    .line 1740
    .line 1741
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1742
    .line 1743
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v9

    .line 1747
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v8

    .line 1751
    check-cast v8, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 1752
    .line 1753
    const/4 v9, 0x0

    .line 1754
    invoke-interface {v8, v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 1755
    .line 1756
    .line 1757
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1758
    .line 1759
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 1760
    .line 1761
    .line 1762
    move-result-wide v9

    .line 1763
    invoke-static {v8, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 1764
    .line 1765
    .line 1766
    goto/16 :goto_17

    .line 1767
    .line 1768
    :cond_1e
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1769
    .line 1770
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmPerformanceDegraded(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1771
    .line 1772
    .line 1773
    move-result-object v10

    .line 1774
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1775
    .line 1776
    .line 1777
    move-result v10

    .line 1778
    if-nez v10, :cond_29

    .line 1779
    .line 1780
    if-nez v44, :cond_1f

    .line 1781
    .line 1782
    goto/16 :goto_15

    .line 1783
    .line 1784
    :cond_1f
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 1785
    .line 1786
    cmpg-float v11, v10, v23

    .line 1787
    .line 1788
    if-gez v11, :cond_20

    .line 1789
    .line 1790
    iget v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 1791
    .line 1792
    cmpl-float v11, v11, v23

    .line 1793
    .line 1794
    if-ltz v11, :cond_20

    .line 1795
    .line 1796
    iget v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 1797
    .line 1798
    cmpg-float v11, v11, v23

    .line 1799
    .line 1800
    if-gtz v11, :cond_20

    .line 1801
    .line 1802
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1803
    .line 1804
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1805
    .line 1806
    .line 1807
    move-result-object v10

    .line 1808
    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    .line 1810
    .line 1811
    move-result-object v10

    .line 1812
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 1813
    .line 1814
    iget-boolean v9, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 1815
    .line 1816
    xor-int/lit8 v9, v9, 0x1

    .line 1817
    .line 1818
    invoke-interface {v10, v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 1819
    .line 1820
    .line 1821
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1822
    .line 1823
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1824
    .line 1825
    .line 1826
    move-result-object v9

    .line 1827
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1828
    .line 1829
    .line 1830
    move-result-wide v10

    .line 1831
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v10

    .line 1835
    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    .line 1837
    .line 1838
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1839
    .line 1840
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 1841
    .line 1842
    .line 1843
    move-result-wide v9

    .line 1844
    invoke-static {v8, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 1845
    .line 1846
    .line 1847
    goto/16 :goto_17

    .line 1848
    .line 1849
    :cond_20
    iget-boolean v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 1850
    .line 1851
    if-eqz v11, :cond_21

    .line 1852
    .line 1853
    float-to-double v10, v10

    .line 1854
    div-double v37, v37, v10

    .line 1855
    .line 1856
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1857
    .line 1858
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 1859
    .line 1860
    .line 1861
    move-result-object v10

    .line 1862
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1863
    .line 1864
    .line 1865
    move-result-wide v11

    .line 1866
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v11

    .line 1870
    invoke-interface {v10, v8, v11}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    .line 1872
    .line 1873
    :cond_21
    if-nez v5, :cond_24

    .line 1874
    .line 1875
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 1876
    .line 1877
    if-eqz v10, :cond_22

    .line 1878
    .line 1879
    iget v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 1880
    .line 1881
    cmpl-float v12, v11, v23

    .line 1882
    .line 1883
    if-lez v12, :cond_22

    .line 1884
    .line 1885
    cmpg-float v12, v39, v11

    .line 1886
    .line 1887
    if-gez v12, :cond_22

    .line 1888
    .line 1889
    move-object v3, v8

    .line 1890
    move/from16 v39, v11

    .line 1891
    .line 1892
    :cond_22
    if-eqz v10, :cond_2c

    .line 1893
    .line 1894
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 1895
    .line 1896
    cmpl-float v11, v10, v23

    .line 1897
    .line 1898
    if-lez v11, :cond_2c

    .line 1899
    .line 1900
    float-to-double v10, v10

    .line 1901
    div-double v10, v42, v10

    .line 1902
    .line 1903
    cmpg-double v10, v10, v29

    .line 1904
    .line 1905
    if-gez v10, :cond_2c

    .line 1906
    .line 1907
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1908
    .line 1909
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1910
    .line 1911
    .line 1912
    move-result-object v10

    .line 1913
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1914
    .line 1915
    .line 1916
    move-result v10

    .line 1917
    if-eqz v10, :cond_23

    .line 1918
    .line 1919
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 1920
    .line 1921
    float-to-double v10, v10

    .line 1922
    mul-double v10, v10, v34

    .line 1923
    .line 1924
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1925
    .line 1926
    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)I

    .line 1927
    .line 1928
    .line 1929
    move-result v12

    .line 1930
    int-to-double v12, v12

    .line 1931
    cmpl-double v10, v10, v12

    .line 1932
    .line 1933
    if-ltz v10, :cond_2c

    .line 1934
    .line 1935
    :cond_23
    iget v9, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 1936
    .line 1937
    cmpl-float v10, v36, v9

    .line 1938
    .line 1939
    if-lez v10, :cond_2c

    .line 1940
    .line 1941
    move-object v7, v8

    .line 1942
    move/from16 v36, v9

    .line 1943
    .line 1944
    goto/16 :goto_17

    .line 1945
    .line 1946
    :cond_24
    cmpg-double v10, v42, v31

    .line 1947
    .line 1948
    if-gez v10, :cond_2c

    .line 1949
    .line 1950
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1951
    .line 1952
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1953
    .line 1954
    .line 1955
    move-result-object v10

    .line 1956
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1957
    .line 1958
    .line 1959
    move-result v10

    .line 1960
    if-eqz v10, :cond_25

    .line 1961
    .line 1962
    if-nez v18, :cond_25

    .line 1963
    .line 1964
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 1965
    .line 1966
    cmpg-float v10, v10, v23

    .line 1967
    .line 1968
    if-gtz v10, :cond_2c

    .line 1969
    .line 1970
    :cond_25
    if-eqz p1, :cond_2c

    .line 1971
    .line 1972
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 1973
    .line 1974
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastLinkTpQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 1975
    .line 1976
    .line 1977
    move-result-wide v10

    .line 1978
    sub-long v11, v45, v10

    .line 1979
    .line 1980
    cmp-long v10, v11, v40

    .line 1981
    .line 1982
    if-ltz v10, :cond_2c

    .line 1983
    .line 1984
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 1985
    .line 1986
    if-nez v10, :cond_27

    .line 1987
    .line 1988
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 1989
    .line 1990
    cmpg-float v10, v10, v23

    .line 1991
    .line 1992
    if-gez v10, :cond_27

    .line 1993
    .line 1994
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 1995
    .line 1996
    float-to-double v10, v10

    .line 1997
    div-double v10, v42, v10

    .line 1998
    .line 1999
    cmpg-double v10, v10, v29

    .line 2000
    .line 2001
    if-gez v10, :cond_27

    .line 2002
    .line 2003
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2004
    .line 2005
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2006
    .line 2007
    .line 2008
    move-result-object v10

    .line 2009
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2010
    .line 2011
    .line 2012
    move-result v10

    .line 2013
    if-eqz v10, :cond_26

    .line 2014
    .line 2015
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 2016
    .line 2017
    float-to-double v10, v10

    .line 2018
    mul-double v10, v10, v34

    .line 2019
    .line 2020
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2021
    .line 2022
    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)I

    .line 2023
    .line 2024
    .line 2025
    move-result v12

    .line 2026
    int-to-double v12, v12

    .line 2027
    cmpl-double v10, v10, v12

    .line 2028
    .line 2029
    if-ltz v10, :cond_27

    .line 2030
    .line 2031
    :cond_26
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 2032
    .line 2033
    cmpl-float v11, v36, v10

    .line 2034
    .line 2035
    if-lez v11, :cond_27

    .line 2036
    .line 2037
    move-object v7, v8

    .line 2038
    move/from16 v36, v10

    .line 2039
    .line 2040
    :cond_27
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 2041
    .line 2042
    if-eqz v10, :cond_28

    .line 2043
    .line 2044
    iget v11, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 2045
    .line 2046
    div-float v11, v23, v11

    .line 2047
    .line 2048
    cmpl-float v12, v11, v17

    .line 2049
    .line 2050
    if-lez v12, :cond_28

    .line 2051
    .line 2052
    iget v4, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 2053
    .line 2054
    move v6, v4

    .line 2055
    move-object v4, v8

    .line 2056
    move/from16 v17, v11

    .line 2057
    .line 2058
    goto :goto_17

    .line 2059
    :cond_28
    if-nez v10, :cond_2c

    .line 2060
    .line 2061
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 2062
    .line 2063
    cmpg-float v10, v10, v23

    .line 2064
    .line 2065
    if-gez v10, :cond_2c

    .line 2066
    .line 2067
    invoke-virtual {v14, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    .line 2069
    .line 2070
    goto :goto_17

    .line 2071
    :cond_29
    :goto_15
    iget-boolean v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 2072
    .line 2073
    if-eqz v10, :cond_2c

    .line 2074
    .line 2075
    iget v10, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 2076
    .line 2077
    cmpl-float v10, v10, v23

    .line 2078
    .line 2079
    if-gtz v10, :cond_2a

    .line 2080
    .line 2081
    iget v9, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 2082
    .line 2083
    cmpg-float v9, v9, v23

    .line 2084
    .line 2085
    if-gez v9, :cond_2c

    .line 2086
    .line 2087
    :cond_2a
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2088
    .line 2089
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2090
    .line 2091
    .line 2092
    move-result-object v9

    .line 2093
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    .line 2095
    .line 2096
    move-result-object v8

    .line 2097
    check-cast v8, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2098
    .line 2099
    const/4 v9, 0x0

    .line 2100
    invoke-interface {v8, v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 2101
    .line 2102
    .line 2103
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2104
    .line 2105
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2106
    .line 2107
    .line 2108
    move-result-wide v9

    .line 2109
    invoke-static {v8, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2110
    .line 2111
    .line 2112
    goto :goto_17

    .line 2113
    :goto_16
    move-wide/from16 v8, v42

    .line 2114
    .line 2115
    move/from16 v13, v44

    .line 2116
    .line 2117
    move-wide/from16 v11, v45

    .line 2118
    .line 2119
    goto/16 :goto_13

    .line 2120
    .line 2121
    :cond_2b
    const-string v8, " CB: X / "

    .line 2122
    .line 2123
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2124
    .line 2125
    .line 2126
    :cond_2c
    :goto_17
    move/from16 v10, v39

    .line 2127
    .line 2128
    goto :goto_16

    .line 2129
    :cond_2d
    move-wide/from16 v42, v8

    .line 2130
    .line 2131
    move-wide/from16 v45, v11

    .line 2132
    .line 2133
    if-eqz v7, :cond_31

    .line 2134
    .line 2135
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2136
    .line 2137
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 2138
    .line 2139
    .line 2140
    move-result v3

    .line 2141
    if-eqz v3, :cond_2f

    .line 2142
    .line 2143
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2144
    .line 2145
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 2146
    .line 2147
    .line 2148
    move-result v3

    .line 2149
    if-eqz v3, :cond_2e

    .line 2150
    .line 2151
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2152
    .line 2153
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->getDateToday()I

    .line 2154
    .line 2155
    .line 2156
    move-result v3

    .line 2157
    rem-int/lit8 v3, v3, 0x2

    .line 2158
    .line 2159
    if-lez v3, :cond_2e

    .line 2160
    .line 2161
    goto :goto_19

    .line 2162
    :cond_2e
    :goto_18
    move/from16 v32, v5

    .line 2163
    .line 2164
    goto/16 :goto_1c

    .line 2165
    .line 2166
    :cond_2f
    :goto_19
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2167
    .line 2168
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2169
    .line 2170
    .line 2171
    move-result-object v3

    .line 2172
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    .line 2174
    .line 2175
    move-result-object v3

    .line 2176
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2177
    .line 2178
    invoke-interface {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 2179
    .line 2180
    .line 2181
    if-eqz v5, :cond_30

    .line 2182
    .line 2183
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2184
    .line 2185
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2186
    .line 2187
    .line 2188
    move-result-object v3

    .line 2189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2190
    .line 2191
    .line 2192
    move-result-wide v8

    .line 2193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v4

    .line 2197
    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2198
    .line 2199
    .line 2200
    :cond_30
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2201
    .line 2202
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2203
    .line 2204
    .line 2205
    move-result-wide v6

    .line 2206
    invoke-static {v3, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2207
    .line 2208
    .line 2209
    goto :goto_18

    .line 2210
    :cond_31
    if-eqz v3, :cond_34

    .line 2211
    .line 2212
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2213
    .line 2214
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 2215
    .line 2216
    .line 2217
    move-result v4

    .line 2218
    if-eqz v4, :cond_32

    .line 2219
    .line 2220
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2221
    .line 2222
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 2223
    .line 2224
    .line 2225
    move-result v4

    .line 2226
    if-eqz v4, :cond_2e

    .line 2227
    .line 2228
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2229
    .line 2230
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->getDateToday()I

    .line 2231
    .line 2232
    .line 2233
    move-result v4

    .line 2234
    rem-int/lit8 v4, v4, 0x2

    .line 2235
    .line 2236
    if-lez v4, :cond_2e

    .line 2237
    .line 2238
    :cond_32
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2239
    .line 2240
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2241
    .line 2242
    .line 2243
    move-result-object v4

    .line 2244
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2245
    .line 2246
    .line 2247
    move-result-object v4

    .line 2248
    check-cast v4, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2249
    .line 2250
    invoke-interface {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 2251
    .line 2252
    .line 2253
    if-eqz v5, :cond_33

    .line 2254
    .line 2255
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2256
    .line 2257
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2258
    .line 2259
    .line 2260
    move-result-object v4

    .line 2261
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2262
    .line 2263
    .line 2264
    move-result-wide v6

    .line 2265
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2266
    .line 2267
    .line 2268
    move-result-object v6

    .line 2269
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2270
    .line 2271
    .line 2272
    :cond_33
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2273
    .line 2274
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2275
    .line 2276
    .line 2277
    move-result-wide v6

    .line 2278
    invoke-static {v3, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2279
    .line 2280
    .line 2281
    goto :goto_18

    .line 2282
    :cond_34
    if-eqz v4, :cond_2e

    .line 2283
    .line 2284
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 2285
    .line 2286
    .line 2287
    move-result-object v3

    .line 2288
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2289
    .line 2290
    .line 2291
    move-result-object v3

    .line 2292
    move/from16 v8, v23

    .line 2293
    .line 2294
    const/4 v7, 0x0

    .line 2295
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2296
    .line 2297
    .line 2298
    move-result v9

    .line 2299
    if-eqz v9, :cond_38

    .line 2300
    .line 2301
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v9

    .line 2305
    check-cast v9, Ljava/lang/String;

    .line 2306
    .line 2307
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v10

    .line 2311
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2312
    .line 2313
    iget v10, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 2314
    .line 2315
    cmpl-float v10, v17, v10

    .line 2316
    .line 2317
    if-lez v10, :cond_36

    .line 2318
    .line 2319
    float-to-double v10, v6

    .line 2320
    mul-double v12, v42, v10

    .line 2321
    .line 2322
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2323
    .line 2324
    .line 2325
    move-result-object v19

    .line 2326
    move-object/from16 v31, v3

    .line 2327
    .line 2328
    move-object/from16 v3, v19

    .line 2329
    .line 2330
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2331
    .line 2332
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 2333
    .line 2334
    move/from16 v32, v5

    .line 2335
    .line 2336
    move/from16 v19, v6

    .line 2337
    .line 2338
    float-to-double v5, v3

    .line 2339
    mul-double/2addr v12, v5

    .line 2340
    cmpg-double v3, v12, v29

    .line 2341
    .line 2342
    if-gez v3, :cond_37

    .line 2343
    .line 2344
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2345
    .line 2346
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2347
    .line 2348
    .line 2349
    move-result-object v3

    .line 2350
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2351
    .line 2352
    .line 2353
    move-result v3

    .line 2354
    if-eqz v3, :cond_35

    .line 2355
    .line 2356
    mul-double v5, v34, v10

    .line 2357
    .line 2358
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2359
    .line 2360
    .line 2361
    move-result-object v3

    .line 2362
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2363
    .line 2364
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 2365
    .line 2366
    float-to-double v10, v3

    .line 2367
    mul-double/2addr v5, v10

    .line 2368
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2369
    .line 2370
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)I

    .line 2371
    .line 2372
    .line 2373
    move-result v3

    .line 2374
    int-to-double v10, v3

    .line 2375
    cmpl-double v3, v5, v10

    .line 2376
    .line 2377
    if-ltz v3, :cond_37

    .line 2378
    .line 2379
    :cond_35
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2380
    .line 2381
    .line 2382
    move-result-object v3

    .line 2383
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2384
    .line 2385
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 2386
    .line 2387
    cmpl-float v3, v8, v3

    .line 2388
    .line 2389
    if-lez v3, :cond_37

    .line 2390
    .line 2391
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2392
    .line 2393
    .line 2394
    move-result-object v3

    .line 2395
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2396
    .line 2397
    iget v8, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 2398
    .line 2399
    move-object v7, v9

    .line 2400
    goto :goto_1b

    .line 2401
    :cond_36
    move-object/from16 v31, v3

    .line 2402
    .line 2403
    move/from16 v32, v5

    .line 2404
    .line 2405
    move/from16 v19, v6

    .line 2406
    .line 2407
    :cond_37
    :goto_1b
    move/from16 v6, v19

    .line 2408
    .line 2409
    move-object/from16 v3, v31

    .line 2410
    .line 2411
    move/from16 v5, v32

    .line 2412
    .line 2413
    goto :goto_1a

    .line 2414
    :cond_38
    move/from16 v32, v5

    .line 2415
    .line 2416
    if-eqz v7, :cond_39

    .line 2417
    .line 2418
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2419
    .line 2420
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2421
    .line 2422
    .line 2423
    move-result-object v3

    .line 2424
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    .line 2426
    .line 2427
    move-result-object v3

    .line 2428
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2429
    .line 2430
    const/4 v9, 0x0

    .line 2431
    invoke-interface {v3, v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 2432
    .line 2433
    .line 2434
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2435
    .line 2436
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2437
    .line 2438
    .line 2439
    move-result-object v3

    .line 2440
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    .line 2442
    .line 2443
    move-result-object v3

    .line 2444
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2445
    .line 2446
    move/from16 v4, v26

    .line 2447
    .line 2448
    invoke-interface {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 2449
    .line 2450
    .line 2451
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2452
    .line 2453
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2454
    .line 2455
    .line 2456
    move-result-wide v4

    .line 2457
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2458
    .line 2459
    .line 2460
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2461
    .line 2462
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2463
    .line 2464
    .line 2465
    move-result-object v3

    .line 2466
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2467
    .line 2468
    .line 2469
    move-result-wide v4

    .line 2470
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v4

    .line 2474
    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    .line 2476
    .line 2477
    :cond_39
    :goto_1c
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2478
    .line 2479
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2480
    .line 2481
    .line 2482
    move-result-object v3

    .line 2483
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2484
    .line 2485
    .line 2486
    move-result v3

    .line 2487
    if-eqz v3, :cond_3e

    .line 2488
    .line 2489
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2490
    .line 2491
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmPerformanceDegraded(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2492
    .line 2493
    .line 2494
    move-result-object v3

    .line 2495
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2496
    .line 2497
    .line 2498
    move-result v3

    .line 2499
    if-nez v3, :cond_3e

    .line 2500
    .line 2501
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2502
    .line 2503
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2504
    .line 2505
    .line 2506
    move-result-object v3

    .line 2507
    const-string v4, "MLO"

    .line 2508
    .line 2509
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2510
    .line 2511
    .line 2512
    move-result-object v3

    .line 2513
    if-eqz v3, :cond_3e

    .line 2514
    .line 2515
    if-eqz v18, :cond_3b

    .line 2516
    .line 2517
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2518
    .line 2519
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmQueryMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2520
    .line 2521
    .line 2522
    move-result-object v3

    .line 2523
    const-string v4, "MLO"

    .line 2524
    .line 2525
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2526
    .line 2527
    .line 2528
    move-result-object v3

    .line 2529
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 2530
    .line 2531
    invoke-interface {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;->queryPerformance()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2532
    .line 2533
    .line 2534
    move-result-object v3

    .line 2535
    iget-boolean v3, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 2536
    .line 2537
    if-nez v3, :cond_3e

    .line 2538
    .line 2539
    if-eqz v32, :cond_3e

    .line 2540
    .line 2541
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2542
    .line 2543
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastLinkLtQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2544
    .line 2545
    .line 2546
    move-result-wide v3

    .line 2547
    sub-long v11, v45, v3

    .line 2548
    .line 2549
    cmp-long v3, v11, v40

    .line 2550
    .line 2551
    if-ltz v3, :cond_3e

    .line 2552
    .line 2553
    if-eqz p1, :cond_3e

    .line 2554
    .line 2555
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2556
    .line 2557
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 2558
    .line 2559
    .line 2560
    move-result v3

    .line 2561
    if-eqz v3, :cond_3a

    .line 2562
    .line 2563
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2564
    .line 2565
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 2566
    .line 2567
    .line 2568
    move-result v3

    .line 2569
    if-eqz v3, :cond_3e

    .line 2570
    .line 2571
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2572
    .line 2573
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->getDateToday()I

    .line 2574
    .line 2575
    .line 2576
    move-result v3

    .line 2577
    rem-int/lit8 v3, v3, 0x2

    .line 2578
    .line 2579
    if-lez v3, :cond_3e

    .line 2580
    .line 2581
    :cond_3a
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2582
    .line 2583
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2584
    .line 2585
    .line 2586
    move-result-object v3

    .line 2587
    const-string v4, "MLO"

    .line 2588
    .line 2589
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2590
    .line 2591
    .line 2592
    move-result-object v3

    .line 2593
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2594
    .line 2595
    const/4 v4, 0x1

    .line 2596
    invoke-interface {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 2597
    .line 2598
    .line 2599
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2600
    .line 2601
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2602
    .line 2603
    .line 2604
    move-result-object v3

    .line 2605
    const-string v4, "MLO"

    .line 2606
    .line 2607
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2608
    .line 2609
    .line 2610
    move-result-wide v5

    .line 2611
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2612
    .line 2613
    .line 2614
    move-result-object v5

    .line 2615
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2616
    .line 2617
    .line 2618
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2619
    .line 2620
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2621
    .line 2622
    .line 2623
    move-result-wide v4

    .line 2624
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2625
    .line 2626
    .line 2627
    goto :goto_1d

    .line 2628
    :cond_3b
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2629
    .line 2630
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmQueryMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2631
    .line 2632
    .line 2633
    move-result-object v3

    .line 2634
    const-string v4, "MLO"

    .line 2635
    .line 2636
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2637
    .line 2638
    .line 2639
    move-result-object v3

    .line 2640
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;

    .line 2641
    .line 2642
    invoke-interface {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;->queryPerformance()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 2643
    .line 2644
    .line 2645
    move-result-object v3

    .line 2646
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2647
    .line 2648
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 2649
    .line 2650
    .line 2651
    move-result-wide v5

    .line 2652
    add-double v5, v5, v27

    .line 2653
    .line 2654
    invoke-static {v4, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 2655
    .line 2656
    .line 2657
    iget-boolean v4, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 2658
    .line 2659
    if-eqz v4, :cond_3d

    .line 2660
    .line 2661
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 2662
    .line 2663
    cmpg-float v3, v3, v23

    .line 2664
    .line 2665
    if-gez v3, :cond_3c

    .line 2666
    .line 2667
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2668
    .line 2669
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2670
    .line 2671
    .line 2672
    move-result-object v3

    .line 2673
    const-string v4, "MLO"

    .line 2674
    .line 2675
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    .line 2677
    .line 2678
    move-result-object v3

    .line 2679
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;

    .line 2680
    .line 2681
    const/4 v9, 0x0

    .line 2682
    invoke-interface {v3, v9}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;->grant(Z)V

    .line 2683
    .line 2684
    .line 2685
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2686
    .line 2687
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2688
    .line 2689
    .line 2690
    move-result-wide v4

    .line 2691
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2692
    .line 2693
    .line 2694
    :cond_3c
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2695
    .line 2696
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 2697
    .line 2698
    .line 2699
    move-result-wide v4

    .line 2700
    add-double v4, v4, v27

    .line 2701
    .line 2702
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 2703
    .line 2704
    .line 2705
    goto :goto_1d

    .line 2706
    :cond_3d
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 2707
    .line 2708
    float-to-double v3, v3

    .line 2709
    div-double v3, v27, v3

    .line 2710
    .line 2711
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2712
    .line 2713
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 2714
    .line 2715
    .line 2716
    move-result-wide v6

    .line 2717
    add-double/2addr v6, v3

    .line 2718
    invoke-static {v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 2719
    .line 2720
    .line 2721
    :cond_3e
    :goto_1d
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2722
    .line 2723
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;

    .line 2724
    .line 2725
    .line 2726
    move-result-object v3

    .line 2727
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 2728
    .line 2729
    .line 2730
    move-result v3

    .line 2731
    if-nez v3, :cond_3f

    .line 2732
    .line 2733
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    .line 2734
    .line 2735
    .line 2736
    move-result v3

    .line 2737
    move/from16 v4, v16

    .line 2738
    .line 2739
    if-le v3, v4, :cond_3f

    .line 2740
    .line 2741
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    .line 2742
    .line 2743
    .line 2744
    move-result v3

    .line 2745
    sub-int/2addr v3, v4

    .line 2746
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    .line 2747
    .line 2748
    .line 2749
    move-result v4

    .line 2750
    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2751
    .line 2752
    .line 2753
    :cond_3f
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2754
    .line 2755
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2756
    .line 2757
    .line 2758
    move-result-wide v3

    .line 2759
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2760
    .line 2761
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2762
    .line 2763
    .line 2764
    move-result-wide v5

    .line 2765
    sub-long/2addr v3, v5

    .line 2766
    cmp-long v3, v3, v24

    .line 2767
    .line 2768
    if-gtz v3, :cond_40

    .line 2769
    .line 2770
    const-string v3, "SemWifiCtlFeatureMediator"

    .line 2771
    .line 2772
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2773
    .line 2774
    .line 2775
    move-result-object v4

    .line 2776
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    .line 2778
    .line 2779
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2780
    .line 2781
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2782
    .line 2783
    .line 2784
    move-result-object v4

    .line 2785
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->addHistory(Ljava/lang/String;)V

    .line 2786
    .line 2787
    .line 2788
    :cond_40
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2789
    .line 2790
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z

    .line 2791
    .line 2792
    .line 2793
    move-result v3

    .line 2794
    if-eqz v3, :cond_42

    .line 2795
    .line 2796
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2797
    .line 2798
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmPackageUpdated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2799
    .line 2800
    .line 2801
    move-result-object v3

    .line 2802
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2803
    .line 2804
    .line 2805
    move-result v3

    .line 2806
    if-nez v3, :cond_41

    .line 2807
    .line 2808
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2809
    .line 2810
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmDefaultRunningStat(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 2811
    .line 2812
    .line 2813
    move-result-object v3

    .line 2814
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2815
    .line 2816
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmDefaultRunningStat(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 2817
    .line 2818
    .line 2819
    move-result-object v4

    .line 2820
    iget-wide v4, v4, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 2821
    .line 2822
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2823
    .line 2824
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2825
    .line 2826
    .line 2827
    move-result-wide v6

    .line 2828
    sub-long v11, v45, v6

    .line 2829
    .line 2830
    long-to-double v6, v11

    .line 2831
    div-double v6, v6, v20

    .line 2832
    .line 2833
    add-double/2addr v6, v4

    .line 2834
    iput-wide v6, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 2835
    .line 2836
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2837
    .line 2838
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmDefaultRunningStat(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 2839
    .line 2840
    .line 2841
    move-result-object v3

    .line 2842
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2843
    .line 2844
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmDefaultRunningStat(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 2845
    .line 2846
    .line 2847
    move-result-object v4

    .line 2848
    iget-wide v4, v4, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->rxBytes:J

    .line 2849
    .line 2850
    iget-wide v6, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 2851
    .line 2852
    add-long/2addr v4, v6

    .line 2853
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2854
    .line 2855
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastPackageRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2856
    .line 2857
    .line 2858
    move-result-wide v6

    .line 2859
    sub-long/2addr v4, v6

    .line 2860
    iput-wide v4, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->rxBytes:J

    .line 2861
    .line 2862
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2863
    .line 2864
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmDefaultRunningStat(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 2865
    .line 2866
    .line 2867
    move-result-object v3

    .line 2868
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2869
    .line 2870
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmDefaultRunningStat(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 2871
    .line 2872
    .line 2873
    move-result-object v4

    .line 2874
    iget-wide v4, v4, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->txBytes:J

    .line 2875
    .line 2876
    iget-wide v6, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 2877
    .line 2878
    add-long/2addr v4, v6

    .line 2879
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2880
    .line 2881
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmLastPackageTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J

    .line 2882
    .line 2883
    .line 2884
    move-result-wide v6

    .line 2885
    sub-long/2addr v4, v6

    .line 2886
    iput-wide v4, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->txBytes:J

    .line 2887
    .line 2888
    goto :goto_1e

    .line 2889
    :cond_41
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2890
    .line 2891
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmPackageUpdated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2892
    .line 2893
    .line 2894
    move-result-object v3

    .line 2895
    const/4 v9, 0x0

    .line 2896
    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2897
    .line 2898
    .line 2899
    :cond_42
    :goto_1e
    move-wide/from16 v3, v37

    .line 2900
    .line 2901
    goto :goto_1f

    .line 2902
    :cond_43
    move-wide/from16 v27, v3

    .line 2903
    .line 2904
    move-wide/from16 v45, v11

    .line 2905
    .line 2906
    :goto_1f
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2907
    .line 2908
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fgetmCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D

    .line 2909
    .line 2910
    .line 2911
    move-result-wide v6

    .line 2912
    add-double/2addr v6, v3

    .line 2913
    invoke-static {v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V

    .line 2914
    .line 2915
    .line 2916
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2917
    .line 2918
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 2919
    .line 2920
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2921
    .line 2922
    .line 2923
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2924
    .line 2925
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 2926
    .line 2927
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2928
    .line 2929
    .line 2930
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2931
    .line 2932
    move-wide/from16 v4, v45

    .line 2933
    .line 2934
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2935
    .line 2936
    .line 2937
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2938
    .line 2939
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 2940
    .line 2941
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastPackageRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2942
    .line 2943
    .line 2944
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;

    .line 2945
    .line 2946
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 2947
    .line 2948
    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->-$$Nest$fputmLastPackageTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V

    .line 2949
    .line 2950
    .line 2951
    monitor-exit v2

    .line 2952
    return-void

    .line 2953
    :goto_20
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2954
    throw v0
.end method
