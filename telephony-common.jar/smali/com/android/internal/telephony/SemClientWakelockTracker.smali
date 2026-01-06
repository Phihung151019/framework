.class public Lcom/android/internal/telephony/SemClientWakelockTracker;
.super Lcom/android/internal/telephony/ClientWakelockTracker;
.source "SemClientWakelockTracker.java"


# static fields
.field public static final blacklist SEM_LOG_TAG:Ljava/lang/String; = "SemClientWakelockTracker"

.field private static final blacklist TIME_UPDATE_MILLIS:J


# instance fields
.field private blacklist mLastClientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private blacklist mLastUpdateTime:J

.field private blacklist mTimeStats:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 94
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/SemClientWakelockTracker;->TIME_UPDATE_MILLIS:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/android/internal/telephony/ClientWakelockTracker;-><init>()V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastUpdateTime:J

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    return-void
.end method

.method private blacklist appendTimeStat(Ljava/lang/Long;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 107
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->size()I

    move-result p2

    const/16 v0, 0x18

    if-lt p2, v0, :cond_0

    .line 109
    iget-object p2, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist dumpRequestHistory(Ljava/io/PrintWriter;)V
    .locals 7

    .line 208
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mTimeStats:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 210
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 211
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->dumpTimeStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 217
    iget-wide v5, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastUpdateTime:J

    sub-long/2addr v3, v5

    .line 219
    sget-wide v5, Lcom/android/internal/telephony/SemClientWakelockTracker;->TIME_UPDATE_MILLIS:J

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    sub-long/2addr v3, v5

    .line 225
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->elapsedTime(J)J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->dumpTimeStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;)V

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->elapsedTime(J)J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] (dump)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 229
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter p1

    .line 230
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 233
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ClientWakelockAccountant;

    invoke-virtual {v1}, Lcom/android/internal/telephony/ClientWakelockAccountant;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 236
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 238
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void

    .line 236
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist dumpTimeStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/IndentingPrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;)V"
        }
    .end annotation

    .line 301
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 303
    const-string v4, "RIL_UNSOL"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    goto :goto_0

    .line 306
    :cond_0
    const-string v4, "WAKE_LOCK_TIMEOUT"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 311
    iget-object v4, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v4

    .line 312
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SemClientWakelockAccountant;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SemClientWakelockAccountant;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0, p1, v3, v2}, Lcom/android/internal/telephony/SemClientWakelockTracker;->printRequestStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;I)V

    .line 317
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 318
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 313
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 323
    const-string p2, "{ RIL_UNSOL }"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const/4 p2, 0x1

    .line 325
    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/telephony/SemClientWakelockTracker;->printRequestStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;I)V

    .line 326
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 327
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    :cond_3
    if-eqz v1, :cond_4

    .line 331
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 332
    const-string p2, "{ WAKE_LOCK_TIMEOUT }"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const/4 p2, 0x2

    .line 334
    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/SemClientWakelockTracker;->printRequestStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;I)V

    .line 335
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 336
    invoke-virtual {p1}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    :cond_4
    return-void
.end method

