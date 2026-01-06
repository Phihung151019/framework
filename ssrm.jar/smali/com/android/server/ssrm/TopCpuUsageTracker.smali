.class public Lcom/android/server/ssrm/TopCpuUsageTracker;
.super Ljava/lang/Object;
.source "TopCpuUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

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

.field private static final TAG:Ljava/lang/String; = "CfmsTopCpuUsageTracker"

.field private static final localLOGV:Z = false

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
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

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private final mJiffyMillis:J

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
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
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z

.field private final mWorkingThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingThreadsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_STATS_FORMAT:[I

    .line 76
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_FULL_STATS_FORMAT:[I

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->SYSTEM_CPU_FORMAT:[I

    .line 279
    new-instance v0, Lcom/android/server/ssrm/TopCpuUsageTracker$1;

    invoke-direct {v0}, Lcom/android/server/ssrm/TopCpuUsageTracker$1;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

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

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessStatsData:[J

    .line 74
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSinglePidStatsData:[J

    .line 102
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 104
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsData:[J

    .line 118
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSystemCpuData:[J

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    .line 172
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    .line 298
    iput-boolean p1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mIncludeThreads:Z

    .line 299
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    .line 300
    .local v0, "jiffyHz":J
    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    .line 301
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I
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
            "Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 403
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;>;"
    .local p6, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    if-nez v9, :cond_0

    .line 404
    move-object/from16 v10, p1

    move-object/from16 v11, p4

    invoke-static {v10, v11}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v1

    move-object v12, v1

    .local v1, "pids":[I
    goto :goto_1

    .line 406
    .end local v1    # "pids":[I
    :cond_0
    move-object/from16 v10, p1

    move-object/from16 v11, p4

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 407
    .restart local v1    # "pids":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 408
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v12, v1

    .line 412
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

    .line 413
    .local v14, "NP":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 414
    .local v1, "NS":I
    const/4 v2, 0x0

    .line 415
    .local v2, "curStatsIndex":I
    const/4 v3, 0x0

    move v15, v1

    move v1, v3

    .local v1, "i":I
    .local v15, "NS":I
    :goto_3
    if-ge v1, v14, :cond_15

    .line 416
    aget v4, v12, v1

    .line 417
    .local v4, "pid":I
    if-gez v4, :cond_3

    .line 418
    move v14, v4

    .line 419
    move/from16 v7, p2

    move-object/from16 v18, v12

    move/from16 v21, v14

    const/4 v14, 0x1

    goto/16 :goto_d

    .line 421
    :cond_3
    const/4 v5, 0x0

    if-ge v2, v15, :cond_4

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    goto :goto_4

    :cond_4
    move-object v6, v5

    .line 423
    .local v6, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :goto_4
    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v6, :cond_d

    const/16 v18, 0x1

    iget v3, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->pid:I

    if-ne v3, v4, :cond_c

    .line 425
    iput-boolean v13, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    .line 426
    iput-boolean v13, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 427
    add-int/lit8 v19, v2, 0x1

    .line 432
    .end local v2    # "curStatsIndex":I
    .local v19, "curStatsIndex":I
    iget-boolean v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    if-eqz v2, :cond_b

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 435
    .local v2, "uptime":J
    move-wide/from16 v20, v2

    .end local v2    # "uptime":J
    .local v20, "uptime":J
    iget-object v3, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessStatsData:[J

    .line 436
    .local v3, "procStats":[J
    iget-object v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v13

    sget-object v13, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_STATS_FORMAT:[I

    invoke-static {v2, v13, v5, v3, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-nez v2, :cond_5

    .line 438
    move/from16 v27, v1

    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    goto/16 :goto_7

    .line 441
    :cond_5
    move-object v2, v3

    move v13, v4

    .end local v3    # "procStats":[J
    .end local v4    # "pid":I
    .local v2, "procStats":[J
    .local v13, "pid":I
    aget-wide v3, v2, v22

    .line 442
    .local v3, "minfaults":J
    move-wide/from16 v23, v3

    .end local v3    # "minfaults":J
    .local v23, "minfaults":J
    aget-wide v3, v2, v18

    .line 443
    .local v3, "majfaults":J
    aget-wide v25, v2, v17

    move/from16 v27, v1

    move-object v5, v2

    .end local v1    # "i":I
    .end local v2    # "procStats":[J
    .local v5, "procStats":[J
    .local v27, "i":I
    iget-wide v1, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long v25, v25, v1

    .line 444
    .local v25, "utime":J
    aget-wide v1, v5, v16

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long v1, v1, v16

    .line 446
    .local v1, "stime":J
    move-wide/from16 v16, v1

    .end local v1    # "stime":J
    .local v16, "stime":J
    iget-wide v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    cmp-long v1, v25, v1

    if-nez v1, :cond_7

    iget-wide v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    cmp-long v1, v16, v1

    if-nez v1, :cond_7

    .line 447
    move/from16 v1, v22

    iput v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 448
    iput v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 449
    iput v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 450
    iput v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 451
    iget-boolean v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    if-eqz v2, :cond_6

    .line 452
    iput-boolean v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    goto/16 :goto_7

    .line 451
    :cond_6
    move/from16 v21, v14

    move/from16 v20, v15

    move/from16 v4, v18

    move-object/from16 v18, v12

    goto/16 :goto_7

    .line 457
    :cond_7
    iget-boolean v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    if-nez v1, :cond_8

    .line 458
    move/from16 v1, v18

    iput-boolean v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->active:Z

    goto :goto_5

    .line 457
    :cond_8
    move/from16 v1, v18

    .line 461
    :goto_5
    if-gez p2, :cond_a

    .line 462
    iget-object v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v6, v2}, Lcom/android/server/ssrm/TopCpuUsageTracker;->getName(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Ljava/lang/String;)V

    .line 463
    iget-object v2, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 464
    move/from16 v18, v1

    iget-object v1, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadsDir:Ljava/lang/String;

    move-wide v2, v3

    .end local v3    # "majfaults":J
    .local v2, "majfaults":J
    iget-object v4, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    move-object/from16 v28, v5

    .end local v5    # "procStats":[J
    .local v28, "procStats":[J
    iget-object v5, v6, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v29, v6

    .end local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .local v29, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
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
    .end local v29    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .local v2, "pid":I
    .local v7, "utime":J
    .local v9, "uptime":J
    .local v11, "minfaults":J
    .local v13, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .local v14, "stime":J
    .local v18, "pids":[I
    .local v20, "NS":I
    .local v21, "NP":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/TopCpuUsageTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v1

    move v3, v2

    .end local v2    # "pid":I
    .local v3, "pid":I
    iput-object v1, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    goto :goto_6

    .line 463
    .end local v7    # "utime":J
    .end local v9    # "uptime":J
    .end local v11    # "minfaults":J
    .end local v18    # "pids":[I
    .end local v21    # "NP":I
    .end local v28    # "procStats":[J
    .end local v30    # "majfaults":J
    .local v3, "majfaults":J
    .restart local v5    # "procStats":[J
    .restart local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
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
    .end local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v12    # "pids":[I
    .end local v15    # "NS":I
    .end local v16    # "stime":J
    .end local v23    # "minfaults":J
    .end local v25    # "utime":J
    .local v3, "pid":I
    .restart local v7    # "utime":J
    .restart local v9    # "uptime":J
    .restart local v11    # "minfaults":J
    .local v13, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .local v14, "stime":J
    .restart local v18    # "pids":[I
    .local v20, "NS":I
    .restart local v21    # "NP":I
    .restart local v28    # "procStats":[J
    .restart local v30    # "majfaults":J
    goto :goto_6

    .line 461
    .end local v7    # "utime":J
    .end local v9    # "uptime":J
    .end local v11    # "minfaults":J
    .end local v18    # "pids":[I
    .end local v21    # "NP":I
    .end local v28    # "procStats":[J
    .end local v30    # "majfaults":J
    .local v3, "majfaults":J
    .restart local v5    # "procStats":[J
    .restart local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
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

    .line 477
    .end local v5    # "procStats":[J
    .end local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v12    # "pids":[I
    .end local v15    # "NS":I
    .end local v16    # "stime":J
    .end local v23    # "minfaults":J
    .end local v25    # "utime":J
    .local v3, "pid":I
    .restart local v7    # "utime":J
    .restart local v9    # "uptime":J
    .restart local v11    # "minfaults":J
    .local v13, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .local v14, "stime":J
    .restart local v18    # "pids":[I
    .local v20, "NS":I
    .restart local v21    # "NP":I
    .restart local v28    # "procStats":[J
    .restart local v30    # "majfaults":J
    :goto_6
    iget-wide v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_uptime:J

    sub-long v1, v9, v1

    iput-wide v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_uptime:J

    .line 478
    iput-wide v9, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_uptime:J

    .line 479
    iget-wide v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    sub-long v1, v7, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 480
    iget-wide v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    sub-long v1, v14, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 481
    iput-wide v7, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    .line 482
    iput-wide v14, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    .line 483
    iget-wide v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    sub-long v1, v11, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 484
    iget-wide v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    sub-long v1, v30, v1

    long-to-int v1, v1

    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 485
    iput-wide v11, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    .line 486
    move-wide/from16 v1, v30

    .end local v30    # "majfaults":J
    .local v1, "majfaults":J
    iput-wide v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    .line 487
    const/4 v4, 0x1

    iput-boolean v4, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 488
    .end local v1    # "majfaults":J
    .end local v7    # "utime":J
    .end local v9    # "uptime":J
    .end local v11    # "minfaults":J
    .end local v14    # "stime":J
    .end local v28    # "procStats":[J
    goto :goto_7

    .line 432
    .end local v3    # "pid":I
    .end local v13    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v18    # "pids":[I
    .end local v20    # "NS":I
    .end local v21    # "NP":I
    .end local v27    # "i":I
    .local v1, "i":I
    .restart local v4    # "pid":I
    .restart local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
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

    .line 415
    .end local v1    # "i":I
    .end local v4    # "pid":I
    .end local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
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

    .line 423
    .end local v18    # "pids":[I
    .end local v19    # "curStatsIndex":I
    .end local v20    # "NS":I
    .end local v21    # "NP":I
    .end local v27    # "i":I
    .restart local v1    # "i":I
    .local v2, "curStatsIndex":I
    .restart local v4    # "pid":I
    .restart local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
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

    .line 493
    .end local v1    # "i":I
    .end local v4    # "pid":I
    .end local v6    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v12    # "pids":[I
    .end local v14    # "NP":I
    .end local v15    # "NS":I
    .restart local v3    # "pid":I
    .restart local v13    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .restart local v18    # "pids":[I
    .restart local v20    # "NS":I
    .restart local v21    # "NP":I
    .restart local v27    # "i":I
    :goto_8
    if-eqz v13, :cond_f

    iget v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->pid:I

    if-le v1, v3, :cond_e

    move-object/from16 v8, p5

    goto :goto_9

    .line 559
    :cond_e
    const/4 v1, 0x0

    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 560
    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 561
    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 562
    iput v1, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 563
    iput-boolean v4, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->removed:Z

    .line 564
    iput-boolean v4, v13, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 565
    move-object/from16 v8, p5

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 566
    add-int/lit8 v15, v20, -0x1

    .line 572
    .end local v20    # "NS":I
    .restart local v15    # "NS":I
    add-int/lit8 v1, v27, -0x1

    .line 573
    .end local v27    # "i":I
    .restart local v1    # "i":I
    move/from16 v7, p2

    move v14, v4

    goto/16 :goto_c

    .line 493
    .end local v1    # "i":I
    .end local v15    # "NS":I
    .restart local v20    # "NS":I
    .restart local v27    # "i":I
    :cond_f
    move-object/from16 v8, p5

    .line 495
    :goto_9
    new-instance v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    iget-boolean v6, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mIncludeThreads:Z

    move/from16 v7, p2

    invoke-direct {v1, v3, v7, v6}, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;-><init>(IIZ)V

    move-object v9, v1

    .line 496
    .end local v13    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .local v9, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    invoke-virtual {v8, v2, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 497
    add-int/lit8 v10, v2, 0x1

    .line 498
    .end local v2    # "curStatsIndex":I
    .local v10, "curStatsIndex":I
    add-int/lit8 v15, v20, 0x1

    .line 503
    .end local v20    # "NS":I
    .restart local v15    # "NS":I
    iget-object v11, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 504
    .local v11, "procStatsString":[Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcessFullStatsData:[J

    .line 505
    .local v12, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_uptime:J

    .line 506
    iget-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_FULL_STATS_FORMAT:[I

    invoke-static {v13, v1, v11, v12, v5}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 514
    const/4 v1, 0x5

    aget-wide v1, v12, v1

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->vsize:J

    .line 516
    iput-boolean v4, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    .line 517
    const/16 v22, 0x0

    aget-object v1, v11, v22

    iput-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    .line 518
    aget-wide v1, v12, v4

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    .line 519
    aget-wide v1, v12, v17

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    .line 520
    aget-wide v1, v12, v16

    iget-wide v5, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v1, v5

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    .line 521
    const/4 v1, 0x4

    aget-wide v1, v12, v1

    iget-wide v5, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v1, v5

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    goto :goto_a

    .line 525
    :cond_10
    const-string v1, "<unknown>"

    iput-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    .line 526
    const-wide/16 v1, 0x0

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_stime:J

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_utime:J

    .line 527
    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_majfaults:J

    iput-wide v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->base_minfaults:J

    .line 530
    :goto_a
    if-gez v7, :cond_12

    .line 531
    iget-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v0, v9, v1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->getName(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Ljava/lang/String;)V

    .line 532
    iget-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v1, :cond_11

    .line 533
    iget-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadsDir:Ljava/lang/String;

    move/from16 v32, v4

    iget-object v4, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    iget-object v5, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move v2, v3

    .end local v3    # "pid":I
    .local v2, "pid":I
    const/4 v3, 0x1

    move/from16 v14, v32

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ssrm/TopCpuUsageTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurThreadPids:[I

    goto :goto_b

    .line 532
    .end local v2    # "pid":I
    .restart local v3    # "pid":I
    :cond_11
    move v2, v3

    move v14, v4

    .end local v3    # "pid":I
    .restart local v2    # "pid":I
    goto :goto_b

    .line 536
    .end local v2    # "pid":I
    .restart local v3    # "pid":I
    :cond_12
    move v2, v3

    move v14, v4

    .end local v3    # "pid":I
    .restart local v2    # "pid":I
    iget-boolean v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    if-eqz v1, :cond_13

    .line 537
    iget-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 538
    iget-object v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->nameWidth:I

    .line 547
    :cond_13
    :goto_b
    const/4 v1, 0x0

    iput v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 548
    iput v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 549
    iput v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 550
    iput v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 551
    iput-boolean v14, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->added:Z

    .line 552
    if-nez p3, :cond_14

    iget-boolean v1, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->interesting:Z

    if-eqz v1, :cond_14

    .line 553
    iput-boolean v14, v9, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 415
    .end local v2    # "pid":I
    .end local v9    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
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

    .line 576
    .end local v1    # "i":I
    .end local v12    # "pids":[I
    .end local v14    # "NP":I
    .restart local v18    # "pids":[I
    .restart local v21    # "NP":I
    :goto_d
    if-ge v2, v15, :cond_16

    .line 578
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 579
    .local v1, "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    const/4 v3, 0x0

    iput v3, v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_utime:I

    .line 580
    iput v3, v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_stime:I

    .line 581
    iput v3, v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_minfaults:I

    .line 582
    iput v3, v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->rel_majfaults:I

    .line 583
    iput-boolean v14, v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->removed:Z

    .line 584
    iput-boolean v14, v1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    .line 585
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 586
    nop

    .end local v1    # "st":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    add-int/lit8 v15, v15, -0x1

    .line 589
    goto :goto_d

    .line 591
    :cond_16
    return-object v18
.end method

.method private getName(Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;Ljava/lang/String;)V
    .locals 5
    .param p1, "st"    # Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 778
    iget-object v0, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 779
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 780
    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 781
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 783
    move-object v0, v1

    .line 784
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 785
    .local v2, "i":I
    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 786
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 789
    .end local v2    # "i":I
    :cond_1
    if-nez v0, :cond_2

    .line 790
    iget-object v0, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->baseName:Ljava/lang/String;

    .line 793
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_2
    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 794
    :cond_3
    iput-object v0, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    .line 795
    iget-object v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->nameWidth:I

    .line 797
    :cond_4
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .line 752
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 753
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 755
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 756
    iget-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 757
    .local v2, "len":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 759
    if-lez v2, :cond_2

    .line 761
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 762
    iget-object v4, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    aget-byte v4, v4, v3

    if-ne v4, p2, :cond_0

    .line 763
    goto :goto_1

    .line 761
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBuffer:[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, v3, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 772
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 766
    return-object v4

    .line 759
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 771
    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 772
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 773
    throw v2

    .line 769
    :catch_0
    move-exception v2

    goto :goto_2

    .line 768
    :catch_1
    move-exception v2

    .line 771
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 772
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 773
    nop

    .line 774
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 7

    .line 672
    iget-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    .line 673
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 674
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 675
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 676
    iget-object v3, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 677
    .local v3, "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v4, :cond_2

    .line 678
    iget-object v4, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 680
    iget-object v2, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 681
    iget-object v2, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 682
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 683
    iget-object v5, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 684
    .local v5, "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 685
    iget-object v6, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v5    # "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 688
    .end local v4    # "j":I
    :cond_1
    iget-object v4, v3, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 675
    .end local v2    # "M":I
    .end local v3    # "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 692
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 693
    iput-boolean v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcsSorted:Z

    .line 695
    .end local v0    # "N":I
    :cond_4
    return-void
.end method

.method final buildWorkingThreads()V
    .locals 7

    .line 698
    iget-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreadsSorted:Z

    if-nez v0, :cond_4

    .line 699
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 700
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 701
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 702
    iget-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 703
    .local v2, "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v3, :cond_2

    .line 704
    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 705
    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 706
    iget-object v3, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 707
    .local v3, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 708
    iget-object v5, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    .line 709
    .local v5, "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    iget-boolean v6, v5, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 710
    iget-object v6, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v6, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .end local v5    # "tstats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 714
    .end local v4    # "j":I
    :cond_1
    iget-object v4, v2, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 701
    .end local v2    # "stats":Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .end local v3    # "M":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 718
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/server/ssrm/TopCpuUsageTracker;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 719
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreadsSorted:Z

    .line 721
    .end local v0    # "N":I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats(Z)I
    .locals 1
    .param p1, "includeThreads"    # Z

    .line 732
    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/server/ssrm/TopCpuUsageTracker;->buildWorkingThreads()V

    .line 734
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 736
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ssrm/TopCpuUsageTracker;->buildWorkingProcs()V

    .line 737
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 7
    .param p1, "pid"    # I

    .line 599
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSinglePidStatsData:[J

    monitor-enter v0

    .line 600
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

    .line 601
    .local v1, "statFile":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSinglePidStatsData:[J

    .line 602
    .local v2, "statsData":[J
    sget-object v3, Lcom/android/server/ssrm/TopCpuUsageTracker;->PROCESS_STATS_FORMAT:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    const/4 v3, 0x2

    aget-wide v3, v2, v3

    const/4 v5, 0x3

    aget-wide v5, v2, v5

    add-long/2addr v3, v5

    .line 604
    .local v3, "time":J
    iget-wide v5, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v5, v3

    monitor-exit v0

    return-wide v5

    .line 606
    .end local v3    # "time":J
    :cond_0
    monitor-exit v0

    const-wide/16 v3, 0x0

    return-wide v3

    .line 607
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

    .line 649
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .line 628
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .line 635
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSampleTime()J
    .locals 2

    .line 656
    iget-wide v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurrentSampleTime:J

    return-wide v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .line 621
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .line 614
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .locals 1
    .param p1, "index"    # I

    .line 728
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .line 664
    iget v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIdleTime:I

    add-int/2addr v0, v1

    .line 665
    .local v0, "denom":I
    if-gtz v0, :cond_0

    .line 666
    const/4 v1, 0x0

    return v1

    .line 668
    :cond_0
    iget v1, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    return v1
.end method

.method public final getWorkingStats(IZ)Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;
    .locals 1
    .param p1, "index"    # I
    .param p2, "includeThreads"    # Z

    .line 742
    if-eqz p2, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    return-object v0

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/TopCpuUsageTracker$Stats;

    return-object v0
.end method

.method public final hasGoodLastStats()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelStatsAreGood:Z

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

    .line 310
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/TopCpuUsageTracker;->update(Ljava/util/ArrayList;)V

    .line 312
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public update(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 318
    .local p1, "tarPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 320
    .local v8, "nowUptime":J
    iget-object v10, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mSystemCpuData:[J

    .line 321
    .local v10, "sysCpu":[J
    sget-object v0, Lcom/android/server/ssrm/TopCpuUsageTracker;->SYSTEM_CPU_FORMAT:[I

    const/4 v2, 0x0

    const-string v3, "/proc/stat"

    invoke-static {v3, v0, v2, v10, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 323
    aget-wide v2, v10, v11

    const/4 v0, 0x1

    aget-wide v4, v10, v0

    add-long/2addr v2, v4

    iget-wide v4, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v2, v4

    .line 325
    .local v2, "usertime":J
    const/4 v4, 0x2

    aget-wide v4, v10, v4

    iget-wide v6, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v4, v6

    .line 327
    .local v4, "systemtime":J
    const/4 v6, 0x3

    aget-wide v6, v10, v6

    iget-wide v12, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v6, v12

    .line 329
    .local v6, "idletime":J
    const/4 v12, 0x4

    aget-wide v12, v10, v12

    iget-wide v14, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v12, v14

    .line 330
    .local v12, "iowaittime":J
    const/4 v14, 0x5

    aget-wide v14, v10, v14

    move-wide/from16 v16, v12

    .end local v12    # "iowaittime":J
    .local v16, "iowaittime":J
    iget-wide v11, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long/2addr v14, v11

    .line 331
    .local v14, "irqtime":J
    const/4 v11, 0x6

    aget-wide v11, v10, v11

    move-object v13, v10

    move-wide/from16 v18, v11

    .end local v10    # "sysCpu":[J
    .local v13, "sysCpu":[J
    iget-wide v10, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mJiffyMillis:J

    mul-long v11, v18, v10

    .line 337
    .local v11, "softirqtime":J
    move-wide/from16 v18, v8

    .end local v8    # "nowUptime":J
    .local v18, "nowUptime":J
    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseUserTime:J

    cmp-long v8, v2, v8

    if-ltz v8, :cond_0

    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSystemTime:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_0

    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIoWaitTime:J

    cmp-long v8, v16, v8

    if-ltz v8, :cond_0

    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIrqTime:J

    cmp-long v8, v14, v8

    if-ltz v8, :cond_0

    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSoftIrqTime:J

    cmp-long v8, v11, v8

    if-ltz v8, :cond_0

    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIdleTime:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 340
    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseUserTime:J

    sub-long v8, v2, v8

    long-to-int v8, v8

    iput v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    .line 341
    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSystemTime:J

    sub-long v8, v4, v8

    long-to-int v8, v8

    iput v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    .line 342
    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIoWaitTime:J

    sub-long v8, v16, v8

    long-to-int v8, v8

    iput v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIoWaitTime:I

    .line 343
    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIrqTime:J

    sub-long v8, v14, v8

    long-to-int v8, v8

    iput v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    .line 344
    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSoftIrqTime:J

    sub-long v8, v11, v8

    long-to-int v8, v8

    iput v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSoftIrqTime:I

    .line 345
    iget-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIdleTime:J

    sub-long v8, v6, v8

    long-to-int v8, v8

    iput v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIdleTime:I

    .line 346
    iput-boolean v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelStatsAreGood:Z

    .line 358
    iput-wide v2, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseUserTime:J

    .line 359
    iput-wide v4, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSystemTime:J

    .line 360
    move-wide/from16 v8, v16

    .end local v16    # "iowaittime":J
    .local v8, "iowaittime":J
    iput-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIoWaitTime:J

    .line 361
    iput-wide v14, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIrqTime:J

    .line 362
    iput-wide v11, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseSoftIrqTime:J

    .line 363
    iput-wide v6, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mBaseIdleTime:J

    goto :goto_0

    .line 337
    .end local v8    # "iowaittime":J
    .restart local v16    # "iowaittime":J
    :cond_0
    move-wide/from16 v8, v16

    .line 366
    .end local v16    # "iowaittime":J
    .restart local v8    # "iowaittime":J
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelUserTime:I

    .line 367
    iput v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSystemTime:I

    .line 368
    iput v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIoWaitTime:I

    .line 369
    iput v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIrqTime:I

    .line 370
    iput v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelSoftIrqTime:I

    .line 371
    iput v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelIdleTime:I

    .line 372
    iput-boolean v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mRelStatsAreGood:Z

    .line 373
    const-string v0, "CfmsTopCpuUsageTracker"

    const-string v10, "/proc/stats has gone backwards; skipping CPU update"

    invoke-static {v0, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void

    .line 321
    .end local v2    # "usertime":J
    .end local v4    # "systemtime":J
    .end local v6    # "idletime":J
    .end local v11    # "softirqtime":J
    .end local v13    # "sysCpu":[J
    .end local v14    # "irqtime":J
    .end local v18    # "nowUptime":J
    .local v8, "nowUptime":J
    .restart local v10    # "sysCpu":[J
    :cond_1
    move-wide/from16 v18, v8

    move-object v13, v10

    .line 378
    .end local v8    # "nowUptime":J
    .end local v10    # "sysCpu":[J
    .restart local v13    # "sysCpu":[J
    .restart local v18    # "nowUptime":J
    :goto_0
    move-wide/from16 v8, v18

    .end local v18    # "nowUptime":J
    .restart local v8    # "nowUptime":J
    iput-wide v8, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurrentSampleTime:J

    .line 380
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v10

    .line 382
    .local v10, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    const-string v2, "/proc"

    iget-boolean v4, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    iget-object v5, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurPids:[I

    iget-object v6, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mProcStats:Ljava/util/ArrayList;

    const/4 v3, -0x1

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/ssrm/TopCpuUsageTracker;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;Ljava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mCurPids:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 385
    nop

    .line 391
    if-nez p1, :cond_2

    .line 392
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingProcsSorted:Z

    goto :goto_1

    .line 394
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mWorkingThreadsSorted:Z

    .line 396
    :goto_1
    iput-boolean v0, v1, Lcom/android/server/ssrm/TopCpuUsageTracker;->mFirst:Z

    .line 397
    return-void

    .line 384
    :catchall_0
    move-exception v0

    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 385
    throw v0
.end method
