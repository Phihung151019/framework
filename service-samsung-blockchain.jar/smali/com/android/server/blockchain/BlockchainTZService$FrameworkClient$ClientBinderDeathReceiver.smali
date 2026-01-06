.class Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "BlockchainTZService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientBinderDeathReceiver"
.end annotation


# instance fields
.field private mReceiver:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;


# direct methods
.method static bridge synthetic -$$Nest$mdeleteClient(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method private declared-synchronized deleteClient()V
    .locals 8

    monitor-enter p0

    .line 106
    :try_start_0
    const-string v0, "BlockchainTZService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Client stopped. Clearing Databstructures for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v2, v2, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    iget-object v0, v0, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 108
    .local v1, "s":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v2, v2, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mCommnInfo:Landroid/blockchain/BlockchainTZServiceCommnInfo;

    iget-object v2, v2, Landroid/blockchain/BlockchainTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blockchain/TAController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .local v2, "controller":Lcom/android/server/blockchain/TAController;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x101

    if-ne v3, v4, :cond_1

    iget-boolean v3, v2, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    if-eqz v3, :cond_1

    .line 112
    invoke-static {}, Lcom/android/server/blockchain/BlockchainTZService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/blockchain/Utils;->sendSecureUIAbortIntent(Landroid/content/Context;)Z

    move-result v3

    .line 113
    .local v3, "intentResult":Z
    const-string v4, "BlockchainTZService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendSecureUIAbortIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 116
    iget-boolean v5, v2, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    if-nez v5, :cond_0

    .line 117
    const-string v5, "BlockchainTZService"

    const-string v6, "secureUI unsetted"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    goto :goto_3

    .line 122
    .end local p0    # "this":Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;
    :cond_0
    const-wide/16 v5, 0x64

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    goto :goto_2

    .line 123
    :catch_0
    move-exception v5

    .line 124
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "BlockchainTZService"

    const-string v7, "Failed to put thread to sleep!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    .end local v3    # "intentResult":Z
    .end local v4    # "i":I
    :cond_1
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/blockchain/TAController;->unloadTA()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    goto :goto_4

    .line 129
    :catch_1
    move-exception v3

    .line 130
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 132
    .end local v1    # "s":Ljava/lang/Integer;
    .end local v2    # "controller":Lcom/android/server/blockchain/TAController;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_4
    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v0, v0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->this$0:Lcom/android/server/blockchain/BlockchainTZService;

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->-$$Nest$fgetmRegisteredFWKClientMap(Lcom/android/server/blockchain/BlockchainTZService;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->this$1:Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;

    iget-object v1, v1, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 101
    const-string v0, "BlockchainTZService"

    const-string v1, "Error: Framework App dead, unloading loaded TAs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {p0}, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->deleteClient()V

    .line 103
    return-void
.end method

.method public setReceiver(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 93
    iput-object p1, p0, Lcom/android/server/blockchain/BlockchainTZService$FrameworkClient$ClientBinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    .line 94
    return-void
.end method