.method private blacklist printRequestStats(Lcom/android/internal/telephony/IndentingPrintWriter;Ljava/util/HashMap;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/IndentingPrintWriter;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p3

    .line 242
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 243
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 245
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_9

    aget-object v6, v2, v5

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    move-object v8, v6

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v6, p2

    .line 250
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    const/16 v10, 0x2710

    const/4 v11, 0x2

    if-eq v1, v11, :cond_3

    .line 253
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v12

    .line 254
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/16 v14, 0x3e8

    if-lt v13, v14, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v10, :cond_1

    .line 255
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v13, 0x2af8

    if-lt v10, v13, :cond_2

    .line 256
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v12

    .line 259
    :cond_2
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v10

    rsub-int/lit8 v10, v10, 0x2d

    move v13, v4

    :goto_1
    if-ge v13, v10, :cond_5

    .line 261
    const-string v14, "-"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    rem-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v12, 0x5b

    .line 265
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    move v13, v4

    :goto_2
    rsub-int/lit8 v14, v12, 0x4

    if-ge v13, v14, :cond_4

    const/16 v14, 0x30

    .line 267
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 269
    :cond_4
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x5d

    .line 270
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v12, ""

    :cond_5
    const/4 v10, 0x1

    if-nez v1, :cond_6

    move v13, v10

    .line 277
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v7, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Long;

    aget-object v7, v7, v4

    .line 278
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v7

    iget-object v14, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/Long;

    aget-object v14, v14, v13

    .line 279
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v9

    check-cast v15, [Ljava/lang/Integer;

    aget-object v15, v15, v4

    move-object/from16 v16, v9

    check-cast v16, [Ljava/lang/Integer;

    aget-object v13, v16, v13

    move-object/from16 v16, v9

    check-cast v16, [Ljava/lang/Integer;

    aget-object v11, v16, v11

    check-cast v9, [Ljava/lang/Integer;

    const/16 v16, 0x3

    aget-object v16, v9, v16

    move-object v9, v12

    move-object v12, v14

    move-object v14, v13

    move-object v13, v15

    move-object v15, v11

    move-object v11, v7

    filled-new-array/range {v8 .. v16}, [Ljava/lang/Object;

    move-result-object v7

    .line 274
    const-string v8, "id = %5d(%s%s), [%s ~ %s], min =%5d ms, max =%5d ms, avg =%5d ms, count =%5d"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_6
    move v13, v10

    if-ne v1, v13, :cond_7

    .line 285
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v7, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Long;

    aget-object v7, v7, v4

    .line 286
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v11

    iget-object v7, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Long;

    aget-object v7, v7, v13

    .line 287
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v13, v14, v4}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v7

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Integer;

    aget-object v13, v9, v4

    move-object v9, v12

    move-object v12, v7

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v7

    .line 282
    const-string v8, "id = %5d(%s%s), [%s ~ %s], count =%5d"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_3

    :cond_7
    if-ne v1, v11, :cond_8

    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v8, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Long;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v10, v14

    invoke-static {v10, v11}, Lcom/android/internal/telephony/SemTelephonyHelper;->elapsedTime(J)J

    move-result-wide v10

    .line 291
    invoke-static {v10, v11, v13}, Lcom/android/internal/telephony/SemTelephonyHelper;->timeToCalendarString(JZ)Ljava/lang/String;

    move-result-object v8

    .line 292
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Integer;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Integer;

    aget-object v9, v9, v4

    filled-new-array {v7, v8, v10, v9}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s : (%s) %s(%d)"

    invoke-virtual {v0, v8, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 294
    :cond_8
    :goto_3
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->println()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private blacklist updateLogging(Ljava/lang/String;IIJ)V
    .locals 9

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 128
    iget-wide v2, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 129
    sget-wide v4, Lcom/android/internal/telephony/SemClientWakelockTracker;->TIME_UPDATE_MILLIS:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 130
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SemTelephonyHelper;->elapsedTime(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/SemClientWakelockTracker;->appendTimeStat(Ljava/lang/Long;Ljava/util/HashMap;)V

    .line 131
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    .line 132
    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastUpdateTime:J

    .line 135
    :cond_0
    const-string v0, "WAKE_LOCK_TIMEOUT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    move v2, v0

    goto :goto_1

    .line 137
    :cond_1
    const-string v0, "RIL_UNSOL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/SemClientWakelockTracker;->mLastClientMap:Ljava/util/HashMap;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateTime(ILjava/util/HashMap;Ljava/lang/String;IIJ)V

    return-void
.end method

.method private blacklist updateTime(ILjava/util/HashMap;Ljava/lang/String;IIJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "[",
            "Ljava/lang/Long;",
            "[",
            "Ljava/lang/Integer;",
            ">;>;>;",
            "Ljava/lang/String;",
            "IIJ)V"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p5

    .line 146
    invoke-virtual/range {p2 .. p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 188
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v4, :cond_8

    .line 147
    invoke-virtual/range {p2 .. p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 148
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 149
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    const/4 v8, 0x0

    if-ne v0, v5, :cond_0

    .line 151
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v8

    .line 152
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    goto/16 :goto_1

    :cond_0
    if-ne v0, v6, :cond_1

    .line 154
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Long;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v6

    .line 155
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    aget-object v3, v0, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    goto/16 :goto_1

    .line 157
    :cond_1
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 158
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Integer;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 159
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Integer;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 160
    iget-object v11, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/Integer;

    const/4 v12, 0x3

    aget-object v11, v11, v12

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_2

    move v0, v3

    move v11, v6

    move p0, v8

    move v8, v0

    goto :goto_0

    :cond_2
    if-ge v3, v0, :cond_3

    move v0, v3

    :cond_3
    if-le v3, v9, :cond_4

    move v9, v3

    :cond_4
    int-to-long v13, v10

    move p0, v8

    move/from16 p1, v9

    int-to-long v8, v11

    mul-long/2addr v13, v8

    int-to-long v8, v3

    add-long/2addr v13, v8

    add-int/2addr v11, v6

    int-to-long v8, v11

    .line 175
    div-long/2addr v13, v8

    long-to-int v3, v13

    move v8, v3

    move/from16 v3, p1

    .line 177
    :goto_0
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Long;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    .line 178
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, p0

    .line 179
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    .line 180
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    .line 181
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Integer;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v12

    .line 183
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v7}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    if-ne v0, v5, :cond_6

    .line 186
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    if-ne v0, v6, :cond_7

    .line 188
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v7}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 190
    :cond_7
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v6, v8, v3, v7}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :goto_2
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 195
    :cond_8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-ne v0, v5, :cond_9

    .line 197
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    if-ne v0, v6, :cond_a

    .line 199
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v7}, [Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 201
    :cond_a
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v6, v8, v3, v7}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_3
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method blacklist dumpClientRequestTracker(Ljava/io/PrintWriter;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 86
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "-------mClients---------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->dumpRequestHistory(Ljava/io/PrintWriter;)V

    return-void

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/ClientWakelockTracker;->dumpClientRequestTracker(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public blacklist getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/ClientWakelockAccountant;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 57
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/SemClientWakelockAccountant;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/SemClientWakelockAccountant;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mClients:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    .line 60
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist isClientActive(Ljava/lang/String;)Z
    .locals 1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 78
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 80
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist startTracking(Ljava/lang/String;III)V
    .locals 6

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/SemClientWakelockAccountant;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v1, p2

    move v2, p3

    move v3, p4

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ClientWakelockAccountant;->startAttributingWakelock(IIIJ)V

    .line 26
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateConcurrentRequests(IJ)V

    .line 27
    iget-object p1, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter p1

    .line 28
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 29
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist stopTracking(Ljava/lang/String;III)V
    .locals 10

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemClientWakelockTracker;->getClientWakelockAccountant(Ljava/lang/String;)Lcom/android/internal/telephony/ClientWakelockAccountant;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SemClientWakelockAccountant;

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const/16 v4, 0x19

    .line 38
    invoke-static {v3, v4}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/android/internal/telephony/SemClientWakelockAccountant;->stopAttributingWakelockInt(IIJ)I

    move-result v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLogging(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    move-object v4, p0

    move v6, p2

    .line 41
    invoke-virtual {v0, v6, p3, v1, v2}, Lcom/android/internal/telephony/ClientWakelockAccountant;->stopAttributingWakelock(IIJ)V

    .line 43
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ClientWakelockAccountant;->getPendingRequestCount()I

    move-result p0

    if-nez p0, :cond_1

    .line 44
    iget-object p0, v4, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object p1, v4, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 46
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 48
    :cond_1
    :goto_1
    invoke-virtual {v4, p4, v1, v2}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateConcurrentRequests(IJ)V

    return-void
.end method

.method public blacklist updateConcurrentRequests(IJ)V
    .locals 4

    if-eqz p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/ClientWakelockTracker;->mActiveClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/internal/telephony/ClientWakelockAccountant;

    .line 68
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/internal/telephony/ClientWakelockAccountant;->changeConcurrentRequests(IJ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 70
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public blacklist updateLoggingRequestTimeout(IIJ)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 121
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const-string v2, "WAKE_LOCK_TIMEOUT"

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLogging(Ljava/lang/String;IIJ)V

    :cond_0
    return-void
.end method

.method public blacklist updateLoggingUnsol(I)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 115
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v2, "RIL_UNSOL"

    move-object v1, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/SemClientWakelockTracker;->updateLogging(Ljava/lang/String;IIJ)V

    :cond_0
    return-void
.end method
