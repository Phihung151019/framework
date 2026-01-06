.class public final Lcom/samsung/android/wifi/intelligence/ins/InsController;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;,
        Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;,
        Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;
    }
.end annotation


# instance fields
.field CATEGORY_PATH:I

.field public checkInferenceTimeoutTask:Ljava/lang/Runnable;

.field public checkTrainTimeoutTask:Ljava/lang/Runnable;

.field private connectedBssid:Ljava/lang/String;

.field private enableInfer:Z

.field private enableTrain:Z

.field infServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mISemInsInfService:Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfService;

.field private mISemInsTrService:Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

.field private mInferenceStartTime:J

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mTrainStartTime:J

.field private shouldInfer:Z

.field trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$YVbCUneQoJ3mFKfLOGwXqvc8IAY(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->lambda$infer$7()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmISemInsInfService(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mISemInsInfService:Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mISemInsTrService:Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInferenceStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mInferenceStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmScheduledExecutor(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrainStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mTrainStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmISemInsInfService(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mISemInsInfService:Lcom/samsung/android/wifi/intelligence/ins/ISemInsInfService;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mISemInsTrService:Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInferenceStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mInferenceStartTime:J

    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTrainStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mTrainStartTime:J

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->shouldInfer:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableTrain:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableInfer:Z

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->connectedBssid:Ljava/lang/String;

    .line 27
    .line 28
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mTrainStartTime:J

    .line 31
    .line 32
    iput-wide v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mInferenceStartTime:J

    .line 33
    .line 34
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->checkTrainTimeoutTask:Ljava/lang/Runnable;

    .line 40
    .line 41
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->checkInferenceTimeoutTask:Ljava/lang/Runnable;

    .line 47
    .line 48
    iput v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->CATEGORY_PATH:I

    .line 49
    .line 50
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    return-void
.end method

.method private static extractFlushTimestamp(ILjava/lang/String;)J
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/16 p0, 0x8

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p0, 0x9

    .line 7
    .line 8
    :goto_0
    :try_start_0
    const-string v0, ","

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    aget-object v0, p1, p0

    .line 15
    .line 16
    const-string v1, "timestamp"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v0, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 26
    .line 27
    aget-object p0, p1, p0

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 34
    .line 35
    .line 36
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-wide p0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "Unable to parse flushTimestamp. "

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string p1, "InsController"

    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :goto_1
    const-wide/16 p0, 0x0

    .line 63
    .line 64
    return-wide p0
.end method

.method private static extractTimestamp(Ljava/lang/String;)J
    .locals 3

    .line 1
    :try_start_0
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v1, p0, v0

    .line 9
    .line 10
    const-string v2, "timestamp"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    aget-object p0, p0, v0

    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    return-wide v0

    .line 32
    :catch_0
    const-string p0, "InsController"

    .line 33
    .line 34
    const-string v0, "Unable to parse timestamp"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    const-wide/16 v0, 0x0

    .line 40
    .line 41
    return-wide v0
.end method

.method static getFileProviderUri(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p0

    .line 18
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Could not create file "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " : "

    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "InsController"

    .line 45
    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method private isHeatLevelExceeded()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/intelligence/ins/spec/ConfigSpec$TestMode;->FLAG_CHECK_HEAT_LEVEL:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mPowerManager:Landroid/os/PowerManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const-string v0, "Heat Level Check : "

    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "InsController"

    .line 20
    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    if-le p0, v0, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    return v1
.end method

.method private static synthetic lambda$infer$7()V
    .locals 2

    .line 1
    const-string v0, "InsController"

    .line 2
    .line 3
    const-string v1, "Calling infer method of bound InsInfService..."

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const-string v1, "infer"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private removeOldDataLines([Ljava/io/File;Ljava/lang/String;III)V
    .locals 18

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v3, p5

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "Total data lines of "

    .line 10
    .line 11
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v4, " exceed the maximum allowed limit. Deleting oldest data lines."

    .line 18
    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v4, "InsController"

    .line 27
    .line 28
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance v5, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    array-length v6, v1

    .line 37
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :goto_0
    if-ge v8, v6, :cond_4

    .line 40
    .line 41
    aget-object v0, v1, v8

    .line 42
    .line 43
    new-instance v9, Ljava/io/File;

    .line 44
    .line 45
    invoke-direct {v9, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    goto :goto_6

    .line 55
    :cond_0
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    .line 56
    .line 57
    new-instance v0, Ljava/io/FileReader;

    .line 58
    .line 59
    invoke-direct {v0, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-static {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->extractTimestamp(Ljava/lang/String;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    invoke-static {v3, v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->extractFlushTimestamp(ILjava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v13

    .line 79
    const-wide/16 v15, 0x0

    .line 80
    .line 81
    cmp-long v17, v11, v15

    .line 82
    .line 83
    if-eqz v17, :cond_1

    .line 84
    .line 85
    cmp-long v15, v13, v15

    .line 86
    .line 87
    if-nez v15, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    new-instance v15, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;

    .line 91
    .line 92
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, v15, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->dataLine:Ljava/lang/String;

    .line 96
    .line 97
    iput-wide v11, v15, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->timestamp:J

    .line 98
    .line 99
    iput-wide v13, v15, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->flushTimestamp:J

    .line 100
    .line 101
    iput-object v9, v15, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->csvFile:Ljava/io/File;

    .line 102
    .line 103
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    move-object v11, v0

    .line 109
    goto :goto_2

    .line 110
    :cond_3
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_6

    .line 114
    :catch_0
    move-exception v0

    .line 115
    goto :goto_4

    .line 116
    :catch_1
    move-exception v0

    .line 117
    goto :goto_5

    .line 118
    :goto_2
    :try_start_3
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catchall_1
    move-exception v0

    .line 123
    :try_start_4
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    throw v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    :goto_4
    const-string v9, "Unexpected exception : "

    .line 128
    .line 129
    invoke-static {v9, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_6

    .line 133
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v11, "Failed to read file "

    .line 136
    .line 137
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    invoke-static {v4, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    :goto_6
    add-int/lit8 v8, v8, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;

    .line 158
    .line 159
    const/4 v1, 0x0

    .line 160
    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;

    .line 168
    .line 169
    const/4 v6, 0x1

    .line 170
    invoke-direct {v1, v6}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 178
    .line 179
    .line 180
    new-instance v1, Ljava/util/HashMap;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    move v6, v7

    .line 190
    :goto_7
    if-ge v6, v0, :cond_5

    .line 191
    .line 192
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    add-int/lit8 v6, v6, 0x1

    .line 197
    .line 198
    check-cast v8, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;

    .line 199
    .line 200
    iget-wide v9, v8, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->flushTimestamp:J

    .line 201
    .line 202
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    new-instance v10, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda8;

    .line 207
    .line 208
    const/4 v11, 0x0

    .line 209
    invoke-direct {v10, v11}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda8;-><init>(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    check-cast v9, Ljava/util/List;

    .line 217
    .line 218
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 232
    .line 233
    .line 234
    new-instance v6, Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    add-int/lit8 v0, v0, -0x1

    .line 244
    .line 245
    move/from16 v8, p3

    .line 246
    .line 247
    :goto_8
    if-ltz v0, :cond_7

    .line 248
    .line 249
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    check-cast v9, Ljava/lang/Long;

    .line 254
    .line 255
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v9

    .line 259
    check-cast v9, Ljava/util/List;

    .line 260
    .line 261
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v10

    .line 265
    sub-int v10, v8, v10

    .line 266
    .line 267
    move/from16 v11, p4

    .line 268
    .line 269
    if-ge v10, v11, :cond_6

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 273
    .line 274
    .line 275
    move-result v10

    .line 276
    sub-int/2addr v8, v10

    .line 277
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    .line 279
    .line 280
    add-int/lit8 v0, v0, -0x1

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_7
    :goto_9
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;

    .line 284
    .line 285
    const/4 v8, 0x1

    .line 286
    invoke-direct {v0, v8}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 287
    .line 288
    .line 289
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    new-instance v8, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;

    .line 294
    .line 295
    const/4 v9, 0x0

    .line 296
    invoke-direct {v8, v9}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda6;-><init>(I)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v0, v8}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    sub-int v8, p3, v0

    .line 311
    .line 312
    new-instance v0, Ljava/util/HashMap;

    .line 313
    .line 314
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    move v10, v7

    .line 322
    :goto_a
    if-ge v10, v9, :cond_8

    .line 323
    .line 324
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v11

    .line 328
    add-int/lit8 v10, v10, 0x1

    .line 329
    .line 330
    check-cast v11, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;

    .line 331
    .line 332
    iget-object v12, v11, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->csvFile:Ljava/io/File;

    .line 333
    .line 334
    new-instance v13, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda8;

    .line 335
    .line 336
    const/4 v14, 0x1

    .line 337
    invoke-direct {v13, v14}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda8;-><init>(I)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v12

    .line 344
    check-cast v12, Ljava/util/List;

    .line 345
    .line 346
    iget-object v11, v11, Lcom/samsung/android/wifi/intelligence/ins/InsController$DataLine;->dataLine:Ljava/lang/String;

    .line 347
    .line 348
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    goto :goto_a

    .line 352
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 357
    .line 358
    .line 359
    move-result-object v9

    .line 360
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_c

    .line 365
    .line 366
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Ljava/util/Map$Entry;

    .line 371
    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v10

    .line 376
    check-cast v10, Ljava/io/File;

    .line 377
    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Ljava/util/List;

    .line 383
    .line 384
    :try_start_5
    new-instance v11, Ljava/io/BufferedWriter;

    .line 385
    .line 386
    new-instance v12, Ljava/io/FileWriter;

    .line 387
    .line 388
    invoke-direct {v12, v10, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 389
    .line 390
    .line 391
    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 392
    .line 393
    .line 394
    if-nez v3, :cond_9

    .line 395
    .line 396
    :try_start_6
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getCsvHeader()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v12

    .line 400
    invoke-virtual {v11, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 401
    .line 402
    .line 403
    move-object/from16 v12, p0

    .line 404
    .line 405
    goto :goto_d

    .line 406
    :catchall_2
    move-exception v0

    .line 407
    move-object/from16 v12, p0

    .line 408
    .line 409
    :goto_c
    move-object v13, v0

    .line 410
    goto :goto_f

    .line 411
    :cond_9
    move-object/from16 v12, p0

    .line 412
    .line 413
    :try_start_7
    iget v13, v12, Lcom/samsung/android/wifi/intelligence/ins/InsController;->CATEGORY_PATH:I

    .line 414
    .line 415
    if-ne v3, v13, :cond_a

    .line 416
    .line 417
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getCsvHeader()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    invoke-virtual {v11, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    goto :goto_d

    .line 425
    :catchall_3
    move-exception v0

    .line 426
    goto :goto_c

    .line 427
    :cond_a
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    :goto_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 432
    .line 433
    .line 434
    move-result v14

    .line 435
    if-eqz v14, :cond_b

    .line 436
    .line 437
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v14

    .line 441
    check-cast v14, Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v11, v14}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->newLine()V

    .line 447
    .line 448
    .line 449
    goto :goto_e

    .line 450
    :cond_b
    new-instance v13, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 451
    .line 452
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v14

    .line 456
    const-string v15, "data.json"

    .line 457
    .line 458
    invoke-virtual {v14, v2, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v14

    .line 462
    invoke-direct {v13, v14}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;-><init>(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v13, v3, v0}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->updateJson(ILjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 474
    .line 475
    .line 476
    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 477
    .line 478
    .line 479
    goto :goto_b

    .line 480
    :catch_2
    move-exception v0

    .line 481
    goto :goto_11

    .line 482
    :catch_3
    move-exception v0

    .line 483
    goto :goto_12

    .line 484
    :goto_f
    :try_start_9
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 485
    .line 486
    .line 487
    goto :goto_10

    .line 488
    :catchall_4
    move-exception v0

    .line 489
    :try_start_a
    invoke-virtual {v13, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 490
    .line 491
    .line 492
    :goto_10
    throw v13
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 493
    :catch_4
    move-exception v0

    .line 494
    move-object/from16 v12, p0

    .line 495
    .line 496
    goto :goto_11

    .line 497
    :catch_5
    move-exception v0

    .line 498
    move-object/from16 v12, p0

    .line 499
    .line 500
    goto :goto_12

    .line 501
    :goto_11
    const-string v10, "Unexpected exception during writing csv files :"

    .line 502
    .line 503
    invoke-static {v10, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_b

    .line 507
    .line 508
    :goto_12
    new-instance v11, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    const-string v13, "Failed to write file "

    .line 511
    .line 512
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v10

    .line 519
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v10

    .line 526
    invoke-static {v4, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    .line 528
    .line 529
    goto/16 :goto_b

    .line 530
    .line 531
    :cond_c
    move v0, v7

    .line 532
    :goto_13
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-ge v7, v2, :cond_e

    .line 537
    .line 538
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object v2

    .line 542
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v2

    .line 546
    check-cast v2, Ljava/util/List;

    .line 547
    .line 548
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    if-nez v2, :cond_d

    .line 553
    .line 554
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v2

    .line 558
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    check-cast v2, Ljava/util/List;

    .line 563
    .line 564
    invoke-interface {v2}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-nez v2, :cond_d

    .line 573
    .line 574
    add-int/lit8 v0, v0, 0x1

    .line 575
    .line 576
    :cond_d
    add-int/lit8 v7, v7, 0x1

    .line 577
    .line 578
    goto :goto_13

    .line 579
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    const-string v2, "Deleted "

    .line 582
    .line 583
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    const-string v2, " oldest data lines across "

    .line 590
    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    const-string v0, " events to comply with the maximum limit."

    .line 598
    .line 599
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .line 608
    .line 609
    return-void
.end method


# virtual methods
.method public final getEnableTrain()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableTrain:Z

    .line 2
    .line 3
    return p0
.end method

.method public final infer(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableInfer:Z

    .line 2
    .line 3
    const-string v1, "InsController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Inference disabled, ignoring Inference call!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, ""

    .line 14
    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "Empty bssid. No connected BSSID"

    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    const-string v0, "Inference starting"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->getPathSequenceBuffer()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/4 v2, 0x0

    .line 39
    new-array v3, v2, [Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 40
    .line 41
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, [Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->getNsmSequenceBuffer()Ljava/util/ArrayList;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-array v2, v2, [Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 60
    .line 61
    new-instance v0, Ljava/io/File;

    .line 62
    .line 63
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/ins/"

    .line 64
    .line 65
    const-string v3, "/"

    .line 66
    .line 67
    invoke-static {v2, p1, v3}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ljava/io/File;

    .line 75
    .line 76
    const-string v3, "PathModel_best.weights"

    .line 77
    .line 78
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    new-instance v3, Ljava/io/File;

    .line 82
    .line 83
    const-string v4, "NsmModel_best.weights"

    .line 84
    .line 85
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_3

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const-string v4, "Found trained weights for "

    .line 102
    .line 103
    invoke-static {v4, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    new-instance v2, Ljava/io/File;

    .line 119
    .line 120
    const-string v3, "PathModel_metadata.json"

    .line 121
    .line 122
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    new-instance v3, Ljava/io/File;

    .line 130
    .line 131
    const-string v4, "NsmModel_metadata.json"

    .line 132
    .line 133
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v3, Landroid/content/Intent;

    .line 141
    .line 142
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v4, "com.samsung.android.wifi.intelligence.ins"

    .line 146
    .line 147
    const-string v5, "com.samsung.android.wifi.intelligence.ins.InsInfService"

    .line 148
    .line 149
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    const-string v4, "path_best_weights"

    .line 153
    .line 154
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    .line 156
    .line 157
    const-string p1, "nsm_best_weights"

    .line 158
    .line 159
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    .line 161
    .line 162
    const-string p1, "path_metadata"

    .line 163
    .line 164
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    .line 166
    .line 167
    const-string p1, "nsm_metadata"

    .line 168
    .line 169
    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    const/4 p1, 0x3

    .line 173
    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    new-instance p1, Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

    .line 177
    .line 178
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    const/4 v1, 0x0

    .line 181
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;I)V

    .line 182
    .line 183
    .line 184
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;)V

    .line 185
    .line 186
    .line 187
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

    .line 188
    .line 189
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    const/4 v1, 0x1

    .line 192
    invoke-virtual {v0, v3, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 193
    .line 194
    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    iput-wide v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mInferenceStartTime:J

    .line 200
    .line 201
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 202
    .line 203
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->checkInferenceTimeoutTask:Ljava/lang/Runnable;

    .line 204
    .line 205
    invoke-interface {p1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    const-string v0, "Skipping, No trained weights found for "

    .line 212
    .line 213
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method public final init()V
    .locals 2

    .line 1
    const-string v0, "InsController"

    .line 2
    .line 3
    const-string v1, "init()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->getInstance()Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->registerContext(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->init()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const-string v1, "power"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/os/PowerManager;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mPowerManager:Landroid/os/PowerManager;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->shouldInfer:Z

    .line 38
    .line 39
    return-void
.end method

.method public final onOutageCountUpdate(DIZLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    const-string v0, "InsController"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->hasStarted()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    .line 12
    .line 13
    sget-object v2, Lcom/samsung/android/wifi/intelligence/ins/util/Const;->SIMPLE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 14
    .line 15
    new-instance v3, Ljava/util/Date;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->setLatency(D)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p3}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->setOutageCnt(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p4}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->setLqCallbackTriggered(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->onOutageCountUpdate(Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->getSensorCollector()Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1, p5}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->addMagneticEvents(Ljava/util/ArrayList;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->getSensorCollector()Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, p6}, Lcom/samsung/android/wifi/intelligence/ins/data/sensor/SensorDataManager;->addPressureEvents(Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getOutageCnt()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "1"

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const-string p2, "Inference disabled"

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    :try_start_1
    iget-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableInfer:Z

    .line 74
    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    const-string p1, "Outage count 1 detected, start inference..."

    .line 78
    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->connectedBssid:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infer(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->shouldInfer:Z

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getOutageCnt()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/4 p3, 0x2

    .line 107
    if-lt p1, p3, :cond_3

    .line 108
    .line 109
    iget-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableInfer:Z

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    const-string p1, "Outage count higher than 1 detected, start inference..."

    .line 114
    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->connectedBssid:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infer(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    const-string p2, "Error in onOutageCountUpdate: "

    .line 131
    .line 132
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    :cond_3
    return-void
.end method

.method public final setEnableInfer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableInfer:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEnableTrain(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableTrain:Z

    .line 2
    .line 3
    return-void
.end method

.method public final start(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "start() BSSID "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "InsController"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->connectedBssid:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/io/File;

    .line 15
    .line 16
    const-string v1, "/data/data/com.samsung.android.wifi.intelligence/files/ins/"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    .line 29
    .line 30
    :cond_0
    const-string v0, "/"

    .line 31
    .line 32
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/io/File;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->start(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mDataManager:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->stop()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;->close()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->close()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final train()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->enableTrain:Z

    .line 2
    .line 3
    const-string v1, "InsController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Training disabled, ignoring Train call!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mISemInsTrService:Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string p0, "Training already ongoing, ignoring Train call!"

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v0, "train (Auto)"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/io/File;

    .line 29
    .line 30
    const-string v2, "/data/data/com.samsung.android.wifi.intelligence/files/ins/"

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    .line 43
    .line 44
    :cond_2
    new-instance v3, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda1;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    if-eqz v5, :cond_8

    .line 54
    .line 55
    array-length v0, v5

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_3
    :try_start_0
    array-length v0, v5

    .line 61
    const/4 v3, 0x0

    .line 62
    move v4, v3

    .line 63
    move v7, v4

    .line 64
    move v10, v7

    .line 65
    :goto_0
    if-ge v4, v0, :cond_4

    .line 66
    .line 67
    aget-object v6, v5, v4

    .line 68
    .line 69
    new-instance v8, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 70
    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v6, "/data.json"

    .line 87
    .line 88
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-direct {v8, v6}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v6, "nsmDataLineCount"

    .line 99
    .line 100
    invoke-virtual {v8, v3, v6}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->get(ILjava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    add-int/2addr v7, v6

    .line 105
    const-string v6, "pathDataLineCount"

    .line 106
    .line 107
    invoke-virtual {v8, v3, v6}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->get(ILjava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    add-int/2addr v10, v6

    .line 112
    add-int/lit8 v4, v4, 0x1

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :goto_1
    move-object v4, p0

    .line 116
    goto :goto_3

    .line 117
    :catch_0
    move-exception v0

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const/16 v0, 0x2328

    .line 120
    .line 121
    if-le v7, v0, :cond_5

    .line 122
    .line 123
    const-string v6, "nsm_model_data_collected.csv"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .line 125
    const/16 v8, 0x2328

    .line 126
    .line 127
    const/4 v9, 0x0

    .line 128
    move-object v4, p0

    .line 129
    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->removeOldDataLines([Ljava/io/File;Ljava/lang/String;III)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :catch_1
    move-exception v0

    .line 134
    goto :goto_3

    .line 135
    :cond_5
    move-object v4, p0

    .line 136
    :goto_2
    const p0, 0x20f58

    .line 137
    .line 138
    .line 139
    if-le v10, p0, :cond_6

    .line 140
    .line 141
    const-string v6, "path_model_data_collected.csv"

    .line 142
    .line 143
    iget v9, v4, Lcom/samsung/android/wifi/intelligence/ins/InsController;->CATEGORY_PATH:I

    .line 144
    .line 145
    const v8, 0x20f58

    .line 146
    .line 147
    .line 148
    move v7, v10

    .line 149
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->removeOldDataLines([Ljava/io/File;Ljava/lang/String;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    .line 151
    .line 152
    goto :goto_4

    .line 153
    :goto_3
    const-string p0, "Could not cleanup data.json files: "

    .line 154
    .line 155
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_4
    :try_start_2
    array-length p0, v5

    .line 159
    if-lez p0, :cond_7

    .line 160
    .line 161
    iget-object p0, v4, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 162
    .line 163
    new-instance v0, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda2;

    .line 164
    .line 165
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;[Ljava/io/File;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    move-result-wide v2

    .line 175
    iput-wide v2, v4, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mTrainStartTime:J

    .line 176
    .line 177
    iget-object p0, v4, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mScheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 178
    .line 179
    iget-object v0, v4, Lcom/samsung/android/wifi/intelligence/ins/InsController;->checkTrainTimeoutTask:Ljava/lang/Runnable;

    .line 180
    .line 181
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :catch_2
    move-exception v0

    .line 186
    move-object p0, v0

    .line 187
    const-string v0, "Could not start training: "

    .line 188
    .line 189
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    :cond_7
    :goto_5
    return-void

    .line 193
    :cond_8
    :goto_6
    const-string p0, "No APs found, skipping training!"

    .line 194
    .line 195
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    return-void
.end method

.method public final trainHelper([Ljava/io/File;I)V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->isHeatLevelExceeded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "InsController"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string p0, "Heat Level exceed, defer training"

    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    aget-object v0, p1, p2

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "TrainHelper BSSID: "

    .line 22
    .line 23
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v3, Ljava/io/File;

    .line 31
    .line 32
    const-string v4, "path_model_data_collected.csv"

    .line 33
    .line 34
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Ljava/io/File;

    .line 38
    .line 39
    const-string v5, "nsm_model_data_collected.csv"

    .line 40
    .line 41
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Ljava/io/File;

    .line 45
    .line 46
    const-string v6, "path_model_data.csv"

    .line 47
    .line 48
    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v7, Ljava/io/File;

    .line 52
    .line 53
    const-string v8, "nsm_model_data.csv"

    .line 54
    .line 55
    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    const-string v10, "onTrainingCompleted: for all APs"

    .line 63
    .line 64
    if-eqz v9, :cond_5

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    if-nez v9, :cond_1

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    const-string v2, "Couldn\'t create path model data csv file for copying"

    .line 85
    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_3

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_1
    const-string v2, "Couldn\'t create nsm model data csv file for copying"

    .line 100
    .line 101
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/4 v3, 0x0

    .line 109
    new-array v9, v3, [Ljava/nio/file/OpenOption;

    .line 110
    .line 111
    invoke-static {v2, v9}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    new-array v9, v3, [Ljava/nio/file/OpenOption;

    .line 120
    .line 121
    invoke-static {v5, v9}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-static {v2, v5}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    new-array v4, v3, [Ljava/nio/file/OpenOption;

    .line 133
    .line 134
    invoke-static {v2, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    new-array v3, v3, [Ljava/nio/file/OpenOption;

    .line 143
    .line 144
    invoke-static {v4, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-static {v2, v3}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    .line 150
    .line 151
    new-instance p1, Ljava/io/File;

    .line 152
    .line 153
    invoke-direct {p1, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance p2, Ljava/io/File;

    .line 161
    .line 162
    invoke-direct {p2, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {p2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    new-instance v1, Ljava/io/File;

    .line 170
    .line 171
    const-string v2, "PathModel_best.weights"

    .line 172
    .line 173
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    new-instance v2, Ljava/io/File;

    .line 181
    .line 182
    const-string v3, "NsmModel_best.weights"

    .line 183
    .line 184
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    new-instance v3, Ljava/io/File;

    .line 192
    .line 193
    const-string v4, "PathModel_metadata.json"

    .line 194
    .line 195
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    new-instance v4, Ljava/io/File;

    .line 203
    .line 204
    const-string v5, "NsmModel_metadata.json"

    .line 205
    .line 206
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v4}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->getFileProviderUri(Ljava/io/File;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    new-instance v4, Landroid/content/Intent;

    .line 214
    .line 215
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v5, "com.samsung.android.wifi.intelligence.ins"

    .line 219
    .line 220
    const-string v6, "com.samsung.android.wifi.intelligence.ins.InsTrService"

    .line 221
    .line 222
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    .line 224
    .line 225
    const-string v5, "path_collected_data"

    .line 226
    .line 227
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    .line 229
    .line 230
    const-string p1, "nsm_collected_data"

    .line 231
    .line 232
    invoke-virtual {v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    .line 234
    .line 235
    const-string p1, "path_best_weights"

    .line 236
    .line 237
    invoke-virtual {v4, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    const-string p1, "nsm_best_weights"

    .line 241
    .line 242
    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    const-string p1, "path_metadata"

    .line 246
    .line 247
    invoke-virtual {v4, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    const-string p1, "nsm_metadata"

    .line 251
    .line 252
    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    .line 254
    .line 255
    const/4 p1, 0x3

    .line 256
    invoke-virtual {v4, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 257
    .line 258
    .line 259
    new-instance p1, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 260
    .line 261
    new-instance p2, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;

    .line 262
    .line 263
    const/4 v0, 0x1

    .line 264
    invoke-direct {p2, p0, v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;I)V

    .line 265
    .line 266
    .line 267
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda0;)V

    .line 268
    .line 269
    .line 270
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 271
    .line 272
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mContext:Landroid/content/Context;

    .line 273
    .line 274
    const/4 p2, 0x1

    .line 275
    invoke-virtual {p0, v4, p1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :catch_2
    move-exception v0

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    const-string v3, "Couldn\'t copy the files for training, skipping! : "

    .line 283
    .line 284
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 298
    .line 299
    .line 300
    array-length v0, p1

    .line 301
    add-int/lit8 v2, p2, 0x1

    .line 302
    .line 303
    if-le v0, v2, :cond_4

    .line 304
    .line 305
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 306
    .line 307
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;

    .line 308
    .line 309
    const/4 v2, 0x1

    .line 310
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;[Ljava/io/File;II)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_4
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .line 319
    .line 320
    :goto_2
    return-void

    .line 321
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    const-string v3, "Skipping, No collected data found for "

    .line 324
    .line 325
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    array-length v0, p1

    .line 339
    add-int/lit8 v2, p2, 0x1

    .line 340
    .line 341
    if-le v0, v2, :cond_6

    .line 342
    .line 343
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 344
    .line 345
    new-instance v1, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/samsung/android/wifi/intelligence/ins/InsController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;[Ljava/io/File;II)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_6
    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    return-void
.end method
