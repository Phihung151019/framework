.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
.super Ljava/lang/Object;
.source "ContextAwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Watcher"
.end annotation


# instance fields
.field private mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

.field private final mServices:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcallback(Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)V
    .locals 1
    .param p1, "listenerDelegate"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 756
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 757
    return-void
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 768
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->caCallback(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 775
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 772
    :catch_0
    move-exception v0

    goto :goto_1

    .line 770
    :catch_1
    move-exception v0

    goto :goto_2

    .line 775
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 776
    goto :goto_4

    .line 766
    .end local p0    # "this":Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;
    .end local p1    # "type":I
    .end local p2    # "context":Landroid/os/Bundle;
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 775
    .restart local p1    # "type":I
    .restart local p2    # "context":Landroid/os/Bundle;
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 772
    :catch_2
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 775
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 770
    :catch_3
    move-exception v0

    .line 771
    .local v0, "de":Landroid/os/DeadObjectException;
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 775
    .end local v0    # "de":Landroid/os/DeadObjectException;
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 776
    :goto_3
    nop

    .line 777
    :goto_4
    monitor-exit p0

    return-void

    .line 775
    :goto_5
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 776
    throw v0

    .line 766
    .end local p1    # "type":I
    .end local p2    # "context":Landroid/os/Bundle;
    :goto_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method


# virtual methods
.method public decreaseServiceCount(I)V
    .locals 4
    .param p1, "service"    # I

    .line 811
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 814
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    .line 813
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 815
    return-void

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 819
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    return-void
.end method

.method public getServices()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public increaseServiceCount(I)V
    .locals 4
    .param p1, "service"    # I

    .line 794
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 795
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 797
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    .line 796
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 798
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 802
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Watcher;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    return-void
.end method
