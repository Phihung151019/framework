.class Lcom/android/server/blockchain/TAController;
.super Landroid/blockchain/ITAController$Stub;
.source "TAController.java"


# static fields
.field private static final DEBUG:Z

.field private static final SPAY_TUI_CMD_QSEE_START_SECURE_UI:I = 0x90190

.field private static final TAG:Ljava/lang/String; = "BlockchainTZService"


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field private mContext:Landroid/content/Context;

.field private mNative:Lcom/android/server/blockchain/BlockchainTZNative;

.field private mTAId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/blockchain/BlockchainTZServiceConfig$TAConfig;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taId"    # I
    .param p3, "config"    # Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;

    .line 42
    invoke-direct {p0}, Landroid/blockchain/ITAController$Stub;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 43
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAController constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; maxSendCmdSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; maxRecvRespSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockchainTZService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/android/server/blockchain/TAController;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/android/server/blockchain/TAController;->mTAId:I

    .line 46
    new-instance v2, Lcom/android/server/blockchain/BlockchainTZNative;

    iget-object v4, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v5, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v6, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v7, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v8, p3, Landroid/blockchain/BlockchainTZServiceConfig$TAConfig;->maxRecvRespSize:I

    move v3, p2

    .end local p2    # "taId":I
    .local v3, "taId":I
    invoke-direct/range {v2 .. v8}, Lcom/android/server/blockchain/BlockchainTZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    .line 47
    return-void
.end method


# virtual methods
.method public loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 8
    .param p1, "pFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    monitor-enter p0

    .line 71
    :try_start_0
    const-string v0, "loadTA"

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 72
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "BlockchainTZService"

    const-string v1, "TAController::loadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    move-wide v4, p2

    move-wide v6, p4

    goto/16 :goto_4

    .line 73
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 74
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    return v0

    .line 76
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    move v3, v0

    .line 77
    .local v3, "fdInt":I
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_2

    .line 78
    :try_start_3
    const-string v0, "BlockchainTZService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TA fd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    :cond_2
    :try_start_4
    iget-object v1, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    iget-object v2, p0, Lcom/android/server/blockchain/TAController;->mContext:Landroid/content/Context;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "offset":J
    .end local p4    # "size":J
    .local v4, "offset":J
    .local v6, "size":J
    :try_start_5
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/blockchain/BlockchainTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    if-eqz p1, :cond_3

    .line 84
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 87
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    move-object p3, v0

    .line 86
    .local p3, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    .end local p3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 80
    return p2

    .line 82
    :catchall_1
    move-exception v0

    move-object p2, v0

    goto :goto_2

    .end local v4    # "offset":J
    .end local v6    # "size":J
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catchall_2
    move-exception v0

    move-wide v4, p2

    move-wide v6, p4

    move-object p2, v0

    .end local p2    # "offset":J
    .end local p4    # "size":J
    .restart local v4    # "offset":J
    .restart local v6    # "size":J
    :goto_2
    if-eqz p1, :cond_4

    .line 84
    :try_start_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 87
    goto :goto_3

    .line 85
    :catch_1
    move-exception v0

    move-object p3, v0

    .line 86
    .restart local p3    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {p3}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    .end local p3    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    nop

    .end local v4    # "offset":J
    .end local v6    # "size":J
    .end local p0    # "this":Lcom/android/server/blockchain/TAController;
    .end local p1    # "pFd":Landroid/os/ParcelFileDescriptor;
    throw p2

    .line 90
    .end local v3    # "fdInt":I
    .restart local p0    # "this":Lcom/android/server/blockchain/TAController;
    .restart local p1    # "pFd":Landroid/os/ParcelFileDescriptor;
    .restart local p2    # "offset":J
    .restart local p4    # "size":J
    :catchall_3
    move-exception v0

    move-wide v4, p2

    move-wide v6, p4

    .end local p2    # "offset":J
    .end local p4    # "size":J
    .restart local v4    # "offset":J
    .restart local v6    # "size":J
    :goto_4
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4
.end method

.method public processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;
    .locals 3
    .param p1, "request"    # Landroid/blockchain/TACommandRequest;

    .line 51
    invoke-virtual {p0}, Lcom/android/server/blockchain/TAController;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    const-string v0, "processTACommand"

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 54
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/blockchain/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/blockchain/TAController;->mTAId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget v0, p1, Landroid/blockchain/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_1

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/blockchain/BlockchainTZNative;->processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;

    move-result-object v0

    .line 59
    .local v0, "result":Landroid/blockchain/TACommandResponse;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 60
    monitor-exit p0

    return-object v0

    .line 61
    .end local v0    # "result":Landroid/blockchain/TACommandResponse;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 63
    :cond_2
    const-string v0, "BlockchainTZService"

    const-string v1, "binder for cmd is died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public unloadTA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    const-string v0, "unloadTA"

    invoke-static {v0}, Lcom/android/server/blockchain/BlockchainTZService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 97
    sget-boolean v0, Lcom/android/server/blockchain/TAController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BlockchainTZService"

    const-string v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/blockchain/TAController;->SET_QSEE_SECURE_UI:Z

    .line 99
    iget-object v0, p0, Lcom/android/server/blockchain/TAController;->mNative:Lcom/android/server/blockchain/BlockchainTZNative;

    invoke-virtual {v0}, Lcom/android/server/blockchain/BlockchainTZNative;->unloadTA()V

    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
