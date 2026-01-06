.class Lcom/samsung/sdk/sperf/SPerfManager;
.super Ljava/lang/Object;
.source "SPerfManager.java"


# static fields
.field private static boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/samsung/sdk/sperf/SPerfManager;

.field private static nextBoostObjectID:I

.field private static releaserHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static sPerfThread:Lcom/samsung/sdk/sperf/SPerfInitThread;

.field private static sessionControl:Lcom/samsung/sdk/sperf/SessionControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/samsung/sdk/sperf/SPerfManager;->nextBoostObjectID:I

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->mInstance:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 14
    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->sessionControl:Lcom/samsung/sdk/sperf/SessionControl;

    .line 15
    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    .line 17
    new-instance v1, Lcom/samsung/sdk/sperf/SPerfInitThread;

    invoke-direct {v1}, Lcom/samsung/sdk/sperf/SPerfInitThread;-><init>()V

    sput-object v1, Lcom/samsung/sdk/sperf/SPerfManager;->sPerfThread:Lcom/samsung/sdk/sperf/SPerfInitThread;

    .line 18
    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->mContext:Landroid/content/Context;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->releaserHash:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/samsung/sdk/sperf/SPerfManager;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/sdk/sperf/SPerfManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/samsung/sdk/sperf/SPerfManager;->mInstance:Lcom/samsung/sdk/sperf/SPerfManager;

    if-eqz v1, :cond_0

    .line 44
    sget-object v1, Lcom/samsung/sdk/sperf/SPerfManager;->mInstance:Lcom/samsung/sdk/sperf/SPerfManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 46
    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 47
    :try_start_1
    const-string v2, "ERROR : Context is Null"

    invoke-static {v2}, Lcom/samsung/sdk/sperf/SPerfUtil;->logAlways(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit v0

    return-object v1

    .line 50
    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/Thread;

    sget-object v3, Lcom/samsung/sdk/sperf/SPerfManager;->sPerfThread:Lcom/samsung/sdk/sperf/SPerfInitThread;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .local v2, "th":Ljava/lang/Thread;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 53
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    nop

    .line 63
    :try_start_4
    sget-object v1, Lcom/samsung/sdk/sperf/SPerfManager;->sPerfThread:Lcom/samsung/sdk/sperf/SPerfInitThread;

    invoke-virtual {v1}, Lcom/samsung/sdk/sperf/SPerfInitThread;->getSPerfManager()Lcom/samsung/sdk/sperf/SPerfManager;

    move-result-object v1

    .line 64
    .local v1, "manager":Lcom/samsung/sdk/sperf/SPerfManager;
    sput-object p0, Lcom/samsung/sdk/sperf/SPerfManager;->mContext:Landroid/content/Context;

    .line 65
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xb

    if-ge v3, v4, :cond_3

    .line 66
    invoke-static {v3}, Lcom/samsung/sdk/sperf/CustomParams;->getBoostType(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/samsung/sdk/sperf/SPerfManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 67
    sget-object v4, Lcom/samsung/sdk/sperf/SPerfManager;->releaserHash:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;

    sget-object v7, Lcom/samsung/sdk/sperf/SPerfManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v1, v3}, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;-><init>(Landroid/content/Context;Lcom/samsung/sdk/sperf/SPerfManager;I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "i":I
    :cond_3
    monitor-exit v0

    return-object v1

    .line 58
    .end local v1    # "manager":Lcom/samsung/sdk/sperf/SPerfManager;
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/IllegalThreadStateException;
    :try_start_5
    const-string v4, "ERROR : IllegalThreadStateException"

    invoke-static {v4}, Lcom/samsung/sdk/sperf/SPerfUtil;->logAlways(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 61
    monitor-exit v0

    return-object v1

    .line 54
    .end local v3    # "e":Ljava/lang/IllegalThreadStateException;
    :catch_1
    move-exception v3

    .line 55
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v4, "ERROR : InterruptedException"

    invoke-static {v4}, Lcom/samsung/sdk/sperf/SPerfUtil;->logAlways(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 57
    monitor-exit v0

    return-object v1

    .line 42
    .end local v2    # "th":Ljava/lang/Thread;
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public static initSPerfManager()Lcom/samsung/sdk/sperf/SPerfManager;
    .locals 2

    .line 26
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->mInstance:Lcom/samsung/sdk/sperf/SPerfManager;

    if-nez v0, :cond_2

    .line 27
    invoke-static {}, Lcom/samsung/sdk/sperf/SessionControl;->createInstance()Lcom/samsung/sdk/sperf/SessionControl;

    move-result-object v0

    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->sessionControl:Lcom/samsung/sdk/sperf/SessionControl;

    .line 28
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->sessionControl:Lcom/samsung/sdk/sperf/SessionControl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 29
    const-string v0, "ERROR : Initialize Fail (Session)"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->logAlways(Ljava/lang/String;)V

    .line 30
    return-object v1

    .line 32
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->sessionControl:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-static {v0}, Lcom/samsung/sdk/sperf/BoostLevelControl;->createInstance(Lcom/samsung/sdk/sperf/SessionControl;)Lcom/samsung/sdk/sperf/BoostLevelControl;

    move-result-object v0

    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    .line 33
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    if-nez v0, :cond_1

    .line 34
    const-string v0, "ERROR : Initialize Fail (BoostingLevelSet)"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->logAlways(Ljava/lang/String;)V

    .line 35
    return-object v1

    .line 37
    :cond_1
    new-instance v0, Lcom/samsung/sdk/sperf/SPerfManager;

    invoke-direct {v0}, Lcom/samsung/sdk/sperf/SPerfManager;-><init>()V

    sput-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->mInstance:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 39
    :cond_2
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->mInstance:Lcom/samsung/sdk/sperf/SPerfManager;

    return-object v0
.end method

.method public static startTaskReleaseHandler(II)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "timeout"    # I

    .line 74
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->releaserHash:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->releaserHash:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->startBoostTimeout(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public addSPerfListerner(Lcom/samsung/sdk/sperf/SPerfListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/sdk/sperf/SPerfListener;

    .line 133
    if-nez p1, :cond_0

    .line 134
    const-string v0, "ERROR : Null listener (addPerfSDKListerner)"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 135
    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->sessionControl:Lcom/samsung/sdk/sperf/SessionControl;

    if-nez v0, :cond_1

    .line 137
    const-string v0, "ERROR : SessionControl Should be initialized"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 138
    return-void

    .line 140
    :cond_1
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->sessionControl:Lcom/samsung/sdk/sperf/SessionControl;

    invoke-virtual {v0, p1}, Lcom/samsung/sdk/sperf/SessionControl;->addListerner(Lcom/samsung/sdk/sperf/SPerfListener;)V

    .line 141
    return-void
.end method

.method public declared-synchronized createBoostID()I
    .locals 2

    monitor-enter p0

    .line 129
    :try_start_0
    sget v0, Lcom/samsung/sdk/sperf/SPerfManager;->nextBoostObjectID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/samsung/sdk/sperf/SPerfManager;->nextBoostObjectID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 129
    .end local p0    # "this":Lcom/samsung/sdk/sperf/SPerfManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startBoost(Lcom/samsung/sdk/sperf/BoostObject;)I
    .locals 2
    .param p1, "boostObject"    # Lcom/samsung/sdk/sperf/BoostObject;

    .line 89
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 90
    const-string v1, "ERROR : null boost object (doBoost)"

    invoke-static {v1}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 91
    return v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/sdk/sperf/BoostObject;->getID()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/samsung/sdk/sperf/SPerfManager;->createBoostID()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/sdk/sperf/BoostObject;->setID(I)V

    .line 96
    :cond_1
    invoke-static {p1}, Lcom/samsung/sdk/sperf/Boost;->requestNativeBoost(Lcom/samsung/sdk/sperf/BoostObject;)I

    move-result v0

    return v0
.end method

.method public startPresetBoost(II)I
    .locals 2
    .param p1, "scenarioID"    # I
    .param p2, "timeout"    # I

    .line 100
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 101
    const-string v0, "ERROR : BoostLevelControl Should be initialized"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 102
    return v1

    .line 104
    :cond_0
    if-gez p2, :cond_1

    .line 105
    const-string v0, "ERROR : timeout coundn\'t be less than 0"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 106
    return v1

    .line 108
    :cond_1
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/sdk/sperf/BoostLevelControl;->getBoostObjectByScenario(II)Lcom/samsung/sdk/sperf/BoostObject;

    move-result-object v0

    .line 109
    .local v0, "boostObject":Lcom/samsung/sdk/sperf/BoostObject;
    invoke-virtual {p0, v0}, Lcom/samsung/sdk/sperf/SPerfManager;->startBoost(Lcom/samsung/sdk/sperf/BoostObject;)I

    move-result v1

    return v1
.end method

.method public stopBoost()I
    .locals 1

    .line 113
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    if-nez v0, :cond_0

    .line 114
    const-string v0, "ERROR : BoostLevelControl Should be initialized"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 115
    const/4 v0, -0x1

    return v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/samsung/sdk/sperf/Boost;->releaseNativeBoost()I

    move-result v0

    return v0
.end method

.method public stopBoost(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "pid"    # I

    .line 121
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "ERROR : BoostLevelControl Should be initialized"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 123
    const/4 v0, -0x1

    return v0

    .line 125
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/sdk/sperf/Boost;->releaseNativeBoost(II)I

    move-result v0

    return v0
.end method

.method public updateBoost(IIILcom/samsung/sdk/sperf/BoostObject;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "level"    # I
    .param p3, "timeout"    # I
    .param p4, "boostObject"    # Lcom/samsung/sdk/sperf/BoostObject;

    .line 81
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "ERROR : Initialize Fail boostLevel not exist (updateBoost)"

    invoke-static {v0}, Lcom/samsung/sdk/sperf/SPerfUtil;->log(Ljava/lang/String;)V

    .line 83
    const/4 v0, -0x1

    return v0

    .line 85
    :cond_0
    sget-object v0, Lcom/samsung/sdk/sperf/SPerfManager;->boostLevelControl:Lcom/samsung/sdk/sperf/BoostLevelControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/sdk/sperf/BoostLevelControl;->updateBoost(IIILcom/samsung/sdk/sperf/BoostObject;)I

    move-result v0

    return v0
.end method
