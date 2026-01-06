.class Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountApData"
.end annotation


# instance fields
.field private mBaseRxBytes:J

.field private mBaseTxBytes:J

.field private mBytes:J

.field private mRxBytes:J

.field private mTxBytes:J

.field private mUsedBytes:J

.field private recording:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/math/BigDecimal;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mUsedBytes:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    const-string p1, "SemHotspotMobileDataLimit"

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 14
    .line 15
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mgetTetheringUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)[J

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    aget-wide v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    :try_start_1
    aget-wide v0, v4, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v4

    .line 25
    goto :goto_0

    .line 26
    :catch_1
    move-exception v4

    .line 27
    move-wide v5, v0

    .line 28
    :goto_0
    const-string v7, "getTetheringUsage Exception: "

    .line 29
    .line 30
    invoke-static {p1, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    :goto_1
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseTxBytes:J

    .line 34
    .line 35
    sub-long v7, v5, v7

    .line 36
    .line 37
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mTxBytes:J

    .line 38
    .line 39
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseRxBytes:J

    .line 40
    .line 41
    sub-long v9, v0, v9

    .line 42
    .line 43
    iput-wide v9, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mRxBytes:J

    .line 44
    .line 45
    add-long/2addr v7, v9

    .line 46
    iget-wide v9, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mUsedBytes:J

    .line 47
    .line 48
    add-long/2addr v7, v9

    .line 49
    iput-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    .line 50
    .line 51
    new-instance v4, Ljava/math/BigDecimal;

    .line 52
    .line 53
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    .line 54
    .line 55
    invoke-direct {v4, v7, v8}, Ljava/math/BigDecimal;-><init>(J)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$sfgetDBG()Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v8, "mBaseTxBytes = "

    .line 67
    .line 68
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseTxBytes:J

    .line 72
    .line 73
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v8, ", mBaseRxBytes = "

    .line 77
    .line 78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v8, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseRxBytes:J

    .line 82
    .line 83
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v8, ", mTx = "

    .line 87
    .line 88
    const-string v9, ", mRx = "

    .line 89
    .line 90
    invoke-static {v7, v8, v5, v6, v9}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ", mTxBytes = "

    .line 97
    .line 98
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mTxBytes:J

    .line 102
    .line 103
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ", mRxBytes = "

    .line 107
    .line 108
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mRxBytes:J

    .line 112
    .line 113
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ", mBytes = "

    .line 117
    .line 118
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    .line 122
    .line 123
    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ", usage = "

    .line 127
    .line 128
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ltz v0, :cond_3

    .line 172
    .line 173
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 174
    .line 175
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 176
    .line 177
    .line 178
    const-string v0, "Mobile AP Limited Data reached, turn off Mobile AP"

    .line 179
    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmLimitData(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/math/BigDecimal;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 190
    .line 191
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const/4 v0, 0x0

    .line 196
    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 197
    .line 198
    .line 199
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const v0, 0x10410fc

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    const-string v5, "CountryISO"

    .line 215
    .line 216
    invoke-virtual {v1, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const-string v5, "JP"

    .line 221
    .line 222
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_2

    .line 227
    .line 228
    const v0, 0x10410fd

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 236
    .line 237
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Landroid/content/Context;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 246
    .line 247
    .line 248
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 249
    .line 250
    invoke-virtual {v4}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mnotifyDataUsageChanged(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 258
    .line 259
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputmUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Ljava/math/BigDecimal;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 263
    .line 264
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisReached(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-nez p1, :cond_4

    .line 269
    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->isScheduledNeed()Z

    .line 271
    .line 272
    .line 273
    move-result p1

    .line 274
    if-eqz p1, :cond_4

    .line 275
    .line 276
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 277
    .line 278
    .line 279
    move-result p1

    .line 280
    if-nez p1, :cond_4

    .line 281
    .line 282
    const-wide/16 v0, 0x3e8

    .line 283
    .line 284
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 285
    .line 286
    .line 287
    :cond_4
    :goto_2
    return-void
.end method

.method isScheduledNeed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 42
    .line 43
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmUsageChangeCallbacks(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-lez p0, :cond_1

    .line 52
    .line 53
    :cond_0
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method onStateChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$misWifiSharingEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$misWifiDefaultNetwork(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    move v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v1, v3

    .line 46
    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fputisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;Z)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v1, "onStateChanged isUpstreamWifi : "

    .line 52
    .line 53
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, " isWifiApEnabled : "

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, " isDataEnabled : "

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, " mClientNum : "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 99
    .line 100
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "SemHotspotMobileDataLimit"

    .line 112
    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisUpstreamWifi(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisDataEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_4

    .line 139
    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmClientNum(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-lez v0, :cond_4

    .line 147
    .line 148
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    .line 149
    .line 150
    if-nez v0, :cond_1

    .line 151
    .line 152
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    .line 153
    .line 154
    const-wide/16 v0, 0x0

    .line 155
    .line 156
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    .line 157
    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 159
    .line 160
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mupdateTelePhonyManager(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->updateBaseTxRxBytes()V

    .line 164
    .line 165
    .line 166
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmDataLimited(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_3

    .line 173
    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetmUsageChangeCallbacks(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Ljava/util/Map;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-lez v0, :cond_2

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    .line 189
    .line 190
    return-void

    .line 191
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 196
    .line 197
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$fgetisWifiApEnabled(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_5

    .line 202
    .line 203
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->recording:Z

    .line 204
    .line 205
    :cond_5
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method updateBaseTxRxBytes()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->this$0:Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;->-$$Nest$mgetTetheringUsage(Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit;)[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    aget-wide v1, v0, v1

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseTxBytes:J

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    aget-wide v0, v0, v1

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBaseRxBytes:J

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mBytes:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemHotspotMobileDataLimit$CountApData;->mUsedBytes:J

    .line 20
    .line 21
    return-void
.end method
