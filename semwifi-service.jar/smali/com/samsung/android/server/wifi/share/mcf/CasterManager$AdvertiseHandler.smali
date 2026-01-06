.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdvertiseHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.Handler"


# instance fields
.field private final mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

.field private mDelayRestartAuthAdvertise:Z

.field private mIsRestartAuthAdvertise:Z

.field private final mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

.field private mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

.field private final mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-direct {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 18
    .line 19
    new-instance p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method delayRestartAuthAdvertiseForMultipleSendPassword(Z)V
    .locals 2

    .line 1
    const-string v0, "delayRestartAuthAdvertiseForMultipleSendPassword : "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WifiProfileShare.Handler"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mDelayRestartAuthAdvertise:Z

    .line 13
    .line 14
    return-void
.end method

.method getDeviceData(I)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 7
    .line 8
    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "handleMessage msg.what : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p1, Landroid/os/Message;->what:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", msg.arg1 : "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "WifiProfileShare.Handler"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string p0, "MCFCaster is null !"

    .line 37
    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 43
    .line 44
    const-string v2, "sendPassword "

    .line 45
    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v0, :cond_7

    .line 49
    .line 50
    const-wide/16 v5, 0x3a98

    .line 51
    .line 52
    if-eq v0, v4, :cond_2

    .line 53
    .line 54
    const/4 v2, 0x2

    .line 55
    if-eq v0, v2, :cond_1

    .line 56
    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v0, "unhandled message id "

    .line 60
    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget p1, p1, Landroid/os/Message;->what:I

    .line 65
    .line 66
    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_1
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Landroid/os/Message;

    .line 74
    .line 75
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 76
    .line 77
    .line 78
    iput v4, p1, Landroid/os/Message;->what:I

    .line 79
    .line 80
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 81
    .line 82
    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 87
    .line 88
    if-ne v0, v4, :cond_3

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const-string v2, "auth,  authentication timeout"

    .line 92
    .line 93
    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmIsAuthAdvertiseTriggered()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmIsSendPasswordAdvertiseTriggered()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 109
    .line 110
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 111
    .line 112
    invoke-interface {v0, v2}, Lcom/samsung/android/mcf/McfCaster;->stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 113
    .line 114
    .line 115
    :cond_5
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsSendPasswordAdvertiseTriggered(Z)V

    .line 116
    .line 117
    .line 118
    invoke-static {v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V

    .line 119
    .line 120
    .line 121
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 122
    .line 123
    if-ne p1, v4, :cond_6

    .line 124
    .line 125
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mIsRestartAuthAdvertise:Z

    .line 126
    .line 127
    if-eqz p1, :cond_6

    .line 128
    .line 129
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mDelayRestartAuthAdvertise:Z

    .line 130
    .line 131
    if-nez p1, :cond_6

    .line 132
    .line 133
    const-string p1, "restart authentication advertise ! "

    .line 134
    .line 135
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    new-instance p1, Landroid/os/Message;

    .line 139
    .line 140
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 141
    .line 142
    .line 143
    iput v3, p1, Landroid/os/Message;->what:I

    .line 144
    .line 145
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    .line 149
    .line 150
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V

    .line 151
    .line 152
    .line 153
    new-instance p1, Landroid/os/Message;

    .line 154
    .line 155
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 156
    .line 157
    .line 158
    iput v4, p1, Landroid/os/Message;->what:I

    .line 159
    .line 160
    iput v3, p1, Landroid/os/Message;->arg1:I

    .line 161
    .line 162
    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setRestartAuthAdvertise(Z)V

    .line 166
    .line 167
    .line 168
    :cond_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->delayRestartAuthAdvertiseForMultipleSendPassword(Z)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 173
    .line 174
    if-nez v0, :cond_8

    .line 175
    .line 176
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->getDeviceData(I)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    goto :goto_1

    .line 181
    :cond_8
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->getDeviceData(I)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->getTargetMcfDevice()Lcom/samsung/android/mcf/McfDevice;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->getMcfData()Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->getPasswordCasterStartAt()J

    .line 194
    .line 195
    .line 196
    move-result-wide v7

    .line 197
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 198
    .line 199
    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    .line 200
    .line 201
    .line 202
    const/4 v9, 0x4

    .line 203
    invoke-virtual {v0, v9, v4, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0, v4}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAccessPermission(I)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 212
    .line 213
    if-ne v9, v4, :cond_a

    .line 214
    .line 215
    invoke-virtual {v0, v5}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setTargetDevice(Lcom/samsung/android/mcf/McfDevice;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 216
    .line 217
    .line 218
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->ACCEPT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isPasswordCancelData()Z

    .line 225
    .line 226
    .line 227
    move-result v9

    .line 228
    if-eqz v9, :cond_9

    .line 229
    .line 230
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->REJECT:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 231
    .line 232
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isPasswordCancelData()Z

    .line 237
    .line 238
    .line 239
    move-result v9

    .line 240
    xor-int/2addr v9, v4

    .line 241
    invoke-virtual {v6, v3, v9, v7, v8}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 246
    .line 247
    .line 248
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsSendPasswordAdvertiseTriggered(Z)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_a
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmHasMultipleConfigKey()Z

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    if-eqz v9, :cond_b

    .line 257
    .line 258
    invoke-static {}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfgetmMultipleConfigKeyJsonObject()Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_b
    sget-object v9, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 267
    .line 268
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    invoke-virtual {v6, v9, v3, v7, v8}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual {v0, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setJsonContent(Lorg/json/JSONObject;)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    .line 277
    .line 278
    .line 279
    :goto_2
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V

    .line 280
    .line 281
    .line 282
    :goto_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 283
    .line 284
    if-ne p1, v4, :cond_c

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 288
    .line 289
    const-string v2, "auth, "

    .line 290
    .line 291
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v5}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v2, " start authentication"

    .line 302
    .line 303
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    :goto_4
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 314
    .line 315
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfAdvertiseCallback:Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    .line 320
    .line 321
    invoke-interface {p1, v0, p0}, Lcom/samsung/android/mcf/McfCaster;->startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    .line 322
    .line 323
    .line 324
    return-void
.end method

.method setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V
    .locals 2

    .line 1
    const-string v0, "WifiProfileShare.Handler"

    .line 2
    .line 3
    const-string v1, "set argument "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    if-eqz p5, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mAuthDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;J)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mSendPasswordDeviceData:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method setMcfCaster(Lcom/samsung/android/mcf/McfCaster;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 2
    .line 3
    return-void
.end method

.method setRestartAuthAdvertise(Z)V
    .locals 2

    .line 1
    const-string v0, "setRestartAuthAdvertise : "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WifiProfileShare.Handler"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->mIsRestartAuthAdvertise:Z

    .line 13
    .line 14
    return-void
.end method
