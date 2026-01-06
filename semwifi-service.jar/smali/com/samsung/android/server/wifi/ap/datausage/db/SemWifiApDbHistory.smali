.class public Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "SemWifiApDataUsageHistory.db"

.field private static final MAX_MONTH_DATA_RETENTION_PERIOD:I = 0x6

.field private static final TAG:Ljava/lang/String;

.field private static final mDBVersion:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$mgetClientListJsonObjectOfGivenDateAndSim(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;IIILjava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getClientListJsonObjectOfGivenDateAndSim(IIILjava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;

    .line 2
    .line 3
    const-string v0, "SemWifiApDbHistory"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "SemWifiApDataUsageHistory.db"

    .line 4
    .line 5
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method private declared-synchronized getClientListJsonObjectOfGivenDateAndSim(IIILjava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :try_start_1
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "db is null"

    .line 12
    .line 13
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_5

    .line 24
    :catch_0
    move-exception p1

    .line 25
    goto :goto_3

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :try_start_3
    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->getClientListJsonObjectOfGivenDateAndSim(Landroid/database/sqlite/SQLiteDatabase;IIILjava/lang/String;)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_4

    .line 38
    :goto_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_2
    move-exception p2

    .line 45
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_2
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 49
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_4
    monitor-exit p0

    .line 53
    return-object v0

    .line 54
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 55
    throw p1
.end method

.method private getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "SemWifiApDataUsageHistory.db got corrupted, creating new file"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string v1, "SemWifiApDataUsageHistory.db"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method


# virtual methods
.method public declared-synchronized delete6MonthOldData()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :try_start_1
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "db is null"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_5

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_1
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x6

    .line 30
    :try_start_3
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->deleteDataBeforeNMonths(Landroid/database/sqlite/SQLiteDatabase;I)Z

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->deleteSimDetailWhoseLastActiveIsGivenMonthBefore(Landroid/database/sqlite/SQLiteDatabase;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_4

    .line 40
    :goto_1
    if-eqz v0, :cond_2

    .line 41
    .line 42
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :catchall_2
    move-exception v0

    .line 47
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_2
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 51
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 52
    .line 53
    .line 54
    :goto_4
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 57
    throw v0
.end method

.method public declared-synchronized getMhsDataConsumedOfGivenDateAndSim(IIILjava/lang/String;)J
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    :try_start_1
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string p2, "db is null"

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_5

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-wide v0

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :try_start_3
    invoke-static {v2, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->getMhsDataConsumedOfGivenDateAndSim(Landroid/database/sqlite/SQLiteDatabase;IIILjava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_4

    .line 39
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_2
    move-exception p2

    .line 46
    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_2
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 50
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_4
    monitor-exit p0

    .line 54
    return-wide v0

    .line 55
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 56
    throw p1
.end method

.method public declared-synchronized getMonthlyDataList(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    :try_start_2
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "db is null"

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object p1, v0

    .line 28
    goto :goto_5

    .line 29
    :catch_0
    move-exception v0

    .line 30
    move-object p1, v0

    .line 31
    goto :goto_3

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v3, p1

    .line 38
    move-wide v4, p2

    .line 39
    move-wide v6, p4

    .line 40
    :try_start_4
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->getMonthlyDataForGivenSim(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_4

    .line 48
    :goto_1
    if-eqz v2, :cond_2

    .line 49
    .line 50
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_2
    move-exception v0

    .line 55
    move-object p2, v0

    .line 56
    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_2
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 60
    :goto_3
    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_4
    monitor-exit p0

    .line 64
    return-object v1

    .line 65
    :goto_5
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 66
    throw p1
.end method

.method public declared-synchronized getTodayTImeUsageOfGivenClient(Ljava/lang/String;)J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x0

    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    :try_start_1
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v3, "db is null"

    .line 13
    .line 14
    invoke-static {p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_5

    .line 25
    :catch_0
    move-exception p1

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-wide v0

    .line 29
    :catchall_1
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :try_start_3
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->getTotalTimeUsageOfClientForCurrentDate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_4

    .line 39
    :goto_1
    if-eqz v2, :cond_2

    .line 40
    .line 41
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :catchall_2
    move-exception v2

    .line 46
    :try_start_6
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_2
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 50
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_4
    monitor-exit p0

    .line 54
    return-wide v0

    .line 55
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 56
    throw p1
.end method

.method public declared-synchronized getTotalNumberOfClientsInDb()I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    :try_start_1
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, "db is null"

    .line 12
    .line 13
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_5

    .line 24
    :catch_0
    move-exception v1

    .line 25
    goto :goto_3

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    .line 27
    return v0

    .line 28
    :catchall_1
    move-exception v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->getTotalNumberOfClientsStoreInDB(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 31
    .line 32
    .line 33
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_4

    .line 38
    :goto_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_2
    move-exception v1

    .line 45
    :try_start_6
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_2
    throw v2
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 49
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_4
    monitor-exit p0

    .line 53
    return v0

    .line 54
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 55
    throw v0
.end method

.method public declared-synchronized getWeeklyDataList(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    :try_start_2
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "db is null"

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object p1, v0

    .line 28
    goto :goto_5

    .line 29
    :catch_0
    move-exception v0

    .line 30
    move-object p1, v0

    .line 31
    goto :goto_3

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    return-object v1

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    move-object p1, v0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v3, p1

    .line 38
    move-wide v4, p2

    .line 39
    move-wide v6, p4

    .line 40
    :try_start_4
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->getTop3ClientsEachDayBetweenGivenDatesAndSim(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_4

    .line 48
    :goto_1
    if-eqz v2, :cond_2

    .line 49
    .line 50
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_2
    move-exception v0

    .line 55
    move-object p2, v0

    .line 56
    :try_start_7
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_2
    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 60
    :goto_3
    :try_start_8
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 61
    .line 62
    .line 63
    :goto_4
    monitor-exit p0

    .line 64
    return-object v1

    .line 65
    :goto_5
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 66
    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "SemWifiApDbHistory.onCreate()"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "SemWifiApDbHistory.onUpgrade() oldVersion="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", newVersion="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    if-ne p2, p0, :cond_1

    .line 30
    .line 31
    const/4 p0, 0x2

    .line 32
    if-eq p3, p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->onUpgradeFromVer1ToVer2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized resetDB()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :try_start_1
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "db is null"

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_5

    .line 23
    :catch_0
    move-exception v0

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_1
    move-exception v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :try_start_3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->resetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->resetTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "resetDB() done"

    .line 38
    .line 39
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_4

    .line 46
    :goto_1
    if-eqz v0, :cond_2

    .line 47
    .line 48
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_2
    move-exception v0

    .line 53
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_2
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 57
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 58
    .line 59
    .line 60
    :goto_4
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 63
    throw v0
.end method

.method public declared-synchronized saveDailyData(IIILjava/lang/String;JLcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;Ljava/lang/String;)V
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    if-nez p7, :cond_0

    .line 3
    .line 4
    :try_start_0
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string p2, "client list json list is null"

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    move-object p1, v0

    .line 15
    goto :goto_5

    .line 16
    :cond_0
    :try_start_1
    invoke-static {p4}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDataUsageUtils;->isValidSimSerialNumber(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string p2, "sim serial number is not valid"

    .line 25
    .line 26
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    :try_start_3
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string p2, "db is null"

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    move-object p1, v0

    .line 52
    goto :goto_3

    .line 53
    :cond_2
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :catchall_1
    move-exception v0

    .line 56
    move-object p1, v0

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :try_start_5
    invoke-virtual/range {p7 .. p7}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory$ClientListJsonHandler;->getClientListJsonObject()Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    move v3, p1

    .line 63
    move v4, p2

    .line 64
    move v5, p3

    .line 65
    move-object v2, p4

    .line 66
    move-wide v6, p5

    .line 67
    move-object/from16 v9, p8

    .line 68
    .line 69
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->saveFullDetailsOnGivenDateAndSim(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IIIJLorg/json/JSONObject;Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    invoke-static {v1, p4}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->saveGivenSimDetailAndReturnDeletedSimIdIfAny(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->deleteHistoryOfGivenSimSerialNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    .line 83
    .line 84
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :goto_1
    if-eqz v1, :cond_5

    .line 89
    .line 90
    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_2
    move-exception v0

    .line 95
    move-object p2, v0

    .line 96
    :try_start_8
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    :goto_2
    throw p1
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 100
    :goto_3
    :try_start_9
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 101
    .line 102
    .line 103
    :goto_4
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :goto_5
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 106
    throw p1
.end method

.method public declared-synchronized updateInvalidSimNumberWithGivenSimSerialNumber(Ljava/lang/String;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    :try_start_1
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistory;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "db is null"

    .line 11
    .line 12
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_5

    .line 23
    :catch_0
    move-exception p1

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :goto_0
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_1
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :try_start_3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbHistoryTableHelper;->updateTheUnknownSimValueWithGivenSimNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    const-string p1, "sim_id_unknown"

    .line 33
    .line 34
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSimTableHelper;->deleteGivenSim(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    .line 36
    .line 37
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_4

    .line 41
    :goto_1
    if-eqz v0, :cond_2

    .line 42
    .line 43
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :catchall_2
    move-exception v0

    .line 48
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_2
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 52
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 53
    .line 54
    .line 55
    :goto_4
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 58
    throw p1
.end method
