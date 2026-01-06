.class public final Lcom/android/server/ssrm/CustomCpuInfoReader;
.super Ljava/lang/Object;
.source "CustomCpuInfoReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;,
        Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;,
        Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;
    }
.end annotation


# static fields
.field private static final AFFECTED_CPUS_FILE:Ljava/lang/String; = "affected_cpus"

.field private static final CPUFREQ_DIR_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq"

.field private static final CPUS_FILE:Ljava/lang/String; = "cpus"

.field private static final CUR_SCALING_FREQ_FILE:Ljava/lang/String; = "scaling_cur_freq"

.field private static final DEBUG:Z = false

.field private static final MAX_SCALING_FREQ_FILE:Ljava/lang/String; = "scaling_max_freq"

.field private static final MILLIS_PER_CLOCK_TICK:J

.field private static final MIN_READ_INTERVAL_MILLISECONDS:J = 0x1f4L

.field private static final POLICY_DIR_PREFIX:Ljava/lang/String; = "policy"

.field private static final RELATED_CPUS_FILE:Ljava/lang/String; = "related_cpus"

.field private static final TAG:Ljava/lang/String; = "CustomCpuInfoReader"

.field private static final TIME_IN_STATE_FILE:Ljava/lang/String; = "stats/time_in_state"

.field private static final TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mCpuFreqDir:Ljava/io/File;

.field private final mCpuFreqPolicyDirsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeltaTimeInStateByPolicyId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseLongArray;",
            ">;"
        }
    .end annotation
.end field

.field private mHasTimeInStateFile:Z

.field private mIsEnabled:Z

.field private mLastReadCpuInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastReadUptimeMillis:J

.field private final mMinReadIntervalMillis:J

.field private final mStaticPolicyInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeInStateByPolicyId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseLongArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    nop

    .line 62
    const-string v0, "(?<freqKHz>[0-9]+)\\s(?<time>[0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    sput-wide v2, Lcom/android/server/ssrm/CustomCpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/cpufreq"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ssrm/CustomCpuInfoReader;-><init>(Ljava/io/File;J)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/io/File;J)V
    .locals 1
    .param p1, "cpuFreqDir"    # Ljava/io/File;
    .param p2, "minReadIntervalMillis"    # J

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mDeltaTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 85
    iput-wide p2, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mMinReadIntervalMillis:J

    .line 86
    return-void
.end method

.method private static calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J
    .locals 9
    .param p0, "timeInState"    # Landroid/util/LongSparseLongArray;

    .line 405
    const-wide/16 v0, 0x0

    .line 406
    .local v0, "totalTimeInState":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 407
    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v3

    long-to-double v3, v3

    add-double/2addr v0, v3

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v2    # "i":I
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    .line 410
    const-wide/16 v2, 0x0

    return-wide v2

    .line 412
    :cond_1
    const-wide/16 v2, 0x0

    .line 413
    .local v2, "avgFreqKHz":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 414
    invoke-virtual {p0, v4}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {p0, v4}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v7

    mul-long/2addr v5, v7

    long-to-double v5, v5

    div-double/2addr v5, v0

    add-double/2addr v2, v5

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 416
    .end local v4    # "i":I
    :cond_2
    double-to-long v4, v2

    return-wide v4
.end method

