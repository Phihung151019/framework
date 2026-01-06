.class Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

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
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    goto/16 :goto_0

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$misSALoggedIn(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_7

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-gtz p1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int/2addr v1, v0

    .line 33
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "hotspot_enabled_history"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_6

    .line 53
    .line 54
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mgetModelName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v4, "SA loggedin with out MHS usage"

    .line 77
    .line 78
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mgetSamsungAccountProfileName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    const-string v0, "Galaxy"

    .line 104
    .line 105
    const-string v3, ""

    .line 106
    .line 107
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string v0, "5G"

    .line 112
    .line 113
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v0, "(LTE)"

    .line 118
    .line 119
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const-string v0, "LTE"

    .line 124
    .line 125
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const v4, 0x104110c

    .line 140
    .line 141
    .line 142
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {v0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    array-length v0, v0

    .line 157
    const/16 v2, 0x20

    .line 158
    .line 159
    if-le v0, v2, :cond_3

    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 162
    .line 163
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v2, "1"

    .line 174
    .line 175
    invoke-static {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    if-nez v0, :cond_4

    .line 185
    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$SemWifiApConfiguration;->getWifiApConfiguration(Landroid/content/Context;)Landroid/net/wifi/SoftApConfiguration;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration;)V

    .line 197
    .line 198
    .line 199
    const-string v0, "SemWifiApConfigStore"

    .line 200
    .line 201
    const-string v1, "mWifiApConfig is null getWifiApConfiguration configured"

    .line 202
    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 207
    .line 208
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 209
    .line 210
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 211
    .line 212
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-direct {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 217
    .line 218
    .line 219
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration$Builder;)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 223
    .line 224
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 245
    .line 246
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const-string v2, "Generating config [SSID update with SA]"

    .line 251
    .line 252
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setApConfiguration(Landroid/net/wifi/SoftApConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 256
    .line 257
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-static {v0, p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 265
    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    const-string v2, "SA loggedin, so update SSID:"

    .line 269
    .line 270
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 284
    .line 285
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    .line 286
    .line 287
    .line 288
    move-result-object p0

    .line 289
    const-string v0, "wifiap_cloud_bnr_ssid_default"

    .line 290
    .line 291
    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    return-void

    .line 295
    :cond_5
    const-wide/16 v1, 0x3a98

    .line 296
    .line 297
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 302
    .line 303
    const-string p1, "SA loggedin, not updating SSID"

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_7
    :goto_0
    return-void
.end method
