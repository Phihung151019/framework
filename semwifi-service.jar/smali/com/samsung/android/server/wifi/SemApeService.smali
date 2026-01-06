.class public abstract Lcom/samsung/android/server/wifi/SemApeService;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemApeService$Stats;,
        Lcom/samsung/android/server/wifi/SemApeService$LiveSession;,
        Lcom/samsung/android/server/wifi/SemApeService$Session;
    }
.end annotation


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x7d0

.field private static final MAX_KEEPING_PACKAGES:I = 0x14

.field private static final MAX_KEEPING_SESSIONS:I = 0x1e

.field private static final MIN_SESSION_SECONDS:I = 0x14

.field public static final TAG:Ljava/lang/String; = "SemApeService"

.field private static mVerboseLoggingEnabled:Z = false


# instance fields
.field private final DUMP_TITLE:Ljava/lang/String;

.field private final mAppUsages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveSession:Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

.field private mNumOfLongTimeSessions:I

.field private mNumOfShortTimeSessions:I

.field private final mSessions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/server/wifi/SemApeService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;


# direct methods
.method public static synthetic $r8$lambda$89G9dUj_roKJk_zY1N2EDgA_LNw(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/SemApeService$Session;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->lambda$sessionsToString$3(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/SemApeService$Session;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$KHUezq0PG3-_BWYIKBS3SEQLmRA(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->lambda$appUsageToString$2(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$OoXcfkdBv7flqlGp4xDVBI9Ha7M(Lcom/samsung/android/server/wifi/SemApeService;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->lambda$updateAppUsage$0(Ljava/util/Map$Entry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$bauAf0Ds5TJdMVAGO_2CWSA5uPo(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->lambda$dumpSessions$1(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "SemApeService (v"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService;->VER()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, ") history:"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->DUMP_TITLE:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v0, Ljava/util/LinkedList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 29
    .line 30
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemApeService$Stats;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 36
    .line 37
    new-instance v0, Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 43
    .line 44
    new-instance v0, Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 50
    .line 51
    return-void
.end method

.method private dumpSessions(Ljava/io/PrintWriter;)V
    .locals 43

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v4, "=== APE App Usages: "

    .line 19
    .line 20
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    new-instance v3, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda1;

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    invoke-direct {v3, v4, v1}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 64
    .line 65
    .line 66
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 67
    .line 68
    monitor-enter v3

    .line 69
    :try_start_1
    new-instance v2, Ljava/util/LinkedList;

    .line 70
    .line 71
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 72
    .line 73
    invoke-direct {v2, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget v4, v0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfLongTimeSessions:I

    .line 84
    .line 85
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfShortTimeSessions:I

    .line 86
    .line 87
    const-string v5, "=== APE Sessions(v2): "

    .line 88
    .line 89
    const-string v6, " / L="

    .line 90
    .line 91
    const-string v7, ", S="

    .line 92
    .line 93
    invoke-static {v5, v6, v3, v4, v7}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_0

    .line 116
    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lcom/samsung/android/server/wifi/SemApeService$Session;

    .line 122
    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v4, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->packageName:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, " - bandwidthLimitedSecs="

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v4, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimitedSecs:I

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v4, " bandwidthUnlimitedSecs="

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v4, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthUnlimitedSecs:I

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 161
    .line 162
    iget-object v3, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 163
    .line 164
    iget v4, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 165
    .line 166
    iget v5, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 167
    .line 168
    iget v6, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 169
    .line 170
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 171
    .line 172
    iget-object v7, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 173
    .line 174
    iget v8, v7, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 175
    .line 176
    iget v9, v7, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 177
    .line 178
    iget v10, v7, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 179
    .line 180
    iget v7, v7, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 181
    .line 182
    iget-object v11, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 183
    .line 184
    iget v12, v11, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 185
    .line 186
    iget v13, v11, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 187
    .line 188
    iget v14, v11, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 189
    .line 190
    iget v11, v11, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 191
    .line 192
    iget-object v15, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 193
    .line 194
    move-object/from16 p0, v0

    .line 195
    .line 196
    iget v0, v15, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 197
    .line 198
    iget v1, v15, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 199
    .line 200
    move/from16 v16, v0

    .line 201
    .line 202
    iget v0, v15, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 203
    .line 204
    iget v15, v15, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 205
    .line 206
    move/from16 v17, v0

    .line 207
    .line 208
    iget-object v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 209
    .line 210
    move/from16 v18, v15

    .line 211
    .line 212
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 213
    .line 214
    move/from16 v19, v15

    .line 215
    .line 216
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 217
    .line 218
    move/from16 v20, v15

    .line 219
    .line 220
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 221
    .line 222
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 223
    .line 224
    move/from16 v21, v0

    .line 225
    .line 226
    iget-object v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 227
    .line 228
    move/from16 v22, v15

    .line 229
    .line 230
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 231
    .line 232
    move/from16 v23, v15

    .line 233
    .line 234
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 235
    .line 236
    move/from16 v24, v15

    .line 237
    .line 238
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 239
    .line 240
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 241
    .line 242
    move/from16 v25, v0

    .line 243
    .line 244
    iget-object v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 245
    .line 246
    move/from16 v26, v15

    .line 247
    .line 248
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 249
    .line 250
    move/from16 v27, v15

    .line 251
    .line 252
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 253
    .line 254
    move/from16 v28, v15

    .line 255
    .line 256
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 257
    .line 258
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 259
    .line 260
    move/from16 v29, v0

    .line 261
    .line 262
    iget-object v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 263
    .line 264
    move/from16 v30, v15

    .line 265
    .line 266
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 267
    .line 268
    move/from16 v31, v15

    .line 269
    .line 270
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 271
    .line 272
    move/from16 v32, v15

    .line 273
    .line 274
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 275
    .line 276
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 277
    .line 278
    move/from16 v33, v0

    .line 279
    .line 280
    iget-object v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 281
    .line 282
    move/from16 v34, v15

    .line 283
    .line 284
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 285
    .line 286
    move/from16 v35, v15

    .line 287
    .line 288
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 289
    .line 290
    move/from16 v36, v15

    .line 291
    .line 292
    iget v15, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 293
    .line 294
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 295
    .line 296
    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 297
    .line 298
    move/from16 v37, v0

    .line 299
    .line 300
    iget v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 301
    .line 302
    move/from16 v38, v0

    .line 303
    .line 304
    iget v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 305
    .line 306
    move/from16 v39, v0

    .line 307
    .line 308
    iget v0, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 309
    .line 310
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 311
    .line 312
    move/from16 v40, v2

    .line 313
    .line 314
    const-string v2, "  [min max avg std] - app rx["

    .line 315
    .line 316
    move/from16 v41, v0

    .line 317
    .line 318
    const-string v0, " "

    .line 319
    .line 320
    move/from16 v42, v15

    .line 321
    .line 322
    const-string v15, " "

    .line 323
    .line 324
    invoke-static {v2, v0, v4, v5, v15}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v2, " "

    .line 329
    .line 330
    const-string v4, "] tx["

    .line 331
    .line 332
    invoke-static {v0, v6, v2, v3, v4}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const-string v2, " "

    .line 336
    .line 337
    const-string v3, " "

    .line 338
    .line 339
    invoke-static {v0, v8, v2, v9, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v2, " "

    .line 343
    .line 344
    const-string v3, "] background rx["

    .line 345
    .line 346
    invoke-static {v0, v10, v2, v7, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const-string v2, " "

    .line 350
    .line 351
    const-string v3, " "

    .line 352
    .line 353
    invoke-static {v0, v12, v2, v13, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 354
    .line 355
    .line 356
    const-string v2, " "

    .line 357
    .line 358
    const-string v3, "] tx["

    .line 359
    .line 360
    invoke-static {v0, v14, v2, v11, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    const-string v2, " "

    .line 364
    .line 365
    const-string v3, " "

    .line 366
    .line 367
    move/from16 v4, v16

    .line 368
    .line 369
    invoke-static {v0, v4, v2, v1, v3}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 370
    .line 371
    .line 372
    const-string v1, " "

    .line 373
    .line 374
    const-string v2, "] linkSpeed rx["

    .line 375
    .line 376
    move/from16 v3, v17

    .line 377
    .line 378
    move/from16 v4, v18

    .line 379
    .line 380
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    const-string v1, " "

    .line 384
    .line 385
    const-string v2, " "

    .line 386
    .line 387
    move/from16 v3, v19

    .line 388
    .line 389
    move/from16 v4, v20

    .line 390
    .line 391
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-string v1, " "

    .line 395
    .line 396
    const-string v2, "] tx["

    .line 397
    .line 398
    move/from16 v4, v21

    .line 399
    .line 400
    move/from16 v3, v22

    .line 401
    .line 402
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 403
    .line 404
    .line 405
    const-string v1, " "

    .line 406
    .line 407
    const-string v2, " "

    .line 408
    .line 409
    move/from16 v3, v23

    .line 410
    .line 411
    move/from16 v4, v24

    .line 412
    .line 413
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 414
    .line 415
    .line 416
    const-string v1, " "

    .line 417
    .line 418
    const-string v2, "] googleEstimatedBandwidth rx["

    .line 419
    .line 420
    move/from16 v4, v25

    .line 421
    .line 422
    move/from16 v3, v26

    .line 423
    .line 424
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 425
    .line 426
    .line 427
    const-string v1, " "

    .line 428
    .line 429
    const-string v2, " "

    .line 430
    .line 431
    move/from16 v3, v27

    .line 432
    .line 433
    move/from16 v4, v28

    .line 434
    .line 435
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 436
    .line 437
    .line 438
    const-string v1, " "

    .line 439
    .line 440
    const-string v2, "] tx["

    .line 441
    .line 442
    move/from16 v4, v29

    .line 443
    .line 444
    move/from16 v3, v30

    .line 445
    .line 446
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const-string v1, " "

    .line 450
    .line 451
    const-string v2, " "

    .line 452
    .line 453
    move/from16 v3, v31

    .line 454
    .line 455
    move/from16 v4, v32

    .line 456
    .line 457
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string v1, " "

    .line 461
    .line 462
    const-string v2, "] bandwidthLimit["

    .line 463
    .line 464
    move/from16 v4, v33

    .line 465
    .line 466
    move/from16 v3, v34

    .line 467
    .line 468
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 469
    .line 470
    .line 471
    const-string v1, " "

    .line 472
    .line 473
    const-string v2, " "

    .line 474
    .line 475
    move/from16 v3, v35

    .line 476
    .line 477
    move/from16 v4, v36

    .line 478
    .line 479
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 480
    .line 481
    .line 482
    const-string v1, " "

    .line 483
    .line 484
    const-string v2, "] streaming rx["

    .line 485
    .line 486
    move/from16 v4, v37

    .line 487
    .line 488
    move/from16 v3, v42

    .line 489
    .line 490
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 491
    .line 492
    .line 493
    const-string v1, " "

    .line 494
    .line 495
    const-string v2, " "

    .line 496
    .line 497
    move/from16 v3, v38

    .line 498
    .line 499
    move/from16 v4, v39

    .line 500
    .line 501
    invoke-static {v0, v3, v1, v4, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 502
    .line 503
    .line 504
    move/from16 v1, v41

    .line 505
    .line 506
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    const-string v1, " "

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    move/from16 v1, v40

    .line 515
    .line 516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v1, "]"

    .line 520
    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    move-object/from16 v1, p1

    .line 529
    .line 530
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    move-object/from16 v0, p0

    .line 534
    .line 535
    goto/16 :goto_0

    .line 536
    .line 537
    :cond_0
    return-void

    .line 538
    :catchall_0
    move-exception v0

    .line 539
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    throw v0

    .line 541
    :catchall_1
    move-exception v0

    .line 542
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 543
    throw v0
.end method

.method protected static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    move-object v1, p0

    .line 7
    :goto_0
    if-eqz v1, :cond_2

    .line 8
    .line 9
    instance-of v2, v1, Ljava/net/UnknownHostException;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    new-instance v0, Ljava/io/StringWriter;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Ljava/io/PrintWriter;

    .line 25
    .line 26
    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method private static synthetic lambda$appUsageToString$2(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)V
    .locals 2

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private static synthetic lambda$dumpSessions$1(Ljava/io/PrintWriter;Ljava/util/Map$Entry;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static synthetic lambda$sessionsToString$3(Ljava/lang/StringBuilder;Lcom/samsung/android/server/wifi/SemApeService$Session;)V
    .locals 2

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->packageName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimitedSecs:I

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthUnlimitedSecs:I

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 31
    .line 32
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 41
    .line 42
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 51
    .line 52
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 61
    .line 62
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 71
    .line 72
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 81
    .line 82
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 91
    .line 92
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->appTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 101
    .line 102
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 111
    .line 112
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 121
    .line 122
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 123
    .line 124
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 131
    .line 132
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 133
    .line 134
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 141
    .line 142
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 143
    .line 144
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 151
    .line 152
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 153
    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 161
    .line 162
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 163
    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 171
    .line 172
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 173
    .line 174
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->backgroundTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 181
    .line 182
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 191
    .line 192
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 201
    .line 202
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 203
    .line 204
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 211
    .line 212
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 213
    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 221
    .line 222
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 223
    .line 224
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 231
    .line 232
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 233
    .line 234
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 241
    .line 242
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 243
    .line 244
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 251
    .line 252
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 253
    .line 254
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->linkSpeedTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 261
    .line 262
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 263
    .line 264
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 271
    .line 272
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 273
    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 281
    .line 282
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 283
    .line 284
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 291
    .line 292
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 293
    .line 294
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 301
    .line 302
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 303
    .line 304
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 311
    .line 312
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 313
    .line 314
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 321
    .line 322
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 323
    .line 324
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 331
    .line 332
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 333
    .line 334
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->googleEstimatedBandwidthTx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 341
    .line 342
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 343
    .line 344
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 351
    .line 352
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 353
    .line 354
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 361
    .line 362
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 363
    .line 364
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 371
    .line 372
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 373
    .line 374
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->bandwidthLimit:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 381
    .line 382
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 383
    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 391
    .line 392
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->min:I

    .line 393
    .line 394
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 401
    .line 402
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->max:I

    .line 403
    .line 404
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    iget-object v1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 411
    .line 412
    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->avg:I

    .line 413
    .line 414
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session;->streamingRx:Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;

    .line 421
    .line 422
    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeService$Session$Stats;->std:I

    .line 423
    .line 424
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    return-void
.end method

.method private synthetic lambda$updateAppUsage$0(Ljava/util/Map$Entry;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected static logd(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemApeService"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemApeService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static loge(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected static logi(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemApeService"

    .line 2
    .line 3
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected static logv(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemApeService;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemApeService"

    .line 6
    .line 7
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private storeSession(Lcom/samsung/android/server/wifi/SemApeService$Session;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda2;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->sort(Ljava/util/Comparator;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/16 v0, 0x1e

    .line 31
    .line 32
    if-le p1, v0, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method private updateAppUsage(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-int/2addr v0, p2

    .line 29
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/16 p2, 0x14

    .line 45
    .line 46
    if-le p1, p2, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sub-int/2addr v0, p2

    .line 73
    int-to-long v0, v0

    .line 74
    invoke-interface {p1, v0, v1}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda1;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-direct {p2, v0, p0}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 85
    .line 86
    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract VER()Ljava/lang/String;
.end method

.method public appUsageToString(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-static {p0, p1}, Ljava/lang/Integer;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {}, Ljava/util/Map$Entry;->comparingByValue()Ljava/util/Comparator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    int-to-long v1, p1

    .line 49
    invoke-interface {p0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/StringBuilder;I)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    new-instance v3, Ljava/util/LinkedList;

    .line 9
    .line 10
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeService;->DUMP_TITLE:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemApeService$Stats;->getTotalRunningSeconds()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 30
    .line 31
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    .line 32
    .line 33
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 34
    .line 35
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 36
    .line 37
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 38
    .line 39
    iget-wide v7, v7, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 40
    .line 41
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 42
    .line 43
    iget v9, v9, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 44
    .line 45
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 46
    .line 47
    iget-wide v10, v10, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 48
    .line 49
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 50
    .line 51
    iget-wide v12, v12, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 52
    .line 53
    const-string v14, "TotalRunningSeconds="

    .line 54
    .line 55
    const-string v15, " / APE Running Seconds - VoIP("

    .line 56
    .line 57
    const-string v0, "): total="

    .line 58
    .line 59
    invoke-static {v14, v15, v2, v4, v0}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ", limited="

    .line 67
    .line 68
    const-string v4, ", Non VoIP("

    .line 69
    .line 70
    invoke-static {v0, v2, v7, v8, v4}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "): total="

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v2, ", limited="

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_0

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    check-cast v2, Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 120
    .line 121
    .line 122
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/server/wifi/SemApeService;->dumpSessions(Ljava/io/PrintWriter;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :catchall_0
    move-exception v0

    .line 130
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    throw v0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    sput-boolean p0, Lcom/samsung/android/server/wifi/SemApeService;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getStats()Lcom/samsung/android/server/wifi/SemApeService$Stats;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemApeService$Stats;-><init>(Lcom/samsung/android/server/wifi/SemApeService$Stats;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected recordHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS "

    .line 4
    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/Date;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    const/16 v0, 0x7d0

    .line 53
    .line 54
    if-le p1, v0, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mHistory:Ljava/util/LinkedList;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    monitor-exit v1

    .line 65
    return-void

    .line 66
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public resetSessionStats()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mAppUsages:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfLongTimeSessions:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfShortTimeSessions:I

    .line 15
    .line 16
    return-void
.end method

.method public resetStats()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemApeService$Stats;->reset()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public sessionsToString(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService;->mSessions:Ljava/util/LinkedList;

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    const-string v1, "2,"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfLongTimeSessions:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ","

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfShortTimeSessions:I

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p0, ","

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    invoke-static {p0, p1}, Ljava/lang/Integer;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/LinkedList;->stream()Ljava/util/stream/Stream;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    int-to-long v1, p1

    .line 58
    invoke-interface {p0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    new-instance p1, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/StringBuilder;I)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    throw p0
.end method

.method protected startLiveSession(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLiveSession:Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

    .line 7
    .line 8
    return-void
.end method

.method protected stopLiveSession()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLiveSession:Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->getTotalSeconds()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x14

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/SemApeService$Session;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLiveSession:Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemApeService$Session;-><init>(Lcom/samsung/android/server/wifi/SemApeService$LiveSession;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemApeService;->storeSession(Lcom/samsung/android/server/wifi/SemApeService$Session;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeService$Session;->packageName:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeService$Session;->getTotalSeconds()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->updateAppUsage(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfLongTimeSessions:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfLongTimeSessions:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Not collecting short session statistics: "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLiveSession:Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->getTotalSeconds()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfShortTimeSessions:I

    .line 61
    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 63
    .line 64
    iput v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mNumOfShortTimeSessions:I

    .line 65
    .line 66
    :goto_0
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLiveSession:Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

    .line 68
    .line 69
    return-void
.end method

.method protected updateLiveSession(IIIIIIIIIII)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mLiveSession:Lcom/samsung/android/server/wifi/SemApeService$LiveSession;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    move p1, v0

    :cond_1
    if-gez p2, :cond_2

    move p2, v0

    :cond_2
    if-gez p3, :cond_3

    move p3, v0

    :cond_3
    if-gez p4, :cond_4

    move p4, v0

    .line 2
    :cond_4
    invoke-virtual/range {p0 .. p11}, Lcom/samsung/android/server/wifi/SemApeService$LiveSession;->update(IIIIIIIIIII)V

    return-void
.end method

.method protected updateStatsOnStopped(ZJJ)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 6
    .line 7
    add-long/2addr v0, p2

    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForVoipApp:J

    .line 9
    .line 10
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 11
    .line 12
    add-long/2addr p1, p4

    .line 13
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForVoipApp:J

    .line 14
    .line 15
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForVoipApp:I

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService;->mStats:Lcom/samsung/android/server/wifi/SemApeService$Stats;

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 25
    .line 26
    add-long/2addr v0, p2

    .line 27
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfApeEnabledForNonVoipApp:J

    .line 28
    .line 29
    iget-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 30
    .line 31
    add-long/2addr p1, p4

    .line 32
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->totalSecondsOfBackgroundLimitedForNonVoipApp:J

    .line 33
    .line 34
    iget p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 35
    .line 36
    add-int/lit8 p1, p1, 0x1

    .line 37
    .line 38
    iput p1, p0, Lcom/samsung/android/server/wifi/SemApeService$Stats;->countOfApeEnabledForNonVoipApp:I

    .line 39
    .line 40
    return-void
.end method
