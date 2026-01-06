.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;
.super Landroid/os/Handler;
.source "ContextAwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 843
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    .line 844
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 845
    return-void
.end method

.method private callback(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .line 878
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    .line 879
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getListenerList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 880
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .line 881
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    if-nez v1, :cond_0

    .line 882
    goto :goto_0

    .line 885
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 886
    invoke-static {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$mcallback(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    .line 888
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :cond_1
    goto :goto_0

    .line 891
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getWatcherList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 893
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;

    .line 894
    .local v1, "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    if-nez v1, :cond_3

    .line 895
    goto :goto_1

    .line 898
    :cond_3
    invoke-static {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 899
    invoke-static {v1, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->-$$Nest$mcallback(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;ILandroid/os/Bundle;)V

    .line 901
    .end local v1    # "next":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    :cond_4
    goto :goto_1

    .line 902
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    return-void
.end method

.method private notifyOperationCheckResult(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    .line 915
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 916
    return v1

    .line 919
    :cond_0
    if-nez p2, :cond_1

    .line 920
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 921
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 920
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 922
    return v1

    .line 925
    :cond_1
    const-string v0, "Listener"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 926
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 927
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 928
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 929
    return v2

    .line 932
    :cond_2
    const-string v3, "Service"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 934
    .local v4, "service":I
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 935
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->-$$Nest$fgetmListener(Lcom/samsung/android/contextaware/manager/ContextAwareService;)Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->-$$Nest$mcallback(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 938
    :cond_3
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 939
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 938
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 942
    :goto_0
    return v2
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    monitor-enter p0

    .line 854
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 855
    .local v0, "type":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 857
    .local v1, "context":Landroid/os/Bundle;
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->notifyOperationCheckResult(ILandroid/os/Bundle;)Z

    move-result v2

    .line 859
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 860
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->callback(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 862
    .end local p0    # "this":Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$ServiceHandler;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->-$$Nest$fputmCmdProcessResultNotifyCompletion(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)V

    .line 865
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 866
    monitor-exit p0

    return-void

    .line 853
    .end local v0    # "type":I
    .end local v1    # "context":Landroid/os/Bundle;
    .end local v2    # "result":Z
    .end local p1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
