.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

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
    .locals 29

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
    const/4 v3, 0x4

    .line 8
    const-string v4, "Deact. reason: "

    .line 9
    .line 10
    const/4 v5, 0x6

    .line 11
    const/16 v6, 0xbb8

    .line 12
    .line 13
    const/16 v9, 0xa

    .line 14
    .line 15
    const/16 v10, 0xb

    .line 16
    .line 17
    const/16 v11, 0x1f4

    .line 18
    .line 19
    const/4 v12, 0x3

    .line 20
    const/4 v13, 0x7

    .line 21
    const/4 v14, 0x1

    .line 22
    const/4 v15, 0x2

    .line 23
    const-wide/16 v16, 0x0

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    packed-switch v2, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto/16 :goto_a

    .line 30
    .line 31
    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_29

    .line 42
    .line 43
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 44
    .line 45
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->mRssi:I

    .line 46
    .line 47
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettwtControlSuspensionThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-le v2, v1, :cond_29

    .line 52
    .line 53
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastTwtSetupTimeWithCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    cmp-long v1, v1, v16

    .line 60
    .line 61
    if-lez v1, :cond_29

    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 68
    .line 69
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastTwtSetupTimeWithCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    sub-long/2addr v1, v3

    .line 74
    const-wide/32 v3, 0xea60

    .line 75
    .line 76
    .line 77
    cmp-long v1, v1, v3

    .line 78
    .line 79
    if-gez v1, :cond_29

    .line 80
    .line 81
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 82
    .line 83
    invoke-static {v1, v15}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateTwtIotIssueDetectionResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 84
    .line 85
    .line 86
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-nez v2, :cond_0

    .line 120
    .line 121
    const-string v0, "SemWifiTwtMonitor"

    .line 122
    .line 123
    const-string v1, "Ignore unexpected teardown event"

    .line 124
    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 130
    .line 131
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 136
    .line 137
    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 138
    .line 139
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 140
    .line 141
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 146
    .line 147
    iput v1, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 148
    .line 149
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 150
    .line 151
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 156
    .line 157
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 158
    .line 159
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 164
    .line 165
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 166
    .line 167
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 172
    .line 173
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 174
    .line 175
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 180
    .line 181
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 186
    .line 187
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 188
    .line 189
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 194
    .line 195
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 196
    .line 197
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    iget v8, v8, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 202
    .line 203
    invoke-virtual {v1, v7, v2, v3, v8}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setNegotiationResult(ZIII)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 207
    .line 208
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 213
    .line 214
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mprovideTwtStateToLinkInfoCollector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 218
    .line 219
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasTwtIotIssue()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_1

    .line 228
    .line 229
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 230
    .line 231
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasAbnormalityInFirmware()Z

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-eqz v1, :cond_3

    .line 240
    .line 241
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 242
    .line 243
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasTwtIotIssue()Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-eqz v1, :cond_2

    .line 252
    .line 253
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 254
    .line 255
    invoke-static {v1, v14}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateTwtIotIssueDetectionResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 256
    .line 257
    .line 258
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 259
    .line 260
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 265
    .line 266
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 271
    .line 272
    .line 273
    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 278
    .line 279
    .line 280
    :cond_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 281
    .line 282
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 287
    .line 288
    if-eqz v1, :cond_5

    .line 289
    .line 290
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 291
    .line 292
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 297
    .line 298
    if-eq v1, v13, :cond_5

    .line 299
    .line 300
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 301
    .line 302
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 307
    .line 308
    const/16 v2, 0x9

    .line 309
    .line 310
    if-ne v1, v2, :cond_4

    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_4
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 314
    .line 315
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 320
    .line 321
    if-eq v1, v5, :cond_29

    .line 322
    .line 323
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 324
    .line 325
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 330
    .line 331
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsLeakyApDetected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_6

    .line 340
    .line 341
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 342
    .line 343
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-eqz v1, :cond_6

    .line 352
    .line 353
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 354
    .line 355
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 363
    .line 364
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    if-nez v1, :cond_6

    .line 373
    .line 374
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 375
    .line 376
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-nez v1, :cond_6

    .line 385
    .line 386
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 387
    .line 388
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 393
    .line 394
    .line 395
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 396
    .line 397
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_29

    .line 406
    .line 407
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 408
    .line 409
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_29

    .line 418
    .line 419
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 420
    .line 421
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_29

    .line 430
    .line 431
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 432
    .line 433
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-eqz v1, :cond_29

    .line 438
    .line 439
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 440
    .line 441
    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 442
    .line 443
    .line 444
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 445
    .line 446
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 456
    .line 457
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v1, v0, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 469
    .line 470
    .line 471
    return-void

    .line 472
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 475
    .line 476
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 477
    .line 478
    if-nez v2, :cond_a

    .line 479
    .line 480
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 481
    .line 482
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 483
    .line 484
    .line 485
    move-result-object v2

    .line 486
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 487
    .line 488
    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 489
    .line 490
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 491
    .line 492
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 497
    .line 498
    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 499
    .line 500
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 501
    .line 502
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 507
    .line 508
    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 509
    .line 510
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 511
    .line 512
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    iput v14, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 517
    .line 518
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 519
    .line 520
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 525
    .line 526
    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 527
    .line 528
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 529
    .line 530
    invoke-virtual {v2, v14, v3, v4, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setNegotiationResult(ZIII)V

    .line 531
    .line 532
    .line 533
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 534
    .line 535
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 540
    .line 541
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mprovideTwtStateToLinkInfoCollector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 542
    .line 543
    .line 544
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 545
    .line 546
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-nez v1, :cond_7

    .line 555
    .line 556
    invoke-static {v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 561
    .line 562
    .line 563
    :cond_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 564
    .line 565
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-nez v1, :cond_8

    .line 574
    .line 575
    goto/16 :goto_a

    .line 576
    .line 577
    :cond_8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 578
    .line 579
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    if-eqz v1, :cond_9

    .line 584
    .line 585
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 586
    .line 587
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 588
    .line 589
    .line 590
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 591
    .line 592
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 593
    .line 594
    .line 595
    :cond_9
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 596
    .line 597
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetDataArray()V

    .line 602
    .line 603
    .line 604
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 605
    .line 606
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 611
    .line 612
    .line 613
    move-result-object v1

    .line 614
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 615
    .line 616
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    aget v1, v1, v15

    .line 621
    .line 622
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getCallPeriod(I)I

    .line 623
    .line 624
    .line 625
    move-result v1

    .line 626
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartAlgorithmPollWithNewInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 627
    .line 628
    .line 629
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 630
    .line 631
    invoke-static {v0, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 632
    .line 633
    .line 634
    return-void

    .line 635
    :cond_a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 636
    .line 637
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasTwtIotIssue()Z

    .line 642
    .line 643
    .line 644
    move-result v1

    .line 645
    if-nez v1, :cond_b

    .line 646
    .line 647
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 648
    .line 649
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasAbnormalityInFirmware()Z

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    if-eqz v1, :cond_29

    .line 658
    .line 659
    :cond_b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 660
    .line 661
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasTwtIotIssue()Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_c

    .line 670
    .line 671
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 672
    .line 673
    invoke-static {v1, v14}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateTwtIotIssueDetectionResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 674
    .line 675
    .line 676
    :cond_c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 677
    .line 678
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 679
    .line 680
    .line 681
    move-result-object v1

    .line 682
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 683
    .line 684
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 689
    .line 690
    .line 691
    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 696
    .line 697
    .line 698
    return-void

    .line 699
    :pswitch_3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 700
    .line 701
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mteardownSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 702
    .line 703
    .line 704
    return-void

    .line 705
    :pswitch_4
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 706
    .line 707
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 712
    .line 713
    .line 714
    move-result v1

    .line 715
    if-eqz v1, :cond_f

    .line 716
    .line 717
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 718
    .line 719
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetawareConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 720
    .line 721
    .line 722
    move-result-object v1

    .line 723
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 724
    .line 725
    .line 726
    move-result v1

    .line 727
    if-nez v1, :cond_f

    .line 728
    .line 729
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 730
    .line 731
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetp2pConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-nez v1, :cond_f

    .line 740
    .line 741
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 742
    .line 743
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 748
    .line 749
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    if-lt v1, v2, :cond_e

    .line 754
    .line 755
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 756
    .line 757
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 762
    .line 763
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    sub-int/2addr v1, v2

    .line 768
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 769
    .line 770
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 771
    .line 772
    .line 773
    move-result v2

    .line 774
    if-lt v1, v2, :cond_e

    .line 775
    .line 776
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 777
    .line 778
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 783
    .line 784
    if-nez v1, :cond_d

    .line 785
    .line 786
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 787
    .line 788
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcreateSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 789
    .line 790
    .line 791
    goto :goto_1

    .line 792
    :cond_d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 793
    .line 794
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mchangeSessionParameters(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 795
    .line 796
    .line 797
    goto :goto_1

    .line 798
    :cond_e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 799
    .line 800
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    .line 805
    .line 806
    const-string v3, "Ignore setup request. SP:"

    .line 807
    .line 808
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 812
    .line 813
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 814
    .line 815
    .line 816
    move-result v3

    .line 817
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    const-string v3, " Interval:"

    .line 821
    .line 822
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 826
    .line 827
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 828
    .line 829
    .line 830
    move-result v3

    .line 831
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v2

    .line 838
    invoke-virtual {v1, v2, v14}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 839
    .line 840
    .line 841
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 842
    .line 843
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 844
    .line 845
    .line 846
    move-result-object v1

    .line 847
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 848
    .line 849
    if-eqz v1, :cond_f

    .line 850
    .line 851
    invoke-static {v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 856
    .line 857
    .line 858
    :cond_f
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 859
    .line 860
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 861
    .line 862
    .line 863
    move-result-object v1

    .line 864
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 865
    .line 866
    .line 867
    move-result v1

    .line 868
    if-eqz v1, :cond_29

    .line 869
    .line 870
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 871
    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 873
    .line 874
    .line 875
    move-result-wide v1

    .line 876
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmLastTwtSetupTimeWithCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 877
    .line 878
    .line 879
    return-void

    .line 880
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 883
    .line 884
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 885
    .line 886
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 891
    .line 892
    .line 893
    move-result v2

    .line 894
    if-eqz v2, :cond_10

    .line 895
    .line 896
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 897
    .line 898
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 899
    .line 900
    .line 901
    :cond_10
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 902
    .line 903
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 904
    .line 905
    .line 906
    move-result-object v2

    .line 907
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 908
    .line 909
    .line 910
    move-result v2

    .line 911
    if-eqz v2, :cond_29

    .line 912
    .line 913
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 914
    .line 915
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastTwtSetupTimeWithCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 916
    .line 917
    .line 918
    move-result-wide v4

    .line 919
    cmp-long v2, v4, v16

    .line 920
    .line 921
    if-lez v2, :cond_29

    .line 922
    .line 923
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 924
    .line 925
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckIfRxLinkSpeedDropped(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)Z

    .line 926
    .line 927
    .line 928
    move-result v1

    .line 929
    if-eqz v1, :cond_29

    .line 930
    .line 931
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 932
    .line 933
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateTwtIotIssueDetectionResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 934
    .line 935
    .line 936
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 937
    .line 938
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 943
    .line 944
    .line 945
    return-void

    .line 946
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 947
    .line 948
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;

    .line 949
    .line 950
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    .line 951
    .line 952
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 953
    .line 954
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v3

    .line 958
    aget-object v3, v3, v7

    .line 959
    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-result v2

    .line 964
    const/4 v3, 0x0

    .line 965
    if-eqz v2, :cond_12

    .line 966
    .line 967
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 968
    .line 969
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 970
    .line 971
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 972
    .line 973
    .line 974
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 975
    .line 976
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 977
    .line 978
    .line 979
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 980
    .line 981
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetlatestSCPMVersion(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v1

    .line 985
    if-eqz v1, :cond_14

    .line 986
    .line 987
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 988
    .line 989
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    and-int/2addr v1, v15

    .line 994
    if-eqz v1, :cond_14

    .line 995
    .line 996
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 997
    .line 998
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDeviceCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 999
    .line 1000
    .line 1001
    move-result v1

    .line 1002
    and-int/2addr v1, v14

    .line 1003
    if-eqz v1, :cond_14

    .line 1004
    .line 1005
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1006
    .line 1007
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v1

    .line 1011
    if-eqz v1, :cond_11

    .line 1012
    .line 1013
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v3

    .line 1017
    :cond_11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1018
    .line 1019
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetMacOuis(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)Ljava/util/HashSet;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v2

    .line 1023
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/util/HashSet;)V

    .line 1024
    .line 1025
    .line 1026
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1027
    .line 1028
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckTwtAllowed(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    .line 1029
    .line 1030
    .line 1031
    move-result v1

    .line 1032
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1033
    .line 1034
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v2

    .line 1038
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1039
    .line 1040
    .line 1041
    move-result v2

    .line 1042
    if-eqz v2, :cond_14

    .line 1043
    .line 1044
    if-nez v1, :cond_14

    .line 1045
    .line 1046
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1047
    .line 1048
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1053
    .line 1054
    .line 1055
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1056
    .line 1057
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v1

    .line 1061
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 1062
    .line 1063
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1064
    .line 1065
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v1

    .line 1069
    const-string v2, "Twt Policy violation from new policy"

    .line 1070
    .line 1071
    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1072
    .line 1073
    .line 1074
    goto :goto_2

    .line 1075
    :cond_12
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    .line 1076
    .line 1077
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1078
    .line 1079
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v4

    .line 1083
    aget-object v4, v4, v14

    .line 1084
    .line 1085
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v2

    .line 1089
    if-eqz v2, :cond_14

    .line 1090
    .line 1091
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1092
    .line 1093
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 1094
    .line 1095
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmScpmDataProviderSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 1096
    .line 1097
    .line 1098
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1099
    .line 1100
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckScpmPolicySchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1101
    .line 1102
    .line 1103
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1104
    .line 1105
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLatestScpmVersionSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    if-eqz v1, :cond_14

    .line 1110
    .line 1111
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1112
    .line 1113
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v1

    .line 1117
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v1

    .line 1121
    if-eqz v1, :cond_14

    .line 1122
    .line 1123
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1124
    .line 1125
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Landroid/net/wifi/WifiInfo;

    .line 1126
    .line 1127
    .line 1128
    move-result-object v1

    .line 1129
    if-eqz v1, :cond_13

    .line 1130
    .line 1131
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    :cond_13
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1136
    .line 1137
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetMacOuis(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/lang/String;)Ljava/util/HashSet;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v2

    .line 1141
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/util/HashSet;)V

    .line 1142
    .line 1143
    .line 1144
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1145
    .line 1146
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckScheduledPmAllowed(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v1

    .line 1150
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1151
    .line 1152
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v2

    .line 1156
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1157
    .line 1158
    .line 1159
    move-result v2

    .line 1160
    if-eqz v2, :cond_14

    .line 1161
    .line 1162
    if-nez v1, :cond_14

    .line 1163
    .line 1164
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1165
    .line 1166
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1171
    .line 1172
    .line 1173
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1174
    .line 1175
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v1

    .line 1179
    const-string v2, "SchedPm Policy violation from new policy"

    .line 1180
    .line 1181
    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1182
    .line 1183
    .line 1184
    :cond_14
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1185
    .line 1186
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1191
    .line 1192
    .line 1193
    move-result v1

    .line 1194
    if-nez v1, :cond_16

    .line 1195
    .line 1196
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1197
    .line 1198
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v1

    .line 1202
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1203
    .line 1204
    .line 1205
    move-result v1

    .line 1206
    if-eqz v1, :cond_15

    .line 1207
    .line 1208
    goto :goto_3

    .line 1209
    :cond_15
    move v14, v7

    .line 1210
    :cond_16
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1211
    .line 1212
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v1

    .line 1216
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1217
    .line 1218
    .line 1219
    move-result v1

    .line 1220
    if-eqz v1, :cond_17

    .line 1221
    .line 1222
    if-nez v14, :cond_17

    .line 1223
    .line 1224
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1225
    .line 1226
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1227
    .line 1228
    .line 1229
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1230
    .line 1231
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1236
    .line 1237
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v2

    .line 1241
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 1242
    .line 1243
    .line 1244
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1245
    .line 1246
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficControlPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1247
    .line 1248
    .line 1249
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1250
    .line 1251
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v1

    .line 1255
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1256
    .line 1257
    .line 1258
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1259
    .line 1260
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1261
    .line 1262
    .line 1263
    move-result-object v1

    .line 1264
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1265
    .line 1266
    .line 1267
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1268
    .line 1269
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v1

    .line 1273
    iput v7, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 1274
    .line 1275
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1276
    .line 1277
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1282
    .line 1283
    .line 1284
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1285
    .line 1286
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v1

    .line 1290
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1291
    .line 1292
    .line 1293
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1294
    .line 1295
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v1

    .line 1299
    const-string v2, "Disable PM control"

    .line 1300
    .line 1301
    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1302
    .line 1303
    .line 1304
    :cond_17
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1305
    .line 1306
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mreConfigureSessionParametersBoundary(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1307
    .line 1308
    .line 1309
    return-void

    .line 1310
    :pswitch_7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1311
    .line 1312
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1313
    .line 1314
    .line 1315
    return-void

    .line 1316
    :pswitch_8
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1317
    .line 1318
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$monDisconnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1319
    .line 1320
    .line 1321
    return-void

    .line 1322
    :pswitch_9
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1323
    .line 1324
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$monConnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1325
    .line 1326
    .line 1327
    return-void

    .line 1328
    :pswitch_a
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1329
    .line 1330
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v2

    .line 1334
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1335
    .line 1336
    .line 1337
    move-result v2

    .line 1338
    if-eqz v2, :cond_29

    .line 1339
    .line 1340
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1341
    .line 1342
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v2

    .line 1346
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1347
    .line 1348
    .line 1349
    move-result v2

    .line 1350
    if-nez v2, :cond_18

    .line 1351
    .line 1352
    goto/16 :goto_a

    .line 1353
    .line 1354
    :cond_18
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1355
    .line 1356
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1357
    .line 1358
    .line 1359
    move-result-wide v3

    .line 1360
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1361
    .line 1362
    .line 1363
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1364
    .line 1365
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1366
    .line 1367
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1368
    .line 1369
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 1370
    .line 1371
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1372
    .line 1373
    .line 1374
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1375
    .line 1376
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1377
    .line 1378
    .line 1379
    move-result-wide v2

    .line 1380
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1381
    .line 1382
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1383
    .line 1384
    .line 1385
    move-result-wide v4

    .line 1386
    cmp-long v2, v2, v4

    .line 1387
    .line 1388
    if-eqz v2, :cond_29

    .line 1389
    .line 1390
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1391
    .line 1392
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1393
    .line 1394
    .line 1395
    move-result-wide v2

    .line 1396
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1397
    .line 1398
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1399
    .line 1400
    .line 1401
    move-result-wide v4

    .line 1402
    sub-long/2addr v2, v4

    .line 1403
    const-wide/16 v4, 0x1f40

    .line 1404
    .line 1405
    mul-long/2addr v2, v4

    .line 1406
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1407
    .line 1408
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1409
    .line 1410
    .line 1411
    move-result-wide v4

    .line 1412
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1413
    .line 1414
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1415
    .line 1416
    .line 1417
    move-result-wide v10

    .line 1418
    sub-long/2addr v4, v10

    .line 1419
    div-long/2addr v2, v4

    .line 1420
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1421
    .line 1422
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1423
    .line 1424
    .line 1425
    move-result-wide v5

    .line 1426
    invoke-static {v4, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1427
    .line 1428
    .line 1429
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1430
    .line 1431
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1432
    .line 1433
    .line 1434
    move-result-wide v5

    .line 1435
    invoke-static {v4, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1436
    .line 1437
    .line 1438
    long-to-float v2, v2

    .line 1439
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1440
    .line 1441
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTrafficLimit(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 1442
    .line 1443
    .line 1444
    move-result v3

    .line 1445
    int-to-float v3, v3

    .line 1446
    div-float/2addr v2, v3

    .line 1447
    const v3, 0x3f666666    # 0.9f

    .line 1448
    .line 1449
    .line 1450
    cmpl-float v3, v2, v3

    .line 1451
    .line 1452
    const v4, 0x3f4ccccd    # 0.8f

    .line 1453
    .line 1454
    .line 1455
    if-ltz v3, :cond_1b

    .line 1456
    .line 1457
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1458
    .line 1459
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v3

    .line 1463
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1464
    .line 1465
    .line 1466
    move-result v3

    .line 1467
    if-nez v3, :cond_19

    .line 1468
    .line 1469
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1470
    .line 1471
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v3

    .line 1475
    invoke-virtual {v3, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1476
    .line 1477
    .line 1478
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1479
    .line 1480
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1481
    .line 1482
    .line 1483
    goto :goto_5

    .line 1484
    :cond_19
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1485
    .line 1486
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1487
    .line 1488
    .line 1489
    move-result v4

    .line 1490
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1491
    .line 1492
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingStep(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1493
    .line 1494
    .line 1495
    move-result v5

    .line 1496
    sub-float/2addr v4, v5

    .line 1497
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1498
    .line 1499
    .line 1500
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1501
    .line 1502
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1503
    .line 1504
    .line 1505
    move-result v4

    .line 1506
    const v5, 0x3e99999a    # 0.3f

    .line 1507
    .line 1508
    .line 1509
    cmpg-float v4, v4, v5

    .line 1510
    .line 1511
    if-gez v4, :cond_1a

    .line 1512
    .line 1513
    goto :goto_4

    .line 1514
    :cond_1a
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1515
    .line 1516
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1517
    .line 1518
    .line 1519
    move-result v5

    .line 1520
    :goto_4
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1521
    .line 1522
    .line 1523
    :goto_5
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1524
    .line 1525
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v3

    .line 1529
    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 1530
    .line 1531
    if-eq v3, v14, :cond_1f

    .line 1532
    .line 1533
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1534
    .line 1535
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v16

    .line 1539
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 1540
    .line 1541
    iget-wide v5, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 1542
    .line 1543
    iget-wide v7, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 1544
    .line 1545
    iget-wide v10, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 1546
    .line 1547
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1548
    .line 1549
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1550
    .line 1551
    .line 1552
    move-result-wide v25

    .line 1553
    move-wide/from16 v17, v3

    .line 1554
    .line 1555
    move-wide/from16 v19, v5

    .line 1556
    .line 1557
    move-wide/from16 v21, v7

    .line 1558
    .line 1559
    move-wide/from16 v23, v10

    .line 1560
    .line 1561
    invoke-virtual/range {v16 .. v26}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    .line 1562
    .line 1563
    .line 1564
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1565
    .line 1566
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 1567
    .line 1568
    .line 1569
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1570
    .line 1571
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1572
    .line 1573
    .line 1574
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1575
    .line 1576
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1577
    .line 1578
    .line 1579
    move-result-object v1

    .line 1580
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->reinitialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 1581
    .line 1582
    .line 1583
    move-result-object v1

    .line 1584
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1585
    .line 1586
    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 1587
    .line 1588
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1589
    .line 1590
    .line 1591
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1592
    .line 1593
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 1594
    .line 1595
    .line 1596
    move-result v3

    .line 1597
    int-to-float v3, v3

    .line 1598
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1599
    .line 1600
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1601
    .line 1602
    .line 1603
    move-result v4

    .line 1604
    mul-float/2addr v3, v4

    .line 1605
    float-to-int v3, v3

    .line 1606
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    .line 1607
    .line 1608
    .line 1609
    move-result v3

    .line 1610
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1611
    .line 1612
    .line 1613
    invoke-static {v0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v1

    .line 1617
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1618
    .line 1619
    .line 1620
    goto :goto_7

    .line 1621
    :cond_1b
    const v1, 0x3f19999a    # 0.6f

    .line 1622
    .line 1623
    .line 1624
    cmpg-float v1, v2, v1

    .line 1625
    .line 1626
    if-gtz v1, :cond_1d

    .line 1627
    .line 1628
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1629
    .line 1630
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1631
    .line 1632
    .line 1633
    move-result-object v1

    .line 1634
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1635
    .line 1636
    .line 1637
    move-result v1

    .line 1638
    if-eqz v1, :cond_1c

    .line 1639
    .line 1640
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1641
    .line 1642
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1643
    .line 1644
    .line 1645
    :cond_1c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1646
    .line 1647
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1648
    .line 1649
    .line 1650
    move-result-object v1

    .line 1651
    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1652
    .line 1653
    .line 1654
    goto :goto_7

    .line 1655
    :cond_1d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1656
    .line 1657
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v1

    .line 1661
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1662
    .line 1663
    .line 1664
    move-result v1

    .line 1665
    if-eqz v1, :cond_1f

    .line 1666
    .line 1667
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1668
    .line 1669
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1670
    .line 1671
    .line 1672
    move-result v3

    .line 1673
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1674
    .line 1675
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingStep(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1676
    .line 1677
    .line 1678
    move-result v5

    .line 1679
    add-float/2addr v3, v5

    .line 1680
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1681
    .line 1682
    .line 1683
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1684
    .line 1685
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1686
    .line 1687
    .line 1688
    move-result v3

    .line 1689
    cmpl-float v3, v3, v4

    .line 1690
    .line 1691
    if-lez v3, :cond_1e

    .line 1692
    .line 1693
    goto :goto_6

    .line 1694
    :cond_1e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1695
    .line 1696
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1697
    .line 1698
    .line 1699
    move-result v4

    .line 1700
    :goto_6
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1701
    .line 1702
    .line 1703
    :cond_1f
    :goto_7
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1704
    .line 1705
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v1

    .line 1709
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1710
    .line 1711
    const-string v4, "TC: "

    .line 1712
    .line 1713
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1714
    .line 1715
    .line 1716
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1717
    .line 1718
    .line 1719
    const-string v2, " ("

    .line 1720
    .line 1721
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    .line 1723
    .line 1724
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1725
    .line 1726
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTrafficLimit(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 1727
    .line 1728
    .line 1729
    move-result v2

    .line 1730
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1731
    .line 1732
    .line 1733
    const-string v2, ") "

    .line 1734
    .line 1735
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    .line 1737
    .line 1738
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1739
    .line 1740
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1741
    .line 1742
    .line 1743
    move-result-object v2

    .line 1744
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1745
    .line 1746
    .line 1747
    move-result v2

    .line 1748
    if-eqz v2, :cond_20

    .line 1749
    .line 1750
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1751
    .line 1752
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1753
    .line 1754
    .line 1755
    move-result v0

    .line 1756
    goto :goto_8

    .line 1757
    :cond_20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1758
    .line 1759
    :goto_8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    .line 1762
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1763
    .line 1764
    .line 1765
    move-result-object v0

    .line 1766
    invoke-virtual {v1, v0, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1767
    .line 1768
    .line 1769
    return-void

    .line 1770
    :pswitch_b
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1771
    .line 1772
    .line 1773
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1774
    .line 1775
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v2

    .line 1779
    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 1780
    .line 1781
    if-nez v2, :cond_21

    .line 1782
    .line 1783
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1784
    .line 1785
    invoke-static {v0, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1786
    .line 1787
    .line 1788
    return-void

    .line 1789
    :cond_21
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1790
    .line 1791
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1792
    .line 1793
    .line 1794
    move-result-object v2

    .line 1795
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1796
    .line 1797
    .line 1798
    move-result v2

    .line 1799
    if-nez v2, :cond_22

    .line 1800
    .line 1801
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1802
    .line 1803
    invoke-static {v1, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1804
    .line 1805
    .line 1806
    invoke-static {v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v1

    .line 1810
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1811
    .line 1812
    .line 1813
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 1814
    .line 1815
    .line 1816
    return-void

    .line 1817
    :cond_22
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1818
    .line 1819
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1820
    .line 1821
    .line 1822
    move-result-wide v3

    .line 1823
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1824
    .line 1825
    .line 1826
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1827
    .line 1828
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1829
    .line 1830
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1831
    .line 1832
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1833
    .line 1834
    .line 1835
    move-result-object v18

    .line 1836
    iget-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 1837
    .line 1838
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 1839
    .line 1840
    iget-wide v7, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 1841
    .line 1842
    iget-wide v9, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 1843
    .line 1844
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1845
    .line 1846
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 1847
    .line 1848
    .line 1849
    move-result-wide v27

    .line 1850
    move-wide/from16 v19, v2

    .line 1851
    .line 1852
    move-wide/from16 v21, v4

    .line 1853
    .line 1854
    move-wide/from16 v23, v7

    .line 1855
    .line 1856
    move-wide/from16 v25, v9

    .line 1857
    .line 1858
    invoke-virtual/range {v18 .. v28}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    .line 1859
    .line 1860
    .line 1861
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1862
    .line 1863
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 1864
    .line 1865
    iget-wide v5, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 1866
    .line 1867
    invoke-static {v2, v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckIfRxTrafficStopped(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;JJ)Z

    .line 1868
    .line 1869
    .line 1870
    move-result v1

    .line 1871
    if-eqz v1, :cond_23

    .line 1872
    .line 1873
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1874
    .line 1875
    invoke-static {v1, v12}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateTwtIotIssueDetectionResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1876
    .line 1877
    .line 1878
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1879
    .line 1880
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v1

    .line 1884
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1885
    .line 1886
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v2

    .line 1890
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 1891
    .line 1892
    .line 1893
    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 1894
    .line 1895
    .line 1896
    move-result-object v1

    .line 1897
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1898
    .line 1899
    .line 1900
    return-void

    .line 1901
    :cond_23
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1902
    .line 1903
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1904
    .line 1905
    .line 1906
    move-result-object v1

    .line 1907
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 1908
    .line 1909
    .line 1910
    move-result-object v1

    .line 1911
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1912
    .line 1913
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1914
    .line 1915
    .line 1916
    move-result-object v3

    .line 1917
    aget v1, v1, v15

    .line 1918
    .line 1919
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1920
    .line 1921
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v4

    .line 1925
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v4

    .line 1929
    invoke-virtual {v3, v1, v14, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->tdtOverFlowPerSP(IILcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)F

    .line 1930
    .line 1931
    .line 1932
    move-result v1

    .line 1933
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1934
    .line 1935
    .line 1936
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1937
    .line 1938
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v1

    .line 1942
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1943
    .line 1944
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 1945
    .line 1946
    .line 1947
    move-result v2

    .line 1948
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->updateDataArray(F)V

    .line 1949
    .line 1950
    .line 1951
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1952
    .line 1953
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v1

    .line 1957
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 1958
    .line 1959
    .line 1960
    move-result-object v1

    .line 1961
    aget v2, v1, v12

    .line 1962
    .line 1963
    const v3, 0xc350

    .line 1964
    .line 1965
    .line 1966
    const v4, 0x9c40

    .line 1967
    .line 1968
    .line 1969
    if-ne v2, v14, :cond_25

    .line 1970
    .line 1971
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1972
    .line 1973
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1974
    .line 1975
    .line 1976
    move-result-object v2

    .line 1977
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 1978
    .line 1979
    .line 1980
    move-result v2

    .line 1981
    if-nez v2, :cond_25

    .line 1982
    .line 1983
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1984
    .line 1985
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v2

    .line 1989
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->updateStats()V

    .line 1990
    .line 1991
    .line 1992
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 1993
    .line 1994
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 1995
    .line 1996
    .line 1997
    move-result-object v2

    .line 1998
    aget v5, v1, v15

    .line 1999
    .line 2000
    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowWarning(I)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v2

    .line 2004
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2005
    .line 2006
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2007
    .line 2008
    .line 2009
    move-result-object v5

    .line 2010
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPackageChangeFlag()Z

    .line 2011
    .line 2012
    .line 2013
    move-result v5

    .line 2014
    if-eqz v5, :cond_24

    .line 2015
    .line 2016
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2017
    .line 2018
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v5

    .line 2022
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getIntvAppReset()Z

    .line 2023
    .line 2024
    .line 2025
    move-result v5

    .line 2026
    if-eqz v5, :cond_24

    .line 2027
    .line 2028
    aget v1, v1, v15

    .line 2029
    .line 2030
    if-le v1, v3, :cond_24

    .line 2031
    .line 2032
    iget v1, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 2033
    .line 2034
    iget v3, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2035
    .line 2036
    sub-int/2addr v3, v4

    .line 2037
    div-int/lit8 v3, v3, 0x5

    .line 2038
    .line 2039
    sub-int/2addr v1, v3

    .line 2040
    iput v1, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 2041
    .line 2042
    iput v4, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2043
    .line 2044
    :cond_24
    iget v7, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 2045
    .line 2046
    iget v1, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2047
    .line 2048
    goto :goto_9

    .line 2049
    :cond_25
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2050
    .line 2051
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2052
    .line 2053
    .line 2054
    move-result-object v2

    .line 2055
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPackageChangeFlag()Z

    .line 2056
    .line 2057
    .line 2058
    move-result v2

    .line 2059
    if-eqz v2, :cond_26

    .line 2060
    .line 2061
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2062
    .line 2063
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v2

    .line 2067
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getIntvAppReset()Z

    .line 2068
    .line 2069
    .line 2070
    move-result v2

    .line 2071
    if-eqz v2, :cond_26

    .line 2072
    .line 2073
    aget v2, v1, v15

    .line 2074
    .line 2075
    if-le v2, v3, :cond_26

    .line 2076
    .line 2077
    aget v1, v1, v14

    .line 2078
    .line 2079
    int-to-float v1, v1

    .line 2080
    const v3, 0x471c4000    # 40000.0f

    .line 2081
    .line 2082
    .line 2083
    mul-float/2addr v1, v3

    .line 2084
    int-to-float v2, v2

    .line 2085
    div-float/2addr v1, v2

    .line 2086
    float-to-int v7, v1

    .line 2087
    move v1, v4

    .line 2088
    goto :goto_9

    .line 2089
    :cond_26
    const/4 v1, 0x0

    .line 2090
    const/4 v7, 0x0

    .line 2091
    :goto_9
    if-eqz v7, :cond_29

    .line 2092
    .line 2093
    if-eqz v1, :cond_29

    .line 2094
    .line 2095
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2096
    .line 2097
    invoke-static {v2, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2098
    .line 2099
    .line 2100
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2101
    .line 2102
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2103
    .line 2104
    .line 2105
    move-result-object v2

    .line 2106
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setIntvAlgo(I)V

    .line 2107
    .line 2108
    .line 2109
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2110
    .line 2111
    invoke-virtual {v2, v7}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    .line 2112
    .line 2113
    .line 2114
    move-result v2

    .line 2115
    int-to-float v2, v2

    .line 2116
    int-to-float v3, v1

    .line 2117
    div-float/2addr v2, v3

    .line 2118
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2119
    .line 2120
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2121
    .line 2122
    .line 2123
    move-result v4

    .line 2124
    sub-int v4, v1, v4

    .line 2125
    .line 2126
    int-to-float v4, v4

    .line 2127
    div-float/2addr v4, v3

    .line 2128
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2129
    .line 2130
    move-wide/from16 v5, v16

    .line 2131
    .line 2132
    invoke-static {v3, v2, v5, v6, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckSuspension(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z

    .line 2133
    .line 2134
    .line 2135
    move-result v2

    .line 2136
    if-eqz v2, :cond_27

    .line 2137
    .line 2138
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2139
    .line 2140
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2141
    .line 2142
    .line 2143
    move-result v2

    .line 2144
    and-int/lit8 v2, v2, 0x10

    .line 2145
    .line 2146
    if-nez v2, :cond_27

    .line 2147
    .line 2148
    const/16 v2, 0xb

    .line 2149
    .line 2150
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v1

    .line 2154
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2155
    .line 2156
    .line 2157
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2158
    .line 2159
    .line 2160
    return-void

    .line 2161
    :cond_27
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2162
    .line 2163
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v3

    .line 2167
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2168
    .line 2169
    .line 2170
    move-result v3

    .line 2171
    if-eqz v3, :cond_28

    .line 2172
    .line 2173
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2174
    .line 2175
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdurationTC(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    .line 2176
    .line 2177
    .line 2178
    move-result v7

    .line 2179
    :cond_28
    invoke-virtual {v2, v7}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    .line 2180
    .line 2181
    .line 2182
    move-result v3

    .line 2183
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2184
    .line 2185
    .line 2186
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2187
    .line 2188
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2189
    .line 2190
    .line 2191
    const/16 v1, 0xa

    .line 2192
    .line 2193
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2194
    .line 2195
    .line 2196
    move-result-object v1

    .line 2197
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2198
    .line 2199
    .line 2200
    :cond_29
    :goto_a
    return-void

    .line 2201
    :pswitch_c
    invoke-virtual {v0, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 2202
    .line 2203
    .line 2204
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2205
    .line 2206
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 2207
    .line 2208
    .line 2209
    move-result-object v1

    .line 2210
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 2211
    .line 2212
    if-eqz v1, :cond_32

    .line 2213
    .line 2214
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2215
    .line 2216
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 2217
    .line 2218
    .line 2219
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2220
    .line 2221
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2222
    .line 2223
    .line 2224
    move-result-object v1

    .line 2225
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPackageChangeFlag()Z

    .line 2226
    .line 2227
    .line 2228
    move-result v1

    .line 2229
    if-eqz v1, :cond_2a

    .line 2230
    .line 2231
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2232
    .line 2233
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2234
    .line 2235
    .line 2236
    move-result-object v1

    .line 2237
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->clearPackageChangeFlag()V

    .line 2238
    .line 2239
    .line 2240
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2241
    .line 2242
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2243
    .line 2244
    .line 2245
    move-result-object v1

    .line 2246
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2247
    .line 2248
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2249
    .line 2250
    .line 2251
    move-result-object v2

    .line 2252
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    .line 2253
    .line 2254
    .line 2255
    move-result-object v2

    .line 2256
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->reinitialize(Ljava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 2257
    .line 2258
    .line 2259
    :cond_2a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2260
    .line 2261
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 2262
    .line 2263
    .line 2264
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2265
    .line 2266
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2267
    .line 2268
    .line 2269
    move-result-object v1

    .line 2270
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->updateStats()V

    .line 2271
    .line 2272
    .line 2273
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2274
    .line 2275
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2276
    .line 2277
    .line 2278
    move-result-object v1

    .line 2279
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    .line 2280
    .line 2281
    .line 2282
    move-result-object v1

    .line 2283
    aget v2, v1, v12

    .line 2284
    .line 2285
    if-ne v2, v14, :cond_2b

    .line 2286
    .line 2287
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2288
    .line 2289
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2290
    .line 2291
    .line 2292
    move-result-object v2

    .line 2293
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2294
    .line 2295
    .line 2296
    move-result v2

    .line 2297
    if-nez v2, :cond_2b

    .line 2298
    .line 2299
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2300
    .line 2301
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2302
    .line 2303
    .line 2304
    move-result-object v2

    .line 2305
    aget v1, v1, v15

    .line 2306
    .line 2307
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowWarning(I)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 2308
    .line 2309
    .line 2310
    move-result-object v1

    .line 2311
    goto :goto_b

    .line 2312
    :cond_2b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2313
    .line 2314
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2315
    .line 2316
    .line 2317
    move-result-object v1

    .line 2318
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TWTParameterPoll()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 2319
    .line 2320
    .line 2321
    move-result-object v1

    .line 2322
    :goto_b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2323
    .line 2324
    iget v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 2325
    .line 2326
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    .line 2327
    .line 2328
    .line 2329
    move-result v2

    .line 2330
    int-to-float v2, v2

    .line 2331
    iget v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2332
    .line 2333
    int-to-float v4, v3

    .line 2334
    div-float/2addr v2, v4

    .line 2335
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2336
    .line 2337
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2338
    .line 2339
    .line 2340
    move-result v4

    .line 2341
    sub-int/2addr v3, v4

    .line 2342
    int-to-float v3, v3

    .line 2343
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2344
    .line 2345
    int-to-float v4, v4

    .line 2346
    div-float/2addr v3, v4

    .line 2347
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2348
    .line 2349
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v4

    .line 2353
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPacketMonitoringStats()[J

    .line 2354
    .line 2355
    .line 2356
    move-result-object v4

    .line 2357
    aget-wide v4, v4, v12

    .line 2358
    .line 2359
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2360
    .line 2361
    invoke-static {v6, v2, v4, v5, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckSuspension(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z

    .line 2362
    .line 2363
    .line 2364
    move-result v2

    .line 2365
    if-eqz v2, :cond_2c

    .line 2366
    .line 2367
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2368
    .line 2369
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2370
    .line 2371
    .line 2372
    move-result v2

    .line 2373
    and-int/lit8 v2, v2, 0x10

    .line 2374
    .line 2375
    if-nez v2, :cond_2c

    .line 2376
    .line 2377
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2378
    .line 2379
    invoke-static {v1, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2380
    .line 2381
    .line 2382
    const/16 v2, 0xb

    .line 2383
    .line 2384
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2385
    .line 2386
    .line 2387
    move-result-object v1

    .line 2388
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2389
    .line 2390
    .line 2391
    goto/16 :goto_e

    .line 2392
    .line 2393
    :cond_2c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2394
    .line 2395
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2396
    .line 2397
    .line 2398
    move-result-object v2

    .line 2399
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2400
    .line 2401
    .line 2402
    move-result v2

    .line 2403
    if-eqz v2, :cond_2d

    .line 2404
    .line 2405
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2406
    .line 2407
    iget v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2408
    .line 2409
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdurationTC(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    .line 2410
    .line 2411
    .line 2412
    move-result v2

    .line 2413
    goto :goto_c

    .line 2414
    :cond_2d
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 2415
    .line 2416
    :goto_c
    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    .line 2417
    .line 2418
    if-nez v3, :cond_2e

    .line 2419
    .line 2420
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2421
    .line 2422
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2423
    .line 2424
    .line 2425
    move-result-object v3

    .line 2426
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2427
    .line 2428
    .line 2429
    move-result v3

    .line 2430
    if-eqz v3, :cond_30

    .line 2431
    .line 2432
    :cond_2e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2433
    .line 2434
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2435
    .line 2436
    .line 2437
    move-result v4

    .line 2438
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapDuration(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    .line 2439
    .line 2440
    .line 2441
    move-result v3

    .line 2442
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2443
    .line 2444
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapDuration(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    .line 2445
    .line 2446
    .line 2447
    move-result v4

    .line 2448
    if-ne v3, v4, :cond_2f

    .line 2449
    .line 2450
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2451
    .line 2452
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2453
    .line 2454
    .line 2455
    move-result v4

    .line 2456
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    .line 2457
    .line 2458
    .line 2459
    move-result v3

    .line 2460
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2461
    .line 2462
    iget v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2463
    .line 2464
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    .line 2465
    .line 2466
    .line 2467
    move-result v4

    .line 2468
    if-eq v3, v4, :cond_30

    .line 2469
    .line 2470
    :cond_2f
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2471
    .line 2472
    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2473
    .line 2474
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mrenewIgnored(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;II)Z

    .line 2475
    .line 2476
    .line 2477
    move-result v3

    .line 2478
    if-nez v3, :cond_30

    .line 2479
    .line 2480
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2481
    .line 2482
    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2483
    .line 2484
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2485
    .line 2486
    .line 2487
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2488
    .line 2489
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    .line 2490
    .line 2491
    .line 2492
    move-result v2

    .line 2493
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2494
    .line 2495
    .line 2496
    const/16 v1, 0xa

    .line 2497
    .line 2498
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2499
    .line 2500
    .line 2501
    move-result-object v1

    .line 2502
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2503
    .line 2504
    .line 2505
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2506
    .line 2507
    invoke-static {v1, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2508
    .line 2509
    .line 2510
    :cond_30
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2511
    .line 2512
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2513
    .line 2514
    .line 2515
    move-result-object v1

    .line 2516
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2517
    .line 2518
    .line 2519
    move-result v1

    .line 2520
    if-eqz v1, :cond_31

    .line 2521
    .line 2522
    const/16 v1, 0x1770

    .line 2523
    .line 2524
    goto :goto_d

    .line 2525
    :cond_31
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2526
    .line 2527
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2528
    .line 2529
    .line 2530
    move-result-object v1

    .line 2531
    const/4 v2, 0x0

    .line 2532
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getCallPeriod(I)I

    .line 2533
    .line 2534
    .line 2535
    move-result v1

    .line 2536
    :goto_d
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2537
    .line 2538
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartAlgorithmPollWithNewInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2539
    .line 2540
    .line 2541
    :cond_32
    :goto_e
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2542
    .line 2543
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v0

    .line 2547
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetDataArray()V

    .line 2548
    .line 2549
    .line 2550
    return-void

    .line 2551
    :pswitch_d
    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 2552
    .line 2553
    .line 2554
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2555
    .line 2556
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2557
    .line 2558
    .line 2559
    move-result-object v2

    .line 2560
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2561
    .line 2562
    .line 2563
    move-result v2

    .line 2564
    if-nez v2, :cond_33

    .line 2565
    .line 2566
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2567
    .line 2568
    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2569
    .line 2570
    .line 2571
    return-void

    .line 2572
    :cond_33
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2573
    .line 2574
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2575
    .line 2576
    .line 2577
    move-result-wide v7

    .line 2578
    invoke-static {v2, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 2579
    .line 2580
    .line 2581
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2582
    .line 2583
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 2584
    .line 2585
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2586
    .line 2587
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2588
    .line 2589
    .line 2590
    move-result-object v16

    .line 2591
    iget-wide v7, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 2592
    .line 2593
    iget-wide v9, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 2594
    .line 2595
    move v11, v3

    .line 2596
    move-object v2, v4

    .line 2597
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 2598
    .line 2599
    move/from16 v28, v5

    .line 2600
    .line 2601
    iget-wide v5, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 2602
    .line 2603
    move/from16 p1, v11

    .line 2604
    .line 2605
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2606
    .line 2607
    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 2608
    .line 2609
    .line 2610
    move-result-wide v25

    .line 2611
    move-wide/from16 v21, v3

    .line 2612
    .line 2613
    move-wide/from16 v23, v5

    .line 2614
    .line 2615
    move-wide/from16 v17, v7

    .line 2616
    .line 2617
    move-wide/from16 v19, v9

    .line 2618
    .line 2619
    invoke-virtual/range {v16 .. v26}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    .line 2620
    .line 2621
    .line 2622
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2623
    .line 2624
    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 2625
    .line 2626
    iget-wide v6, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 2627
    .line 2628
    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckIfRxTrafficStopped(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;JJ)Z

    .line 2629
    .line 2630
    .line 2631
    move-result v1

    .line 2632
    if-eqz v1, :cond_34

    .line 2633
    .line 2634
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2635
    .line 2636
    invoke-static {v1, v12}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateTwtIotIssueDetectionResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2637
    .line 2638
    .line 2639
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2640
    .line 2641
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2642
    .line 2643
    .line 2644
    move-result-object v1

    .line 2645
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2646
    .line 2647
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 2648
    .line 2649
    .line 2650
    move-result-object v2

    .line 2651
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 2652
    .line 2653
    .line 2654
    invoke-static {v0, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 2655
    .line 2656
    .line 2657
    move-result-object v1

    .line 2658
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2659
    .line 2660
    .line 2661
    return-void

    .line 2662
    :cond_34
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2663
    .line 2664
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2665
    .line 2666
    .line 2667
    move-result-object v1

    .line 2668
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 2669
    .line 2670
    .line 2671
    move-result v1

    .line 2672
    if-eqz v1, :cond_35

    .line 2673
    .line 2674
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2675
    .line 2676
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2677
    .line 2678
    .line 2679
    move-result-object v1

    .line 2680
    const/4 v2, 0x0

    .line 2681
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2682
    .line 2683
    .line 2684
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2685
    .line 2686
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v0

    .line 2690
    const-string v1, "Init. traff. update for resumption check"

    .line 2691
    .line 2692
    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 2693
    .line 2694
    .line 2695
    return-void

    .line 2696
    :cond_35
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2697
    .line 2698
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 2699
    .line 2700
    .line 2701
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2702
    .line 2703
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 2704
    .line 2705
    .line 2706
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2707
    .line 2708
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 2709
    .line 2710
    .line 2711
    move-result-wide v3

    .line 2712
    const-wide/16 v5, 0x1

    .line 2713
    .line 2714
    add-long/2addr v3, v5

    .line 2715
    invoke-static {v1, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 2716
    .line 2717
    .line 2718
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2719
    .line 2720
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2721
    .line 2722
    .line 2723
    move-result-object v1

    .line 2724
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->reinitialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 2725
    .line 2726
    .line 2727
    move-result-object v1

    .line 2728
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2729
    .line 2730
    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 2731
    .line 2732
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2733
    .line 2734
    .line 2735
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2736
    .line 2737
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2738
    .line 2739
    .line 2740
    move-result-object v3

    .line 2741
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2742
    .line 2743
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2744
    .line 2745
    .line 2746
    move-result v4

    .line 2747
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2748
    .line 2749
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 2750
    .line 2751
    .line 2752
    move-result-object v5

    .line 2753
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 2754
    .line 2755
    .line 2756
    move-result-object v5

    .line 2757
    const/4 v6, 0x0

    .line 2758
    invoke-virtual {v3, v4, v6, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->tdtOverFlowPerSP(IILcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)F

    .line 2759
    .line 2760
    .line 2761
    move-result v3

    .line 2762
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 2763
    .line 2764
    .line 2765
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2766
    .line 2767
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2768
    .line 2769
    .line 2770
    move-result-object v3

    .line 2771
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getDiffStats()[J

    .line 2772
    .line 2773
    .line 2774
    move-result-object v3

    .line 2775
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;[J)V

    .line 2776
    .line 2777
    .line 2778
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2779
    .line 2780
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2781
    .line 2782
    .line 2783
    move-result-object v3

    .line 2784
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2785
    .line 2786
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    .line 2787
    .line 2788
    .line 2789
    move-result-object v1

    .line 2790
    aget-wide v4, v1, p1

    .line 2791
    .line 2792
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2793
    .line 2794
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    .line 2795
    .line 2796
    .line 2797
    move-result-object v1

    .line 2798
    aget-wide v6, v1, v13

    .line 2799
    .line 2800
    const-wide/16 v8, 0x3e8

    .line 2801
    .line 2802
    div-long/2addr v6, v8

    .line 2803
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2804
    .line 2805
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    .line 2806
    .line 2807
    .line 2808
    move-result-object v1

    .line 2809
    aget-wide v10, v1, v13

    .line 2810
    .line 2811
    div-long v8, v10, v8

    .line 2812
    .line 2813
    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setTwtMetric(JJJ)V

    .line 2814
    .line 2815
    .line 2816
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2817
    .line 2818
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    .line 2819
    .line 2820
    .line 2821
    move-result-object v1

    .line 2822
    aget-wide v3, v1, v28

    .line 2823
    .line 2824
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2825
    .line 2826
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2827
    .line 2828
    .line 2829
    move-result-object v1

    .line 2830
    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getEpsilonValue(J)J

    .line 2831
    .line 2832
    .line 2833
    move-result-wide v3

    .line 2834
    long-to-float v1, v3

    .line 2835
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2836
    .line 2837
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2838
    .line 2839
    .line 2840
    move-result-object v3

    .line 2841
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2842
    .line 2843
    const-string v5, "WFR: "

    .line 2844
    .line 2845
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2846
    .line 2847
    .line 2848
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2849
    .line 2850
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 2851
    .line 2852
    .line 2853
    move-result v5

    .line 2854
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2855
    .line 2856
    .line 2857
    const-string v5, " "

    .line 2858
    .line 2859
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2860
    .line 2861
    .line 2862
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2863
    .line 2864
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    .line 2865
    .line 2866
    .line 2867
    move-result-wide v6

    .line 2868
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2869
    .line 2870
    .line 2871
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    .line 2873
    .line 2874
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2875
    .line 2876
    .line 2877
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2878
    .line 2879
    .line 2880
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2881
    .line 2882
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2883
    .line 2884
    .line 2885
    move-result v6

    .line 2886
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2887
    .line 2888
    .line 2889
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2890
    .line 2891
    .line 2892
    move-result-object v4

    .line 2893
    const/4 v6, 0x0

    .line 2894
    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 2895
    .line 2896
    .line 2897
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2898
    .line 2899
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 2900
    .line 2901
    .line 2902
    move-result v4

    .line 2903
    add-float/2addr v4, v1

    .line 2904
    float-to-int v1, v4

    .line 2905
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    .line 2906
    .line 2907
    .line 2908
    move-result v1

    .line 2909
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 2910
    .line 2911
    .line 2912
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2913
    .line 2914
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2915
    .line 2916
    .line 2917
    move-result v1

    .line 2918
    int-to-float v1, v1

    .line 2919
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2920
    .line 2921
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2922
    .line 2923
    .line 2924
    move-result v3

    .line 2925
    int-to-float v3, v3

    .line 2926
    div-float/2addr v1, v3

    .line 2927
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2928
    .line 2929
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2930
    .line 2931
    .line 2932
    move-result v3

    .line 2933
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2934
    .line 2935
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2936
    .line 2937
    .line 2938
    move-result v4

    .line 2939
    sub-int/2addr v3, v4

    .line 2940
    int-to-float v3, v3

    .line 2941
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2942
    .line 2943
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 2944
    .line 2945
    .line 2946
    move-result v4

    .line 2947
    int-to-float v4, v4

    .line 2948
    div-float/2addr v3, v4

    .line 2949
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2950
    .line 2951
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    .line 2952
    .line 2953
    .line 2954
    move-result-object v4

    .line 2955
    aget-wide v6, v4, v15

    .line 2956
    .line 2957
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2958
    .line 2959
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    .line 2960
    .line 2961
    .line 2962
    move-result-object v4

    .line 2963
    aget-wide v8, v4, v12

    .line 2964
    .line 2965
    add-long/2addr v6, v8

    .line 2966
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2967
    .line 2968
    invoke-static {v4, v1, v6, v7, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckResumption(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z

    .line 2969
    .line 2970
    .line 2971
    move-result v1

    .line 2972
    if-eqz v1, :cond_38

    .line 2973
    .line 2974
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2975
    .line 2976
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 2977
    .line 2978
    .line 2979
    move-result-object v1

    .line 2980
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2981
    .line 2982
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 2983
    .line 2984
    .line 2985
    move-result-object v3

    .line 2986
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    .line 2987
    .line 2988
    .line 2989
    move-result-object v3

    .line 2990
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getAppTwtDisableFlag(Ljava/lang/String;)Z

    .line 2991
    .line 2992
    .line 2993
    move-result v1

    .line 2994
    if-nez v1, :cond_38

    .line 2995
    .line 2996
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 2997
    .line 2998
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMediatorGranted(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2999
    .line 3000
    .line 3001
    move-result-object v1

    .line 3002
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 3003
    .line 3004
    .line 3005
    move-result v1

    .line 3006
    if-eqz v1, :cond_37

    .line 3007
    .line 3008
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3009
    .line 3010
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWaitingGrant(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3011
    .line 3012
    .line 3013
    move-result-object v1

    .line 3014
    const/4 v2, 0x0

    .line 3015
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3016
    .line 3017
    .line 3018
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3019
    .line 3020
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 3021
    .line 3022
    .line 3023
    move-result-object v1

    .line 3024
    const-string v2, "React."

    .line 3025
    .line 3026
    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 3027
    .line 3028
    .line 3029
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3030
    .line 3031
    const/16 v2, 0xbb8

    .line 3032
    .line 3033
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 3034
    .line 3035
    .line 3036
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3037
    .line 3038
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetchipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    .line 3039
    .line 3040
    .line 3041
    move-result-object v1

    .line 3042
    if-eqz v1, :cond_36

    .line 3043
    .line 3044
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3045
    .line 3046
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetchipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v1

    .line 3050
    const-string v2, "QUALCOMM"

    .line 3051
    .line 3052
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 3053
    .line 3054
    .line 3055
    move-result v1

    .line 3056
    if-eqz v1, :cond_36

    .line 3057
    .line 3058
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3059
    .line 3060
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 3061
    .line 3062
    .line 3063
    move-result v1

    .line 3064
    const v2, 0xa000

    .line 3065
    .line 3066
    .line 3067
    if-lt v1, v2, :cond_36

    .line 3068
    .line 3069
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3070
    .line 3071
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 3072
    .line 3073
    .line 3074
    move-result v2

    .line 3075
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3076
    .line 3077
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 3078
    .line 3079
    .line 3080
    move-result v3

    .line 3081
    sub-int/2addr v2, v3

    .line 3082
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 3083
    .line 3084
    .line 3085
    :cond_36
    const/16 v1, 0xa

    .line 3086
    .line 3087
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 3088
    .line 3089
    .line 3090
    move-result-object v1

    .line 3091
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3092
    .line 3093
    .line 3094
    return-void

    .line 3095
    :cond_37
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3096
    .line 3097
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 3098
    .line 3099
    .line 3100
    move-result-object v1

    .line 3101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 3102
    .line 3103
    const-string v3, "Waiting grant "

    .line 3104
    .line 3105
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3106
    .line 3107
    .line 3108
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3109
    .line 3110
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWakeRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    .line 3111
    .line 3112
    .line 3113
    move-result v3

    .line 3114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 3115
    .line 3116
    .line 3117
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3118
    .line 3119
    .line 3120
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3121
    .line 3122
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 3123
    .line 3124
    .line 3125
    move-result v3

    .line 3126
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3127
    .line 3128
    .line 3129
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3130
    .line 3131
    .line 3132
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3133
    .line 3134
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 3135
    .line 3136
    .line 3137
    move-result v3

    .line 3138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3139
    .line 3140
    .line 3141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3142
    .line 3143
    .line 3144
    move-result-object v2

    .line 3145
    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 3146
    .line 3147
    .line 3148
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3149
    .line 3150
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWaitingGrant(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3151
    .line 3152
    .line 3153
    move-result-object v0

    .line 3154
    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3155
    .line 3156
    .line 3157
    return-void

    .line 3158
    :cond_38
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3159
    .line 3160
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 3161
    .line 3162
    .line 3163
    move-result-object v1

    .line 3164
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3165
    .line 3166
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 3167
    .line 3168
    .line 3169
    move-result-object v3

    .line 3170
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    .line 3171
    .line 3172
    .line 3173
    move-result-object v3

    .line 3174
    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getAppTwtDisableFlag(Ljava/lang/String;)Z

    .line 3175
    .line 3176
    .line 3177
    move-result v1

    .line 3178
    if-nez v1, :cond_3a

    .line 3179
    .line 3180
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3181
    .line 3182
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    .line 3183
    .line 3184
    .line 3185
    move-result-object v1

    .line 3186
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getSerDetRes()I

    .line 3187
    .line 3188
    .line 3189
    move-result v1

    .line 3190
    if-nez v1, :cond_39

    .line 3191
    .line 3192
    goto :goto_f

    .line 3193
    :cond_39
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3194
    .line 3195
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 3196
    .line 3197
    .line 3198
    move-result-object v1

    .line 3199
    new-instance v3, Ljava/lang/StringBuilder;

    .line 3200
    .line 3201
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3202
    .line 3203
    .line 3204
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3205
    .line 3206
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    .line 3207
    .line 3208
    .line 3209
    move-result v2

    .line 3210
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3211
    .line 3212
    .line 3213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3214
    .line 3215
    .line 3216
    move-result-object v2

    .line 3217
    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 3218
    .line 3219
    .line 3220
    goto :goto_10

    .line 3221
    :cond_3a
    :goto_f
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3222
    .line 3223
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    .line 3224
    .line 3225
    .line 3226
    move-result-object v1

    .line 3227
    const-string v2, "Deact. CG"

    .line 3228
    .line 3229
    invoke-virtual {v1, v2, v15}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 3230
    .line 3231
    .line 3232
    :goto_10
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 3233
    .line 3234
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWaitingGrant(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3235
    .line 3236
    .line 3237
    move-result-object v0

    .line 3238
    const/4 v2, 0x0

    .line 3239
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3240
    .line 3241
    .line 3242
    return-void

    .line 3243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
