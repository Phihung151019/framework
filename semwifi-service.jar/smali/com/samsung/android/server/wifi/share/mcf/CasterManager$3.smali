.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;
.super Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 6

    .line 1
    const-string p2, "WifiProfileShare.McfCast"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "-ME--- onDeviceDiscovered(pass) mcfDevice is null"

    .line 6
    .line 7
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsByte()[B

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData([B)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsJson()Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, " received message auth:"

    .line 32
    .line 33
    invoke-static {v0, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getAdditionalAuthType()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, " contact : "

    .line 45
    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, " json:"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v4, " content:"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {p2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    const-string v4, "state"

    .line 84
    .line 85
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_4

    .line 90
    .line 91
    :try_start_0
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 98
    .line 99
    .line 100
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_1

    .line 102
    :catch_0
    const-string v4, "can not get state"

    .line 103
    .line 104
    invoke-static {p2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    if-eqz v1, :cond_d

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->isPasswordCancelData()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->CLOSE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    sget-object v3, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->DEVICE_DETECTED:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 120
    .line 121
    :cond_4
    :goto_1
    const-string v4, " process state:"

    .line 122
    .line 123
    invoke-static {v0, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    sget-object v4, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$4;->$SwitchMap$com$samsung$android$server$wifi$share$mcf$AdvertiseState:[I

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    aget v4, v4, v5

    .line 148
    .line 149
    const/4 v5, 0x1

    .line 150
    if-eq v4, v5, :cond_b

    .line 151
    .line 152
    const/4 v1, 0x2

    .line 153
    if-eq v4, v1, :cond_a

    .line 154
    .line 155
    const/4 v1, 0x3

    .line 156
    if-eq v4, v1, :cond_6

    .line 157
    .line 158
    const/4 p1, 0x4

    .line 159
    if-eq v4, p1, :cond_5

    .line 160
    .line 161
    const-string p0, " unhandled state: "

    .line 162
    .line 163
    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    goto/16 :goto_2

    .line 182
    .line 183
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 184
    .line 185
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mclosePasswordSession(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_2

    .line 189
    .line 190
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getAdditionalAuthType()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-ne v1, v5, :cond_9

    .line 195
    .line 196
    if-eqz v2, :cond_9

    .line 197
    .line 198
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Lorg/json/JSONObject;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 203
    .line 204
    invoke-static {v2, p1, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$misMatchedSharedData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    if-nez v2, :cond_7

    .line 209
    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p1, " config not matched"

    .line 219
    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 232
    .line 233
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mgetContactInfo(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    if-nez v2, :cond_8

    .line 238
    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string p1, " contact info is null"

    .line 248
    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 261
    .line 262
    invoke-static {p0, p1, v2, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mshowPasswordConfirmPopup(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string p1, " failed to show confirm dialog, unauthorized"

    .line 275
    .line 276
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 288
    .line 289
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mgetContactInfo(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    if-eqz p1, :cond_c

    .line 294
    .line 295
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 296
    .line 297
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mgetRequestData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    if-eqz p2, :cond_c

    .line 302
    .line 303
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 304
    .line 305
    const/4 p2, 0x0

    .line 306
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendPasswordData(ZLjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto :goto_2

    .line 310
    :cond_b
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 311
    .line 312
    invoke-static {p2, p1, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$misMatchedSharedData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 313
    .line 314
    .line 315
    move-result-object p2

    .line 316
    if-eqz p2, :cond_c

    .line 317
    .line 318
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 319
    .line 320
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mstartAuthentication(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 321
    .line 322
    .line 323
    :cond_c
    :goto_2
    return-void

    .line 324
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string p1, " content bytes is null"

    .line 333
    .line 334
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 2

    .line 1
    const-string p2, "WifiProfileShare.McfCast"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "-ME---onDeviceRemoved(pass) McfDevice is null"

    .line 6
    .line 7
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " onDeviceRemoved, dismiss dialog"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContactKey()[B

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->byteArrayToString([B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;->onSessionClosed(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->-$$Nest$mclosePasswordSession(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
