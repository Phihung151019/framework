.class public Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final FILE_ABTEST_CONFIGURATION_PATH:Ljava/lang/String; = "/data/misc/wifi/wifi_ab_update_policy.json"

.field private static final GET_SCPM_CONFIGURATION:I = 0x1

.field private static final SCPM_CONFIGURATION_NAME:Ljava/lang/String; = "wifi-ab-update-policy"

.field private static final TAG:Ljava/lang/String; = "AbTestScpmController"


# instance fields
.field private final mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

.field private mAbTestScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

.field private final mContext:Landroid/content/Context;

.field mIsAbTestByPushedFile:Z

.field private final mScpmControllerHandler:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;

.field private mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;


# direct methods
.method static bridge synthetic -$$Nest$fgetmScpmControllerHandler(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;)Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mScpmControllerHandler:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/abtest/AbTestManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mIsAbTestByPushedFile:Z

    .line 6
    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$1;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 17
    .line 18
    new-instance p1, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;

    .line 19
    .line 20
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;-><init>(Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;Landroid/os/Looper;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mScpmControllerHandler:Lcom/samsung/android/server/wifi/abtest/AbTestScpmController$ScpmControllerHandler;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getScpmExecutor()Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestScpmExecutor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method public parseScpmConfiguration(Ljava/io/BufferedReader;)Ljava/util/Set;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/Set<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "salesModelBlockList"

    .line 4
    .line 5
    const-string v2, "salesModelAllowList"

    .line 6
    .line 7
    const-string v3, "groupC"

    .line 8
    .line 9
    const-string v4, "groupB"

    .line 10
    .line 11
    const-string v5, "groupA"

    .line 12
    .line 13
    const-string v6, "AbTestScpmController"

    .line 14
    .line 15
    new-instance v7, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v8, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    if-eqz p1, :cond_c

    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    if-nez v9, :cond_0

    .line 32
    .line 33
    goto/16 :goto_b

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v9, "\n"

    .line 39
    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    if-eqz v10, :cond_1

    .line 48
    .line 49
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v8}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lcom/google/gson/JsonObject;

    .line 65
    .line 66
    const-string v9, "version"

    .line 67
    .line 68
    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    sget-boolean v10, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->DBG:Z

    .line 77
    .line 78
    if-eqz v10, :cond_2

    .line 79
    .line 80
    new-instance v11, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v12, "version: "

    .line 86
    .line 87
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    goto/16 :goto_8

    .line 103
    .line 104
    :catch_1
    move-exception v0

    .line 105
    goto/16 :goto_9

    .line 106
    .line 107
    :catch_2
    move-exception v0

    .line 108
    goto/16 :goto_a

    .line 109
    .line 110
    :cond_2
    :goto_1
    iget-object v11, v0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 111
    .line 112
    invoke-virtual {v11, v9}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->setAbTestVersion(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v9, "abTestEnabled"

    .line 116
    .line 117
    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    if-eqz v10, :cond_3

    .line 126
    .line 127
    new-instance v10, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v11, "abTestEnabled: "

    .line 133
    .line 134
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_3
    const-string v10, "true"

    .line 148
    .line 149
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_b

    .line 154
    .line 155
    iget-object v0, v0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 156
    .line 157
    const/4 v9, 0x1

    .line 158
    invoke-virtual {v0, v9}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->setEnableAbTest(Z)V

    .line 159
    .line 160
    .line 161
    const-string v0, "test"

    .line 162
    .line 163
    invoke-virtual {v8, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/4 v8, 0x0

    .line 172
    :goto_2
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    if-ge v8, v9, :cond_a

    .line 177
    .line 178
    new-instance v9, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    .line 179
    .line 180
    invoke-direct {v9}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v11, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    new-instance v12, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 198
    .line 199
    .line 200
    move-result-object v13

    .line 201
    const-string v14, "id"

    .line 202
    .line 203
    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 204
    .line 205
    .line 206
    move-result-object v14

    .line 207
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    iput-object v14, v9, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    .line 212
    .line 213
    const-string v14, "moduleName"

    .line 214
    .line 215
    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 216
    .line 217
    .line 218
    move-result-object v14

    .line 219
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v14

    .line 223
    iput-object v14, v9, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    .line 224
    .line 225
    const-string v14, "startDate"

    .line 226
    .line 227
    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    iput-object v14, v9, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    .line 236
    .line 237
    const-string v14, "endDate"

    .line 238
    .line 239
    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 240
    .line 241
    .line 242
    move-result-object v14

    .line 243
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v14

    .line 247
    iput-object v14, v9, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    .line 248
    .line 249
    const-string v14, "groupSize"

    .line 250
    .line 251
    invoke-virtual {v13, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 256
    .line 257
    .line 258
    move-result-object v14

    .line 259
    new-instance v15, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 260
    .line 261
    invoke-direct {v15}, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v14, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 265
    .line 266
    .line 267
    move-result-object v16

    .line 268
    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    iput-object v10, v15, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    .line 273
    .line 274
    invoke-virtual {v14, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    iput-object v10, v15, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v14, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v10

    .line 292
    iput-object v10, v15, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v9, v15}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->setGroupSize(Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 298
    .line 299
    .line 300
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    const-string v14, "salesModel"

    .line 302
    .line 303
    if-eqz v10, :cond_5

    .line 304
    .line 305
    :try_start_1
    invoke-virtual {v13, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 310
    .line 311
    .line 312
    move-result-object v10

    .line 313
    new-instance v15, Ljava/util/ArrayList;

    .line 314
    .line 315
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 316
    .line 317
    .line 318
    move-object/from16 v16, v2

    .line 319
    .line 320
    move/from16 p0, v8

    .line 321
    .line 322
    const/4 v2, 0x0

    .line 323
    :goto_3
    invoke-virtual {v10}, Lcom/google/gson/JsonArray;->size()I

    .line 324
    .line 325
    .line 326
    move-result v8

    .line 327
    if-ge v2, v8, :cond_4

    .line 328
    .line 329
    invoke-virtual {v10, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 334
    .line 335
    .line 336
    move-result-object v8

    .line 337
    invoke-virtual {v8, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v8

    .line 345
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    add-int/lit8 v2, v2, 0x1

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_4
    invoke-virtual {v9, v15}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->setSalesModelAllowList(Ljava/util/List;)V

    .line 352
    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_5
    move-object/from16 v16, v2

    .line 356
    .line 357
    move/from16 p0, v8

    .line 358
    .line 359
    :goto_4
    invoke-virtual {v13, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    if-eqz v2, :cond_7

    .line 364
    .line 365
    invoke-virtual {v13, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    new-instance v8, Ljava/util/ArrayList;

    .line 374
    .line 375
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .line 377
    .line 378
    const/4 v10, 0x0

    .line 379
    :goto_5
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 380
    .line 381
    .line 382
    move-result v15

    .line 383
    if-ge v10, v15, :cond_6

    .line 384
    .line 385
    invoke-virtual {v2, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 386
    .line 387
    .line 388
    move-result-object v15

    .line 389
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 390
    .line 391
    .line 392
    move-result-object v15

    .line 393
    invoke-virtual {v15, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 394
    .line 395
    .line 396
    move-result-object v15

    .line 397
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v15

    .line 401
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    add-int/lit8 v10, v10, 0x1

    .line 405
    .line 406
    goto :goto_5

    .line 407
    :cond_6
    invoke-virtual {v9, v8}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->setSalesModelBlockList(Ljava/util/List;)V

    .line 408
    .line 409
    .line 410
    :cond_7
    const-string v2, "testParamList"

    .line 411
    .line 412
    invoke-virtual {v13, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    const/4 v8, 0x0

    .line 421
    :goto_6
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    .line 422
    .line 423
    .line 424
    move-result v10

    .line 425
    if-ge v8, v10, :cond_8

    .line 426
    .line 427
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 428
    .line 429
    .line 430
    move-result-object v10

    .line 431
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 432
    .line 433
    .line 434
    move-result-object v10

    .line 435
    new-instance v14, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;

    .line 436
    .line 437
    invoke-direct {v14}, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;-><init>()V

    .line 438
    .line 439
    .line 440
    const-string v15, "paramName"

    .line 441
    .line 442
    invoke-virtual {v10, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 443
    .line 444
    .line 445
    move-result-object v15

    .line 446
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v15

    .line 450
    iput-object v15, v14, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->name:Ljava/lang/String;

    .line 451
    .line 452
    iget-object v15, v14, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 453
    .line 454
    invoke-virtual {v10, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 455
    .line 456
    .line 457
    move-result-object v17

    .line 458
    move-object/from16 v18, v1

    .line 459
    .line 460
    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    iput-object v1, v15, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    .line 465
    .line 466
    iget-object v1, v14, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 467
    .line 468
    invoke-virtual {v10, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 469
    .line 470
    .line 471
    move-result-object v15

    .line 472
    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v15

    .line 476
    iput-object v15, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    .line 477
    .line 478
    iget-object v1, v14, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 479
    .line 480
    invoke-virtual {v10, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v10

    .line 488
    iput-object v10, v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    .line 489
    .line 490
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .line 492
    .line 493
    add-int/lit8 v8, v8, 0x1

    .line 494
    .line 495
    move-object/from16 v1, v18

    .line 496
    .line 497
    goto :goto_6

    .line 498
    :cond_8
    move-object/from16 v18, v1

    .line 499
    .line 500
    invoke-virtual {v9, v11}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->setTestParamList(Ljava/util/List;)V

    .line 501
    .line 502
    .line 503
    const-string v1, "testOutputList"

    .line 504
    .line 505
    invoke-virtual {v13, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    const/4 v2, 0x0

    .line 514
    :goto_7
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    .line 515
    .line 516
    .line 517
    move-result v8

    .line 518
    if-ge v2, v8, :cond_9

    .line 519
    .line 520
    new-instance v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;

    .line 521
    .line 522
    invoke-direct {v8}, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 530
    .line 531
    .line 532
    move-result-object v10

    .line 533
    const-string v11, "event"

    .line 534
    .line 535
    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 536
    .line 537
    .line 538
    move-result-object v11

    .line 539
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    const-string v13, "dimension"

    .line 544
    .line 545
    invoke-virtual {v10, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 546
    .line 547
    .line 548
    move-result-object v13

    .line 549
    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 550
    .line 551
    .line 552
    move-result-object v13

    .line 553
    const-string v14, "outputName"

    .line 554
    .line 555
    invoke-virtual {v10, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 556
    .line 557
    .line 558
    move-result-object v10

    .line 559
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v10

    .line 563
    iput-object v10, v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->name:Ljava/lang/String;

    .line 564
    .line 565
    iget-object v10, v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->event:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 566
    .line 567
    invoke-virtual {v11, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 568
    .line 569
    .line 570
    move-result-object v14

    .line 571
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v14

    .line 575
    iput-object v14, v10, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    .line 576
    .line 577
    iget-object v10, v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->event:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 578
    .line 579
    invoke-virtual {v11, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 580
    .line 581
    .line 582
    move-result-object v14

    .line 583
    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v14

    .line 587
    iput-object v14, v10, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    .line 588
    .line 589
    iget-object v10, v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->event:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 590
    .line 591
    invoke-virtual {v11, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 592
    .line 593
    .line 594
    move-result-object v11

    .line 595
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v11

    .line 599
    iput-object v11, v10, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    .line 600
    .line 601
    iget-object v10, v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->dimension:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 602
    .line 603
    invoke-virtual {v13, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 604
    .line 605
    .line 606
    move-result-object v11

    .line 607
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v11

    .line 611
    iput-object v11, v10, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupA:Ljava/lang/String;

    .line 612
    .line 613
    iget-object v10, v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->dimension:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 614
    .line 615
    invoke-virtual {v13, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 616
    .line 617
    .line 618
    move-result-object v11

    .line 619
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v11

    .line 623
    iput-object v11, v10, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupB:Ljava/lang/String;

    .line 624
    .line 625
    iget-object v10, v8, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;->dimension:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    .line 626
    .line 627
    invoke-virtual {v13, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 628
    .line 629
    .line 630
    move-result-object v11

    .line 631
    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v11

    .line 635
    iput-object v11, v10, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;->groupC:Ljava/lang/String;

    .line 636
    .line 637
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    add-int/lit8 v2, v2, 0x1

    .line 641
    .line 642
    goto/16 :goto_7

    .line 643
    .line 644
    :cond_9
    invoke-virtual {v9, v12}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->setTestOutputList(Ljava/util/List;)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    add-int/lit8 v8, p0, 0x1

    .line 651
    .line 652
    move-object/from16 v2, v16

    .line 653
    .line 654
    move-object/from16 v1, v18

    .line 655
    .line 656
    goto/16 :goto_2

    .line 657
    .line 658
    :cond_a
    sget-boolean v0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->DBG:Z

    .line 659
    .line 660
    if-eqz v0, :cond_c

    .line 661
    .line 662
    const-string v0, "parseScpmConfiguration done"

    .line 663
    .line 664
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    return-object v7

    .line 668
    :cond_b
    iget-object v0, v0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 669
    .line 670
    const/4 v1, 0x0

    .line 671
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->setEnableAbTest(Z)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    .line 673
    .line 674
    return-object v7

    .line 675
    :goto_8
    const-string v1, "parseScpmConfiguration Exception error "

    .line 676
    .line 677
    invoke-static {v1, v0, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    goto :goto_b

    .line 681
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 682
    .line 683
    const-string v2, "parseScpmConfiguration JsonSyntaxException error : "

    .line 684
    .line 685
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    goto :goto_b

    .line 699
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    const-string v2, "parseScpmConfiguration NullPointerException error : "

    .line 702
    .line 703
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .line 715
    .line 716
    :cond_c
    :goto_b
    return-object v7
.end method

.method public readScpmConfiguration()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 2
    .line 3
    const-string v1, "AbTestScpmController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "readScpmConfiguration, mSemAbTestManager is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mIsAbTestByPushedFile:Z

    .line 14
    .line 15
    const-string v2, "readScpmConfiguration, mIsAbTestByPushedFile is true(path: /data/misc/wifi/wifi_ab_update_policy.json)."

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 24
    .line 25
    const-string v3, "/data/misc/wifi/wifi_ab_update_policy.json"

    .line 26
    .line 27
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mIsAbTestByPushedFile:Z

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 43
    .line 44
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->setAbTestByPushedFile(Z)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    sget-boolean v2, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->DBG:Z

    .line 50
    .line 51
    if-eqz v2, :cond_3

    .line 52
    .line 53
    const-string v3, "readScpmConfiguration, Test file does not exist(path: /data/misc/wifi/wifi_ab_update_policy.json)."

    .line 54
    .line 55
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_3
    const/4 v3, 0x0

    .line 59
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mIsAbTestByPushedFile:Z

    .line 60
    .line 61
    iget-object v4, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 62
    .line 63
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->setAbTestByPushedFile(Z)V

    .line 64
    .line 65
    .line 66
    iget-object v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 67
    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    const-string p0, "parseScpmConfiguration, mScpmDataProvider is null"

    .line 71
    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    const-string v4, "wifi-ab-update-policy"

    .line 77
    .line 78
    invoke-interface {v3, v4}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    if-nez v3, :cond_6

    .line 83
    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mScpmDataProvider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    .line 85
    .line 86
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;->getLastError()Landroid/util/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz v2, :cond_9

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v2, "parseScpmConfiguration, There is no config "

    .line 95
    .line 96
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    if-eqz p0, :cond_5

    .line 100
    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, " "

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    const-string p0, ""

    .line 129
    .line 130
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    if-nez v2, :cond_7

    .line 146
    .line 147
    const-string p0, "parseScpmConfiguration, There is no config pfd.descriptor"

    .line 148
    .line 149
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :cond_7
    move-object v2, v3

    .line 157
    :goto_1
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mIsAbTestByPushedFile:Z

    .line 158
    .line 159
    if-eqz v3, :cond_8

    .line 160
    .line 161
    new-instance v3, Ljava/io/FileInputStream;

    .line 162
    .line 163
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catch_0
    move-exception p0

    .line 168
    goto :goto_8

    .line 169
    :cond_8
    new-instance v3, Ljava/io/FileInputStream;

    .line 170
    .line 171
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    :goto_2
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    .line 179
    .line 180
    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .line 182
    .line 183
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    .line 184
    .line 185
    new-instance v5, Ljava/io/BufferedReader;

    .line 186
    .line 187
    new-instance v6, Ljava/io/InputStreamReader;

    .line 188
    .line 189
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 190
    .line 191
    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 192
    .line 193
    .line 194
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    .line 199
    .line 200
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->parseScpmConfiguration(Ljava/io/BufferedReader;)Ljava/util/Set;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/abtest/AbTestScpmController;->mAbTestManager:Lcom/samsung/android/server/wifi/abtest/AbTestManager;

    .line 205
    .line 206
    invoke-virtual {p0, v5}, Lcom/samsung/android/server/wifi/abtest/AbTestManager;->addAbTestConfigurations(Ljava/util/Set;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 207
    .line 208
    .line 209
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 210
    .line 211
    .line 212
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    .line 214
    .line 215
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_9

    .line 219
    :catchall_0
    move-exception p0

    .line 220
    goto :goto_6

    .line 221
    :catchall_1
    move-exception p0

    .line 222
    goto :goto_4

    .line 223
    :catchall_2
    move-exception p0

    .line 224
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :catchall_3
    move-exception v4

    .line 229
    :try_start_8
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 230
    .line 231
    .line 232
    :goto_3
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 233
    :goto_4
    :try_start_9
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 234
    .line 235
    .line 236
    goto :goto_5

    .line 237
    :catchall_4
    move-exception v0

    .line 238
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 239
    .line 240
    .line 241
    :goto_5
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 242
    :goto_6
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 243
    .line 244
    .line 245
    goto :goto_7

    .line 246
    :catchall_5
    move-exception v0

    .line 247
    :try_start_c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    :goto_7
    throw p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 251
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    const-string v3, "parseScpmConfiguration, IOException: "

    .line 254
    .line 255
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    :goto_9
    if-eqz v2, :cond_9

    .line 269
    .line 270
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 271
    .line 272
    .line 273
    :cond_9
    return-void
.end method
