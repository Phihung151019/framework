.class public Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/abtest/AbTestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AbTestGroupController"
.end annotation


# instance fields
.field private mApSerial:Ljava/lang/String;

.field private mModelName:Ljava/lang/String;

.field private mSalesCode:Ljava/lang/String;

.field private mSerialNo:Ljava/lang/String;

.field private mWlanFactoryMac:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private getFactoryMacAddress()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$menforceAccessPermission(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getMacAddressFromFile()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method


# virtual methods
.method public getGroupIndex(Lcom/samsung/android/wifi/SemAbTestConfiguration;)I
    .locals 14

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getSalesModelAllowList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, " Return TESTGROUP_INVALID."

    .line 10
    .line 11
    const-string v2, ","

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    const-string v4, " "

    .line 16
    .line 17
    const/4 v5, -0x1

    .line 18
    const-string v6, "getGroupIndex for module "

    .line 19
    .line 20
    const-string v7, "all"

    .line 21
    .line 22
    const/4 v8, 0x2

    .line 23
    const/4 v9, 0x1

    .line 24
    const/4 v10, 0x0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getSalesModelAllowList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    if-eqz v11, :cond_2

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    check-cast v11, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    array-length v12, v11

    .line 56
    if-ne v12, v8, :cond_0

    .line 57
    .line 58
    aget-object v12, v11, v10

    .line 59
    .line 60
    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v12

    .line 64
    if-nez v12, :cond_1

    .line 65
    .line 66
    iget-object v12, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSalesCode:Ljava/lang/String;

    .line 67
    .line 68
    aget-object v13, v11, v10

    .line 69
    .line 70
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v12

    .line 74
    if-eqz v12, :cond_0

    .line 75
    .line 76
    :cond_1
    aget-object v12, v11, v9

    .line 77
    .line 78
    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    if-nez v12, :cond_3

    .line 83
    .line 84
    iget-object v12, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mModelName:Ljava/lang/String;

    .line 85
    .line 86
    aget-object v11, v11, v9

    .line 87
    .line 88
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    if-eqz v11, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v2, " - Device is NOT included in salesModelAllowList. - "

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getSalesModelAllowList()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return v5

    .line 130
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getSalesModelBlockList()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getSalesModelBlockList()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_7

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v11

    .line 158
    check-cast v11, Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v11, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v11

    .line 164
    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    array-length v12, v11

    .line 169
    if-ne v12, v8, :cond_4

    .line 170
    .line 171
    aget-object v12, v11, v10

    .line 172
    .line 173
    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    if-nez v12, :cond_5

    .line 178
    .line 179
    iget-object v12, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSalesCode:Ljava/lang/String;

    .line 180
    .line 181
    aget-object v13, v11, v10

    .line 182
    .line 183
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-eqz v12, :cond_4

    .line 188
    .line 189
    :cond_5
    aget-object v12, v11, v9

    .line 190
    .line 191
    invoke-static {v7, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    if-nez v12, :cond_6

    .line 196
    .line 197
    iget-object v12, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mModelName:Ljava/lang/String;

    .line 198
    .line 199
    aget-object v11, v11, v9

    .line 200
    .line 201
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_4

    .line 206
    .line 207
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 208
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v2, " - Device is included in salesModelBlockList. - "

    .line 220
    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getSalesModelBlockList()Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return v5

    .line 242
    :cond_7
    const/4 v0, 0x3

    .line 243
    new-array v0, v0, [I

    .line 244
    .line 245
    aput v10, v0, v10

    .line 246
    .line 247
    aput v10, v0, v9

    .line 248
    .line 249
    aput v10, v0, v8

    .line 250
    .line 251
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getGroupSize()Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v1, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    .line 256
    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    aput v1, v0, v10

    .line 262
    .line 263
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getGroupSize()Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    iget-object v1, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    .line 268
    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    aput v1, v0, v9

    .line 274
    .line 275
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->getGroupSize()Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    iget-object v1, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    .line 280
    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    aput v1, v0, v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :catch_0
    move-exception v1

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    const-string v3, "Malformed group size value detected: "

    .line 292
    .line 293
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const-string v2, "AbTestManager"

    .line 304
    .line 305
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .line 307
    .line 308
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 311
    .line 312
    .line 313
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mWlanFactoryMac:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSerialNo:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mApSerial:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object v2, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget-object v2, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object v2, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    rem-int/lit8 v1, v1, 0x64

    .line 352
    .line 353
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 354
    .line 355
    .line 356
    move-result v1

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->isAbTestInProgress()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    const-string v3, " hash: "

    .line 362
    .line 363
    const-string v4, " - groupSize: "

    .line 364
    .line 365
    const-string v7, "/"

    .line 366
    .line 367
    if-nez v2, :cond_8

    .line 368
    .line 369
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 370
    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    .line 372
    .line 373
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget-object v6, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 377
    .line 378
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    aget v4, v0, v10

    .line 385
    .line 386
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    aget v4, v0, v9

    .line 393
    .line 394
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    aget v0, v0, v8

    .line 401
    .line 402
    const-string v4, " Group: none - A/B test is not in progress. ["

    .line 403
    .line 404
    invoke-static {v2, v0, v3, v1, v4}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v0, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v0, " ~ "

    .line 413
    .line 414
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object p1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    .line 418
    .line 419
    const-string v0, "] Return TESTGROUP_INVALID."

    .line 420
    .line 421
    invoke-static {v2, p1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return v5

    .line 429
    :cond_8
    aget v2, v0, v10

    .line 430
    .line 431
    if-ge v1, v2, :cond_9

    .line 432
    .line 433
    move v5, v10

    .line 434
    goto :goto_2

    .line 435
    :cond_9
    aget v11, v0, v9

    .line 436
    .line 437
    add-int/2addr v2, v11

    .line 438
    if-ge v1, v2, :cond_a

    .line 439
    .line 440
    move v5, v9

    .line 441
    goto :goto_2

    .line 442
    :cond_a
    aget v11, v0, v8

    .line 443
    .line 444
    add-int/2addr v2, v11

    .line 445
    if-ge v1, v2, :cond_b

    .line 446
    .line 447
    move v5, v8

    .line 448
    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 449
    .line 450
    new-instance v11, Ljava/lang/StringBuilder;

    .line 451
    .line 452
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object p1, p1, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    aget p1, v0, v10

    .line 464
    .line 465
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    aget p1, v0, v9

    .line 472
    .line 473
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    aget p1, v0, v8

    .line 480
    .line 481
    const-string v0, " Group: "

    .line 482
    .line 483
    invoke-static {v11, p1, v3, v1, v0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 487
    .line 488
    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mindexToGroupName(Lcom/samsung/android/server/wifi/abtest/AbTestManager;I)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p0

    .line 492
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    invoke-static {v2, p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    return v5
.end method

.method public initializeHashSeeds()V
    .locals 4

    .line 1
    const-string v0, "ro.serialno"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSerialNo:Ljava/lang/String;

    .line 8
    .line 9
    const-string v0, "ro.boot.ap_serial"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mApSerial:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->getFactoryMacAddress()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mWlanFactoryMac:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmFrameworkFacade(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->readSalesCode()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSalesCode:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "ro.product.model"

    .line 35
    .line 36
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mModelName:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 43
    .line 44
    const-string v1, "ro.product_ship"

    .line 45
    .line 46
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fputmProductShip(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v2, "initializeHashSeeds - mWlanFactoryMac: "

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 63
    .line 64
    invoke-direct {v2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mWlanFactoryMac:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ", mSerialNo: "

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSerialNo:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mhidePrivateInfo(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, ", mApSerial: "

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 98
    .line 99
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mApSerial:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mhidePrivateInfo(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v2, ", mSalesCode: "

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSalesCode:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, ", mModelName: "

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mModelName:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v2, ", mProductShip: "

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->this$0:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 134
    .line 135
    invoke-static {p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$fgetmProductShip(Lcom/samsung/android/server/wifi/abtest/AbTestManager;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/abtest/AbTestManager;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method public isCommonHashSeedReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mWlanFactoryMac:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mSerialNo:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestManager$AbTestGroupController;->mApSerial:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 29
    return p0
.end method
