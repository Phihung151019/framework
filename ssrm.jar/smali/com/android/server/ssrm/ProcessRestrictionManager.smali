.class public Lcom/android/server/ssrm/ProcessRestrictionManager;
.super Ljava/lang/Object;
.source "ProcessRestrictionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;,
        Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    }
.end annotation


# static fields
.field private static final AID_OEM_RESERVED_END:I = 0x176f

.field private static final AID_OEM_RESERVED_START:I = 0x1388

.field static final DEBUG:Z = false

.field static DEBUG_OPTION:Z = false

.field private static final FAIL:I = -0x1

.field static FROZEN_TIME:I = 0x0

.field private static final SUCCESS:I = 0x1

.field static final TAG:Ljava/lang/String;

.field static THAWED_TIME:I

.field static mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;",
            ">;"
        }
    .end annotation
.end field

.field private static sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/ssrm/CircularBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;


# instance fields
.field mIsThreadRunning:Z

.field mLastTimeMs:I

.field mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

.field mSlowdownThread:Ljava/lang/Thread;


# direct methods
.method static bridge synthetic -$$Nest$smfreezeProcessForMars(IIZ)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/ssrm/ProcessRestrictionManager;->freezeProcessForMars(IIZ)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/android/server/ssrm/ProcessRestrictionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    .line 32
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 34
    sput v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->THAWED_TIME:I

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 121
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I

    .line 57
    new-instance v1, Lcom/android/server/ssrm/CircularBuffer;

    const/16 v2, 0x1f4

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/CircularBuffer;-><init>(I)V

    sput-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    .line 58
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 59
    invoke-static {v0}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 61
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v2, "/dev/freezer/abnormal/tasks"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->readSysfsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "slowdownLists":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 63
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "pids":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 65
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 67
    :try_start_0
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "slowPid":I
    invoke-static {v4}, Landroid/os/Process;->getUidForPid(I)I

    move-result v5

    .line 69
    .local v5, "slowUid":I
    const/16 v6, 0x2710

    if-ge v5, v6, :cond_0

    const/16 v6, 0x1388

    if-lt v5, v6, :cond_1

    const/16 v6, 0x176f

    if-gt v5, v6, :cond_1

    .line 72
    :cond_0
    invoke-static {v4, v5, v0}, Landroid/os/Process;->setProcessSlowdown(IIZ)Z

    .line 73
    const-string v6, "THAWED by intialization"

    invoke-static {v4, v5, v6}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v4    # "slowPid":I
    .end local v5    # "slowUid":I
    :cond_1
    goto :goto_1

    .line 75
    :catch_0
    move-exception v4

    .line 76
    .local v4, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 65
    .end local v4    # "nfe":Ljava/lang/NumberFormatException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v2    # "pids":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    new-instance v0, Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    invoke-direct {v0}, Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    .line 83
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    .line 84
    return-void
.end method

