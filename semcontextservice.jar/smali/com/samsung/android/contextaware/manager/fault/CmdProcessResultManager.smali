.class public Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;
.super Ljava/lang/Object;
.source "CmdProcessResultManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;


# instance fields
.field private final mBinder:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

.field private final mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V
    .locals 0
    .param p1, "binder"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .param p2, "handler"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 56
    return-void
.end method


# virtual methods
.method public final updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .line 68
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mBinder:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 75
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    if-nez v0, :cond_2

    .line 79
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 80
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 81
    return-void

    .line 84
    :cond_2
    if-nez p2, :cond_3

    .line 85
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 86
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 87
    return-void

    .line 90
    :cond_3
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 92
    .local v0, "tmpContext":Landroid/os/Bundle;
    const-string v1, "CheckResult"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    .line 101
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "Service"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const-string v2, "Listener"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 107
    .local v2, "msg":Landroid/os/Message;
    sget-object v3, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 108
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method
