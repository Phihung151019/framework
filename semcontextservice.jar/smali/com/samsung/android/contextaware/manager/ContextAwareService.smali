.class public Lcom/samsung/android/contextaware/manager/ContextAwareService;
.super Ljava/lang/Object;
.source "ContextAwareService.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/IContextObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;,
        Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;,
        Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BINDER_DIED_OPERATION:I = 0x3

.field public static final CONTEXT_AWARE_SERVICE:Ljava/lang/String; = "context_aware"

.field public static final NORMAL_OPERATION:I = 0x1

.field private static final NOTIFY_WATING_TIME:I = 0x6

.field public static final RESTORE_OPERATION:I = 0x2


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private volatile isVersionSetting:Z

.field private mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

.field private mCmdProcessResultNotifyCompletion:Z

.field private mContextCollectionResultNotifyCompletion:Z

.field private mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

.field private mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

.field private mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

.field private mVersion:I

.field private mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCmdProcessResultNotifyCompletion(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmContextCollectionResultNotifyCompletion(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listenerDelegate"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 106
    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    .line 115
    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 116
    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 117
    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 130
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "context_aware"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 136
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 137
    .local v2, "looper":Landroid/os/Looper;
    if-nez v2, :cond_0

    .line 138
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 139
    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    .line 140
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 141
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 142
    return-void

    .line 145
    :cond_0
    new-instance v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    .line 147
    new-instance v1, Lcom/samsung/android/contextaware/manager/ContextManager;

    iget v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextManager;-><init>(Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    .line 149
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1, v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 151
    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 152
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;-><init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 153
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 155
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    .line 156
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->setCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 158
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeManager(Lcom/samsung/android/contextaware/manager/ContextManager;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    new-instance v1, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmListenerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;-><init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;)V

    iput-object v1, v0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    .line 160
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->addListener(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ContextAwareService 1]  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ContextAwareService 2]  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ContextAwareService 3]  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mListener:Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getListenerDelegate()Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private displayUsedCountForService(I)V
    .locals 3
    .param p1, "service"    # I

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalCnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    .line 462
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v1

    .line 461
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 464
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    .line 465
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v1

    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subCollectionCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 467
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    .line 469
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v1

    .line 467
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 9
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p3, "service"    # I

    .line 350
    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList;->getInstance()Lcom/samsung/android/contextaware/InterruptModeContextList;

    move-result-object v0

    .line 351
    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/InterruptModeContextList;->isInterruptModeType(I)Z

    move-result v0

    const-string v1, "UNREGISTER_CMD_RESTORE"

    const-string v2, "REGISTER_CMD_RESTORE"

    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    return-void

    .line 363
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    iget-object v3, p2, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 366
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 368
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_2
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->increaseServiceCount(I)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    .line 372
    invoke-virtual {v1, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    .line 371
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v1, p0, v3}, Lcom/samsung/android/contextaware/manager/ContextManager;->start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;I)V

    move-object v6, p0

    move-object v4, p2

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 374
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    invoke-virtual {p2, p3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->decreaseServiceCount(I)V

    .line 376
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_4

    .line 377
    invoke-static {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v5

    .line 380
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v6, p0

    move-object v4, p2

    .end local p2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .local v4, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/contextaware/manager/ContextManager;->stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;Lcom/samsung/android/contextaware/manager/fault/ICmdProcessResultObserver;I)V

    goto :goto_0

    .line 373
    .end local v4    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .restart local p2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_5
    move-object v6, p0

    move-object v4, p2

    .line 384
    .end local p2    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .restart local v4    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :goto_0
    sget-object p2, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result p2

    if-ne p3, p2, :cond_7

    .line 385
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 386
    iget-object p2, v6, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/contextaware/manager/ContextManager;->notifyInitContext(Ljava/lang/String;)V

    .line 388
    :cond_6
    return-void

    .line 391
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result p2

    if-nez p2, :cond_8

    .line 392
    sget-object p2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 393
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 392
    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 394
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->setRestoreEnable()V

    .line 396
    :cond_8
    const-string p2, "complete notify the operation result."

    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->isRestoreEnable()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 399
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object p2

    invoke-virtual {p2, p1, v4, p3, p0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->runRestore(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILcom/samsung/android/contextaware/manager/IContextObserver;)V

    goto :goto_1

    .line 401
    :cond_9
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 402
    iget-object p2, v6, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p3}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-virtual {p2, v0}, Lcom/samsung/android/contextaware/manager/ContextManager;->notifyInitContext(Ljava/lang/String;)V

    .line 405
    :cond_a
    :goto_1
    return-void
.end method

.method private isUsableService(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)Z
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "service"    # I

    .line 569
    invoke-static {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private showListenerList()V
    .locals 9

    .line 325
    const-string v0, "===== Context Aware Service List ====="

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 329
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 330
    .local v2, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 331
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v4, v3

    .local v4, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 333
    .local v5, "service":I
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 334
    .local v6, "count":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Listener : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Service : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 335
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 334
    invoke-static {v7}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 337
    .end local v5    # "service":I
    .end local v6    # "count":I
    goto :goto_1

    .line 338
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .end local v2    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v4    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    goto :goto_0

    .line 339
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    return-void
.end method

.method private waitForNotifyOperationCheckResult()Z
    .locals 3

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x258

    if-ge v0, v1, :cond_1

    .line 480
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    if-eqz v1, :cond_0

    .line 482
    const/4 v1, 0x1

    return v1

    .line 484
    :cond_0
    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    nop

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    .line 486
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    .line 487
    nop

    .line 491
    .end local v0    # "i":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 175
    :cond_0
    return-void
.end method

.method public final getContextInfo(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)V
    .locals 6
    .param p1, "binder"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .param p2, "service"    # I

    .line 416
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 419
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getContext 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "isListener":Z
    const/4 v1, 0x0

    .line 425
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 426
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 428
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListener(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    move-result-object v3

    .line 429
    .local v3, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-nez v3, :cond_0

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContext 03] doesn\'t have listener "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 431
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    return-void

    .line 435
    :cond_0
    :try_start_1
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    invoke-static {v3}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    iget-object v4, v3, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

    invoke-virtual {v2, v4}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->registerCmdProcessResultManager(Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;)V

    .line 439
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->waitForNotifyOperationCheckResult()Z

    move-result v2

    if-nez v2, :cond_2

    .line 441
    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 443
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Lcom/samsung/android/contextaware/manager/ContextManager;->unregisterObservers(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/IContextObserver;)V

    .line 444
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getContext 02] Mutex is unlocked for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    .end local v0    # "isListener":Z
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .end local v3    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 450
    throw v0
.end method

.method public final getVersion()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    return v0
.end method

.method public final registerCallback(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)V
    .locals 4
    .param p1, "binder"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .param p2, "service"    # I

    .line 185
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 188
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[regi 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "isExistListener":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[regi 04]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListener(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    move-result-object v1

    .line 197
    .local v1, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-eqz v1, :cond_0

    .line 198
    const-string v2, "REGISTER_CMD_RESTORE"

    invoke-direct {p0, v2, v1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[regi 03] doesn\'t have listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 203
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 206
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    .end local v0    # "isExistListener":Z
    .end local v1    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    nop

    .line 214
    return-void

    .line 212
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    throw v0
.end method

.method public final registerWatcher(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)V
    .locals 4
    .param p1, "binder"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .param p2, "service"    # I

    .line 268
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 271
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[regi 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "isExistWatcher":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[regi 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    .end local v0    # "isExistWatcher":Z
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 284
    nop

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 284
    throw v0
.end method

.method public final resetCAService(I)V
    .locals 2
    .param p1, "service"    # I

    .line 531
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 534
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 01] Mutex is locked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 535
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 538
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextManager;->reset(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[reset 02] Mutex is unlocked for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 542
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    nop

    .line 546
    return-void

    .line 544
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 545
    throw v0
.end method

.method public final setCALogger(ZZIZ)V
    .locals 0
    .param p1, "isConsole"    # Z
    .param p2, "isFile"    # Z
    .param p3, "level"    # I
    .param p4, "isCaller"    # Z

    .line 581
    invoke-static {p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setConsoleLoggingEnable(Z)V

    .line 582
    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setFileLoggingEnable(Z)V

    .line 583
    invoke-static {p3, p4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->setLogOption(IZ)V

    .line 584
    return-void
.end method

.method public final setCAProperty(IILcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;)Z
    .locals 3
    .param p1, "service"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 504
    const/4 v0, 0x0

    .line 506
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 509
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 01] Mutex is locked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 510
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 509
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 512
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    .line 513
    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {v1, v2, p2, p3}, Lcom/samsung/android/contextaware/manager/ContextManager;->setProperty(Ljava/lang/String;ILjava/lang/Object;)Z

    move-result v1

    move v0, v1

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setProperty 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    nop

    .line 521
    return v0

    .line 518
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    throw v1
.end method

.method public final setCmdProcessResultNotifyCompletion(Z)V
    .locals 0
    .param p1, "completion"    # Z

    .line 592
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 593
    return-void
.end method

.method public final setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .line 599
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    if-eqz v0, :cond_0

    .line 600
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 601
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 600
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 602
    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 606
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mVersion:I

    .line 607
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextManager:Lcom/samsung/android/contextaware/manager/ContextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextManager;->setVersion(I)V

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->isVersionSetting:Z

    .line 609
    return-void
.end method

.method public final unregisterCallback(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)Z
    .locals 4
    .param p1, "binder"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .param p2, "service"    # I

    .line 225
    const/4 v0, 0x1

    .line 227
    .local v0, "isEmptyListener":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 230
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregi 01] Mutex is locked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 231
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->initializeRestoreManager()V

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCmdProcessResultNotifyCompletion:Z

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mContextCollectionResultNotifyCompletion:Z

    .line 236
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mCaListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListener(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    move-result-object v1

    .line 237
    .local v1, "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-eqz v1, :cond_0

    .line 238
    const-string v2, "UNREGISTER_CMD_RESTORE"

    invoke-direct {p0, v2, v1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->doCommendProcess(Ljava/lang/String;Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    .line 240
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unregi 03] doesn\'t have listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 245
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->displayUsedCountForService(I)V

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->showListenerList()V

    .line 248
    invoke-static {}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->getInstance()Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;

    move-result-object v2

    .line 249
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/fault/FaultDetectionManager;->unregisterCmdProcessResultManager()V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 252
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v1    # "listener":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    nop

    .line 257
    return v0

    .line 254
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 255
    throw v1
.end method

.method public final unregisterWatcher(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;I)Z
    .locals 3
    .param p1, "binder"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .param p2, "service"    # I

    .line 296
    const/4 v0, 0x1

    .line 298
    .local v0, "isEmptyWatcher":Z
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 301
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregi 01] Mutex is locked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-virtual {v1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->decreaseServiceCount(I)V

    .line 307
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mWatcher:Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregi 02] Mutex is unlocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    nop

    .line 318
    return v0

    .line 315
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 316
    throw v1
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .line 556
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 558
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService;->mServiceHandler:Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    return-void
.end method
