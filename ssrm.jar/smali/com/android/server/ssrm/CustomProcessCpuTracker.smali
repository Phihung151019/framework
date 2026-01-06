.class public Lcom/android/server/ssrm/CustomProcessCpuTracker;
.super Ljava/lang/Object;
.source "CustomProcessCpuTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;,
        Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;,
        Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final MINIMUM_TOP_LOGGING_LOAD:F = 10.0f

.field private static final MINIMUM_TOP_SKIP_COUNT:I = 0x4

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessCpuTracker"

.field private static final localLOGV:Z = false

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private final mCcuStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCpuUidFullTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mCurrentSampleWallTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLastSampleWallTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private mLowLoadSkipCount:I

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelStatsAreGood:Z

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z

.field private final mWorkingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingThreadsSorted:Z


# direct methods
.method public static synthetic $r8$lambda$8HmIrpzk9aj0Cx5Ta_08gUv4sa8(Lcom/android/server/ssrm/CustomProcessCpuTracker;I[J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->lambda$collectCcuStats$0(I[J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    .line 72
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    .line 116
    const/16 v0, 0x4020

    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    .line 326
    new-instance v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$1;

    invoke-direct {v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker$1;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_1
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_2
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeThreads"    # Z

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessStatsData:[J

    .line 70
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSinglePidStatsData:[J

    .line 98
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 100
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsData:[J

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSystemCpuData:[J

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoadAverageData:[F

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    .line 135
    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    .line 137
    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    .line 198
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    .line 200
    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    .line 202
    new-instance v1, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

    invoke-direct {v1, v0}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCpuUidFullTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

    .line 345
    iput-boolean p1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mIncludeThreads:Z

    .line 346
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 347
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    .line 348
    return-void
.end method

.method private declared-synchronized collectCcuStats()V
    .locals 3

    monitor-enter p0

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 703
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCpuUidFullTimeReader:Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;

    new-instance v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ssrm/CustomProcessCpuTracker;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/os/KernelCpuUidTimeReader$KernelCpuUidFullTimeReader;->readDelta(ZLcom/android/internal/os/KernelCpuUidTimeReader$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    .line 701
    .end local p0    # "this":Lcom/android/server/ssrm/CustomProcessCpuTracker;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I
    .locals 33
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 511
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;>;"
    .local p6, "tarPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-nez v9, :cond_0

    .line 512
    move-object/from16 v10, p1

    move-object/from16 v11, p4

    invoke-static {v10, v11}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v1

    move-object v12, v1

    .local v1, "pids":[I
    goto :goto_1

    .line 514
    .end local v1    # "pids":[I
    :cond_0
    move-object/from16 v10, p1

    move-object/from16 v11, p4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 515
    .restart local v1    # "pids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 516
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v12, v1

    .line 520
    .end local v1    # "pids":[I
    .end local v2    # "i":I
    .local v12, "pids":[I
    :goto_1
    const/4 v13, 0x0

    if-nez v12, :cond_2

    move v1, v13

    goto :goto_2

    :cond_2
    array-length v1, v12

    :goto_2
    move v14, v1

    .line 521
    .local v14, "NP":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 522
    .local v1, "NS":I
    const/4 v2, 0x0

    .line 523
    .local v2, "curStatsIndex":I
    const/4 v3, 0x0

    move v15, v1

    move v1, v3

    .local v1, "i":I
    .local v15, "NS":I
    :goto_3
    if-ge v1, v14, :cond_15

    .line 524
    aget v4, v12, v1

    .line 525
    .local v4, "pid":I
    if-gez v4, :cond_3

    .line 526
    move v14, v4

    .line 527
    move/from16 v7, p2

    move-object/from16 v18, v12

    move/from16 v21, v14

    const/4 v14, 0x1

    goto/16 :goto_d

    .line 529
    :cond_3
    const/4 v5, 0x0

    if-ge v2, v15, :cond_4

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    goto :goto_4

    :cond_4
    move-object v6, v5

    .line 531
    .local v6, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :goto_4
    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v6, :cond_d

    const/16 v18, 0x1

    iget v3, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    if-ne v3, v4, :cond_c

    .line 533
    iput-boolean v13, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    .line 534
    iput-boolean v13, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 535
    add-int/lit8 v19, v2, 0x1

    .line 540
    .end local v2    # "curStatsIndex":I
    .local v19, "curStatsIndex":I
    iget-boolean v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    if-eqz v2, :cond_b

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 543
    .local v2, "uptime":J
    move-wide/from16 v20, v2

    .end local v2    # "uptime":J
    .local v20, "uptime":J
    iget-object v3, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessStatsData:[J

    .line 544
    .local v3, "procStats":[J
    iget-object v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v13

    sget-object v13, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v2, v13, v5, v3, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 546
    move/from16 v27, v1

    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    goto/16 :goto_7

    .line 549
    :cond_5
    move-object v2, v3

    move v13, v4

    .end local v3    # "procStats":[J
    .end local v4    # "pid":I
    .local v2, "procStats":[J
    .local v13, "pid":I
    aget-wide v3, v2, v22

    .line 550
    .local v3, "minfaults":J
    move-wide/from16 v23, v3

    .end local v3    # "minfaults":J
    .local v23, "minfaults":J
    aget-wide v3, v2, v18

    .line 551
    .local v3, "majfaults":J
    aget-wide v25, v2, v17

    move/from16 v27, v1

    move-object v5, v2

    .end local v1    # "i":I
    .end local v2    # "procStats":[J
    .local v5, "procStats":[J
    .local v27, "i":I
    iget-wide v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long v25, v25, v1

    .line 552
    .local v25, "utime":J
    aget-wide v1, v5, v16

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long v1, v1, v16

    .line 554
    .local v1, "stime":J
    move-wide/from16 v16, v1

    .end local v1    # "stime":J
    .local v16, "stime":J
    iget-wide v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    cmp-long v1, v25, v1

    if-nez v1, :cond_7

    iget-wide v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    cmp-long v1, v16, v1

    if-nez v1, :cond_7

    .line 555
    move/from16 v1, v22

    iput v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 556
    iput v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 557
    iput v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 558
    iput v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 559
    iget-boolean v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    if-eqz v2, :cond_6

    .line 560
    iput-boolean v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    goto/16 :goto_7

    .line 559
    :cond_6
    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    goto/16 :goto_7

    .line 565
    :cond_7
    iget-boolean v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    if-nez v1, :cond_8

    .line 566
    move/from16 v1, v18

    iput-boolean v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->active:Z

    goto :goto_5

    .line 565
    :cond_8
    move/from16 v1, v18

    .line 569
    :goto_5
    if-gez p2, :cond_a

    .line 570
    iget-object v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v6, v2}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getName(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 571
    iget-object v2, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 572
    move/from16 v18, v1

    iget-object v1, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    move-wide v2, v3

    .end local v3    # "majfaults":J
    .local v2, "majfaults":J
    iget-object v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    move-object/from16 v28, v5

    .end local v5    # "procStats":[J
    .local v28, "procStats":[J
    iget-object v5, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v29, v6

    .end local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v29, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    const/4 v6, 0x0

    move-wide/from16 v30, v2

    .end local v2    # "majfaults":J
    .local v30, "majfaults":J
    const/4 v3, 0x0

    move-object/from16 v18, v12

    move v2, v13

    move-wide/from16 v9, v20

    move-wide/from16 v11, v23

    move-wide/from16 v7, v25

    move-object/from16 v13, v29

    move/from16 v21, v14

    move/from16 v20, v15

    move-wide/from16 v14, v16

    .end local v12    # "pids":[I
    .end local v15    # "NS":I
    .end local v16    # "stime":J
    .end local v23    # "minfaults":J
    .end local v25    # "utime":J
    .end local v29    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v2, "pid":I
    .local v7, "utime":J
    .local v9, "uptime":J
    .local v11, "minfaults":J
    .local v13, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v14, "stime":J
    .local v18, "pids":[I
    .local v20, "NS":I
    .local v21, "NP":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I

    move-result-object v1

    move v3, v2

    .end local v2    # "pid":I
    .local v3, "pid":I
    iput-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_6

    .line 571
    .end local v7    # "utime":J
    .end local v9    # "uptime":J
    .end local v11    # "minfaults":J
    .end local v18    # "pids":[I
    .end local v21    # "NP":I
    .end local v28    # "procStats":[J
    .end local v30    # "majfaults":J
    .local v3, "majfaults":J
    .restart local v5    # "procStats":[J
    .restart local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v12    # "pids":[I
    .local v13, "pid":I
    .local v14, "NP":I
    .restart local v15    # "NS":I
    .restart local v16    # "stime":J
    .local v20, "uptime":J
    .restart local v23    # "minfaults":J
    .restart local v25    # "utime":J
    :cond_9
    move-wide/from16 v30, v3

    move-object/from16 v28, v5

    move-object/from16 v18, v12

    move v3, v13

    move-wide/from16 v9, v20

    move-wide/from16 v11, v23

    move-wide/from16 v7, v25

    move-object v13, v6

    move/from16 v21, v14

    move/from16 v20, v15

    move-wide/from16 v14, v16

    .end local v5    # "procStats":[J
    .end local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v12    # "pids":[I
    .end local v15    # "NS":I
    .end local v16    # "stime":J
    .end local v23    # "minfaults":J
    .end local v25    # "utime":J
    .local v3, "pid":I
    .restart local v7    # "utime":J
    .restart local v9    # "uptime":J
    .restart local v11    # "minfaults":J
    .local v13, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v14, "stime":J
    .restart local v18    # "pids":[I
    .local v20, "NS":I
    .restart local v21    # "NP":I
    .restart local v28    # "procStats":[J
    .restart local v30    # "majfaults":J
    goto :goto_6

    .line 569
    .end local v7    # "utime":J
    .end local v9    # "uptime":J
    .end local v11    # "minfaults":J
    .end local v18    # "pids":[I
    .end local v21    # "NP":I
    .end local v28    # "procStats":[J
    .end local v30    # "majfaults":J
    .local v3, "majfaults":J
    .restart local v5    # "procStats":[J
    .restart local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v12    # "pids":[I
    .local v13, "pid":I
    .local v14, "NP":I
    .restart local v15    # "NS":I
    .restart local v16    # "stime":J
    .local v20, "uptime":J
    .restart local v23    # "minfaults":J
    .restart local v25    # "utime":J
    :cond_a
    move-wide/from16 v30, v3

    move-object/from16 v28, v5

    move-object/from16 v18, v12

    move v3, v13

    move-wide/from16 v9, v20

    move-wide/from16 v11, v23

    move-wide/from16 v7, v25

    move-object v13, v6

    move/from16 v21, v14

    move/from16 v20, v15

    move-wide/from16 v14, v16

    .line 585
    .end local v5    # "procStats":[J
    .end local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v12    # "pids":[I
    .end local v15    # "NS":I
    .end local v16    # "stime":J
    .end local v23    # "minfaults":J
    .end local v25    # "utime":J
    .local v3, "pid":I
    .restart local v7    # "utime":J
    .restart local v9    # "uptime":J
    .restart local v11    # "minfaults":J
    .local v13, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v14, "stime":J
    .restart local v18    # "pids":[I
    .local v20, "NS":I
    .restart local v21    # "NP":I
    .restart local v28    # "procStats":[J
    .restart local v30    # "majfaults":J
    :goto_6
    iget-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_uptime:J

    sub-long v1, v9, v1

    iput-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_uptime:J

    .line 586
    iput-wide v9, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_uptime:J

    .line 587
    iget-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    sub-long v1, v7, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 588
    iget-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    sub-long v1, v14, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 589
    iput-wide v7, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    .line 590
    iput-wide v14, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    .line 591
    iget-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    sub-long v1, v11, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 592
    iget-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    sub-long v1, v30, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 593
    iput-wide v11, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    .line 594
    move-wide/from16 v1, v30

    .end local v30    # "majfaults":J
    .local v1, "majfaults":J
    iput-wide v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    .line 595
    const/4 v4, 0x1

    iput-boolean v4, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 596
    .end local v1    # "majfaults":J
    .end local v7    # "utime":J
    .end local v9    # "uptime":J
    .end local v11    # "minfaults":J
    .end local v14    # "stime":J
    .end local v28    # "procStats":[J
    goto :goto_7

    .line 540
    .end local v3    # "pid":I
    .end local v13    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v18    # "pids":[I
    .end local v20    # "NS":I
    .end local v21    # "NP":I
    .end local v27    # "i":I
    .local v1, "i":I
    .restart local v4    # "pid":I
    .restart local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v12    # "pids":[I
    .local v14, "NP":I
    .restart local v15    # "NS":I
    :cond_b
    move/from16 v27, v1

    move v3, v4

    move-object v13, v6

    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    .line 523
    .end local v1    # "i":I
    .end local v4    # "pid":I
    .end local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v12    # "pids":[I
    .end local v14    # "NP":I
    .end local v15    # "NS":I
    .restart local v18    # "pids":[I
    .restart local v20    # "NS":I
    .restart local v21    # "NP":I
    .restart local v27    # "i":I
    :goto_7
    move/from16 v7, p2

    move-object/from16 v8, p5

    move v14, v4

    move/from16 v2, v19

    move/from16 v15, v20

    move/from16 v1, v27

    goto/16 :goto_c

    .line 531
    .end local v18    # "pids":[I
    .end local v19    # "curStatsIndex":I
    .end local v20    # "NS":I
    .end local v21    # "NP":I
    .end local v27    # "i":I
    .restart local v1    # "i":I
    .local v2, "curStatsIndex":I
    .restart local v4    # "pid":I
    .restart local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v12    # "pids":[I
    .restart local v14    # "NP":I
    .restart local v15    # "NS":I
    :cond_c
    move/from16 v27, v1

    move v3, v4

    move-object v13, v6

    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    goto :goto_8

    :cond_d
    move/from16 v27, v1

    move v3, v4

    move-object v13, v6

    move-object/from16 v18, v12

    move/from16 v21, v14

    move/from16 v20, v15

    const/4 v4, 0x1

    .line 601
    .end local v1    # "i":I
    .end local v4    # "pid":I
    .end local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v12    # "pids":[I
    .end local v14    # "NP":I
    .end local v15    # "NS":I
    .restart local v3    # "pid":I
    .restart local v13    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .restart local v18    # "pids":[I
    .restart local v20    # "NS":I
    .restart local v21    # "NP":I
    .restart local v27    # "i":I
    :goto_8
    if-eqz v13, :cond_f

    iget v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    if-le v1, v3, :cond_e

    move-object/from16 v8, p5

    goto :goto_9

    .line 666
    :cond_e
    const/4 v1, 0x0

    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 667
    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 668
    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 669
    iput v1, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 670
    iput-boolean v4, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    .line 671
    iput-boolean v4, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 672
    move-object/from16 v8, p5

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 673
    add-int/lit8 v15, v20, -0x1

    .line 679
    .end local v20    # "NS":I
    .restart local v15    # "NS":I
    add-int/lit8 v1, v27, -0x1

    .line 680
    .end local v27    # "i":I
    .restart local v1    # "i":I
    move/from16 v7, p2

    move v14, v4

    goto/16 :goto_c

    .line 601
    .end local v1    # "i":I
    .end local v15    # "NS":I
    .restart local v20    # "NS":I
    .restart local v27    # "i":I
    :cond_f
    move-object/from16 v8, p5

    .line 603
    :goto_9
    new-instance v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    iget-boolean v6, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mIncludeThreads:Z

    move/from16 v7, p2

    invoke-direct {v1, v3, v7, v6}, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;-><init>(IIZ)V

    move-object v9, v1

    .line 604
    .end local v13    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v9, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 605
    add-int/lit8 v10, v2, 0x1

    .line 606
    .end local v2    # "curStatsIndex":I
    .local v10, "curStatsIndex":I
    add-int/lit8 v15, v20, 0x1

    .line 611
    .end local v20    # "NS":I
    .restart local v15    # "NS":I
    iget-object v11, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 612
    .local v11, "procStatsString":[Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcessFullStatsData:[J

    .line 613
    .local v12, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_uptime:J

    .line 614
    iget-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 616
    .local v13, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v13, v1, v11, v12, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 622
    const/4 v1, 0x5

    aget-wide v1, v12, v1

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->vsize:J

    .line 624
    iput-boolean v4, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    .line 625
    const/16 v22, 0x0

    aget-object v1, v11, v22

    iput-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 626
    aget-wide v1, v12, v4

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    .line 627
    aget-wide v1, v12, v17

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    .line 628
    aget-wide v1, v12, v16

    iget-wide v5, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v5

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    .line 629
    const/4 v1, 0x4

    aget-wide v1, v12, v1

    iget-wide v5, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v5

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    goto :goto_a

    .line 631
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping unknown process pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessCpuTracker"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-string v1, "<unknown>"

    iput-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 633
    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    .line 634
    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_majfaults:J

    iput-wide v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_minfaults:J

    .line 637
    :goto_a
    if-gez v7, :cond_12

    .line 638
    iget-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->getName(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Ljava/lang/String;)V

    .line 639
    iget-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 640
    iget-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadsDir:Ljava/lang/String;

    move/from16 v32, v4

    iget-object v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    iget-object v5, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move v2, v3

    .end local v3    # "pid":I
    .local v2, "pid":I
    const/4 v3, 0x1

    move/from16 v14, v32

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurThreadPids:[I

    goto :goto_b

    .line 639
    .end local v2    # "pid":I
    .restart local v3    # "pid":I
    :cond_11
    move v2, v3

    move v14, v4

    .end local v3    # "pid":I
    .restart local v2    # "pid":I
    goto :goto_b

    .line 643
    .end local v2    # "pid":I
    .restart local v3    # "pid":I
    :cond_12
    move v2, v3

    move v14, v4

    .end local v3    # "pid":I
    .restart local v2    # "pid":I
    iget-boolean v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_13

    .line 644
    iget-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 645
    iget-object v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->nameWidth:I

    .line 654
    :cond_13
    :goto_b
    iget-wide v3, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_utime:J

    long-to-int v1, v3

    iput v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 655
    iget-wide v3, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->base_stime:J

    long-to-int v1, v3

    iput v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 656
    const/4 v1, 0x0

    iput v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 657
    iput v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 658
    iput-boolean v14, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    .line 659
    if-nez p3, :cond_14

    iget-boolean v1, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->interesting:Z

    if-eqz v1, :cond_14

    .line 660
    iput-boolean v14, v9, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 523
    .end local v2    # "pid":I
    .end local v9    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v11    # "procStatsString":[Ljava/lang/String;
    .end local v12    # "procStats":[J
    .end local v13    # "path":Ljava/lang/String;
    :cond_14
    move v2, v10

    move/from16 v1, v27

    .end local v10    # "curStatsIndex":I
    .end local v27    # "i":I
    .restart local v1    # "i":I
    .local v2, "curStatsIndex":I
    :goto_c
    add-int/2addr v1, v14

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    move-object/from16 v9, p6

    move-object/from16 v12, v18

    move/from16 v14, v21

    const/4 v13, 0x0

    goto/16 :goto_3

    .end local v18    # "pids":[I
    .end local v21    # "NP":I
    .local v12, "pids":[I
    .restart local v14    # "NP":I
    :cond_15
    move/from16 v7, p2

    move/from16 v27, v1

    move-object/from16 v18, v12

    move/from16 v21, v14

    move/from16 v20, v15

    const/4 v14, 0x1

    .line 683
    .end local v1    # "i":I
    .end local v12    # "pids":[I
    .end local v14    # "NP":I
    .restart local v18    # "pids":[I
    .restart local v21    # "NP":I
    :goto_d
    if-ge v2, v15, :cond_16

    .line 685
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 686
    .local v1, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    .line 687
    iput v3, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    .line 688
    iput v3, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    .line 689
    iput v3, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    .line 690
    iput-boolean v14, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    .line 691
    iput-boolean v14, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    .line 692
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 693
    nop

    .end local v1    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    add-int/lit8 v15, v15, -0x1

    .line 696
    goto :goto_d

    .line 698
    :cond_16
    return-object v18
.end method

.method private getName(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 1216
    iget-object v0, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1217
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1218
    const-string v2, "usap32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "usap64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1219
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 1220
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1221
    move-object v0, v1

    .line 1222
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1223
    .local v2, "i":I
    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 1224
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1227
    .end local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 1228
    iget-object v0, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    .line 1231
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1232
    :cond_3
    iput-object v0, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 1233
    iget-object v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->nameWidth:I

    .line 1235
    :cond_4
    return-void
.end method

.method private synthetic lambda$collectCcuStats$0(I[J)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "cpuFreqTimeMs"    # [J

    .line 704
    new-instance v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;

    invoke-direct {v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;-><init>()V

    .line 705
    .local v0, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;
    iput p1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->uid:I

    .line 706
    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    .line 707
    iget-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;->cpuFreqTimeMs:[J

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_0
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .line 1041
    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    if-nez p5, :cond_0

    .line 1043
    const/4 v0, 0x1

    move v14, v0

    .end local p5    # "totalTime":I
    .local v0, "totalTime":I
    goto :goto_0

    .line 1042
    .end local v0    # "totalTime":I
    .restart local p5    # "totalTime":I
    :cond_0
    move/from16 v14, p5

    .line 1044
    .end local p5    # "totalTime":I
    .local v14, "totalTime":I
    :goto_0
    add-int v0, v7, v8

    add-int/2addr v0, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    int-to-long v2, v0

    int-to-long v4, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1045
    const-string v0, "% "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    if-ltz v6, :cond_1

    .line 1047
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1050
    :cond_1
    move-object/from16 v15, p4

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1051
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1052
    int-to-long v2, v7

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1053
    const-string v0, "% user + "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    int-to-long v2, v8

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1055
    const-string v0, "% kernel"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1056
    const-string v0, " + "

    if-lez v9, :cond_2

    .line 1057
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    int-to-long v2, v9

    int-to-long v4, v14

    move-object v6, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1059
    const-string v0, "% iowait"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1056
    :cond_2
    move-object v6, v0

    .line 1061
    :goto_1
    if-lez v10, :cond_3

    .line 1062
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    int-to-long v2, v10

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1064
    const-string v0, "% irq"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    :cond_3
    if-lez v11, :cond_4

    .line 1067
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    int-to-long v2, v11

    int-to-long v4, v14

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 1069
    const-string v0, "% softirq"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1071
    :cond_4
    if-gtz v12, :cond_5

    if-lez v13, :cond_7

    .line 1072
    :cond_5
    const-string v0, " / faults:"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1073
    const-string v0, " "

    if-lez v12, :cond_6

    .line 1074
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string v2, " minor"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1078
    :cond_6
    if-lez v13, :cond_7

    .line 1079
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 1081
    const-string v0, " major"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1084
    :cond_7
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1085
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 1026
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    .line 1027
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 1028
    .local v4, "hundreds":J
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1029
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    .line 1030
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 1031
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 1032
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 1033
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1036
    .end local v2    # "remainder":J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .line 1190
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 1191
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 1193
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 1194
    iget-object v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 1195
    .local v2, "len":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1197
    if-lez v2, :cond_2

    .line 1199
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1200
    iget-object v4, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    aget-byte v4, v4, v3

    if-ne v4, p2, :cond_0

    .line 1201
    goto :goto_1

    .line 1199
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1204
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBuffer:[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1210
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1204
    return-object v4

    .line 1197
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 1209
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1210
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1211
    throw v2

    .line 1207
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1206
    :catch_1
    move-exception v2

    .line 1209
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1210
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1211
    nop

    .line 1212
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 7

    .line 870
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    .line 871
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 872
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 873
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 874
    iget-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 875
    .local v3, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v4, :cond_2

    .line 876
    iget-object v4, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    iget-object v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 878
    iget-object v2, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 879
    iget-object v2, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 880
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 881
    iget-object v5, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 882
    .local v5, "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 883
    iget-object v6, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    .end local v5    # "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 886
    .end local v4    # "j":I
    :cond_1
    iget-object v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 873
    .end local v2    # "M":I
    .end local v3    # "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 890
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 891
    iput-boolean v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcsSorted:Z

    .line 893
    .end local v0    # "N":I
    :cond_4
    return-void
.end method

.method final buildWorkingThreads()V
    .locals 7

    .line 844
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreadsSorted:Z

    if-nez v0, :cond_4

    .line 845
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 846
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 847
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 848
    iget-object v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 849
    .local v2, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v3, :cond_2

    .line 850
    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 851
    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 852
    iget-object v3, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 853
    .local v3, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 854
    iget-object v5, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 855
    .local v5, "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 856
    iget-object v6, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v6, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    .end local v5    # "tstats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 860
    .end local v4    # "j":I
    :cond_1
    iget-object v4, v2, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 847
    .end local v2    # "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .end local v3    # "M":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 864
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/ssrm/CustomProcessCpuTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 865
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreadsSorted:Z

    .line 867
    .end local v0    # "N":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats(Z)I
    .locals 1
    .param p1, "includeThreads"    # Z

    .line 920
    if-eqz p1, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->buildWorkingThreads()V

    .line 922
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->buildWorkingProcs()V

    .line 925
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getBaseIdleTime()J
    .locals 2

    .line 828
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIdleTime:J

    return-wide v0
.end method

.method public final getBaseIoWaitTime()J
    .locals 2

    .line 807
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIoWaitTime:J

    return-wide v0
.end method

.method public final getBaseIrqTime()J
    .locals 2

    .line 814
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIrqTime:J

    return-wide v0
.end method

.method public final getBaseSampleTime()J
    .locals 2

    .line 779
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    return-wide v0
.end method

.method public final getBaseSoftIrqTime()J
    .locals 2

    .line 821
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSoftIrqTime:J

    return-wide v0
.end method

.method public final getBaseSystemTime()J
    .locals 2

    .line 800
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSystemTime:J

    return-wide v0
.end method

.method public final getBaseUserTime()J
    .locals 2

    .line 793
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseUserTime:J

    return-wide v0
.end method

.method public declared-synchronized getCcuStats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$CcuStats;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCcuStats:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 714
    .end local p0    # "this":Lcom/android/server/ssrm/CustomProcessCpuTracker;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 7
    .param p1, "pid"    # I

    .line 722
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    .line 723
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/stat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "statFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSinglePidStatsData:[J

    .line 725
    .local v2, "statsData":[J
    sget-object v3, Lcom/android/server/ssrm/CustomProcessCpuTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    .line 727
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    .line 729
    .end local v3    # "time":J
    :cond_0
    monitor-exit v0

    const-wide/16 v3, 0x0

    return-wide v3

    .line 730
    .end local v1    # "statFile":Ljava/lang/String;
    .end local v2    # "statsData":[J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getLastIdleTime()I
    .locals 1

    .line 772
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .line 751
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .line 758
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSampleTime()J
    .locals 2

    .line 786
    iget-wide v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    return-wide v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .line 765
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .line 737
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .line 904
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getStats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getStats(Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;)Ljava/util/List;
    .locals 5
    .param p1, "filter"    # Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 909
    .local v0, "statses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;>;"
    iget-object v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 910
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 911
    iget-object v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 912
    .local v3, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    invoke-interface {p1, v3}, Lcom/android/server/ssrm/CustomProcessCpuTracker$FilterStats;->needed(Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 913
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    .end local v3    # "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 916
    .end local v2    # "p":I
    :cond_1
    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .line 836
    iget v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    .line 837
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 838
    const/4 v1, 0x0

    return v1

    .line 840
    :cond_0
    iget v1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final getWorkingStats(I)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .line 937
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getWorkingStats(IZ)Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .locals 1
    .param p1, "index"    # I
    .param p2, "includeThreads"    # Z

    .line 930
    if-eqz p2, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    return-object v0
.end method

.method public final getWorkingThreadStats(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 942
    .local v0, "stats":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-object v1, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    return-object v1
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    .line 832
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelStatsAreGood:Z

    return v0
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 360
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->update(Ljava/util/List;)Z

    .line 362
    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 351
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public printCpuCoreInfo()Ljava/lang/String;
    .locals 20

    .line 1090
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1091
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1093
    .local v1, "pw":Ljava/io/PrintWriter;
    const/16 v2, 0x1020

    filled-new-array {v2}, [I

    move-result-object v2

    .line 1097
    .local v2, "SINGLE_STRING_FORMAT":[I
    const/16 v4, 0x2020

    filled-new-array {v4}, [I

    move-result-object v4

    .line 1101
    .local v4, "SINGLE_LONG_FORMAT":[I
    const-string v5, "/sys/devices/system/cpu/offline"

    const-string v6, "/sys/devices/system/cpu/online"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    .line 1105
    .local v5, "CPUINFO_PATH":[Ljava/lang/String;
    const-string v6, "/sys/devices/system/cpu/possible"

    .line 1107
    .local v6, "POSSIBLE_PATH":Ljava/lang/String;
    const-string v7, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor"

    const-string v8, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_max_freq"

    const-string v9, "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_cur_freq"

    filled-new-array {v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    .line 1113
    .local v7, "CPUINFO_EACH_PATH":[Ljava/lang/String;
    const-string v8, "/sys/devices/platform/sec-thermistor/temperature"

    const-string v9, "/sys/class/sec/sec-ap-thermistor/temperature"

    const-string v10, "/sys/class/sec/sec-thermistor/temperature"

    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    .line 1119
    .local v8, "AP_THERMISTOR_PATH":[Ljava/lang/String;
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    .line 1120
    .local v10, "temp":[Ljava/lang/String;
    new-array v11, v9, [J

    .line 1121
    .local v11, "temp_l":[J
    const/4 v12, 0x0

    .line 1123
    .local v12, "core_num":I
    const-string v13, "------ Current CPU Core Info ------"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v14, v5

    const/16 v15, 0x2f

    move/from16 v16, v3

    const/4 v3, 0x0

    if-ge v13, v14, :cond_1

    .line 1126
    const-string v14, "- "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1127
    aget-object v14, v5, v13

    move/from16 v17, v9

    aget-object v9, v5, v13

    invoke-virtual {v9, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v14, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1128
    const-string v9, " : "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    aget-object v9, v5, v13

    invoke-static {v9, v2, v10, v3, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1131
    aget-object v3, v10, v16

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1133
    :cond_0
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    :goto_1
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v16

    move/from16 v9, v17

    goto :goto_0

    :cond_1
    move/from16 v17, v9

    .line 1137
    .end local v13    # "i":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v13, v8

    if-ge v9, v13, :cond_3

    .line 1138
    aget-object v13, v8, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v4, v3, v11, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1140
    aget-wide v13, v11, v16

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "- AP Temp = %d%n"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1141
    goto :goto_3

    .line 1137
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1146
    .end local v9    # "i":I
    :cond_3
    :goto_3
    const-string v9, "/sys/devices/system/cpu/possible"

    invoke-static {v9, v2, v10, v3, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1147
    aget-object v9, v10, v16

    aget-object v13, v10, v16

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1150
    :cond_4
    if-lez v12, :cond_b

    .line 1151
    const-string v9, "                  "

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    if-gt v9, v12, :cond_5

    .line 1153
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "%12d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1152
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1155
    .end local v9    # "i":I
    :cond_5
    const-string v9, "\n------------------"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_5
    const-string v14, "------------"

    if-gt v13, v12, :cond_6

    .line 1157
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1160
    .end local v13    # "i":I
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_6
    array-length v3, v7

    if-ge v13, v3, :cond_9

    .line 1161
    aget-object v3, v7, v13

    move-object/from16 v18, v0

    .end local v0    # "sw":Ljava/io/StringWriter;
    .local v18, "sw":Ljava/io/StringWriter;
    aget-object v0, v7, v13

    .line 1162
    invoke-virtual {v0, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1161
    const-string v3, "%n%-18s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_7
    if-gt v0, v12, :cond_8

    .line 1165
    aget-object v3, v7, v13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    filled-new-array/range {v19 .. v19}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-static {v3, v2, v10, v15, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1167
    aget-object v3, v10, v16

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v15, "%12s"

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 1169
    :cond_7
    const-string v3, "           -"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1164
    :goto_8
    add-int/lit8 v0, v0, 0x1

    const/16 v15, 0x2f

    goto :goto_7

    .line 1160
    .end local v0    # "j":I
    :cond_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v18

    const/4 v3, 0x0

    const/16 v15, 0x2f

    goto :goto_6

    .end local v18    # "sw":Ljava/io/StringWriter;
    .local v0, "sw":Ljava/io/StringWriter;
    :cond_9
    move-object/from16 v18, v0

    .line 1174
    .end local v0    # "sw":Ljava/io/StringWriter;
    .end local v13    # "i":I
    .restart local v18    # "sw":Ljava/io/StringWriter;
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-gt v0, v12, :cond_a

    .line 1176
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1178
    .end local v0    # "i":I
    :cond_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto :goto_a

    .line 1150
    .end local v18    # "sw":Ljava/io/StringWriter;
    .local v0, "sw":Ljava/io/StringWriter;
    :cond_b
    move-object/from16 v18, v0

    .line 1181
    .end local v0    # "sw":Ljava/io/StringWriter;
    .restart local v18    # "sw":Ljava/io/StringWriter;
    :goto_a
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1182
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .line 946
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 947
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 948
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 949
    iget v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 950
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    iget v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 952
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 953
    iget v2, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 954
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 955
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 29
    .param p1, "now"    # J

    .line 959
    move-object/from16 v0, p0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v13, v1

    .line 961
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->buildWorkingProcs()V

    .line 963
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    move-object v14, v1

    .line 964
    .local v14, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v14, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 966
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "CPU usage from "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 967
    iget-wide v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    cmp-long v2, p1, v2

    const-string v3, "ms to "

    if-lez v2, :cond_0

    .line 968
    iget-wide v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, p1, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 969
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 970
    iget-wide v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 971
    const-string v2, "ms ago"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 973
    :cond_0
    iget-wide v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    sub-long v4, v4, p1

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 974
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 975
    iget-wide v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    sub-long v2, v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 976
    const-string v2, "ms later"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 978
    :goto_0
    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleWallTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    new-instance v2, Ljava/util/Date;

    iget-wide v3, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleWallTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v13, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 982
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    iget-wide v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    iget-wide v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    sub-long v15, v2, v4

    .line 985
    .local v15, "sampleTime":J
    iget-wide v2, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleRealTime:J

    iget-wide v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleRealTime:J

    sub-long v17, v2, v4

    .line 986
    .local v17, "sampleRealTime":J
    const-wide/16 v2, 0x0

    cmp-long v4, v17, v2

    const-wide/16 v5, 0x64

    if-lez v4, :cond_1

    mul-long v2, v15, v5

    div-long v2, v2, v17

    .line 987
    .local v2, "percAwake":J
    :cond_1
    cmp-long v4, v2, v5

    if-eqz v4, :cond_2

    .line 988
    const-string v4, " with "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 989
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 990
    const-string v4, "% awake"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 992
    :cond_2
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    iget v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v5, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    add-int v19, v4, v5

    .line 1001
    .local v19, "totalTime":I
    iget-object v4, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1002
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_9

    .line 1003
    iget-object v6, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 1004
    .local v6, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v7, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    if-eqz v7, :cond_3

    const-string v7, " +"

    goto :goto_2

    :cond_3
    iget-boolean v7, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-eqz v7, :cond_4

    const-string v7, " -"

    goto :goto_2

    :cond_4
    const-string v7, "  "

    :goto_2
    move-wide v8, v2

    .end local v2    # "percAwake":J
    .local v8, "percAwake":J
    iget v3, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    move v2, v4

    .end local v4    # "N":I
    .local v2, "N":I
    iget-object v4, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v10, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v10, v10

    iget v11, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    move v12, v2

    move-object v2, v7

    .end local v2    # "N":I
    .local v12, "N":I
    iget v7, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    move/from16 v20, v11

    iget v11, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_minfaults:I

    move/from16 v21, v12

    .end local v12    # "N":I
    .local v21, "N":I
    iget v12, v6, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_majfaults:I

    move-wide/from16 v22, v8

    .end local v8    # "percAwake":J
    .local v22, "percAwake":J
    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v24, v5

    move v5, v10

    .end local v5    # "i":I
    .local v24, "i":I
    const/4 v10, 0x0

    move-object/from16 v28, v13

    move-object v13, v6

    move/from16 v6, v20

    move-object/from16 v20, v28

    .end local v6    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v13, "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v20, "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct/range {v0 .. v12}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1007
    iget-boolean v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-nez v0, :cond_8

    iget-object v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 1008
    iget-object v0, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1009
    .local v0, "M":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v0, :cond_7

    .line 1010
    iget-object v3, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;

    .line 1011
    .local v3, "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    iget-boolean v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->added:Z

    if-eqz v4, :cond_5

    const-string v4, "   +"

    goto :goto_4

    :cond_5
    iget-boolean v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->removed:Z

    if-eqz v4, :cond_6

    const-string v4, "   -"

    goto :goto_4

    :cond_6
    const-string v4, "    "

    :goto_4
    iget v5, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->pid:I

    move v6, v2

    move-object v2, v4

    .end local v2    # "j":I
    .local v6, "j":I
    iget-object v4, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget-wide v7, v13, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v7, v7

    move v8, v6

    .end local v6    # "j":I
    .local v8, "j":I
    iget v6, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_utime:I

    move v9, v5

    move v5, v7

    iget v7, v3, Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;->rel_stime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v10, v8

    .end local v8    # "j":I
    .local v10, "j":I
    const/4 v8, 0x0

    move-object/from16 v25, v3

    move v3, v9

    .end local v3    # "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    .local v25, "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    const/4 v9, 0x0

    move/from16 v26, v10

    .end local v10    # "j":I
    .local v26, "j":I
    const/4 v10, 0x0

    move-object/from16 v27, v25

    move/from16 v25, v0

    move-object/from16 v0, p0

    .end local v0    # "M":I
    .local v25, "M":I
    .local v27, "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    invoke-direct/range {v0 .. v12}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1009
    .end local v27    # "tst":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    add-int/lit8 v2, v26, 0x1

    move/from16 v0, v25

    .end local v26    # "j":I
    .restart local v2    # "j":I
    goto :goto_3

    .end local v25    # "M":I
    .restart local v0    # "M":I
    :cond_7
    move/from16 v25, v0

    move/from16 v26, v2

    move-object/from16 v0, p0

    .end local v0    # "M":I
    .end local v2    # "j":I
    .restart local v25    # "M":I
    .restart local v26    # "j":I
    goto :goto_5

    .line 1007
    .end local v25    # "M":I
    .end local v26    # "j":I
    :cond_8
    move-object/from16 v0, p0

    .line 1002
    .end local v13    # "st":Lcom/android/server/ssrm/CustomProcessCpuTracker$Stats;
    :goto_5
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v13, v20

    move/from16 v4, v21

    move-wide/from16 v2, v22

    .end local v24    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_1

    .end local v20    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v21    # "N":I
    .end local v22    # "percAwake":J
    .local v2, "percAwake":J
    .restart local v4    # "N":I
    .local v13, "sdf":Ljava/text/SimpleDateFormat;
    :cond_9
    move-wide/from16 v22, v2

    move/from16 v21, v4

    move/from16 v24, v5

    .line 1018
    .end local v2    # "percAwake":J
    .end local v4    # "N":I
    .end local v5    # "i":I
    .restart local v21    # "N":I
    .restart local v22    # "percAwake":J
    iget v6, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v7, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    iget v8, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    iget v9, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    iget v10, v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const/4 v3, -0x1

    const-string v4, "TOTAL"

    move/from16 v5, v19

    .end local v19    # "totalTime":I
    .local v5, "totalTime":I
    invoke-direct/range {v0 .. v12}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 1021
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1022
    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readCurTotalCpuTime()J
    .locals 15

    .line 365
    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSystemCpuData:[J

    .line 366
    .local v0, "sysCpu":[J
    sget-object v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v2, 0x0

    const-string v3, "/proc/stat"

    invoke-static {v3, v1, v2, v0, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v1, v3

    .line 370
    .local v1, "usertime":J
    const/4 v3, 0x2

    aget-wide v3, v0, v3

    iget-wide v5, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v3, v5

    .line 372
    .local v3, "systemtime":J
    const/4 v5, 0x3

    aget-wide v5, v0, v5

    iget-wide v7, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v5, v7

    .line 374
    .local v5, "idletime":J
    const/4 v7, 0x4

    aget-wide v7, v0, v7

    iget-wide v9, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v7, v9

    .line 375
    .local v7, "iowaittime":J
    const/4 v9, 0x5

    aget-wide v9, v0, v9

    iget-wide v11, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v9, v11

    .line 376
    .local v9, "irqtime":J
    const/4 v11, 0x6

    aget-wide v11, v0, v11

    iget-wide v13, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v11, v13

    .line 378
    .local v11, "softirqtime":J
    add-long v13, v1, v3

    add-long/2addr v13, v5

    add-long/2addr v13, v7

    add-long/2addr v13, v9

    add-long/2addr v13, v11

    return-wide v13

    .line 381
    .end local v1    # "usertime":J
    .end local v3    # "systemtime":J
    .end local v5    # "idletime":J
    .end local v7    # "iowaittime":J
    .end local v9    # "irqtime":J
    .end local v11    # "softirqtime":J
    :cond_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public update(Ljava/util/List;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 388
    .local p1, "tarPids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 389
    .local v8, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 390
    .local v10, "nowRealtime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 392
    .local v12, "nowWallTime":J
    iget-object v14, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mSystemCpuData:[J

    .line 393
    .local v14, "sysCpu":[J
    sget-object v0, Lcom/android/server/ssrm/CustomProcessCpuTracker;->SYSTEM_CPU_FORMAT:[I

    const-string v2, "/proc/stat"

    const/4 v15, 0x0

    invoke-static {v2, v0, v15, v14, v15}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/16 v16, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 395
    aget-wide v4, v14, v3

    aget-wide v6, v14, v2

    add-long/2addr v4, v6

    iget-wide v6, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v4, v6

    .line 397
    .local v4, "usertime":J
    aget-wide v6, v14, v16

    move v0, v3

    move-wide/from16 v17, v4

    .end local v4    # "usertime":J
    .local v17, "usertime":J
    iget-wide v3, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long/2addr v6, v3

    .line 399
    .local v6, "systemtime":J
    const/4 v3, 0x3

    aget-wide v3, v14, v3

    move-wide/from16 v19, v3

    iget-wide v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long v3, v19, v2

    .line 401
    .local v3, "idletime":J
    const/4 v2, 0x4

    aget-wide v19, v14, v2

    move-wide/from16 v21, v6

    .end local v6    # "systemtime":J
    .local v21, "systemtime":J
    iget-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long v19, v19, v5

    .line 402
    .local v19, "iowaittime":J
    const/4 v5, 0x5

    aget-wide v5, v14, v5

    move-wide/from16 v23, v8

    .end local v8    # "nowUptime":J
    .local v23, "nowUptime":J
    iget-wide v7, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long v6, v5, v7

    .line 403
    .local v6, "irqtime":J
    const/4 v5, 0x6

    aget-wide v25, v14, v5

    move-wide/from16 v27, v10

    .end local v10    # "nowRealtime":J
    .local v27, "nowRealtime":J
    iget-wide v9, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mJiffyMillis:J

    mul-long v8, v25, v9

    .line 404
    .local v8, "softirqtime":J
    const/4 v10, 0x0

    .line 410
    .local v10, "totalLoad":F
    move-wide/from16 v25, v6

    .end local v6    # "irqtime":J
    .local v25, "irqtime":J
    iget-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseUserTime:J

    sub-long v5, v17, v5

    long-to-int v5, v5

    iput v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    .line 411
    iget-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSystemTime:J

    sub-long v5, v21, v5

    long-to-int v5, v5

    iput v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    .line 412
    iget-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIoWaitTime:J

    sub-long v5, v19, v5

    long-to-int v5, v5

    iput v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    .line 413
    iget-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIrqTime:J

    sub-long v5, v25, v5

    long-to-int v5, v5

    iput v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    .line 414
    iget-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSoftIrqTime:J

    sub-long v5, v8, v5

    long-to-int v5, v5

    iput v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    .line 415
    iget-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIdleTime:J

    sub-long v5, v3, v5

    long-to-int v5, v5

    iput v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    .line 416
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelStatsAreGood:Z

    .line 423
    move-wide/from16 v6, v19

    .end local v19    # "iowaittime":J
    .local v6, "iowaittime":J
    if-nez p1, :cond_1

    iget-boolean v11, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    if-nez v11, :cond_1

    .line 424
    iget v11, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    move/from16 v19, v0

    iget v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v11, v0

    mul-int/lit8 v11, v11, 0x64

    int-to-float v0, v11

    iget v11, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelUserTime:I

    iget v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSystemTime:I

    add-int/2addr v11, v5

    iget v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIoWaitTime:I

    add-int/2addr v11, v5

    iget v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIrqTime:I

    add-int/2addr v11, v5

    iget v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelSoftIrqTime:I

    add-int/2addr v11, v5

    iget v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mRelIdleTime:I

    add-int/2addr v11, v5

    int-to-float v5, v11

    div-float v10, v0, v5

    .line 427
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, v10, v0

    if-gtz v0, :cond_0

    iget v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    if-ge v0, v2, :cond_0

    .line 436
    iget v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    .line 437
    return v19

    .line 427
    :cond_0
    const/4 v5, 0x1

    .line 440
    move/from16 v0, v19

    iput v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLowLoadSkipCount:I

    goto :goto_0

    .line 423
    :cond_1
    const/4 v5, 0x1

    .line 458
    :goto_0
    move-wide/from16 v19, v6

    move-wide/from16 v5, v17

    .end local v6    # "iowaittime":J
    .end local v17    # "usertime":J
    .local v5, "usertime":J
    .restart local v19    # "iowaittime":J
    iput-wide v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseUserTime:J

    .line 459
    move-wide/from16 v17, v8

    move-wide/from16 v7, v21

    .end local v8    # "softirqtime":J
    .end local v21    # "systemtime":J
    .local v7, "systemtime":J
    .local v17, "softirqtime":J
    iput-wide v7, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSystemTime:J

    .line 460
    move v2, v10

    move-wide/from16 v9, v19

    .end local v10    # "totalLoad":F
    .end local v19    # "iowaittime":J
    .local v2, "totalLoad":F
    .local v9, "iowaittime":J
    iput-wide v9, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIoWaitTime:J

    .line 461
    move-wide/from16 v19, v12

    move-wide/from16 v11, v25

    .end local v12    # "nowWallTime":J
    .end local v25    # "irqtime":J
    .local v11, "irqtime":J
    .local v19, "nowWallTime":J
    iput-wide v11, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIrqTime:J

    .line 462
    move-object/from16 v21, v14

    move-wide/from16 v13, v17

    .end local v14    # "sysCpu":[J
    .end local v17    # "softirqtime":J
    .local v13, "softirqtime":J
    .local v21, "sysCpu":[J
    iput-wide v13, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseSoftIrqTime:J

    .line 463
    iput-wide v3, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mBaseIdleTime:J

    goto :goto_1

    .line 393
    .end local v2    # "totalLoad":F
    .end local v3    # "idletime":J
    .end local v5    # "usertime":J
    .end local v7    # "systemtime":J
    .end local v9    # "iowaittime":J
    .end local v11    # "irqtime":J
    .end local v13    # "softirqtime":J
    .end local v19    # "nowWallTime":J
    .end local v21    # "sysCpu":[J
    .end local v23    # "nowUptime":J
    .end local v27    # "nowRealtime":J
    .local v8, "nowUptime":J
    .local v10, "nowRealtime":J
    .restart local v12    # "nowWallTime":J
    .restart local v14    # "sysCpu":[J
    :cond_2
    move v0, v3

    move-wide/from16 v23, v8

    move-wide/from16 v27, v10

    move-wide/from16 v19, v12

    move-object/from16 v21, v14

    .line 466
    .end local v8    # "nowUptime":J
    .end local v10    # "nowRealtime":J
    .end local v12    # "nowWallTime":J
    .end local v14    # "sysCpu":[J
    .restart local v19    # "nowWallTime":J
    .restart local v21    # "sysCpu":[J
    .restart local v23    # "nowUptime":J
    .restart local v27    # "nowRealtime":J
    :goto_1
    iget-wide v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    iput-wide v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleTime:J

    .line 467
    move-wide/from16 v8, v23

    .end local v23    # "nowUptime":J
    .restart local v8    # "nowUptime":J
    iput-wide v8, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleTime:J

    .line 468
    iget-wide v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleRealTime:J

    iput-wide v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleRealTime:J

    .line 469
    move-wide/from16 v10, v27

    .end local v27    # "nowRealtime":J
    .restart local v10    # "nowRealtime":J
    iput-wide v10, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleRealTime:J

    .line 470
    iget-wide v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleWallTime:J

    iput-wide v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLastSampleWallTime:J

    .line 471
    move-wide/from16 v12, v19

    .end local v19    # "nowWallTime":J
    .restart local v12    # "nowWallTime":J
    iput-wide v12, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurrentSampleWallTime:J

    .line 473
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v14

    .line 475
    .local v14, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v2, "/proc"

    iget-boolean v4, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    iget-object v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurPids:[I

    iget-object v6, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mProcStats:Ljava/util/ArrayList;

    const/4 v3, -0x1

    move-object/from16 v7, p1

    const/16 v20, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/List;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mCurPids:[I

    .line 476
    invoke-direct {v1}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->collectCcuStats()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 479
    nop

    .line 481
    iget-object v2, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoadAverageData:[F

    .line 482
    .local v2, "loadAverages":[F
    const-string v3, "/proc/loadavg"

    sget-object v4, Lcom/android/server/ssrm/CustomProcessCpuTracker;->LOAD_AVERAGE_FORMAT:[I

    invoke-static {v3, v4, v15, v15, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 483
    aget v3, v2, v0

    .line 484
    .local v3, "load1":F
    aget v4, v2, v20

    .line 485
    .local v4, "load5":F
    aget v5, v2, v16

    .line 486
    .local v5, "load15":F
    iget v6, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    cmpl-float v6, v3, v6

    if-nez v6, :cond_3

    iget v6, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    cmpl-float v6, v4, v6

    if-nez v6, :cond_3

    iget v6, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_4

    .line 487
    :cond_3
    iput v3, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad1:F

    .line 488
    iput v4, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad5:F

    .line 489
    iput v5, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mLoad15:F

    .line 490
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->onLoadChanged(FFF)V

    .line 498
    .end local v3    # "load1":F
    .end local v4    # "load5":F
    .end local v5    # "load15":F
    :cond_4
    if-nez p1, :cond_5

    .line 499
    iput-boolean v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingProcsSorted:Z

    goto :goto_2

    .line 501
    :cond_5
    iput-boolean v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mWorkingThreadsSorted:Z

    .line 503
    :goto_2
    iput-boolean v0, v1, Lcom/android/server/ssrm/CustomProcessCpuTracker;->mFirst:Z

    .line 504
    return v20

    .line 478
    .end local v2    # "loadAverages":[F
    :catchall_0
    move-exception v0

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 479
    throw v0
.end method