.method static addHistory(IILjava/lang/String;)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "state"    # Ljava/lang/String;

    .line 451
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-eqz v0, :cond_0

    .line 452
    nop

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 452
    const-string v2, "yyyy-MM-dd kk:mm:ss "

    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    .local v0, "strTime":Ljava/lang/String;
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[PRM] PID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", UID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", STAE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/CircularBuffer;->put(Ljava/lang/Object;)V

    .line 457
    .end local v0    # "strTime":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static freezeProcessForMars(IIZ)I
    .locals 3
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "freeze"    # Z

    .line 150
    const/4 v0, -0x1

    .line 151
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getInstance()Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->getUsingCgroupVersion()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 152
    invoke-static {p0, p1, p2}, Landroid/os/Process;->setProcessFrozen(IIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    goto :goto_1

    .line 154
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/os/Process;->setProcessMARsFrozen(IIZ)Z

    .line 155
    const/4 v1, 0x1

    .line 157
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :goto_1
    return v1
.end method

.method public static getFrozenTime()I
    .locals 2

    .line 468
    const-string v0, "dev.sdhms.frozen_time"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "result":Ljava/lang/String;
    const/16 v1, -0x3e7

    return v1
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ssrm/ProcessRestrictionManager;
    .locals 2

    const-class v0, Lcom/android/server/ssrm/ProcessRestrictionManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/android/server/ssrm/ProcessRestrictionManager;

    invoke-direct {v1}, Lcom/android/server/ssrm/ProcessRestrictionManager;-><init>()V

    sput-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;

    .line 52
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->sProcessRestrictionManager:Lcom/android/server/ssrm/ProcessRestrictionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getThawedTime()I
    .locals 2

    .line 460
    const-string v0, "dev.sdhms.thawed_time"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "result":Ljava/lang/String;
    const/16 v1, -0x3e7

    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 476
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "---------------------------------------\n"

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .local v0, "rpList":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n\n[Process Restriction State : SlowdownTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v2, "\n---------------------------------------\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 481
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 482
    .local v4, "pid":Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 483
    .local v5, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " PID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {v5}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->-$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "THAWED"

    goto :goto_1

    .line 485
    :cond_0
    invoke-static {v5}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->-$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 486
    const-string v6, "FROZEN"

    goto :goto_1

    :cond_1
    const-string v6, "SLOWDOWN"

    :goto_1
    nop

    .line 487
    .local v6, "status":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v7, "yyyy-MM-dd kk:mm:ss "

    iget-wide v8, v5, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mLastStateUpdatedTime:J

    invoke-static {v7, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 490
    .local v7, "strTime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [UPDATE TIME : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    .end local v4    # "pid":Ljava/lang/Integer;
    .end local v5    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    .end local v6    # "status":Ljava/lang/String;
    .end local v7    # "strTime":Ljava/lang/String;
    goto :goto_0

    .line 492
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    .end local v0    # "rpList":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->getSize()I

    move-result v0

    if-lez v0, :cond_5

    .line 497
    const-string v0, "\n[ProcessRestriction History]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v0}, Lcom/android/server/ssrm/CircularBuffer;->get()[Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "history":[Ljava/lang/String;
    if-eqz v0, :cond_4

    array-length v2, v0

    if-lez v2, :cond_4

    .line 500
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 501
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 504
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    .end local v0    # "history":[Ljava/lang/String;
    goto :goto_4

    .line 506
    :cond_5
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sHistoryCircularBuffer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 507
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    if-nez v2, :cond_6

    const-string v2, "NULL"

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->sHistoryCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v2}, Lcom/android/server/ssrm/CircularBuffer;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_4
    return-void
.end method

.method isSlowTargetExist()Z
    .locals 6

    .line 251
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 252
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 255
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 256
    .local v3, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->-$$Nest$fgetmLastState(Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 257
    return v5

    .line 259
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    :cond_0
    goto :goto_0

    .line 260
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method declared-synchronized manageProcessRestrictionState(IIZLjava/lang/String;)I
    .locals 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "isEnabled"    # Z
    .param p4, "type"    # Ljava/lang/String;

    monitor-enter p0

    .line 87
    const/4 v0, -0x1

    .line 89
    .local v0, "result":I
    :try_start_0
    sget-boolean v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v1, :cond_0

    .line 90
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageProcessRestrictionState: pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local p0    # "this":Lcom/android/server/ssrm/ProcessRestrictionManager;
    :cond_0
    const-string v1, "freeze"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "slowdown"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "release"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_4

    .line 96
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageProcessRestrictionState: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 97
    sget-object v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_3

    const-string v3, ", mRestrictedProcessList is NULL!"

    goto :goto_0

    :cond_3
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return v0

    .line 101
    :cond_4
    :try_start_1
    const-string v1, "release"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {p1, p2, v2}, Lcom/android/server/ssrm/ProcessRestrictionManager;->freezeProcessForMars(IIZ)I

    move-result v1

    .line 104
    .end local v0    # "result":I
    .local v1, "result":I
    invoke-static {p1, p2, v2}, Landroid/os/Process;->setProcessSlowdown(IIZ)Z

    .line 105
    const-string v0, "THAWED by release type"

    invoke-static {p1, p2, v0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->slowdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit p0

    return v1

    .line 110
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_5
    :try_start_2
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    invoke-virtual {v1, p4, p3}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->updateState(Ljava/lang/String;Z)V

    goto :goto_3

    .line 113
    :cond_6
    new-instance v1, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    const/4 v3, 0x1

    if-eqz p3, :cond_7

    const-string v4, "freeze"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_1

    :cond_7
    move v4, v2

    :goto_1
    if-eqz p3, :cond_8

    const-string v5, "slowdown"

    .line 114
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v2, v3

    goto :goto_2

    :cond_8
    nop

    :goto_2
    invoke-direct {v1, p1, p2, v4, v2}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;-><init>(IIZZ)V

    .line 115
    .local v1, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .end local v1    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/ProcessRestrictionManager;->updateProcessRestrictionLocked(I)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 86
    .end local v0    # "result":I
    .end local p1    # "pid":I
    .end local p2    # "uid":I
    .end local p3    # "isEnabled":Z
    .end local p4    # "type":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method declared-synchronized releaseAllSlowdown()V
    .locals 7

    monitor-enter p0

    .line 161
    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseAllSlowdown"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 165
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 166
    .local v3, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->isSlowdownState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    iget v4, v3, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->mPid:I

    const-string v5, "THAWN by releaseAllSlowdown"

    const/4 v6, -0x1

    invoke-static {v4, v6, v5}, Lcom/android/server/ssrm/ProcessRestrictionManager;->addHistory(IILjava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->releaseSlowdown()V

    .line 169
    sget-object v4, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    .end local p0    # "this":Lcom/android/server/ssrm/ProcessRestrictionManager;
    :cond_0
    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->slowdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_2
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized setFrozenTime(I)V
    .locals 3
    .param p1, "timeMs"    # I

    monitor-enter p0

    .line 124
    :try_start_0
    sget-boolean v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->DEBUG_OPTION:Z

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrozenTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local p0    # "this":Lcom/android/server/ssrm/ProcessRestrictionManager;
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I

    if-eq v0, p1, :cond_4

    .line 128
    if-lez p1, :cond_2

    .line 129
    const-class v0, Lcom/android/server/ssrm/ProcessRestrictionManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 130
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_1

    :try_start_1
    div-int/lit16 v1, p1, 0x3e8

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 130
    :cond_1
    move v1, p1

    :goto_0
    sput v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 131
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->updateProcessRestrictionLocked()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 131
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 134
    :cond_2
    const-class v0, Lcom/android/server/ssrm/ProcessRestrictionManager;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 135
    const/16 v1, 0x64

    :try_start_5
    sput v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->FROZEN_TIME:I

    .line 136
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    :try_start_6
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    iput-boolean v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 139
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 140
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v2, "slowdown: stop"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_3
    invoke-static {v1}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->releaseAllSlowdown()V

    .line 145
    :goto_2
    iput p1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mLastTimeMs:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    .line 136
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 147
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 123
    .end local p1    # "timeMs":I
    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1
.end method

.method slowdown()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->isSlowTargetExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 235
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdown:Lcom/android/server/ssrm/ProcessRestrictionManager$SlowdownRunnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    .line 236
    iget-object v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    sget-object v0, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v1, "slowdown: start"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mIsThreadRunning:Z

    .line 243
    iget-object v1, p0, Lcom/android/server/ssrm/ProcessRestrictionManager;->mSlowdownThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 244
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v2, "slowdown: stop"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {v0}, Landroid/os/Process;->enableSlowdown(Z)V

    .line 248
    :cond_1
    :goto_0
    return-void
.end method

.method updateProcessRestrictionLocked()I
    .locals 7

    .line 177
    const/4 v0, 0x1

    .line 178
    .local v0, "result":I
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 186
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 187
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 188
    .local v4, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->proceedRestriction()I

    move-result v5

    if-ne v5, v2, :cond_1

    .line 189
    const/4 v0, -0x1

    .line 192
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->isNotTargetPid()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;>;"
    .end local v4    # "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    :cond_2
    goto :goto_0

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->slowdown()V

    .line 198
    return v0

    .line 179
    :cond_4
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessRestrictionLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    sget-object v4, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v4, :cond_5

    .line 181
    const-string v4, "mRestrictedProcessList is NULL!"

    goto :goto_2

    .line 182
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRestrictedProcessList size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return v2
.end method

.method updateProcessRestrictionLocked(I)I
    .locals 6
    .param p1, "pid"    # I

    .line 202
    const/4 v0, 0x1

    .line 204
    .local v0, "result":I
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 205
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    const-string v3, "updateProcessRestrictionLocked: mRestrictedProcessList is NULL!"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v2

    .line 209
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;

    .line 211
    .local v1, "rp":Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;
    if-nez v1, :cond_1

    .line 212
    sget-object v3, Lcom/android/server/ssrm/ProcessRestrictionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateProcessRestrictionLocked: mRestrictedProcessList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return v2

    .line 216
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->proceedRestriction()I

    move-result v0

    .line 218
    if-ne v0, v2, :cond_2

    .line 219
    return v2

    .line 222
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/ssrm/ProcessRestrictionManager$RestrictedProcess;->isNotTargetPid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    sget-object v2, Lcom/android/server/ssrm/ProcessRestrictionManager;->mRestrictedProcessList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/ProcessRestrictionManager;->slowdown()V

    .line 228
    return v0
.end method
