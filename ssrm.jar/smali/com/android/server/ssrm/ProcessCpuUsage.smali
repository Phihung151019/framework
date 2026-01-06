.class public Lcom/android/server/ssrm/ProcessCpuUsage;
.super Ljava/lang/Object;
.source "ProcessCpuUsage.java"


# static fields
.field static final LOG_LEVEL_PROP:Ljava/lang/String; = "ro.boot.debug_level"

.field static final LOG_LEVEL_PROP_LOW:Ljava/lang/String; = "0x4f4c"

.field static final TAG:Ljava/lang/String; = "ProcessCpuUsage"

.field static sIsDebugLevelLow:Z


# instance fields
.field private final MIN_CPU_USAGE_TIME:J

.field private final mCpuInfoReader:Lcom/android/server/ssrm/CustomCpuInfoReader;

.field private mCpuInfoReaderReady:Z

.field private mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

.field private mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

.field private mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    nop

    .line 27
    const-string v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/ProcessCpuUsage;->sIsDebugLevelLow:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 31
    iput-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 35
    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->MIN_CPU_USAGE_TIME:J

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuInfoReaderReady:Z

    .line 39
    new-instance v2, Lcom/android/server/ssrm/CustomCpuInfoReader;

    invoke-direct {v2}, Lcom/android/server/ssrm/CustomCpuInfoReader;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuInfoReader:Lcom/android/server/ssrm/CustomCpuInfoReader;

    .line 42
    new-instance v2, Lcom/android/server/ssrm/CustomProcessCpuTracker;

    invoke-direct {v2, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 43
    iget-object v1, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->init(Ljava/util/ArrayList;)V

    .line 45
    new-instance v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->init(Ljava/util/ArrayList;)V

    .line 48
    return-void
.end method

.method private declared-synchronized readCpuFreq()V
    .locals 4

    monitor-enter p0

    .line 60
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuInfoReaderReady:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuInfoReader:Lcom/android/server/ssrm/CustomCpuInfoReader;

    invoke-virtual {v0}, Lcom/android/server/ssrm/CustomCpuInfoReader;->init()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "ProcessCpuUsage"

    const-string v1, "Failed to initialize CPU info reader."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 67
    .end local p0    # "this":Lcom/android/server/ssrm/ProcessCpuUsage;
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuInfoReaderReady:Z

    .line 69
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuInfoReader:Lcom/android/server/ssrm/CustomCpuInfoReader;

    invoke-virtual {v0}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readCpuInfos()Landroid/util/SparseArray;

    move-result-object v0

    .line 70
    .local v0, "cpuInfosByCoreId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;>;"
    if-nez v0, :cond_1

    .line 71
    const-string v1, "ProcessCpuUsage"

    const-string v2, "Failed to read CPU info from device"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 76
    const-string v2, "ProcessCpuUsage"

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;

    invoke-virtual {v3}, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "cpuInfosByCoreId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;>;"
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public getProcessCpuTracker(Z)Lcom/android/server/ssrm/CustomProcessCpuTracker;
    .locals 1
    .param p1, "includeThreads"    # Z

    .line 51
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mProcessTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    return-object v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mThreadTracker:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    return-object v0
.end method

.method public refresh(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;)Landroid/os/CpuTrackerInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/CpuTrackerInfo;"
        }
    .end annotation

    .line 83
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "uidMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    .local v0, "includeThreads":Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/ProcessCpuUsage;->getProcessCpuTracker(Z)Lcom/android/server/ssrm/CustomProcessCpuTracker;

    move-result-object v1

    .line 86
    .local v1, "mLocalTracker":Lcom/android/server/ssrm/CustomProcessCpuTracker;
    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->update(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    const/4 v2, 0x0

    return-object v2

    .line 89
    :cond_1
    new-instance v2, Landroid/os/CpuTrackerInfo;

    invoke-direct {v2}, Landroid/os/CpuTrackerInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    .line 91
    iget-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getBaseSampleTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/CpuTrackerInfo;->baseSampleTime:J

    .line 92
    iget-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastSampleTime()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/os/CpuTrackerInfo;->lastSampleTime:J

    .line 94
    iget-object v2, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastUserTime()I

    move-result v3

    .line 95
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastSystemTime()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastIoWaitTime()I

    move-result v4

    add-int/2addr v3, v4

    .line 96
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastIrqTime()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastSoftIrqTime()I

    move-result v4

    add-int/2addr v3, v4

    .line 97
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getLastIdleTime()I

    move-result v4

    add-int/2addr v3, v4

    int-to-long v3, v3

    iput-wide v3, v2, Landroid/os/CpuTrackerInfo;->totalCpuTime:J

    .line 99
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->countWorkingStats(Z)I

    move-result v2

    .line 100
    .local v2, "size":I
    iget-object v3, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/os/CpuTrackerInfo;->curCpuStatsList:Ljava/util/ArrayList;

    .line 102
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 103
    invoke-virtual {v1, v3, v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getWorkingStats(IZ)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    move-result-object v4

    .line 104
    .local v4, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget v5, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v5, v6

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 105
    goto/16 :goto_4

    .line 107
    :cond_2
    new-instance v5, Landroid/os/CpuStatsInfo;

    invoke-direct {v5}, Landroid/os/CpuStatsInfo;-><init>()V

    .line 108
    .local v5, "cpuStats":Landroid/os/CpuStatsInfo;
    iget-object v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iput-object v6, v5, Landroid/os/CpuStatsInfo;->name:Ljava/lang/String;

    .line 109
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Landroid/os/CpuStatsInfo;->uid:I

    goto :goto_2

    .line 112
    :cond_3
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->uid:I

    iput v6, v5, Landroid/os/CpuStatsInfo;->uid:I

    .line 114
    :goto_2
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    int-to-long v6, v6

    iput-wide v6, v5, Landroid/os/CpuStatsInfo;->rel_utime:J

    .line 115
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    int-to-long v6, v6

    iput-wide v6, v5, Landroid/os/CpuStatsInfo;->rel_stime:J

    .line 117
    const/4 v6, -0x1

    if-nez v0, :cond_4

    .line 118
    iput v6, v5, Landroid/os/CpuStatsInfo;->tid:I

    .line 119
    iget v6, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    iput v6, v5, Landroid/os/CpuStatsInfo;->pid:I

    goto :goto_3

    .line 121
    :cond_4
    iget v7, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    iput v7, v5, Landroid/os/CpuStatsInfo;->tid:I

    .line 123
    :try_start_0
    iget-object v7, v4, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, "tmp":[Ljava/lang/String;
    const/4 v8, 0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v5, Landroid/os/CpuStatsInfo;->pid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v7    # "tmp":[Ljava/lang/String;
    goto :goto_3

    .line 125
    :catch_0
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    iput v6, v5, Landroid/os/CpuStatsInfo;->pid:I

    .line 131
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v6, "system_server"

    iget-object v7, v5, Landroid/os/CpuStatsInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    iget-wide v6, v5, Landroid/os/CpuStatsInfo;->rel_utime:J

    iget-wide v8, v5, Landroid/os/CpuStatsInfo;->rel_stime:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    iget-object v8, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    iget-wide v8, v8, Landroid/os/CpuTrackerInfo;->totalCpuTime:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 134
    .local v6, "usage":I
    const-class v7, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 135
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 136
    .local v7, "binderStatsService":Lcom/android/server/BinderCallsStatsService$Internal;
    invoke-virtual {v7, v6}, Lcom/android/server/BinderCallsStatsService$Internal;->reportCpuUsage(I)V

    .line 138
    .end local v6    # "usage":I
    .end local v7    # "binderStatsService":Lcom/android/server/BinderCallsStatsService$Internal;
    :cond_5
    iget-object v6, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    iget-object v6, v6, Landroid/os/CpuTrackerInfo;->curCpuStatsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v4    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v5    # "cpuStats":Landroid/os/CpuStatsInfo;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 141
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/os/CpuTrackerInfo;->curCcuStatsList:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getCcuStats()Ljava/util/ArrayList;

    move-result-object v3

    .line 143
    .local v3, "CcuStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;

    .line 144
    .local v5, "ccu":Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    new-instance v6, Landroid/os/CcuStatsInfo;

    invoke-direct {v6}, Landroid/os/CcuStatsInfo;-><init>()V

    .line 145
    .local v6, "ccuStatsInfo":Landroid/os/CcuStatsInfo;
    iget v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 146
    iget v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Landroid/os/CcuStatsInfo;->uid:I

    goto :goto_6

    .line 148
    :cond_7
    iget v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    iput v7, v6, Landroid/os/CcuStatsInfo;->uid:I

    .line 150
    :goto_6
    iget-object v7, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    iget-object v8, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    array-length v8, v8

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v7

    iput-object v7, v6, Landroid/os/CcuStatsInfo;->cpuFreqTimeMs:[J

    .line 151
    iget-object v7, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    iget-object v7, v7, Landroid/os/CpuTrackerInfo;->curCcuStatsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v5    # "ccu":Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    .end local v6    # "ccuStatsInfo":Landroid/os/CcuStatsInfo;
    goto :goto_5

    .line 154
    :cond_8
    invoke-direct {p0}, Lcom/android/server/ssrm/ProcessCpuUsage;->readCpuFreq()V

    .line 156
    iget-object v4, p0, Lcom/android/server/ssrm/ProcessCpuUsage;->mCpuTrackerInfo:Landroid/os/CpuTrackerInfo;

    return-object v4
.end method
