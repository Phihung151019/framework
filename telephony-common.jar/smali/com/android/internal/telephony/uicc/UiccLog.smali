.class public Lcom/android/internal/telephony/uicc/UiccLog;
.super Ljava/lang/Object;
.source "UiccLog.java"


# static fields
.field private static blacklist sUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;


# instance fields
.field private final blacklist BUFFER_LOG_COUNT:I

.field private final blacklist MAX_LOG_COUNT:I

.field private blacklist mCount:I

.field private blacklist mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mOpenHelper:Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;

.field private final blacklist mThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minsert(Lcom/android/internal/telephony/uicc/UiccLog;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccLog;->insert(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetLogs(Lcom/android/internal/telephony/uicc/UiccLog;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccLog;->resetLogs()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mCount:I

    const/16 v0, 0x1f4

    .line 23
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->MAX_LOG_COUNT:I

    const/16 v0, 0x12c

    .line 24
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->BUFFER_LOG_COUNT:I

    .line 28
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mOpenHelper:Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;

    .line 29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccLog;->getDbRowCount()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mCount:I

    .line 32
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "UiccLogThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mThread:Landroid/os/HandlerThread;

    .line 33
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccLog;->resetLogs()V

    return-void
.end method

.method private blacklist getDbRowCount()I
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "uicclog"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 59
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    .line 54
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 56
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 59
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v1

    :goto_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_3
    throw p0
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UiccLog;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/uicc/UiccLog;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccLog;->sUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccLog;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UiccLog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UiccLog;->sUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccLog;->sUiccLog:Lcom/android/internal/telephony/uicc/UiccLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist insert(Ljava/lang/String;)V
    .locals 4

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 155
    const-string v1, "log"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter p1

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "uicclog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 159
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mCount:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 161
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist resetLogs()V
    .locals 3

    .line 66
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mCount:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v0

    .line 70
    :try_start_0
    const-string v1, "DELETE FROM uicclog WHERE _id NOT IN (SELECT _id from uicclog ORDER BY time DESC LIMIT 300)"

    .line 73
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v1, 0x12c

    .line 74
    iput v1, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mCount:I

    .line 75
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist close()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mOpenHelper:Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mOpenHelper:Lcom/android/internal/telephony/uicc/UiccLogDbOpenHelper;

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 11

    .line 125
    const-string v0, "UICC_LOG Start"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "uicclog"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 130
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 131
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    const-string p0, "time"

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 137
    const-string v0, "log"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_0

    .line 145
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_1
    const-string p0, "UICC_LOG End"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 130
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_3
    const-string p0, "UICC_LOG End"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_3
    if-eqz v1, :cond_4

    .line 145
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_4
    const-string v0, "UICC_LOG End"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    throw p0
.end method

.method public blacklist log(ILcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v1, "CardState["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    if-eqz p1, :cond_0

    .line 108
    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 110
    :goto_0
    const-string v1, ",num_apps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",SupportedMepMode="

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",SlotPortMapping="

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccLog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/uicc/UiccLog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UiccLog$1;-><init>(Lcom/android/internal/telephony/uicc/UiccLog;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist log(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/IccSlotStatus;",
            ">;)V"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string v1, "SlotStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 91
    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",num_ports="

    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    array-length v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v4, v4, Lcom/android/internal/telephony/uicc/IccSlotStatus;->mSimPortInfos:[Lcom/android/internal/telephony/uicc/IccSimPortInfo;

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 94
    const-string v8, "(port_active="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v7, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mPortActive:Z

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",logical_slot="

    .line 96
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/android/internal/telephony/uicc/IccSimPortInfo;->mLogicalSlotIndex:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    :cond_0
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/UiccLog;->log(Ljava/lang/String;)V

    return-void
.end method
