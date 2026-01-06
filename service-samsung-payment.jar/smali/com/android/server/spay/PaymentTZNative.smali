.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "PaymentTZNative.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


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

    .line 17
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentTZNative constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iput p1, p0, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 32
    iput p5, p0, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    .line 33
    iput p6, p0, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    .line 34
    iput-object p2, p0, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 38
    return-void
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public loadTA(Landroid/content/Context;IJJ)Z
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taFd"    # I
    .param p3, "taOffset"    # J
    .param p5, "taSize"    # J

    .line 41
    move-object/from16 v1, p0

    move-wide/from16 v12, p3

    move-wide/from16 v14, p5

    iget-wide v2, v1, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v16, 0x0

    cmp-long v0, v2, v16

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 42
    const-string v0, "PaymentManagerService"

    const-string v3, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v2

    .line 46
    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v0, v12, v3

    const/16 v18, 0x0

    if-gtz v0, :cond_4

    cmp-long v0, v14, v3

    if-lez v0, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    long-to-int v4, v12

    long-to-int v5, v14

    iget v6, v1, Lcom/android/server/spay/PaymentTZNative;->mTAId:I

    iget v7, v1, Lcom/android/server/spay/PaymentTZNative;->mSendBufSize:I

    iget v8, v1, Lcom/android/server/spay/PaymentTZNative;->mRecvBufSize:I

    iget-object v9, v1, Lcom/android/server/spay/PaymentTZNative;->mTATechnology:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/spay/PaymentTZNative;->mRootName:Ljava/lang/String;

    iget-object v11, v1, Lcom/android/server/spay/PaymentTZNative;->mProcessName:Ljava/lang/String;

    move/from16 v3, p2

    move v0, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/spay/PaymentTZNative;->nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 53
    iget-wide v2, v1, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    cmp-long v2, v2, v16

    if-nez v2, :cond_2

    .line 54
    const-string v0, "PaymentManagerService"

    const-string v2, "Error: nativeCreateTLCommunicationContext failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v18

    .line 58
    :cond_2
    const-class v2, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v2

    .line 59
    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 60
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-boolean v2, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "PaymentManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_3
    return v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 47
    :cond_4
    :goto_0
    const-string v0, "PaymentManagerService"

    const-string v2, "SpayFw_loadTA: cannot get ta offset or size"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v18
.end method

.method public native nativeCreateTLCommunicationContext(Landroid/content/Context;IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .locals 4
    .param p1, "request"    # Landroid/spay/TACommandRequest;

    .line 80
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    const-string v1, "PaymentManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative::processTACommand: request = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; mMOPTZNativePtr_ = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    new-instance v0, Landroid/spay/TACommandResponse;

    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    .line 82
    .local v0, "response":Landroid/spay/TACommandResponse;
    invoke-direct {p0, p1, v0}, Lcom/android/server/spay/PaymentTZNative;->nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    move-result v2

    .line 83
    .local v2, "ret":Z
    if-nez v2, :cond_1

    .line 84
    const-string v3, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, 0x0

    return-object v1

    .line 87
    :cond_1
    return-object v0
.end method

.method public unloadTA()V
    .locals 5

    .line 66
    const-class v0, Lcom/android/server/spay/PaymentTZNative;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-wide v1, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {p0}, Lcom/android/server/spay/PaymentTZNative;->nativeDestroyTLCommunicationContext()V

    .line 75
    iput-wide v3, p0, Lcom/android/server/spay/PaymentTZNative;->mMOPTZNativePtr_:J

    .line 76
    sget-boolean v0, Lcom/android/server/spay/PaymentTZNative;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::unloadTA called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_1
    return-void

    .line 68
    :cond_2
    :goto_0
    :try_start_1
    const-string v1, "PaymentManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored: ta loaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/spay/PaymentTZNative;->mIsLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit v0

    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
