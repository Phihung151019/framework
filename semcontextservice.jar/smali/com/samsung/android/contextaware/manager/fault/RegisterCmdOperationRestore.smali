.class Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;
.super Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;
.source "RegisterCmdOperationRestore.java"


# direct methods
.method protected constructor <init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/samsung/android/contextaware/manager/ContextManager;

    .line 39
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/manager/fault/RestoreTransaction;-><init>(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected final getRestoreType()Ljava/lang/String;
    .locals 1

    .line 88
    const-string v0, "REGISTER_CMD_RESTORE"

    return-object v0
.end method

.method protected final runRestore(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I
    .param p3, "observer"    # Lcom/samsung/android/contextaware/manager/IContextObserver;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, "listener is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 55
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getListenerDelegate()Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    const-string v0, "listenerdelegate is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 64
    return-void

    .line 67
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/fault/RegisterCmdOperationRestore;->getContextManager()Lcom/samsung/android/contextaware/manager/ContextManager;

    move-result-object v2

    .line 74
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    .line 73
    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v3, p1

    move-object v5, p3

    .end local p1    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .end local p3    # "observer":Lcom/samsung/android/contextaware/manager/IContextObserver;
    .local v3, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .local v5, "observer":Lcom/samsung/android/contextaware/manager/IContextObserver;
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    .line 78
    return-void
.end method
