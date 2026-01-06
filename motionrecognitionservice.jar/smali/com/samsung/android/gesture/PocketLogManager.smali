.class public Lcom/samsung/android/gesture/PocketLogManager;
.super Ljava/lang/Object;
.source "PocketLogManager.java"


# static fields
.field private static LOG_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static mDebug:Z

.field private static final mPocketDumpLock:Ljava/lang/Object;

.field private static final mPocketLock:Ljava/lang/Object;

.field private static pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;


# instance fields
.field private isDumpWrite:I

.field private mAPDType:I

.field private mAodEndTime:I

.field private mAodStartTime:I

.field private mAodType:Ljava/lang/String;

.field private mAutoBrightness:Z

.field private mDumpList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/gesture/PocketDumpData;",
            ">;"
        }
    .end annotation
.end field

.field private mLightType:I

.field private mPocketVer:I

.field private mProxSubType:I

.field private mProxType:I

.field private mSensitivityType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/gesture/PocketLogManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    .line 27
    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->LOG_FILE:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketDumpLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->isDumpWrite:I

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketLogManager;->initialize()V

    .line 51
    return-void
.end method

.method private checkDebugMode()V
    .locals 3

    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/pocketmode.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "file":Ljava/io/File;
    sget-boolean v1, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    sget-object v1, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Debug file is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :cond_1
    sput-boolean v2, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    .line 82
    sget-object v1, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    const-string v2, "Debug is enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->remainLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->remainLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gesture/PocketLogManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/samsung/android/gesture/PocketLogManager;

    invoke-direct {v0}, Lcom/samsung/android/gesture/PocketLogManager;-><init>()V

    sput-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/samsung/android/gesture/PocketLogManager;->pocketLogManager:Lcom/samsung/android/gesture/PocketLogManager;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/gesture/PocketLogManager;->checkDebugMode()V

    .line 62
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 65
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 66
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 67
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v1, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v1

    .line 65
    const-string v3, "%02d%02d%02d%02d%02d"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "strTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/log/pocketmode_log_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/gesture/PocketLogManager;->LOG_FILE:Ljava/lang/String;

    .line 70
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "strTime":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAPDType:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mSensitivityType:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    iput v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxType:I

    .line 71
    invoke-virtual {p0, v0}, Lcom/samsung/android/gesture/PocketLogManager;->setIsDumpWrite(I)V

    .line 72
    sget-object v0, Lcom/samsung/android/gesture/PocketLogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private static remainLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logString"    # Ljava/lang/String;

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 107
    .local v1, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 108
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[%04d-%02d-%02d %02d:%02d:%02d.%03d] "

    .line 109
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 110
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 111
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v5 .. v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 108
    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "strTime":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/gesture/PocketLogManager;->mPocketLock:Ljava/lang/Object;

    monitor-enter v4

    .line 114
    const/4 v5, 0x0

    .line 115
    .local v5, "out":Ljava/io/PrintStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v6, Lcom/samsung/android/gesture/PocketLogManager;->LOG_FILE:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v6, v0

    .line 117
    .local v6, "file":Ljava/io/File;
    :try_start_1
    new-instance v0, Ljava/io/PrintStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "utf-8"

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    move-object v5, v0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception on logPrint : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_0

    .line 123
    :goto_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V

    .line 126
    .end local v5    # "out":Ljava/io/PrintStream;
    .end local v6    # "file":Ljava/io/File;
    :cond_0
    monitor-exit v4

    .line 127
    return-void

    .line 122
    .restart local v5    # "out":Ljava/io/PrintStream;
    .restart local v6    # "file":Ljava/io/File;
    :goto_1
    if-eqz v5, :cond_1

    .line 123
    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V

    .line 125
    :cond_1
    nop

    .end local v1    # "c":Ljava/util/Calendar;
    .end local v2    # "strTime":Ljava/lang/String;
    .end local p0    # "TAG":Ljava/lang/String;
    .end local p1    # "logString":Ljava/lang/String;
    throw v0

    .line 126
    .end local v5    # "out":Ljava/io/PrintStream;
    .end local v6    # "file":Ljava/io/File;
    .restart local v1    # "c":Ljava/util/Calendar;
    .restart local v2    # "strTime":Ljava/lang/String;
    .restart local p0    # "TAG":Ljava/lang/String;
    .restart local p1    # "logString":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "logStr"    # Ljava/lang/String;

    .line 93
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-boolean v0, Lcom/samsung/android/gesture/PocketLogManager;->mDebug:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/samsung/android/gesture/PocketLogManager;->remainLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public addDump(Lcom/samsung/android/gesture/PocketDumpData;)V
    .locals 3
    .param p1, "dumpData"    # Lcom/samsung/android/gesture/PocketDumpData;

    .line 130
    sget-object v0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketDumpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    if-nez v2, :cond_1

    .line 138
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    .line 140
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dumpData(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** PocketModeEvent dump ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") *****"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketLogManager;->printSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketLogManager;->printAodType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/gesture/PocketLogManager;->printAutoBrightness()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mDumpList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/PocketDumpData;

    .line 230
    .local v1, "data":Lcom/samsung/android/gesture/PocketDumpData;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDumpData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    .end local v1    # "data":Lcom/samsung/android/gesture/PocketDumpData;
    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method public getIsDumpWrite()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->isDumpWrite:I

    return v0
.end method

.method public printAodType()Ljava/lang/String;
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodType:Ljava/lang/String;

    .line 210
    .local v0, "strAOD":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/gesture/PocketModeEvent;->AOD_TYPE:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodStartTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodEndTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOD : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public printAutoBrightness()Ljava/lang/String;
    .locals 2

    .line 216
    iget-boolean v0, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAutoBrightness:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    const-string v0, "Auto Brightness ON"

    return-object v0

    .line 219
    :cond_0
    const-string v0, "Auto Brightness OFF"

    return-object v0
.end method

.method public printSensorType()Ljava/lang/String;
    .locals 8

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "proxStr":Ljava/lang/String;
    const/4 v1, 0x0

    .line 183
    .local v1, "proxSubStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 184
    .local v2, "lightStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .local v3, "sensitivityStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 186
    .local v4, "APDStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 188
    .local v5, "pocketVerStr":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_TYPE:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    .line 189
    sget-object v6, Lcom/samsung/android/gesture/PocketProximityManager;->PROX_SUB_TYPE:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxSubType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Ljava/lang/String;

    .line 191
    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    if-nez v6, :cond_0

    .line 192
    const-string v2, "SENSOR_TYPE_LIGHT"

    goto :goto_0

    .line 193
    :cond_0
    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 194
    const-string v2, "SENSOR_TYPE_LIGHT_CCT"

    goto :goto_0

    .line 195
    :cond_1
    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 196
    const-string v2, "SENSOR_TYPE_LIGHT_CAMERA"

    .line 198
    :cond_2
    :goto_0
    sget-object v6, Lcom/samsung/android/gesture/PocketSensitivityManager;->SENSITIVITY_TYPE:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/gesture/PocketLogManager;->mSensitivityType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Ljava/lang/String;

    .line 199
    sget-object v6, Lcom/samsung/android/gesture/PocketAPDManager;->APD_TYPE:Ljava/util/HashMap;

    iget v7, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAPDType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Ljava/lang/String;

    .line 200
    iget v6, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    if-nez v6, :cond_3

    .line 201
    const-string v5, "not used pocket sensor"

    goto :goto_1

    .line 203
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ver."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 205
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prox : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nProx Sub : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nLight : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nSensitivity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nAPD : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nPocket : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public setAodTime(II)V
    .locals 0
    .param p1, "stTime"    # I
    .param p2, "enTime"    # I

    .line 160
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodStartTime:I

    .line 161
    iput p2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodEndTime:I

    .line 162
    return-void
.end method

.method public setAodType(Ljava/lang/String;)V
    .locals 0
    .param p1, "aodType"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAodType:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setAutoBrightnessEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 156
    iput-boolean p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAutoBrightness:Z

    .line 157
    return-void
.end method

.method public setIsDumpWrite(I)V
    .locals 0
    .param p1, "isDumpWrite"    # I

    .line 177
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->isDumpWrite:I

    .line 178
    return-void
.end method

.method public setPocketVer(I)V
    .locals 0
    .param p1, "pocketVer"    # I

    .line 165
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mPocketVer:I

    .line 166
    return-void
.end method

.method public setSensorType(IIIII)V
    .locals 0
    .param p1, "proxType"    # I
    .param p2, "proxSubType"    # I
    .param p3, "lightType"    # I
    .param p4, "sensitivityType"    # I
    .param p5, "APDType"    # I

    .line 144
    iput p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxType:I

    .line 145
    iput p2, p0, Lcom/samsung/android/gesture/PocketLogManager;->mProxSubType:I

    .line 146
    iput p3, p0, Lcom/samsung/android/gesture/PocketLogManager;->mLightType:I

    .line 147
    iput p4, p0, Lcom/samsung/android/gesture/PocketLogManager;->mSensitivityType:I

    .line 148
    iput p5, p0, Lcom/samsung/android/gesture/PocketLogManager;->mAPDType:I

    .line 149
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketLogManager;->mVersion:Ljava/lang/String;

    .line 170
    return-void
.end method
