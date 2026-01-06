.class Lcom/android/server/blockchain/BlockchainTZNative;
.super Ljava/lang/Object;
.source "BlockchainTZNative.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "BlockchainTZService"


# instance fields
.field private mIsLoaded:Z

.field private mMOPTZNativePtr_:J

.field private mProcessName:Ljava/lang/String;

.field private mRecvBufSize:I

.field private mRootName:Ljava/lang/String;

.field private mSendBufSize:I

.field private mTAId:I

.field private mTATechnology:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p1, "taId"    # I
    .param p2, "taTechnology"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/String;
    .param p4, "process"    # Ljava/lang/String;
    .param p5, "sendbufsize"    # I
    .param p6, "recvbufsize"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockchainTZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlockchainTZService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    iput p1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mTAId:I

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    .line 30
    iput p5, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mSendBufSize:I

    .line 31
    iput p6, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mRecvBufSize:I

    .line 32
    iput-object p2, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mTATechnology:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mRootName:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mProcessName:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    .line 36
    return-void
.end method

.method private native nativeBlockchainProcessTACommand(Landroid/blockchain/TACommandRequest;Landroid/blockchain/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(Landroid/content/Context;IJJ)Z
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taFd"    # I
    .param p3, "taOffset"    # J
    .param p5, "taSize"    # J

    .line 39
    move-object/from16 v1, p0

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    iget-wide v2, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v16, 0x0

    cmp-long v0, v2, v16

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "BlockchainTZService"

    const-string v3, "BlockchainTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return v2

    .line 44
    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v12, v3

    const/16 v18, 0x0

    if-gtz v0, :cond_4

    cmp-long v0, v14, v3

    if-lez v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    long-to-int v4, v12

    long-to-int v5, v14

    iget v6, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mTAId:I

    iget v7, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mSendBufSize:I

    iget v8, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mRecvBufSize:I

    iget-object v9, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mRootName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mProcessName:Ljava/lang/String;

    move/from16 v3, p2

    move v0, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/blockchain/BlockchainTZNative;->nativeBlockchainCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    .line 51
    iget-wide v2, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_2

    .line 52
    const-string v0, "BlockchainTZService"

    const-string v2, "Error: nativeBlockchainCreateTLCommunicationContext failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return v18

    .line 56
    :cond_2
    const-class v2, Lcom/android/server/blockchain/BlockchainTZNative;

    monitor-enter v2

    .line 57
    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    .line 58
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    sget-boolean v2, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "BlockchainTZService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BlockchainTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3
    return v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 45
    :cond_4
    :goto_0
    const-string v0, "BlockchainTZService"

    const-string v2, "BlockchainFw_loadTA: cannot get ta offset or size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return v18
.end method

.method public native nativeBlockchainCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeBlockchainDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/blockchain/TACommandRequest;)Landroid/blockchain/TACommandResponse;
    .locals 4
    .param p1, "request"    # Landroid/blockchain/TACommandRequest;

    .line 78
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    const-string v1, "BlockchainTZService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BlockchainTZNative::processTACommand: request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    new-instance v0, Landroid/blockchain/TACommandResponse;

    invoke-direct {v0}, Landroid/blockchain/TACommandResponse;-><init>()V

    .line 80
    .local v0, "response":Landroid/blockchain/TACommandResponse;
    invoke-direct {p0, p1, v0}, Lcom/android/server/blockchain/BlockchainTZNative;->nativeBlockchainProcessTACommand(Landroid/blockchain/TACommandRequest;Landroid/blockchain/TACommandResponse;)Z

    move-result v2

    .line 81
    .local v2, "ret":Z
    if-nez v2, :cond_1

    .line 82
    const-string v3, "BlockchainTZNative::processTACommand: Error: nativeBlockchainProcessTACommand returned failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    return-object v1

    .line 85
    :cond_1
    return-object v0
.end method

.method public unloadTA()V
    .locals 5

    .line 64
    const-class v0, Lcom/android/server/blockchain/BlockchainTZNative;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    .line 70
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {p0}, Lcom/android/server/blockchain/BlockchainTZNative;->nativeBlockchainDestroyTLCommunicationContext()V

    .line 73
    iput-wide v3, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mMOPTZNativePtr_:J

    .line 74
    sget-boolean v0, Lcom/android/server/blockchain/BlockchainTZNative;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BlockchainTZService"

    const-string v1, "BlockchainTZNative::unloadTA called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    return-void

    .line 66
    :cond_2
    :goto_0
    :try_start_1
    const-string v1, "BlockchainTZService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlockchainTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/blockchain/BlockchainTZNative;->mIsLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    monitor-exit v0

    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
