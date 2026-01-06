.class public Lcom/samsung/sdk/sperf/PerformanceManager;
.super Ljava/lang/Object;
.source "PerformanceManager.java"


# static fields
.field protected static final PRESET_END:I = 0x100

.field protected static final PRESET_START:I = 0x40

.field public static final PRESET_TYPE_BUS:I = 0x100

.field public static final PRESET_TYPE_CPU:I = 0x40

.field public static final PRESET_TYPE_GPU:I = 0x80

.field private static mPerformanceManager:Lcom/samsung/sdk/sperf/PerformanceManager;

.field private static myPid:I

.field private static sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, -0x1

    sput v0, Lcom/samsung/sdk/sperf/PerformanceManager;->myPid:I

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sdk/sperf/PerformanceManager;->mPerformanceManager:Lcom/samsung/sdk/sperf/PerformanceManager;

    .line 32
    sput-object v0, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/sdk/sperf/PerformanceManager;
    .locals 3

    const-class v0, Lcom/samsung/sdk/sperf/PerformanceManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/samsung/sdk/sperf/PerformanceManager;->mPerformanceManager:Lcom/samsung/sdk/sperf/PerformanceManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/samsung/sdk/sperf/PerformanceManager;

    invoke-direct {v1}, Lcom/samsung/sdk/sperf/PerformanceManager;-><init>()V

    sput-object v1, Lcom/samsung/sdk/sperf/PerformanceManager;->mPerformanceManager:Lcom/samsung/sdk/sperf/PerformanceManager;

    .line 46
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SPerfManager;->createInstance(Landroid/content/Context;)Lcom/samsung/sdk/sperf/SPerfManager;

    move-result-object v2

    sput-object v2, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 47
    sget-object v2, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 48
    monitor-exit v0

    return-object v1

    .line 50
    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/sdk/sperf/PerformanceManager;->mPerformanceManager:Lcom/samsung/sdk/sperf/PerformanceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected static getPid()I
    .locals 1

    .line 23
    sget v0, Lcom/samsung/sdk/sperf/PerformanceManager;->myPid:I

    if-gez v0, :cond_0

    .line 24
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/samsung/sdk/sperf/PerformanceManager;->myPid:I

    .line 26
    :cond_0
    sget v0, Lcom/samsung/sdk/sperf/PerformanceManager;->myPid:I

    return v0
.end method


# virtual methods
.method public start(II)I
    .locals 1
    .param p1, "presetType"    # I
    .param p2, "timeout"    # I

    .line 91
    sget-object v0, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "SPerf has not initialized"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 93
    const/4 v0, -0x1

    return v0

    .line 95
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/sdk/sperf/SPerfManager;->startPresetBoost(II)I

    move-result v0

    return v0
.end method

.method public start(Lcom/samsung/sdk/sperf/CustomParams;)I
    .locals 3
    .param p1, "param"    # Lcom/samsung/sdk/sperf/CustomParams;

    .line 61
    sget-object v0, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 62
    const-string v0, "SPerf has not initialized"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 63
    return v1

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 66
    const-string v0, "CustomParams is null"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 67
    return v1

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/sdk/sperf/CustomParams;->getBoostObject()Lcom/samsung/sdk/sperf/BoostObject;

    move-result-object v0

    .line 70
    .local v0, "boostObj":Lcom/samsung/sdk/sperf/BoostObject;
    if-nez v0, :cond_2

    .line 71
    const-string v2, "CustomParams is not initialized"

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 72
    return v1

    .line 75
    :cond_2
    sget-object v1, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    invoke-virtual {v1, v0}, Lcom/samsung/sdk/sperf/SPerfManager;->startBoost(Lcom/samsung/sdk/sperf/BoostObject;)I

    move-result v1

    return v1
.end method

.method public stop()I
    .locals 1

    .line 107
    sget-object v0, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    if-nez v0, :cond_0

    .line 108
    const-string v0, "SPerf has not initialized"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 109
    const/4 v0, -0x1

    return v0

    .line 111
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/PerformanceManager;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    invoke-virtual {v0}, Lcom/samsung/sdk/sperf/SPerfManager;->stopBoost()I

    move-result v0

    return v0
.end method
