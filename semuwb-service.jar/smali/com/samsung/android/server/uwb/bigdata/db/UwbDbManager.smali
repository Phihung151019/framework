.class public Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;
.super Ljava/lang/Object;
.source "UwbDbManager.java"


# static fields
.field private static final DATA_CLEAN_UP_INTERVAL:I = 0x1

.field private static final DATA_KEEP_DURATION:I = 0x20

.field private static final TAG:Ljava/lang/String; = "UwbDbManager"


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$mcleanUpDatabase(Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->cleanUpDatabase(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    move-result-object v0

    .line 24
    .local v0, "uwbDbHelper":Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UwbDbManager"

    if-nez v1, :cond_0

    .line 26
    const-string v1, "database is not found"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "database is opened : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->initializeWorker()V

    .line 31
    :goto_0
    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UwbDbManager"

    if-nez v0, :cond_0

    .line 37
    const-string v0, "database is not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database is opened : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->initializeWorker()V

    .line 42
    :goto_0
    return-void
.end method

.method private cleanUpDatabase(J)V
    .locals 6
    .param p1, "periodData"    # J

    .line 122
    const-string v0, "UwbDbManager"

    const-string v1, "clean up database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->getMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 124
    .local v0, "criteria":J
    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 124
    const-string v4, "uwb_usage"

    const-string v5, "update_time < ? "

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 127
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 126
    const-string v4, "uwb_state"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private getMillis(J)J
    .locals 4
    .param p1, "date"    # J

    .line 131
    const-wide/16 v0, 0x18

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private initializeWorker()V
    .locals 7

    .line 99
    const-string v0, "UwbDbManager"

    const-string v1, "initializeWorker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mTimer:Ljava/util/Timer;

    .line 101
    new-instance v0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager$1;-><init>(Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;)V

    move-object v2, v0

    .line 108
    .local v2, "dbTask":Ljava/util/TimerTask;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 110
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->add(II)V

    .line 117
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 118
    .local v3, "initialDelay":J
    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mTimer:Ljava/util/Timer;

    const-wide/16 v5, 0x1

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->getMillis(J)J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 119
    return-void
.end method

.method private insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->isValidDb()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UwbDbManager"

    if-nez v0, :cond_0

    .line 76
    const-string v0, "Uwb DB is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return v1

    .line 81
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 82
    .local v3, "result":J
    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 83
    const-string v0, "Error while inserting row"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v3    # "result":J
    goto :goto_0

    .line 85
    .restart local v3    # "result":J
    :cond_1
    const-string v0, "insert is success"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    .end local v3    # "result":J
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/database/SQLException;
    const-string v3, "SQLiteException during insert"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "e":Landroid/database/SQLException;
    :goto_0
    return v1
.end method

.method private isValidDb()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public insertUwbStateData(I)Z
    .locals 5
    .param p1, "state"    # I

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    .local v0, "currTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUwbStateData : state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UwbDbManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->isValidDb()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v2, "Uwb DB is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v2, 0x0

    return v2

    .line 52
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 53
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "update_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v3, "current_state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    const-string v3, "uwb_state"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method public insertUwbUsageData(ILjava/lang/String;IIJ)Z
    .locals 5
    .param p1, "sessionId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "serviceType"    # I
    .param p4, "channelNo"    # I
    .param p5, "durationTime"    # J

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, "currTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUwbUsageData : sessionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", serviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", channelNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ranging_duration_time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", currTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UwbDbManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "session_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v3, "package_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "service_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v3, "channel_no"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v3, "ranging_duration_time"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v3, "update_time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v3, "uwb_usage"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbManager;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method
