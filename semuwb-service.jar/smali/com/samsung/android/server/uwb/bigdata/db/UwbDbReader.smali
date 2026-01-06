.class public Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;
.super Ljava/lang/Object;
.source "UwbDbReader.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/bigdata/db/IUwbDbReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;,
        Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbDbReader"


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;

    move-result-object v0

    .line 19
    .local v0, "uwbDbHelper":Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;
    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "UwbDbReader"

    if-nez v1, :cond_0

    .line 21
    const-string v1, "database is not found"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "database is opened : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public getAllUwbStateData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;",
            ">;"
        }
    .end annotation

    .line 70
    const-string v0, "UwbDbReader"

    const-string v1, "SELECT * FROM uwb_state"

    .line 71
    .local v1, "query":Ljava/lang/String;
    const/4 v2, 0x0

    .line 73
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    .end local v2    # "cursor":Landroid/database/Cursor;
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_0

    .line 75
    :try_start_1
    const-string v2, "cursor is NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    return-object v3

    .line 78
    :catch_0
    move-exception v2

    goto :goto_0

    .line 81
    :cond_0
    nop

    .line 83
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 85
    return-object v3

    .line 88
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 92
    .local v5, "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;>;"
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 93
    .local v2, "changedTime":J
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 94
    .local v0, "uwbState":I
    new-instance v6, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;

    invoke-direct {v6, v0, v2, v3}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;-><init>(IJ)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 97
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 98
    return-object v5

    .line 78
    .end local v0    # "uwbState":I
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v5    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbStateData;>;"
    .local v2, "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .line 79
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :goto_0
    const-string v5, "Error reading uwb.db file using SQLite3"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return-object v3
.end method

.method public getAllUwbUsageData()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;",
            ">;"
        }
    .end annotation

    .line 29
    const-string v1, "UwbDbReader"

    const-string v2, "SELECT * FROM uwb_usage"

    .line 30
    .local v2, "query":Ljava/lang/String;
    const/4 v3, 0x0

    .line 32
    .local v3, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v5, v0

    .line 33
    .end local v3    # "cursor":Landroid/database/Cursor;
    .local v5, "cursor":Landroid/database/Cursor;
    if-nez v5, :cond_0

    .line 34
    :try_start_1
    const-string v0, "cursor is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 35
    return-object v4

    .line 37
    :catch_0
    move-exception v0

    move-object v3, v5

    goto :goto_0

    .line 40
    :cond_0
    nop

    .line 42
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 44
    return-object v4

    .line 54
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;>;"
    :cond_2
    sget v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_SESSION_ID:I

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 57
    .local v7, "sessionId":I
    sget v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_PACKAGE_NAME:I

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "packageName":Ljava/lang/String;
    sget v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_SERVICE_TYPE:I

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 59
    .local v9, "serviceType":I
    sget v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_CHANNEL_NO:I

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 60
    .local v10, "channelNumber":I
    sget v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_RANGING_DURATION_TIME:I

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 61
    .local v11, "rangingDuration":J
    sget v1, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbHelper;->COL_USAGE_UPDATE_TIME:I

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 62
    .local v13, "updatedTime":J
    new-instance v6, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;

    invoke-direct/range {v6 .. v14}, Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;-><init>(ILjava/lang/String;IIJJ)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 65
    return-object v0

    .line 37
    .end local v0    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/server/uwb/bigdata/db/UwbDbReader$UwbDbUsageData;>;"
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v7    # "sessionId":I
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "serviceType":I
    .end local v10    # "channelNumber":I
    .end local v11    # "rangingDuration":J
    .end local v13    # "updatedTime":J
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    :goto_0
    const-string v5, "Error reading uwb.db file using SQLite3"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    return-object v4
.end method
