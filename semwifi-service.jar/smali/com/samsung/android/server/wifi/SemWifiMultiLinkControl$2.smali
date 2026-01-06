.class Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public queryPerformance()Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 9
    .line 10
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloConnected(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 33
    .line 34
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput-boolean v0, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 45
    .line 46
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 47
    .line 48
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 49
    .line 50
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloHas2G(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/4 v4, 0x1

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmNumLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-gt v2, v4, :cond_f

    .line 73
    .line 74
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 75
    .line 76
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmNumLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-le v2, v4, :cond_f

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMloDisabledTimeNs(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    sub-long/2addr v5, v7

    .line 93
    const-wide v7, 0xdf8475800L

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    cmp-long v2, v5, v7

    .line 99
    .line 100
    if-gez v2, :cond_2

    .line 101
    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 115
    .line 116
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 117
    .line 118
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 127
    .line 128
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 129
    .line 130
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    const/high16 v5, 0x3f000000    # 0.5f

    .line 139
    .line 140
    const/high16 v6, 0x40000000    # 2.0f

    .line 141
    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    move v2, v6

    .line 145
    goto :goto_0

    .line 146
    :cond_3
    move v2, v5

    .line 147
    :goto_0
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 148
    .line 149
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 150
    .line 151
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    move v2, v6

    .line 162
    goto :goto_1

    .line 163
    :cond_4
    move v2, v5

    .line 164
    :goto_1
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 165
    .line 166
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 167
    .line 168
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    move v2, v5

    .line 179
    goto :goto_2

    .line 180
    :cond_5
    move v2, v6

    .line 181
    :goto_2
    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 182
    .line 183
    iget-boolean v2, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 184
    .line 185
    const-wide/16 v7, 0xa

    .line 186
    .line 187
    const/16 v9, 0x140

    .line 188
    .line 189
    const-wide/16 v10, 0x0

    .line 190
    .line 191
    const/4 v12, 0x0

    .line 192
    if-eqz v2, :cond_a

    .line 193
    .line 194
    iput-boolean v4, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 195
    .line 196
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 197
    .line 198
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eq v2, v9, :cond_9

    .line 203
    .line 204
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 205
    .line 206
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 207
    .line 208
    .line 209
    move-result-wide v13

    .line 210
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 211
    .line 212
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmOutageUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v15

    .line 216
    sub-long/2addr v13, v15

    .line 217
    cmp-long v2, v13, v7

    .line 218
    .line 219
    if-gez v2, :cond_6

    .line 220
    .line 221
    goto :goto_3

    .line 222
    :cond_6
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 223
    .line 224
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 225
    .line 226
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 231
    .line 232
    if-le v2, v4, :cond_7

    .line 233
    .line 234
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 235
    .line 236
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-le v2, v4, :cond_7

    .line 241
    .line 242
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 243
    .line 244
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    aget-wide v2, v2, v4

    .line 249
    .line 250
    cmpl-double v2, v2, v10

    .line 251
    .line 252
    if-lez v2, :cond_7

    .line 253
    .line 254
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 255
    .line 256
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    aget-wide v2, v2, v4

    .line 261
    .line 262
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 263
    .line 264
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    aget-wide v6, v6, v4

    .line 269
    .line 270
    div-double/2addr v2, v6

    .line 271
    double-to-float v6, v2

    .line 272
    :cond_7
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 273
    .line 274
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 275
    .line 276
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 281
    .line 282
    if-le v2, v4, :cond_8

    .line 283
    .line 284
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 285
    .line 286
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    if-le v2, v4, :cond_8

    .line 291
    .line 292
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 293
    .line 294
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    aget-wide v2, v2, v12

    .line 299
    .line 300
    cmpl-double v2, v2, v10

    .line 301
    .line 302
    if-lez v2, :cond_8

    .line 303
    .line 304
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 305
    .line 306
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    aget-wide v2, v2, v12

    .line 311
    .line 312
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 313
    .line 314
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    aget-wide v4, v0, v12

    .line 319
    .line 320
    div-double/2addr v2, v4

    .line 321
    double-to-float v5, v2

    .line 322
    :cond_8
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 323
    .line 324
    return-object v1

    .line 325
    :cond_9
    :goto_3
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 326
    .line 327
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 328
    .line 329
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 330
    .line 331
    return-object v1

    .line 332
    :cond_a
    iput-boolean v12, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 333
    .line 334
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 335
    .line 336
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmTxBandwidth(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 337
    .line 338
    .line 339
    move-result v2

    .line 340
    if-eq v2, v9, :cond_e

    .line 341
    .line 342
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 343
    .line 344
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 345
    .line 346
    .line 347
    move-result-wide v13

    .line 348
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 349
    .line 350
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmOutageUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)J

    .line 351
    .line 352
    .line 353
    move-result-wide v15

    .line 354
    sub-long/2addr v13, v15

    .line 355
    cmp-long v2, v13, v7

    .line 356
    .line 357
    if-gez v2, :cond_b

    .line 358
    .line 359
    goto :goto_4

    .line 360
    :cond_b
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 361
    .line 362
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 363
    .line 364
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 369
    .line 370
    if-le v2, v4, :cond_c

    .line 371
    .line 372
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 373
    .line 374
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-le v2, v4, :cond_c

    .line 379
    .line 380
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 381
    .line 382
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 383
    .line 384
    .line 385
    move-result-object v2

    .line 386
    aget-wide v2, v2, v4

    .line 387
    .line 388
    cmpl-double v2, v2, v10

    .line 389
    .line 390
    if-lez v2, :cond_c

    .line 391
    .line 392
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 393
    .line 394
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    aget-wide v2, v2, v4

    .line 399
    .line 400
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 401
    .line 402
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 403
    .line 404
    .line 405
    move-result-object v5

    .line 406
    aget-wide v7, v5, v4

    .line 407
    .line 408
    div-double/2addr v2, v7

    .line 409
    double-to-float v5, v2

    .line 410
    :cond_c
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 411
    .line 412
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 413
    .line 414
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlState(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$MlState;->activeLinkNumber:I

    .line 419
    .line 420
    if-le v2, v4, :cond_d

    .line 421
    .line 422
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 423
    .line 424
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmActiveLinks(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)I

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-le v2, v4, :cond_d

    .line 429
    .line 430
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 431
    .line 432
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    aget-wide v2, v2, v12

    .line 437
    .line 438
    cmpl-double v2, v2, v10

    .line 439
    .line 440
    if-lez v2, :cond_d

    .line 441
    .line 442
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 443
    .line 444
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmBestLinkQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    aget-wide v2, v2, v12

    .line 449
    .line 450
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;

    .line 451
    .line 452
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;->-$$Nest$fgetmMlQos(Lcom/samsung/android/server/wifi/SemWifiMultiLinkControl;)[D

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    aget-wide v4, v0, v12

    .line 457
    .line 458
    div-double/2addr v2, v4

    .line 459
    double-to-float v6, v2

    .line 460
    :cond_d
    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 461
    .line 462
    return-object v1

    .line 463
    :cond_e
    :goto_4
    iput v5, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 464
    .line 465
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 466
    .line 467
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 468
    .line 469
    return-object v1

    .line 470
    :cond_f
    :goto_5
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->granted:Z

    .line 471
    .line 472
    iput-boolean v0, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->enabled:Z

    .line 473
    .line 474
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->currentConsumptionRatio:F

    .line 475
    .line 476
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->throughputRatio:F

    .line 477
    .line 478
    iput v3, v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;->latencyRatio:F

    .line 479
    .line 480
    return-object v1
.end method
