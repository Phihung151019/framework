.class public Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;
.super Ljava/lang/Object;
.source "FaultDetectionManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;


# instance fields
.field private mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

.field private mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;
    .locals 2

    .line 44
    const-class v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    .line 48
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    sget-object v0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->instance:Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    return-object v0

    .line 48
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getCmdProcessResultObserver()Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    return-object v0
.end method

.method public final initializeManager(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/contextaware/manager/ContextManager;

    .line 59
    new-instance v0, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    .line 60
    return-void
.end method

.method public final initializeRestoreManager()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->initializeManager()V

    .line 109
    return-void
.end method

.method public final isRestoreEnable()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->isRestoreEnable()Z

    move-result v0

    return v0
.end method

.method public final registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "mCmdProcessResultManager is already registered"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 79
    return-void

    .line 81
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 82
    return-void
.end method

.method public final runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I
    .param p4, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 148
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 149
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 152
    return-void
.end method

.method public final setRestoreEnable()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "mRestoreManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 117
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/RestoreManager;->setRestoreEnable()V

    .line 120
    return-void
.end method

.method public final terminateManager()V
    .locals 1

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mRestoreManager:Lcom/samsung/android/contextaware/manager/fault/RestoreManager;

    .line 67
    return-void
.end method

.method public final unregisterCmdProcessResultManager()V
    .locals 1

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 89
    return-void
.end method

.method public final updateContextAwareServiceFatalError()V
    .locals 0

    .line 159
    return-void
.end method

.method public final updateSensorHubFatalError()V
    .locals 0

    .line 166
    return-void
.end method
