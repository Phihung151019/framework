.class public Lcom/samsung/android/game/GosClientManager;
.super Ljava/lang/Object;
.source "GosClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GosClientManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "GosClientManager"


# instance fields
.field private volatile isBinding:Z

.field private volatile isBound:Z

.field private mContext:Landroid/content/Context;

.field private final mGosServiceConn:Landroid/content/ServiceConnection;

.field private final mLock:Ljava/lang/Object;

.field private mService:Lcom/samsung/android/game/gos/IGosSystemService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/game/GosClientManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/samsung/android/game/GosClientManager;)Lcom/samsung/android/game/gos/IGosSystemService;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBound(Lcom/samsung/android/game/GosClientManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/samsung/android/game/GosClientManager;Lcom/samsung/android/game/gos/IGosSystemService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBinding:Z

    .line 19
    iput-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    .line 115
    new-instance v0, Lcom/samsung/android/game/GosClientManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GosClientManager$1;-><init>(Lcom/samsung/android/game/GosClientManager;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mGosServiceConn:Landroid/content/ServiceConnection;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/game/GosClientManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/game/GosClientManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/game/GosClientManager;
    .locals 1

    .line 25
    invoke-static {}, Lcom/samsung/android/game/GosClientManager$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/samsung/android/game/GosClientManager;

    move-result-object v0

    return-object v0
.end method

.method private validateServiceState()V
    .locals 6

    .line 146
    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    iget-object v2, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-ne v1, v2, :cond_2

    .line 148
    const-string v1, "GosClientManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validateServiceState: state inconsistency detected! isBound: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", service: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    .line 152
    :cond_2
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindService()V
    .locals 8

    .line 51
    const-string v0, "GosClientManager"

    const-string v1, "bindService: begin"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBinding:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 57
    const-string v0, "GosClientManager"

    const-string v1, "bindService: context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 61
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBinding:Z

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/game/gos/IGosSystemService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v2, p0, Lcom/samsung/android/game/GosClientManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/game/GosClientManager;->mGosServiceConn:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    .line 67
    .local v2, "result":Z
    const-string v3, "GosClientManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService: result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 69
    iput-boolean v3, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    .line 70
    iput-boolean v3, p0, Lcom/samsung/android/game/GosClientManager;->isBinding:Z

    .line 71
    return-void

    .line 75
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 77
    iget-object v5, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    if-nez v0, :cond_4

    .line 79
    const-string v0, "GosClientManager"

    const-string v5, "bindService: Service connection timeout"

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_4
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":Z
    .end local p0    # "this":Lcom/samsung/android/game/GosClientManager;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "result":Z
    .restart local p0    # "this":Lcom/samsung/android/game/GosClientManager;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 84
    const-string v4, "GosClientManager"

    const-string v5, "bindService: interrupted"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    iput-boolean v3, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iput-boolean v3, p0, Lcom/samsung/android/game/GosClientManager;->isBinding:Z

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/game/GosClientManager;->validateServiceState()V

    .line 89
    nop

    .line 90
    return-void

    .line 87
    :goto_2
    iput-boolean v3, p0, Lcom/samsung/android/game/GosClientManager;->isBinding:Z

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/game/GosClientManager;->validateServiceState()V

    .line 89
    throw v0

    .line 53
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "result":Z
    :cond_5
    :goto_3
    const-string v0, "GosClientManager"

    const-string v1, "bindService: currently binding or already bound"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/game/GosClientManager;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    const/4 v1, 0x0

    const-string v2, "GosClientManager"

    if-nez v0, :cond_0

    .line 34
    const-string v0, "requestOnlyForDumpOrTest: GosSystemService is null."

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-object v1

    .line 39
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/game/gos/IGosSystemService;->requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "requestOnlyForDumpOrTest: RemoteException"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v0    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public unbindService()V
    .locals 5

    .line 93
    const-string v0, "GosClientManager"

    const-string v1, "unbindService: begin"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    if-nez v0, :cond_0

    .line 95
    const-string v0, "GosClientManager"

    const-string v1, "unbindService: not bound"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/GosClientManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 99
    const-string v0, "GosClientManager"

    const-string v1, "unbindService: context is null."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/game/GosClientManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/game/GosClientManager;->mGosServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    iget-object v2, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_1
    iput-object v1, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    .line 111
    monitor-exit v2

    .line 112
    :goto_0
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 108
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    const-string v3, "GosClientManager"

    const-string v4, "unbindService: already unbound"

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_3
    iput-object v1, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    .line 111
    monitor-exit v2

    goto :goto_0

    .line 113
    :goto_1
    return-void

    .line 111
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 108
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/game/GosClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 109
    :try_start_4
    iput-object v1, p0, Lcom/samsung/android/game/GosClientManager;->mService:Lcom/samsung/android/game/gos/IGosSystemService;

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/game/GosClientManager;->isBound:Z

    .line 111
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 112
    throw v2

    .line 111
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
