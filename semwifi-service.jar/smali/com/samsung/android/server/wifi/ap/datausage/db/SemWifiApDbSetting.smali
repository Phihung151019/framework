.class public Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingGetter;,
        Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting$ClientSettingSetter;
    }
.end annotation


# static fields
.field private static final MAX_MONTHS_CLIENT_SETTING_RETENTION_PERIOD:I = 0x6

.field private static final SETTING_DB_NAME:Ljava/lang/String; = "SemWifiApClientSettings.db"

.field private static final SETTING_DB_VERSION:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$mgetClientSettingDetails(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getClientSettingDetails(Ljava/lang/String;)Landroid/content/ContentValues;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveClientSettingDetails(Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->saveClientSettingDetails(Landroid/content/ContentValues;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;

    .line 2
    .line 3
    const-string v0, "SemWifiApDbSetting"

    .line 4
    .line 5
    sput-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const-string v2, "SemWifiApClientSettings.db"

    .line 4
    .line 5
    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method

.method private declared-synchronized getClientSettingDetails(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

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
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "db is null"

    .line 12
    .line 13
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
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
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->getClientDetails(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

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
    move-exception v1

    .line 45
    :try_start_6
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    sget-object v0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "SemWifiApClientSettings.db got corrupted, creating new file"

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string v1, "SemWifiApClientSettings.db"

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

.method private declared-synchronized saveClientSettingDetails(Landroid/content/ContentValues;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

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
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

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
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->insertOrUpdate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :goto_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_2
    move-exception v0

    .line 43
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_2
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 47
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 48
    .line 49
    .line 50
    :goto_4
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 53
    throw p1
.end method


# virtual methods
.method public declared-synchronized delete6MonthOldClientSetting()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

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
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

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
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->deleteClientSettingIfLastUpdateIsBeforeNMonth(Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_4

    .line 37
    :goto_1
    if-eqz v0, :cond_2

    .line 38
    .line 39
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_2
    move-exception v0

    .line 44
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_2
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 48
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 49
    .line 50
    .line 51
    :goto_4
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 54
    throw v0
.end method

.method public declared-synchronized factoryReset()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

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
    sget-object v1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

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
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->factoryReset(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :goto_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_2
    move-exception v0

    .line 43
    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_2
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 47
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 48
    .line 49
    .line 50
    :goto_4
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 53
    throw v0
.end method

.method public declared-synchronized getClientSettingTableBackupString()Ljava/lang/String;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

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
    sget-object v2, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

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
    return-object v0

    .line 28
    :catchall_1
    move-exception v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->getDbDataInJsonString(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

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
    return-object v0

    .line 54
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 55
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "SemWifiApDbSetting.onCreate()"

    .line 4
    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "SemWifiApDbSetting.onUpgrade() oldVersion="

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
    const/4 v0, 0x2

    .line 30
    const/4 v1, 0x4

    .line 31
    const/4 v2, 0x3

    .line 32
    if-ne p2, p0, :cond_3

    .line 33
    .line 34
    if-eq p3, v0, :cond_2

    .line 35
    .line 36
    if-eq p3, v2, :cond_1

    .line 37
    .line 38
    if-eq p3, v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->onUpgradeFromVer1ToVer4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->onUpgradeFromVer1ToVer3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->onUpgradeFromVer1ToVer2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_3
    if-ne p2, v0, :cond_6

    .line 54
    .line 55
    if-eq p3, v2, :cond_5

    .line 56
    .line 57
    if-eq p3, v1, :cond_4

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->onUpgradeFromVer2ToVer4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_5
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->onUpgradeFromVer2ToVer3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_6
    if-ne p2, v2, :cond_8

    .line 69
    .line 70
    if-eq p3, v1, :cond_7

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->onUpgradeFromVer3ToVer4(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    .line 75
    .line 76
    :cond_8
    :goto_0
    return-void
.end method

.method public declared-synchronized restoreClientSettingFromBackup(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->getWriteableDataBase()Landroid/database/sqlite/SQLiteDatabase;

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
    sget-object p1, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbSetting;->TAG:Ljava/lang/String;

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
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/db/SemWifiApDbClientSettingTableHelper;->updateClientSettingDbUsingJsonObject(Landroid/database/sqlite/SQLiteDatabase;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :goto_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_2
    move-exception v0

    .line 43
    :try_start_6
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_2
    throw p1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 47
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 48
    .line 49
    .line 50
    :goto_4
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_5
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 53
    throw p1
.end method
