.class Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiCoexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

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
    const-string v0, "android.intent.action.coexstatus"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "SemWifiCoexManager"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string p1, "STATUS"

    .line 18
    .line 19
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ne p1, v2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 26
    .line 27
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputlaaEnterState(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 37
    .line 38
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 42
    .line 43
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 44
    .line 45
    .line 46
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string p2, "get android.intent.action.coexstatus mScellEnter : "

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 54
    .line 55
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_9

    .line 76
    .line 77
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_9

    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 86
    .line 87
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 91
    .line 92
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputlastScellEnter(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_1
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    const-string p1, "networkInfo"

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/net/NetworkInfo;

    .line 111
    .line 112
    const-string v0, "p2pGroupInfo"

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p2, :cond_2

    .line 125
    .line 126
    if-ne p1, v2, :cond_2

    .line 127
    .line 128
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmP2pFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 139
    .line 140
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmP2pFreq(Lcom/samsung/android/server/wifi/SemWifiCoexManager;I)V

    .line 141
    .line 142
    .line 143
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 144
    .line 145
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msendIpcMessageToRilForLteu(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmUwbBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-nez p1, :cond_3

    .line 155
    .line 156
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamFrontBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_3

    .line 163
    .line 164
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmCamBackBackoffEnable(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-nez p1, :cond_3

    .line 171
    .line 172
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsControllerActive(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_4

    .line 179
    .line 180
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 186
    .line 187
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiChannelInfoForAdaptiveMipi(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsRcvBackoffDefined(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    const-string v4, " mIsRcvEnabled="

    .line 198
    .line 199
    if-eqz v0, :cond_6

    .line 200
    .line 201
    const-string v0, "android.samsung.media.action.receiver_sar"

    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_6

    .line 208
    .line 209
    const-string p1, "android.samsung.media.extra.receiver"

    .line 210
    .line 211
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 216
    .line 217
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-eq p2, p1, :cond_9

    .line 222
    .line 223
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 224
    .line 225
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 229
    .line 230
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 231
    .line 232
    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 239
    .line 240
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 241
    .line 242
    .line 243
    move-result p0

    .line 244
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 256
    .line 257
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsRcvBackoffDefined(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 258
    .line 259
    .line 260
    move-result v0

    .line 261
    if-eqz v0, :cond_7

    .line 262
    .line 263
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 264
    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_7

    .line 270
    .line 271
    const-string p1, "state"

    .line 272
    .line 273
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    const-string p2, "received ACTION_PHONE_STATE_CHANGED, phoneState="

    .line 278
    .line 279
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .line 285
    .line 286
    sget-object p2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_9

    .line 293
    .line 294
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 295
    .line 296
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-eqz p1, :cond_9

    .line 301
    .line 302
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 303
    .line 304
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 308
    .line 309
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 310
    .line 311
    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 318
    .line 319
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)Z

    .line 320
    .line 321
    .line 322
    move-result p0

    .line 323
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_7
    const-string v0, "com.samsung.xr.controller.STATUS"

    .line 335
    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-eqz p1, :cond_9

    .line 341
    .line 342
    const-string p1, "ACTIVE"

    .line 343
    .line 344
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 345
    .line 346
    .line 347
    move-result p1

    .line 348
    const-string p2, "XR CONTROLLER ACTIVE : "

    .line 349
    .line 350
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    if-eqz p1, :cond_8

    .line 358
    .line 359
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 360
    .line 361
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmIsControllerActive(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 362
    .line 363
    .line 364
    goto :goto_2

    .line 365
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 366
    .line 367
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$fputmIsControllerActive(Lcom/samsung/android/server/wifi/SemWifiCoexManager;Z)V

    .line 368
    .line 369
    .line 370
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCoexManager$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    .line 371
    .line 372
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->-$$Nest$msetWifiCustomBackoff(Lcom/samsung/android/server/wifi/SemWifiCoexManager;)V

    .line 373
    .line 374
    .line 375
    :cond_9
    return-void
.end method
