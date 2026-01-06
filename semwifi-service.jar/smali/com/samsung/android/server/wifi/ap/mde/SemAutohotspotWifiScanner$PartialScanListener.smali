.class Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartialScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 13

    .line 1
    const-string v0, "\""

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "scanDatas null"

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    array-length v1, p1

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 22
    .line 23
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const-string p1, "Found more than 1 batch of scan results, Failing..."

    .line 28
    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v3, "onResults"

    .line 40
    .line 41
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v3, 0x3

    .line 51
    if-eqz v1, :cond_b

    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v4, "wifi"

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    :try_start_0
    aget-object p1, p1, v4

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    array-length v5, p1

    .line 75
    move v6, v4

    .line 76
    :goto_0
    if-ge v6, v5, :cond_8

    .line 77
    .line 78
    aget-object v7, p1, v6

    .line 79
    .line 80
    iget-object v7, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 83
    .line 84
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_7

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_8

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 113
    .line 114
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 115
    .line 116
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-instance v7, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v8, "saved networks:"

    .line 126
    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 143
    .line 144
    invoke-virtual {v6, v2}, Ljava/util/BitSet;->get(I)Z

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    iget-object v7, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 149
    .line 150
    const/16 v8, 0x8

    .line 151
    .line 152
    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    iget-object v8, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 157
    .line 158
    invoke-virtual {v8, v4}, Ljava/util/BitSet;->get(I)Z

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    iget-object v9, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 163
    .line 164
    const/16 v10, 0x9

    .line 165
    .line 166
    invoke-virtual {v9, v10}, Ljava/util/BitSet;->get(I)Z

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 171
    .line 172
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    new-instance v11, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v12, "isOwe"

    .line 182
    .line 183
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v12, ",isOpen"

    .line 190
    .line 191
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v12, ",wpa2_isSecure="

    .line 198
    .line 199
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v12, ",wpa3_isSecure="

    .line 206
    .line 207
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 221
    .line 222
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    const/4 v11, 0x5

    .line 227
    if-nez v10, :cond_3

    .line 228
    .line 229
    if-eqz v9, :cond_3

    .line 230
    .line 231
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 232
    .line 233
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    if-eq v9, v11, :cond_6

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :catch_0
    move-exception p1

    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 244
    .line 245
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    if-nez v9, :cond_4

    .line 250
    .line 251
    if-eqz v8, :cond_4

    .line 252
    .line 253
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 254
    .line 255
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-ne v8, v11, :cond_6

    .line 260
    .line 261
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 262
    .line 263
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    if-eqz v8, :cond_5

    .line 268
    .line 269
    if-eqz v6, :cond_5

    .line 270
    .line 271
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 272
    .line 273
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    if-eq v6, v2, :cond_6

    .line 278
    .line 279
    :cond_5
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 280
    .line 281
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    if-eqz v6, :cond_2

    .line 286
    .line 287
    if-eqz v7, :cond_2

    .line 288
    .line 289
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 290
    .line 291
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-ne v6, v3, :cond_2

    .line 296
    .line 297
    :cond_6
    iget-object v6, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 298
    .line 299
    if-eqz v6, :cond_2

    .line 300
    .line 301
    new-instance v7, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 310
    .line 311
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v7

    .line 325
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v6

    .line 329
    if-eqz v6, :cond_2

    .line 330
    .line 331
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 332
    .line 333
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)V

    .line 334
    .line 335
    .line 336
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 337
    .line 338
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 342
    .line 343
    .line 344
    iget p1, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 345
    .line 346
    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 350
    .line 351
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v4, "Scan resullts Connecting to MHS:"

    .line 361
    .line 362
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 366
    .line 367
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v4, ",i.networkId:"

    .line 375
    .line 376
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget v4, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 380
    .line 381
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 392
    .line 393
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    const-string v0, "reconnect"

    .line 398
    .line 399
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .line 404
    .line 405
    goto :goto_3

    .line 406
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 407
    .line 408
    goto/16 :goto_0

    .line 409
    .line 410
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 411
    .line 412
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p1

    .line 420
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 424
    .line 425
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Z

    .line 426
    .line 427
    .line 428
    move-result p1

    .line 429
    const-wide/16 v0, 0x32

    .line 430
    .line 431
    const-string v4, " tryingToRetry : "

    .line 432
    .line 433
    const/4 v5, 0x4

    .line 434
    if-eqz p1, :cond_9

    .line 435
    .line 436
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 437
    .line 438
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 439
    .line 440
    .line 441
    move-result p1

    .line 442
    if-le p1, v5, :cond_9

    .line 443
    .line 444
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 445
    .line 446
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    const-string v5, "ScanResults doesn\'t have "

    .line 453
    .line 454
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 458
    .line 459
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 470
    .line 471
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .line 484
    .line 485
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 486
    .line 487
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;

    .line 488
    .line 489
    .line 490
    move-result-object p1

    .line 491
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 492
    .line 493
    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 495
    .line 496
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 497
    .line 498
    .line 499
    move-result p1

    .line 500
    sub-int/2addr p1, v2

    .line 501
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;I)V

    .line 502
    .line 503
    .line 504
    goto :goto_4

    .line 505
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 506
    .line 507
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Z

    .line 508
    .line 509
    .line 510
    move-result p1

    .line 511
    if-eqz p1, :cond_a

    .line 512
    .line 513
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 514
    .line 515
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    if-lez p1, :cond_a

    .line 520
    .line 521
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 522
    .line 523
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    const-string v6, "ScanResults doesn\'t have So full scan"

    .line 530
    .line 531
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 535
    .line 536
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 547
    .line 548
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 549
    .line 550
    .line 551
    move-result v4

    .line 552
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 563
    .line 564
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;

    .line 565
    .line 566
    .line 567
    move-result-object p1

    .line 568
    invoke-virtual {p1, v5, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 569
    .line 570
    .line 571
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 572
    .line 573
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)I

    .line 574
    .line 575
    .line 576
    move-result p1

    .line 577
    sub-int/2addr p1, v2

    .line 578
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;I)V

    .line 579
    .line 580
    .line 581
    goto :goto_4

    .line 582
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 583
    .line 584
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;

    .line 585
    .line 586
    .line 587
    move-result-object p0

    .line 588
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    .line 590
    .line 591
    :goto_4
    return-void

    .line 592
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;

    .line 593
    .line 594
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner;)Lcom/samsung/android/server/wifi/ap/mde/SemAutohotspotWifiScanner$WifiScannerHandler;

    .line 595
    .line 596
    .line 597
    move-result-object p0

    .line 598
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 599
    .line 600
    .line 601
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
