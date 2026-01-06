.class public Lcom/android/server/ssrm/BinaryVersionDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BinaryVersionDatabase.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "pda.db"

.field static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/android/server/ssrm/BinaryVersionDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/BinaryVersionDatabase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/BinaryVersionDatabase;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/ssrm/BinaryVersionDatabase;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/BinaryVersionDatabase;->sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/android/server/ssrm/BinaryVersionDatabase;

    const-string v2, "pda.db"

    invoke-direct {v1, p0, v2}, Lcom/android/server/ssrm/BinaryVersionDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/ssrm/BinaryVersionDatabase;->sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;

    .line 40
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/BinaryVersionDatabase;->sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 36
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 4

    .line 79
    const-string v0, ""

    .line 80
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT data FROM log_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 84
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 85
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 88
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 91
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 95
    goto :goto_2

    .line 94
    :goto_1
    if-eqz v2, :cond_0

    .line 95
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 98
    throw v3

    .line 94
    :cond_1
    if-eqz v2, :cond_2

    .line 95
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 98
    nop

    .line 100
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    sget-object v0, Lcom/android/server/ssrm/BinaryVersionDatabase;->TAG:Ljava/lang/String;

    const-string v1, "onCreate::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "CREATE TABLE log_table (data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 56
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 5
    .param p1, "version"    # Ljava/lang/String;

    .line 59
    const-string v0, "log_table"

    invoke-virtual {p0}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 61
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 68
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .end local v3    # "values":Landroid/content/ContentValues;
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    nop

    .line 75
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 59
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 72
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 74
    nop

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/android/server/ssrm/BinaryVersionDatabase;
    .end local p1    # "version":Ljava/lang/String;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 59
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/android/server/ssrm/BinaryVersionDatabase;
    .restart local p1    # "version":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw v0
.end method
