.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "INSEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

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
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x2

    .line 9
    const/16 v5, 0x1b

    .line 10
    .line 11
    const-string v6, "INS handler err: "

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    if-eq v2, v4, :cond_4

    .line 15
    .line 16
    const/4 v8, 0x3

    .line 17
    if-eq v2, v8, :cond_1

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    if-eq v2, v5, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    :try_start_0
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, [Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v2, v0, v3

    .line 29
    .line 30
    check-cast v2, Ljava/lang/Double;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 33
    .line 34
    .line 35
    move-result-wide v13

    .line 36
    aget-object v2, v0, v7

    .line 37
    .line 38
    check-cast v2, Ljava/lang/Double;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 41
    .line 42
    .line 43
    move-result-wide v11

    .line 44
    aget-object v2, v0, v4

    .line 45
    .line 46
    check-cast v2, Ljava/lang/Integer;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v15

    .line 52
    aget-object v2, v0, v8

    .line 53
    .line 54
    check-cast v2, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v16

    .line 60
    aget-object v0, v0, v5

    .line 61
    .line 62
    move-object/from16 v17, v0

    .line 63
    .line 64
    check-cast v17, Ljava/lang/String;

    .line 65
    .line 66
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mtrimToSize(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/util/ArrayList;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mtrimToSize(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemInsManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .line 97
    .line 98
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 105
    .line 106
    .line 107
    new-instance v2, Ljava/util/ArrayList;

    .line 108
    .line 109
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 110
    .line 111
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .line 117
    .line 118
    move-object/from16 v18, v0

    .line 119
    .line 120
    move-object/from16 v19, v2

    .line 121
    .line 122
    invoke-virtual/range {v9 .. v19}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->onOutageCountChanged(Ljava/lang/String;DDIZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 123
    .line 124
    .line 125
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmagneticSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 132
    .line 133
    .line 134
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 135
    .line 136
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetpressureSensorEvents(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 169
    .line 170
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextManager;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-eqz v0, :cond_2

    .line 175
    .line 176
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 177
    .line 178
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextManager;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_2

    .line 187
    .line 188
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 189
    .line 190
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextManager;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 195
    .line 196
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextListener;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :catch_1
    move-exception v0

    .line 205
    goto :goto_1

    .line 206
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 207
    .line 208
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIsSensorEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_3

    .line 217
    .line 218
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$munregisterSensorListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 221
    .line 222
    .line 223
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 224
    .line 225
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemInsManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :goto_1
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 234
    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    goto/16 :goto_4

    .line 255
    .line 256
    :cond_4
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 257
    .line 258
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    const-string v2, "com.sec.feature.sensorhub"

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_5

    .line 273
    .line 274
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 275
    .line 276
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    const-string v4, "scontext"

    .line 281
    .line 282
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    check-cast v2, Lcom/samsung/android/hardware/context/SemContextManager;

    .line 287
    .line 288
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Lcom/samsung/android/hardware/context/SemContextManager;)V

    .line 289
    .line 290
    .line 291
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 292
    .line 293
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextManager;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    if-eqz v0, :cond_5

    .line 298
    .line 299
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextManager;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v0, v5}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    .line 306
    .line 307
    .line 308
    move-result v3

    .line 309
    goto :goto_2

    .line 310
    :catch_2
    move-exception v0

    .line 311
    goto :goto_3

    .line 312
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 313
    .line 314
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    .line 315
    .line 316
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 317
    .line 318
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmActionFilter(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-direct {v0, v2}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    .line 323
    .line 324
    .line 325
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 326
    .line 327
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextManager;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 332
    .line 333
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemContextListener(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/hardware/context/SemContextListener;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {v2, v3, v5, v0}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 338
    .line 339
    .line 340
    :cond_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 341
    .line 342
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSemInsManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 347
    .line 348
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v0, v2}, Lcom/samsung/android/wifi/intelligence/ins/SemInsManager;->start(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 353
    .line 354
    .line 355
    return-void

    .line 356
    :goto_3
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$INSEventHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 357
    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v1, v0, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 375
    .line 376
    .line 377
    :goto_4
    return-void
.end method