.method private static calculateDeltaTimeInState(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Landroid/util/LongSparseLongArray;
    .locals 11
    .param p0, "prevTimeInState"    # Landroid/util/LongSparseLongArray;
    .param p1, "latestTimeInState"    # Landroid/util/LongSparseLongArray;

    .line 381
    invoke-virtual {p1}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    .line 382
    .local v0, "numTimeInStateEntries":I
    new-instance v1, Landroid/util/LongSparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 389
    .local v1, "deltaTimeInState":Landroid/util/LongSparseLongArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 390
    invoke-virtual {p1, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v3

    .line 391
    .local v3, "freq":J
    invoke-virtual {p1, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v5

    .line 392
    .local v5, "durationMillis":J
    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v7

    .line 394
    .local v7, "prevDurationMillis":J
    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 395
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "freq = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", duration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", prevDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CustomCpuInfoReader"

    invoke-static {v10, v9}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    cmp-long v9, v5, v7

    if-ltz v9, :cond_1

    .line 399
    sub-long v9, v5, v7

    goto :goto_1

    :cond_1
    move-wide v9, v5

    .line 398
    :goto_1
    invoke-virtual {v1, v3, v4, v9, v10}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 389
    .end local v3    # "freq":J
    .end local v5    # "durationMillis":J
    .end local v7    # "prevDurationMillis":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 401
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private static clockTickStrToMillis(Ljava/lang/String;)J
    .locals 4
    .param p0, "jiffyStr"    # Ljava/lang/String;

    .line 475
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/ssrm/CustomCpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic lambda$init$0(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 103
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "policy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private populateCpuFreqPolicyDirsById([Ljava/io/File;)V
    .locals 5
    .param p1, "policyDirs"    # [Ljava/io/File;

    .line 237
    iget-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 239
    aget-object v1, p1, v0

    .line 240
    .local v1, "policyDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "policy"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "policyIdStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    goto :goto_1

    .line 244
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 238
    .end local v1    # "policyDir":Ljava/io/File;
    .end local v2    # "policyIdStr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private readAvgTimeInStateCpuFrequency(ILjava/io/File;)J
    .locals 5
    .param p1, "policyId"    # I
    .param p2, "policyDir"    # Ljava/io/File;

    .line 307
    invoke-direct {p0, p2}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readTimeInState(Ljava/io/File;)Landroid/util/LongSparseLongArray;

    move-result-object v0

    .line 308
    .local v0, "latestTimeInState":Landroid/util/LongSparseLongArray;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseLongArray;

    .line 312
    .local v1, "prevTimeInState":Landroid/util/LongSparseLongArray;
    if-nez v1, :cond_1

    .line 313
    iget-object v2, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    iget-object v2, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mDeltaTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    invoke-static {v0}, Lcom/android/server/ssrm/CustomCpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    move-result-wide v2

    return-wide v2

    .line 320
    :cond_1
    invoke-static {v1, v0}, Lcom/android/server/ssrm/CustomCpuInfoReader;->calculateDeltaTimeInState(Landroid/util/LongSparseLongArray;Landroid/util/LongSparseLongArray;)Landroid/util/LongSparseLongArray;

    move-result-object v2

    .line 322
    .local v2, "deltaTimeInState":Landroid/util/LongSparseLongArray;
    iget-object v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    iget-object v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mDeltaTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    invoke-static {v2}, Lcom/android/server/ssrm/CustomCpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    move-result-wide v3

    return-wide v3

    .line 309
    .end local v1    # "prevTimeInState":Landroid/util/LongSparseLongArray;
    .end local v2    # "deltaTimeInState":Landroid/util/LongSparseLongArray;
    :cond_2
    :goto_0
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private static readCpuCores(Ljava/io/File;)Landroid/util/IntArray;
    .locals 14
    .param p0, "file"    # Ljava/io/File;

    .line 431
    const-string v0, ","

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "CustomCpuInfoReader"

    if-nez v1, :cond_0

    .line 432
    nop

    .line 433
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 432
    const-string v1, "Failed to read CPU cores as the file \'%s\' doesn\'t exist"

    invoke-static {v3, v1, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    return-object v2

    .line 437
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v1

    .line 438
    .local v1, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/IntArray;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/util/IntArray;-><init>(I)V

    .line 439
    .local v4, "cpuCores":Landroid/util/IntArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 440
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 441
    .local v7, "line":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 442
    goto :goto_5

    .line 444
    :cond_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 445
    :cond_2
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    :goto_1
    nop

    .line 446
    .local v8, "pairs":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    array-length v10, v8

    if-ge v9, v10, :cond_7

    .line 447
    aget-object v10, v8, v9

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 448
    .local v10, "minMaxPairs":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-lt v11, v12, :cond_5

    .line 449
    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 450
    .local v11, "min":I
    aget-object v12, v10, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 451
    .local v12, "max":I
    if-le v11, v12, :cond_3

    .line 452
    goto :goto_4

    .line 454
    :cond_3
    move v13, v11

    .local v13, "id":I
    :goto_3
    if-gt v13, v12, :cond_4

    .line 455
    invoke-virtual {v4, v13}, Landroid/util/IntArray;->add(I)V

    .line 454
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 457
    .end local v11    # "min":I
    .end local v12    # "max":I
    .end local v13    # "id":I
    :cond_4
    goto :goto_4

    :cond_5
    array-length v11, v10

    if-ne v11, v13, :cond_6

    .line 458
    aget-object v11, v10, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v4, v11}, Landroid/util/IntArray;->add(I)V

    goto :goto_4

    .line 460
    :cond_6
    const-string v11, "Invalid CPU core range format %s"

    aget-object v12, v8, v9

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v3, v11, v12}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v10    # "minMaxPairs":[Ljava/lang/String;
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 439
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "pairs":[Ljava/lang/String;
    .end local v9    # "j":I
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 464
    .end local v6    # "i":I
    :cond_8
    return-object v4

    .line 468
    .end local v1    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "cpuCores":Landroid/util/IntArray;
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "Failed to read CPU cores from %s"

    invoke-static {v3, v0, v4, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 465
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/NumberFormatException;
    nop

    .line 467
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 466
    const-string v4, "Failed to read CPU cores from %s due to incorrect file format"

    invoke-static {v3, v0, v4, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    nop

    .line 471
    :goto_6
    return-object v2
.end method

.method private static readCpuFreqKHz(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 362
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CustomCpuInfoReader"

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    .line 363
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "CPU frequency file %s doesn\'t exist"

    invoke-static {v1, v4, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    return-wide v2

    .line 367
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v0

    .line 368
    .local v0, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 369
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    .local v4, "frequency":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    move-wide v2, v4

    :cond_1
    return-wide v2

    .line 374
    .end local v0    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "frequency":J
    :cond_2
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Failed to read integer content from file: %s"

    invoke-static {v1, v0, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v2
.end method

.method private readDynamicPolicyInfo()Landroid/util/SparseArray;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;",
            ">;"
        }
    .end annotation

    .line 272
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 273
    .local v1, "dynamicPolicyInfoById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 274
    iget-object v3, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 275
    .local v3, "policyId":I
    iget-object v4, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 276
    .local v4, "policyDir":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "scaling_cur_freq"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    move-result-wide v8

    .line 277
    .local v8, "curCpuFreqKHz":J
    const-wide/16 v5, 0x0

    cmp-long v7, v8, v5

    const-string v10, "CustomCpuInfoReader"

    if-nez v7, :cond_0

    .line 278
    nop

    .line 279
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 278
    const-string v6, "Missing current frequency information at %s"

    invoke-static {v10, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    goto :goto_2

    .line 282
    :cond_0
    invoke-direct {v0, v3, v4}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readAvgTimeInStateCpuFrequency(ILjava/io/File;)J

    move-result-wide v12

    .line 283
    .local v12, "avgTimeInStateCpuFreqKHz":J
    new-instance v7, Ljava/io/File;

    const-string v11, "affected_cpus"

    invoke-direct {v7, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v7

    .line 284
    .local v15, "cpuCoresFile":Ljava/io/File;
    invoke-static {v15}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v14

    .line 285
    .local v14, "affectedCpuCores":Landroid/util/IntArray;
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/util/IntArray;->size()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 289
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v11, "scaling_max_freq"

    invoke-direct {v7, v4, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    move-result-wide v16

    .line 290
    .local v16, "maxCpuFreqKHz":J
    cmp-long v5, v16, v5

    if-nez v5, :cond_2

    .line 291
    nop

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 291
    const-string v6, "Missing max CPU frequency information at %s"

    invoke-static {v10, v6, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    goto :goto_2

    .line 295
    :cond_2
    new-instance v7, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;

    move-wide/from16 v10, v16

    .end local v16    # "maxCpuFreqKHz":J
    .local v10, "maxCpuFreqKHz":J
    invoke-direct/range {v7 .. v14}, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;-><init>(JJJLandroid/util/IntArray;)V

    .line 297
    .local v7, "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    invoke-virtual {v1, v3, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 286
    .end local v7    # "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    .end local v10    # "maxCpuFreqKHz":J
    :cond_3
    :goto_1
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Failed to read CPU cores from %s"

    invoke-static {v10, v6, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    nop

    .line 273
    .end local v3    # "policyId":I
    .end local v4    # "policyDir":Ljava/io/File;
    .end local v8    # "curCpuFreqKHz":J
    .end local v12    # "avgTimeInStateCpuFreqKHz":J
    .end local v14    # "affectedCpuCores":Landroid/util/IntArray;
    .end local v15    # "cpuCoresFile":Ljava/io/File;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 303
    .end local v2    # "i":I
    :cond_4
    return-object v1
.end method

.method private readStaticPolicyInfo()V
    .locals 8

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 254
    .local v1, "policyId":I
    iget-object v2, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 255
    .local v2, "policyDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v4, "related_cpus"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 256
    .local v3, "cpuCoresFile":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    move-result-object v4

    .line 257
    .local v4, "relatedCpuCores":Landroid/util/IntArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 262
    :cond_0
    new-instance v5, Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;

    invoke-direct {v5, v4}, Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;-><init>(Landroid/util/IntArray;)V

    .line 263
    .local v5, "staticPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;
    iget-object v6, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v1, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 258
    .end local v5    # "staticPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;
    :cond_1
    :goto_1
    nop

    .line 259
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 258
    const-string v6, "CustomCpuInfoReader"

    const-string v7, "Failed to read related CPU cores from %s"

    invoke-static {v6, v7, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    nop

    .line 252
    .end local v1    # "policyId":I
    .end local v2    # "policyDir":Ljava/io/File;
    .end local v3    # "cpuCoresFile":Ljava/io/File;
    .end local v4    # "relatedCpuCores":Landroid/util/IntArray;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private readTimeInState(Ljava/io/File;)Landroid/util/LongSparseLongArray;
    .locals 11
    .param p1, "policyDir"    # Ljava/io/File;

    .line 334
    const-string v0, "CustomCpuInfoReader"

    iget-boolean v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mHasTimeInStateFile:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 335
    return-object v2

    .line 337
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "stats/time_in_state"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v1, "timeInStateFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    move-result-object v3

    .line 340
    .local v3, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    const-string v4, "Empty time in state file at %s"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    return-object v2

    .line 344
    :cond_1
    new-instance v4, Landroid/util/LongSparseLongArray;

    invoke-direct {v4}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 345
    .local v4, "cpuTimeByFrequencies":Landroid/util/LongSparseLongArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 346
    sget-object v6, Lcom/android/server/ssrm/CustomCpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 347
    .local v6, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 348
    goto :goto_1

    .line 350
    :cond_2
    const-string v7, "freqKHz"

    invoke-virtual {v6, v7}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "time"

    .line 351
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ssrm/CustomCpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    move-result-wide v9

    .line 350
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/util/LongSparseLongArray;->put(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v6    # "m":Ljava/util/regex/Matcher;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 353
    .end local v5    # "i":I
    :cond_3
    return-object v4

    .line 354
    .end local v3    # "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "cpuTimeByFrequencies":Landroid/util/LongSparseLongArray;
    :catch_0
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/Exception;
    nop

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 355
    const-string v5, "Failed to read CPU time in state from file: %s"

    invoke-static {v0, v3, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    .end local v3    # "e":Ljava/lang/Exception;
    return-object v2
.end method


# virtual methods
.method public init()Z
    .locals 7

    .line 98
    iget-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, "CustomCpuInfoReader"

    if-lez v0, :cond_0

    .line 99
    const-string v0, "Ignoring duplicate CpuInfoReader init request"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mIsEnabled:Z

    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/ssrm/CustomCpuInfoReader$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/ssrm/CustomCpuInfoReader$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 104
    .local v0, "policyDirs":[Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    array-length v3, v0

    if-nez v3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/ssrm/CustomCpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    .line 110
    iget-object v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 111
    nop

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 111
    const-string v4, "Failed to parse CPU frequency policy directory paths: %s"

    invoke-static {v1, v4, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return v2

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readStaticPolicyInfo()V

    .line 116
    iget-object v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 117
    nop

    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 117
    const-string v4, "Failed to read static CPU frequency policy info from policy dirs: %s"

    invoke-static {v1, v4, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return v2

    .line 126
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mHasTimeInStateFile:Z

    if-nez v3, :cond_4

    .line 130
    iget-boolean v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mHasTimeInStateFile:Z

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    const-string v6, "stats/time_in_state"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mHasTimeInStateFile:Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "i":I
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mHasTimeInStateFile:Z

    if-nez v2, :cond_5

    .line 134
    const-string v2, "Time in state file not available for any cpufreq policy"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mIsEnabled:Z

    .line 141
    return v1

    .line 105
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 106
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 105
    const-string v4, "Missing CPU frequency policy directories at %s"

    invoke-static {v1, v4, v3}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return v2
.end method

.method public readCpuInfos()Landroid/util/SparseArray;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;",
            ">;"
        }
    .end annotation

    .line 157
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mIsEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 158
    return-object v2

    .line 160
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 161
    .local v3, "uptimeMillis":J
    iget-wide v5, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mLastReadUptimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    const-string v5, "CustomCpuInfoReader"

    if-lez v1, :cond_1

    iget-wide v9, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mLastReadUptimeMillis:J

    sub-long v9, v3, v9

    iget-wide v11, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mMinReadIntervalMillis:J

    cmp-long v1, v9, v11

    if-gez v1, :cond_1

    .line 163
    iget-wide v1, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mLastReadUptimeMillis:J

    sub-long v1, v3, v1

    .line 165
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v6, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mMinReadIntervalMillis:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 163
    const-string v2, "Skipping reading from device and returning the last read CpuInfos. Last read was %d ms ago, min read interval is %d ms"

    invoke-static {v5, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object v1, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    return-object v1

    .line 168
    :cond_1
    iput-wide v3, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mLastReadUptimeMillis:J

    .line 169
    iput-object v2, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 171
    invoke-direct {v0}, Lcom/android/server/ssrm/CustomCpuInfoReader;->readDynamicPolicyInfo()Landroid/util/SparseArray;

    move-result-object v1

    .line 172
    .local v1, "dynamicPolicyInfoById":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 173
    const-string v6, "Failed to read dynamic policy infos"

    invoke-static {v5, v6}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v2

    .line 177
    :cond_2
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 179
    .local v2, "cpuInfoByCpus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v9, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v6, v9, :cond_9

    .line 180
    iget-object v9, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 181
    .local v11, "policyId":I
    iget-object v9, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;

    .line 182
    .local v9, "staticPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;
    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;

    .line 183
    .local v10, "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    if-nez v10, :cond_3

    .line 184
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Missing dynamic policy info for policy ID %d"

    invoke-static {v5, v13, v12}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    goto/16 :goto_3

    .line 187
    :cond_3
    iget-wide v12, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    cmp-long v12, v12, v7

    if-eqz v12, :cond_8

    iget-wide v12, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    cmp-long v12, v12, v7

    if-nez v12, :cond_4

    move-object v7, v10

    goto/16 :goto_2

    .line 199
    :cond_4
    iget-wide v12, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    iget-wide v14, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_5

    .line 200
    iget-wide v12, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 202
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v12

    .line 200
    const-string v13, "Current CPU frequency (%d) is greater than maximum CPU frequency (%d) for policy ID (%d). Skipping CPU frequency policy"

    invoke-static {v5, v13, v12}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_5
    iget-object v12, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mDeltaTimeInStateByPolicyId:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/LongSparseLongArray;

    .line 208
    .local v12, "deltaTimeInstate":Landroid/util/LongSparseLongArray;
    if-nez v12, :cond_6

    .line 209
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "Missing time in state for policy ID %d"

    invoke-static {v5, v14, v13}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    goto :goto_3

    .line 213
    :cond_6
    const-wide/16 v13, 0x0

    .line 214
    .local v13, "totalTimeInState":J
    const/4 v15, 0x0

    move-wide/from16 v18, v13

    .end local v13    # "totalTimeInState":J
    .local v15, "j":I
    .local v18, "totalTimeInState":J
    :goto_1
    invoke-virtual {v12}, Landroid/util/LongSparseLongArray;->size()I

    move-result v13

    if-ge v15, v13, :cond_7

    .line 215
    invoke-virtual {v12, v15}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v13

    add-long v18, v18, v13

    .line 214
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 218
    .end local v15    # "j":I
    :cond_7
    new-instance v13, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;

    move-object/from16 v20, v12

    move-object v14, v13

    .end local v12    # "deltaTimeInstate":Landroid/util/LongSparseLongArray;
    .local v20, "deltaTimeInstate":Landroid/util/LongSparseLongArray;
    iget-wide v12, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    move-object/from16 v16, v14

    iget-wide v14, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    iget-wide v7, v10, Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    move-wide/from16 v21, v7

    move-object v7, v10

    move-object/from16 v10, v16

    move-wide/from16 v16, v21

    .end local v10    # "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    .local v7, "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    invoke-direct/range {v10 .. v20}, Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;-><init>(IJJJJLandroid/util/LongSparseLongArray;)V

    move-object/from16 v16, v10

    move-object/from16 v8, v16

    .line 221
    .local v8, "cpuInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;
    invoke-virtual {v2, v11, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_3

    .line 187
    .end local v7    # "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    .end local v8    # "cpuInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$CpuFreqInfo;
    .end local v18    # "totalTimeInState":J
    .end local v20    # "deltaTimeInstate":Landroid/util/LongSparseLongArray;
    .restart local v10    # "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    :cond_8
    move-object v7, v10

    .line 189
    .end local v10    # "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    .restart local v7    # "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    :goto_2
    nop

    .line 190
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 189
    const-string v10, "Current and maximum CPU frequency information mismatch/missing for policy ID %d"

    invoke-static {v5, v10, v8}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    nop

    .line 179
    .end local v7    # "dynamicPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$DynamicPolicyInfo;
    .end local v9    # "staticPolicyInfo":Lcom/android/server/ssrm/CustomCpuInfoReader$StaticPolicyInfo;
    .end local v11    # "policyId":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x0

    goto/16 :goto_0

    .line 227
    .end local v6    # "i":I
    :cond_9
    iput-object v2, v0, Lcom/android/server/ssrm/CustomCpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 233
    return-object v2
.end method
