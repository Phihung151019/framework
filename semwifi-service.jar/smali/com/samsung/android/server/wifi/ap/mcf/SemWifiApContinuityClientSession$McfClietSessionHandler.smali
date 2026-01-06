.class Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "McfClietSessionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

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
    .locals 14

    .line 1
    const-string v0, "MHSMcf:ClientSession"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Got message:"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p1, Landroid/os/Message;->what:I

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget p1, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const/16 v0, 0xa

    .line 25
    .line 26
    if-eq p1, v0, :cond_9

    .line 27
    .line 28
    const/16 v0, 0xb

    .line 29
    .line 30
    if-eq p1, v0, :cond_0

    .line 31
    .line 32
    const-string p0, "MHSMcf:ClientSession"

    .line 33
    .line 34
    const-string p1, "not handled"

    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 43
    .line 44
    monitor-enter p1

    .line 45
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x0

    .line 59
    move v4, v3

    .line 60
    move v5, v4

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_6

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;

    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 78
    .line 79
    sub-long/2addr v7, v9

    .line 80
    const-wide/16 v9, 0x2710

    .line 81
    .line 82
    cmp-long v7, v7, v9

    .line 83
    .line 84
    if-lez v7, :cond_1

    .line 85
    .line 86
    iget v7, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 87
    .line 88
    if-gez v7, :cond_1

    .line 89
    .line 90
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_1
    iget v7, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 103
    .line 104
    const/4 v8, 0x2

    .line 105
    if-ne v7, v8, :cond_3

    .line 106
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v9

    .line 111
    iget-wide v11, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 112
    .line 113
    sub-long/2addr v9, v11

    .line 114
    const-wide/16 v11, 0x3a98

    .line 115
    .line 116
    cmp-long v7, v9, v11

    .line 117
    .line 118
    if-lez v7, :cond_3

    .line 119
    .line 120
    const/16 v7, -0xb

    .line 121
    .line 122
    iput v7, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v7

    .line 128
    iput-wide v7, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 129
    .line 130
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_3
    iget v7, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 141
    .line 142
    const/4 v9, 0x1

    .line 143
    if-ne v7, v9, :cond_4

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v10

    .line 149
    iget-wide v12, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 150
    .line 151
    sub-long/2addr v10, v12

    .line 152
    const-wide/32 v12, 0xafc8

    .line 153
    .line 154
    .line 155
    cmp-long v7, v10, v12

    .line 156
    .line 157
    if-lez v7, :cond_4

    .line 158
    .line 159
    const/16 v7, -0xc

    .line 160
    .line 161
    iput v7, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I

    .line 162
    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    iput-wide v7, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->timestamp:J

    .line 168
    .line 169
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_4
    iget v6, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfMHSInfo;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .line 179
    if-ltz v6, :cond_2

    .line 180
    .line 181
    if-eq v6, v9, :cond_2

    .line 182
    .line 183
    if-ne v6, v8, :cond_5

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_6
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_3
    if-ge v3, v2, :cond_7

    .line 194
    .line 195
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    add-int/lit8 v3, v3, 0x1

    .line 200
    .line 201
    check-cast v4, Ljava/lang/Integer;

    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 204
    .line 205
    .line 206
    move-result v4

    .line 207
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 208
    .line 209
    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->mSmartMHSList:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :catch_0
    :cond_7
    if-lez v5, :cond_8

    .line 216
    .line 217
    const-wide/16 v1, 0x1388

    .line 218
    .line 219
    :try_start_2
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    .line 221
    .line 222
    :cond_8
    monitor-exit p1

    .line 223
    return-void

    .line 224
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    throw p0

    .line 226
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 227
    .line 228
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmWifiApContinityWifiScanner(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 233
    .line 234
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 239
    .line 240
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 245
    .line 246
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 251
    .line 252
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmHidden(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 257
    .line 258
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmFreq(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    .line 259
    .line 260
    .line 261
    move-result v5

    .line 262
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession$McfClietSessionHandler;->this$0:Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;

    .line 263
    .line 264
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;->-$$Nest$fgetmSecurity(Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinuityClientSession;)I

    .line 265
    .line 266
    .line 267
    move-result v6

    .line 268
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/ap/mcf/SemWifiApContinityWifiScanner;->generate_wifi_scan(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 269
    .line 270
    .line 271
    return-void
.end method
