.class Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field public isInUIList:Z

.field public mAntmode:I

.field public mBw:I

.field public mConnBand:I

.field public mConnectedTime:J

.field public mDataRate:I

.field public mDeviceName:Ljava/lang/String;

.field public mDis:I

.field public mIp:Ljava/lang/String;

.field public mMac:Ljava/lang/String;

.field public mMode:I

.field public mMumimo:I

.field public mOui:Ljava/lang/String;

.field public mRemovedTime:J

.field public mRssi:I

.field public mSrsn:I

.field public mState:Ljava/lang/String;

.field public mWrsn:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)V
    .locals 2
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, ""

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    .line 19
    .line 20
    const-string p1, "aa:aa:aa"

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mOui:Ljava/lang/String;

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 26
    .line 27
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mWrsn:I

    .line 31
    .line 32
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mBw:I

    .line 33
    .line 34
    const/16 v0, 0x64

    .line 35
    .line 36
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRssi:I

    .line 37
    .line 38
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDataRate:I

    .line 39
    .line 40
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMode:I

    .line 41
    .line 42
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mAntmode:I

    .line 43
    .line 44
    const/16 v0, 0x9

    .line 45
    .line 46
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMumimo:I

    .line 47
    .line 48
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnBand:I

    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    .line 51
    .line 52
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    .line 53
    .line 54
    const/16 v0, 0x8

    .line 55
    .line 56
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mOui:Ljava/lang/String;

    .line 61
    .line 62
    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setState(Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "MHSClient setState() ["

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "] "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, " > "

    .line 29
    .line 30
    const-string v4, " wrsn: "

    .line 31
    .line 32
    invoke-static {v1, v2, v3, p1, v4}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p2, "sta_notidisassoc"

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const-string v0, "sta_assoc"

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    const/4 v2, 0x1

    .line 55
    if-nez p2, :cond_f

    .line 56
    .line 57
    const-string p2, "sta_disconn"

    .line 58
    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_0
    const-string v3, "sta_mismatch"

    .line 68
    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 76
    .line 77
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 78
    .line 79
    goto/16 :goto_3

    .line 80
    .line 81
    :cond_1
    const-string v3, "sta_notallow"

    .line 82
    .line 83
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const/4 v4, 0x3

    .line 88
    if-eqz v3, :cond_2

    .line 89
    .line 90
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 91
    .line 92
    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 93
    .line 94
    goto/16 :goto_3

    .line 95
    .line 96
    :cond_2
    const-string v3, "disassoc_sta"

    .line 97
    .line 98
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    const/4 v5, 0x4

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 106
    .line 107
    iput v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_3
    const-string v3, "sta_disassoc"

    .line 112
    .line 113
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eqz v3, :cond_4

    .line 118
    .line 119
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_4
    const-string v3, "sta_deauth"

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_5

    .line 130
    .line 131
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_5
    const-string v3, "sta_remove"

    .line 136
    .line 137
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    const-string v6, "SemWifiApClientInfo"

    .line 142
    .line 143
    if-eqz v3, :cond_d

    .line 144
    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_c

    .line 152
    .line 153
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 154
    .line 155
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    if-eqz p2, :cond_6

    .line 160
    .line 161
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 162
    .line 163
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    if-eqz p2, :cond_6

    .line 174
    .line 175
    const-string v0, "=|\\s"

    .line 176
    .line 177
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    const/16 v0, 0xa

    .line 182
    .line 183
    :try_start_0
    aget-object v0, p2, v0

    .line 184
    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mBw:I

    .line 190
    .line 191
    const/16 v0, 0xb

    .line 192
    .line 193
    aget-object v0, p2, v0

    .line 194
    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRssi:I

    .line 200
    .line 201
    const/16 v0, 0xc

    .line 202
    .line 203
    aget-object v0, p2, v0

    .line 204
    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDataRate:I

    .line 210
    .line 211
    const/16 v0, 0xd

    .line 212
    .line 213
    aget-object v0, p2, v0

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMode:I

    .line 220
    .line 221
    const/16 v0, 0xe

    .line 222
    .line 223
    aget-object v0, p2, v0

    .line 224
    .line 225
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mAntmode:I

    .line 230
    .line 231
    const/16 v0, 0xf

    .line 232
    .line 233
    aget-object v0, p2, v0

    .line 234
    .line 235
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMumimo:I

    .line 240
    .line 241
    const/16 v0, 0x10

    .line 242
    .line 243
    aget-object p2, p2, v0

    .line 244
    .line 245
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mWrsn:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .line 251
    goto :goto_0

    .line 252
    :catch_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-eqz p2, :cond_6

    .line 257
    .line 258
    const-string p2, "MHDC ArrayIndexOutOfBoundsException occurs"

    .line 259
    .line 260
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    goto :goto_0

    .line 264
    :catch_1
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    if-eqz p2, :cond_6

    .line 269
    .line 270
    const-string p2, "MHDC NumberFormatException occurs"

    .line 271
    .line 272
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_6
    :goto_0
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 276
    .line 277
    if-ne p2, v2, :cond_7

    .line 278
    .line 279
    const-string p2, "MHSClient => send MHDC ip failed"

    .line 280
    .line 281
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_7
    if-ne p2, v1, :cond_8

    .line 286
    .line 287
    const-string p2, "MHSClient => send MHDC wrong password "

    .line 288
    .line 289
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    goto :goto_1

    .line 293
    :cond_8
    if-ne p2, v4, :cond_9

    .line 294
    .line 295
    const-string p2, "MHSClient => send MHDC not allowed"

    .line 296
    .line 297
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    goto :goto_1

    .line 301
    :cond_9
    if-ne p2, v5, :cond_a

    .line 302
    .line 303
    const-string p2, "MHSClient => send MHDC Client removed from allowed list"

    .line 304
    .line 305
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :cond_a
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mOui:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v0, " "

    .line 319
    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 324
    .line 325
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 332
    .line 333
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mWrsn:I

    .line 340
    .line 341
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mBw:I

    .line 348
    .line 349
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRssi:I

    .line 356
    .line 357
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDataRate:I

    .line 364
    .line 365
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnBand:I

    .line 372
    .line 373
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mAntmode:I

    .line 380
    .line 381
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMumimo:I

    .line 388
    .line 389
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string v1, "Oui: "

    .line 399
    .line 400
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mOui:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v1, " Dis: "

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v1, " SRsn: "

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v1, " WRsn: "

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mWrsn:I

    .line 434
    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v1, " Bw: "

    .line 439
    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mBw:I

    .line 444
    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v1, " Rssi: "

    .line 449
    .line 450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRssi:I

    .line 454
    .line 455
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    const-string v1, " DataRate: "

    .line 459
    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDataRate:I

    .line 464
    .line 465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v1, " Mode: "

    .line 469
    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMode:I

    .line 474
    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    const-string v1, " AntMod: "

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mAntmode:I

    .line 484
    .line 485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    const-string v1, " Mumimo: "

    .line 489
    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMumimo:I

    .line 494
    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    const-string v1, " Band: "

    .line 499
    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnBand:I

    .line 504
    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    const-string v1, "   =>  send MHDC : "

    .line 513
    .line 514
    invoke-static {v1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    .line 520
    .line 521
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 522
    .line 523
    invoke-static {v1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$msendMHSBigdata(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    new-instance p2, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    const-string v1, "Event =Client disconnected,, Name ="

    .line 529
    .line 530
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    const-string v1, ",, Mac ="

    .line 539
    .line 540
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    .line 544
    .line 545
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->hideFirstHalfString(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 553
    .line 554
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-nez v1, :cond_b

    .line 559
    .line 560
    const-string v1, ",, Reason = "

    .line 561
    .line 562
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    :cond_b
    const-string v1, ",, More Info = "

    .line 571
    .line 572
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    const-string v0, "#tag_wifi_ap_lab_client_event#"

    .line 579
    .line 580
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object p2

    .line 584
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApLoggerHelper;->i(Ljava/lang/String;Ljava/lang/String;)Z

    .line 585
    .line 586
    .line 587
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 588
    .line 589
    .line 590
    move-result-wide v0

    .line 591
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    .line 592
    .line 593
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    .line 594
    .line 595
    .line 596
    move-result p2

    .line 597
    if-eqz p2, :cond_11

    .line 598
    .line 599
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 600
    .line 601
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)V

    .line 602
    .line 603
    .line 604
    goto :goto_3

    .line 605
    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result p2

    .line 609
    if-nez p2, :cond_e

    .line 610
    .line 611
    const-string p2, "sta_new"

    .line 612
    .line 613
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result p2

    .line 617
    if-nez p2, :cond_e

    .line 618
    .line 619
    const-string p2, "sta_dhcpack"

    .line 620
    .line 621
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result p2

    .line 625
    if-eqz p2, :cond_11

    .line 626
    .line 627
    :cond_e
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 628
    .line 629
    .line 630
    move-result-object p2

    .line 631
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 632
    .line 633
    .line 634
    move-result-object p2

    .line 635
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getStaConnectedBand(Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result p2

    .line 641
    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnBand:I

    .line 642
    .line 643
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    .line 644
    .line 645
    .line 646
    move-result p2

    .line 647
    if-eqz p2, :cond_11

    .line 648
    .line 649
    new-instance p2, Ljava/lang/StringBuilder;

    .line 650
    .line 651
    const-string v0, "client ("

    .line 652
    .line 653
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    .line 657
    .line 658
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    const-string v0, ") connected to "

    .line 662
    .line 663
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnBand:I

    .line 667
    .line 668
    invoke-static {v6, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 669
    .line 670
    .line 671
    goto :goto_3

    .line 672
    :cond_f
    :goto_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 673
    .line 674
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    move-result p2

    .line 678
    if-eqz p2, :cond_10

    .line 679
    .line 680
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    .line 681
    .line 682
    const-string v0, ""

    .line 683
    .line 684
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result p2

    .line 688
    if-eqz p2, :cond_11

    .line 689
    .line 690
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 691
    .line 692
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 693
    .line 694
    goto :goto_3

    .line 695
    :cond_10
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    .line 696
    .line 697
    if-nez p2, :cond_11

    .line 698
    .line 699
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 700
    .line 701
    :cond_11
    :goto_3
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 702
    .line 703
    return-void
.end method
