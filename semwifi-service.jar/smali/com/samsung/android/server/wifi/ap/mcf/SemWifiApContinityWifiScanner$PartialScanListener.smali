.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PartialScanListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V

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
    const-string v1, "MHSMcf:Scanner"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p0, "scanDatas null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    array-length v2, p1

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    const-string p0, "Found more than 1 batch of scan results, Failing..."

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v2, "onResults"

    .line 24
    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v4, 0x3

    .line 35
    if-eqz v2, :cond_b

    .line 36
    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v5, "wifi"

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    :try_start_0
    aget-object p1, p1, v5

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    array-length v6, p1

    .line 59
    move v7, v5

    .line 60
    :goto_0
    if-ge v7, v6, :cond_8

    .line 61
    .line 62
    aget-object v8, p1, v7

    .line 63
    .line 64
    iget-object v8, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 67
    .line 68
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_7

    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_8

    .line 91
    .line 92
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 97
    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v8, "saved networks:"

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 121
    .line 122
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->get(I)Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    iget-object v8, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 127
    .line 128
    const/16 v9, 0x8

    .line 129
    .line 130
    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 135
    .line 136
    invoke-virtual {v9, v5}, Ljava/util/BitSet;->get(I)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    iget-object v10, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 141
    .line 142
    const/16 v11, 0x9

    .line 143
    .line 144
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    .line 145
    .line 146
    .line 147
    move-result v10

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v12, "isOwe"

    .line 154
    .line 155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v12, ",isOpen"

    .line 162
    .line 163
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v12, ",wpa2_isSecure="

    .line 170
    .line 171
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v12, ",wpa3_isSecure="

    .line 178
    .line 179
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v11

    .line 189
    invoke-static {v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    iget-object v11, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 193
    .line 194
    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    const/4 v12, 0x5

    .line 199
    if-nez v11, :cond_3

    .line 200
    .line 201
    if-eqz v10, :cond_3

    .line 202
    .line 203
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 204
    .line 205
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-eq v10, v12, :cond_6

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :catch_0
    move-exception p1

    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 216
    .line 217
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    if-nez v10, :cond_4

    .line 222
    .line 223
    if-eqz v9, :cond_4

    .line 224
    .line 225
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 226
    .line 227
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 228
    .line 229
    .line 230
    move-result v9

    .line 231
    if-ne v9, v12, :cond_6

    .line 232
    .line 233
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 234
    .line 235
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    if-eqz v9, :cond_5

    .line 240
    .line 241
    if-eqz v7, :cond_5

    .line 242
    .line 243
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 244
    .line 245
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eq v7, v3, :cond_6

    .line 250
    .line 251
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 252
    .line 253
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    if-eqz v7, :cond_2

    .line 258
    .line 259
    if-eqz v8, :cond_2

    .line 260
    .line 261
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 262
    .line 263
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    if-ne v7, v4, :cond_2

    .line 268
    .line 269
    :cond_6
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 270
    .line 271
    if-eqz v7, :cond_2

    .line 272
    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 282
    .line 283
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    move-result v7

    .line 301
    if-eqz v7, :cond_2

    .line 302
    .line 303
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 304
    .line 305
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V

    .line 306
    .line 307
    .line 308
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 309
    .line 310
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 314
    .line 315
    .line 316
    iget p1, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 317
    .line 318
    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 319
    .line 320
    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    const-string v0, "Scan resullts Connecting to MHS:"

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 332
    .line 333
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    const-string v0, ",i.networkId:"

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    const-string p1, "reconnect"

    .line 358
    .line 359
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->reconnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 378
    .line 379
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    const-wide/16 v5, 0x32

    .line 384
    .line 385
    const-string v0, " tryingToRetry : "

    .line 386
    .line 387
    const/4 v2, 0x4

    .line 388
    if-eqz p1, :cond_9

    .line 389
    .line 390
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 391
    .line 392
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 393
    .line 394
    .line 395
    move-result p1

    .line 396
    if-le p1, v2, :cond_9

    .line 397
    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    const-string v2, "ScanResults doesn\'t have "

    .line 401
    .line 402
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 406
    .line 407
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 418
    .line 419
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 434
    .line 435
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 440
    .line 441
    .line 442
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 443
    .line 444
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 445
    .line 446
    .line 447
    move-result p1

    .line 448
    sub-int/2addr p1, v3

    .line 449
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V

    .line 450
    .line 451
    .line 452
    goto :goto_4

    .line 453
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 454
    .line 455
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Z

    .line 456
    .line 457
    .line 458
    move-result p1

    .line 459
    if-eqz p1, :cond_a

    .line 460
    .line 461
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 462
    .line 463
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    if-lez p1, :cond_a

    .line 468
    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v4, "ScanResults doesn\'t have So full scan"

    .line 472
    .line 473
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 477
    .line 478
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v4

    .line 482
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 489
    .line 490
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    .line 503
    .line 504
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 505
    .line 506
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 507
    .line 508
    .line 509
    move-result-object p1

    .line 510
    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    .line 512
    .line 513
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 514
    .line 515
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)I

    .line 516
    .line 517
    .line 518
    move-result p1

    .line 519
    sub-int/2addr p1, v3

    .line 520
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;I)V

    .line 521
    .line 522
    .line 523
    goto :goto_4

    .line 524
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 525
    .line 526
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 527
    .line 528
    .line 529
    move-result-object p0

    .line 530
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 531
    .line 532
    .line 533
    :goto_4
    return-void

    .line 534
    :cond_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$PartialScanListener;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 535
    .line 536
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->-$$Nest$fgetmWifiScannerHandler(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner$WifiScannerHandler;

    .line 537
    .line 538
    .line 539
    move-result-object p0

    .line 540
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    .line 542
    .line 543
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 1
    return-void
.end method
