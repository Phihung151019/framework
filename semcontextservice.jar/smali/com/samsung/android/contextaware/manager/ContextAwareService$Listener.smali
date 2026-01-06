.class public final Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
.super Ljava/lang/Object;
.source "ContextAwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/manager/ContextAwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Listener"
.end annotation


# instance fields
.field public mCmdProcessResultManager:Lcom/samsung/android/contextaware/manager/fault/CmdProcessResultManager;

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

.field final synthetic this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListenerDelegate(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServices(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcallback(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->callback(ILandroid/os/Bundle;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/manager/ContextAwareService;Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/manager/ContextAwareService;
    .param p2, "listenerDelegate"    # Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
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

    .line 636
    iput-object p1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 638
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    .line 639
    return-void
.end method

.method private declared-synchronized callback(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;->caCallback(ILandroid/os/Bundle;)V

    .line 650
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->-$$Nest$fputmContextCollectionResultNotifyCompletion(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 657
    goto :goto_1

    .line 656
    .end local p0    # "this":Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    .end local v0    # "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 651
    :catch_1
    move-exception v0

    .line 652
    .local v0, "de":Landroid/os/DeadObjectException;
    :try_start_4
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 656
    .end local v0    # "de":Landroid/os/DeadObjectException;
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 657
    :goto_0
    nop

    .line 658
    :goto_1
    monitor-exit p0

    return-void

    .line 648
    .end local p1    # "type":I
    .end local p2    # "context":Landroid/os/Bundle;
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 656
    .restart local p1    # "type":I
    .restart local p2    # "context":Landroid/os/Bundle;
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 657
    throw v0

    .line 648
    .end local p1    # "type":I
    .end local p2    # "context":Landroid/os/Bundle;
    :goto_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method


# virtual methods
.method public decreaseServiceCount(I)V
    .locals 4
    .param p1, "service"    # I

    .line 692
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 695
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    .line 694
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 696
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 700
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    return-void
.end method

.method public getListenerDelegate()Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mListenerDelegate:Lcom/samsung/android/contextaware/ContextAwareManager$CaListenerDelegate;

    return-object v0
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

    .line 666
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public increaseServiceCount(I)V
    .locals 4
    .param p1, "service"    # I

    .line 675
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 676
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 678
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    .line 677
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 679
    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 683
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->mServices:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    return-void
.end method

.method public final setContextCollectionResultNotifyCompletion(Z)V
    .locals 1
    .param p1, "completion"    # Z

    .line 719
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->this$0:Lcom/samsung/android/contextaware/manager/ContextAwareService;

    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService;->-$$Nest$fputmContextCollectionResultNotifyCompletion(Lcom/samsung/android/contextaware/manager/ContextAwareService;Z)V

    .line 720
    return-void
.end method
