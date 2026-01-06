.class public Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;
.super Ljava/lang/Object;
.source "SamsungUwbTestManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final UCI_NTF_WAIT_TIMEOUT:I = 0x1388

.field public static final UWB_LOOPBACK_TEST_MODE:B = 0x2t

.field public static final UWB_PERIODIC_TX_TEST_MODE:B = 0x0t

.field public static final UWB_PER_RX_TEST_MODE:B = 0x1t

.field public static final UWB_RX_TEST_MODE:B = 0x3t


# instance fields
.field private final mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

.field private mIsConfigured:Z

.field private mIsTestConfigNeeded:Z

.field private final mNotificationHandler:Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

.field private final mRangingCallback:Landroid/uwb/RangingSession$Callback;

.field private mRangingSession:Landroid/uwb/RangingSession;

.field private mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

.field private mTestConfigParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field

.field private mTestModeSessionObject:Ljava/lang/Object;

.field private mTestModeSessionStatus:I

.field private final mUwbManager:Landroid/uwb/UwbManager;

.field private final mUwbVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

.field private mVendorAppConfigParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sLMHBWx2zy-WnVecIdyjUbdxDvY(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->lambda$openTestModeSession$0(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Lcom/samsung/android/server/uwb/IVendorExtension;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsTestConfigNeeded(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIsTestConfigNeeded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationHandler(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mNotificationHandler:Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestConfigParams(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestConfigParams:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestModeSessionObject(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVendorAppConfigParams(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mVendorAppConfigParams:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsConfigured(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIsConfigured:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsTestConfigNeeded(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIsTestConfigNeeded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRangingSession(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Landroid/uwb/RangingSession;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mRangingSession:Landroid/uwb/RangingSession;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTestModeSessionStatus(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iVendorExtension"    # Lcom/samsung/android/server/uwb/IVendorExtension;
    .param p3, "uwbVendorExtensionWrapper"    # Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionStatus:I

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIsTestConfigNeeded:Z

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIsConfigured:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestConfigParams:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mVendorAppConfigParams:Ljava/util/List;

    .line 80
    iput-object p2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    .line 81
    iput-object p3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mUwbVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    .line 83
    new-instance v0, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mNotificationHandler:Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    .line 84
    const-class v0, Landroid/uwb/UwbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mUwbManager:Landroid/uwb/UwbManager;

    .line 85
    new-instance v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;-><init>(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    .line 167
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mUwbVendorExtensionWrapper:Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    new-instance v1, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;-><init>(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)V

    iput-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    .line 209
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->registerSessionNotificationCallback(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Ljava/util/concurrent/Executor;)V

    .line 210
    return-void
.end method

.method private synthetic lambda$openTestModeSession$0(Lcom/google/uwb/support/fira/FiraOpenSessionParams;)Ljava/lang/Integer;
    .locals 6
    .param p1, "firaOpenSessionParams"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    const/4 v0, 0x2

    .line 224
    .local v0, "res":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionObject:Ljava/lang/Object;

    monitor-enter v1

    .line 225
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mRangingSession:Landroid/uwb/RangingSession;

    .line 227
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 228
    .local v2, "callbackExecutor":Ljava/util/concurrent/Executor;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {p1}, Lcom/google/uwb/support/fira/FiraOpenSessionParams;->toBundle()Landroid/os/PersistableBundle;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mRangingCallback:Landroid/uwb/RangingSession$Callback;

    invoke-virtual {v3, v4, v2, v5}, Landroid/uwb/UwbManager;->openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;)Landroid/os/CancellationSignal;

    .line 230
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionObject:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 231
    iget v3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionStatus:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 232
    const/4 v0, 0x0

    .line 234
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 235
    .end local v2    # "callbackExecutor":Ljava/util/concurrent/Executor;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public closeTestModeSession()V
    .locals 2

    .line 311
    sget-object v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v1, "closeTestModeSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 314
    sget-object v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v1, "closeTestModeSession: Session is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mRangingSession:Landroid/uwb/RangingSession;

    invoke-virtual {v0}, Landroid/uwb/RangingSession;->close()V

    .line 318
    return-void
.end method

.method public handleRfTestNotification(Lcom/samsung/uwb/support/uci/UciPacket;)V
    .locals 1
    .param p1, "uciPacket"    # Lcom/samsung/uwb/support/uci/UciPacket;

    .line 338
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mNotificationHandler:Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handleRfTestNotification(Lcom/samsung/uwb/support/uci/UciPacket;)V

    .line 339
    return-void
.end method

.method public openTestModeSession(Lcom/google/uwb/support/fira/FiraOpenSessionParams;Ljava/util/List;Ljava/util/List;)I
    .locals 6
    .param p1, "firaOpenSessionParams"    # Lcom/google/uwb/support/fira/FiraOpenSessionParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/uwb/support/fira/FiraOpenSessionParams;",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;)I"
        }
    .end annotation

    .line 214
    .local p2, "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    .local p3, "vendorAppConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIsTestConfigNeeded:Z

    .line 215
    iput-object p2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestConfigParams:Ljava/util/List;

    .line 216
    iput-object p3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mVendorAppConfigParams:Ljava/util/List;

    .line 218
    const/4 v0, 0x2

    .line 219
    .local v0, "status":I
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionObject:Ljava/lang/Object;

    .line 220
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 221
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Lcom/google/uwb/support/fira/FiraOpenSessionParams;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 237
    .local v2, "openSessionTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 240
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 248
    :goto_0
    goto :goto_1

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 241
    :catch_2
    move-exception v3

    .line 242
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 243
    sget-object v4, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v5, "openTestModeSession: Timeout occurred"

    invoke-static {v4, v5}, Lcom/samsung/android/server/uwb/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 249
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionObject:Ljava/lang/Object;

    .line 251
    iget-boolean v3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIsConfigured:Z

    if-nez v3, :cond_0

    .line 252
    const/4 v3, 0x2

    return v3

    .line 254
    :cond_0
    return v0
.end method

.method public reConfigureTestModeSession(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;)I"
        }
    .end annotation

    .line 321
    .local p1, "testConfigParams":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/uwb/support/data/param/TlvParam;>;"
    sget-object v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v1, "reConfigureTestModeSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/4 v0, 0x0

    .line 323
    .local v0, "sessionId":I
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-interface {v1, v0}, Lcom/samsung/android/server/uwb/IVendorExtension;->getSessionToken(I)I

    move-result v1

    .line 324
    .local v1, "sessionToken":I
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestConfigSetCommand;

    int-to-long v3, v1

    invoke-direct {v2, v3, v4, p1}, Lcom/samsung/uwb/support/uci/cmd/TestConfigSetCommand;-><init>(JLjava/util/List;)V

    .line 326
    .local v2, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    const/4 v3, 0x2

    .line 327
    .local v3, "status":I
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-virtual {v2}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v5

    invoke-virtual {v2}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v6

    invoke-virtual {v2}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v4

    .line 328
    .local v4, "respUci":[B
    if-eqz v4, :cond_1

    array-length v5, v4

    if-nez v5, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    const/4 v5, 0x0

    aget-byte v3, v4, v5

    .line 334
    return v3

    .line 329
    :cond_1
    :goto_0
    sget-object v5, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v6, "reConfigureTestModeSession: respUci is null or size of respUci is zero"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v3
.end method

.method public registerRfTestCallback(Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mNotificationHandler:Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->registerRfTestCallback(Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;)V

    .line 343
    return-void
.end method

.method public startTestModeSession(I[B)I
    .locals 6
    .param p1, "testMode"    # I
    .param p2, "psdu"    # [B

    .line 258
    const/4 v0, 0x2

    .line 259
    .local v0, "status":I
    const/4 v1, 0x0

    .line 260
    .local v1, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    if-nez p1, :cond_0

    .line 261
    sget-object v2, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UWB_PERIODIC_TX_TEST_MODE, psdu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestPeriodicTxCommand;

    invoke-direct {v2, p2}, Lcom/samsung/uwb/support/uci/cmd/TestPeriodicTxCommand;-><init>([B)V

    move-object v1, v2

    goto :goto_0

    .line 263
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 264
    sget-object v2, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UWB_PER_RX_TEST_MODE, psdu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;

    invoke-direct {v2, p2}, Lcom/samsung/uwb/support/uci/cmd/TestPerRxCommand;-><init>([B)V

    move-object v1, v2

    goto :goto_0

    .line 266
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 267
    sget-object v2, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UWB_LOOPBACK_TEST_MODE, psdu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v2, Lcom/samsung/uwb/support/uci/cmd/TestLoopbackCommand;

    invoke-direct {v2, p2}, Lcom/samsung/uwb/support/uci/cmd/TestLoopbackCommand;-><init>([B)V

    move-object v1, v2

    goto :goto_0

    .line 269
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 270
    sget-object v2, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UWB_RX_TEST_MODE, psdu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_0
    if-nez v1, :cond_3

    .line 278
    return v0

    .line 281
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v2

    .line 282
    .local v2, "respUci":[B
    if-eqz v2, :cond_5

    array-length v3, v2

    if-nez v3, :cond_4

    goto :goto_1

    .line 287
    :cond_4
    const/4 v3, 0x0

    aget-byte v0, v2, v3

    .line 288
    return v0

    .line 283
    :cond_5
    :goto_1
    sget-object v3, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v4, "startTestModeSession: respUci is null or size of respUci is zero"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return v0

    .line 273
    .end local v2    # "respUci":[B
    :cond_6
    sget-object v2, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v3, "startTestModeSession: Unknown RF Test"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v0
.end method

.method public stopTestModeSession()I
    .locals 6

    .line 292
    sget-object v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v1, "stopTestModeSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x2

    .line 294
    .local v0, "status":I
    iget v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mTestModeSessionStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 295
    sget-object v1, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v2, "stopTestModeSession:Session is not initialized:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return v0

    .line 299
    :cond_0
    new-instance v1, Lcom/samsung/uwb/support/uci/cmd/TestStopSessionCommand;

    invoke-direct {v1}, Lcom/samsung/uwb/support/uci/cmd/TestStopSessionCommand;-><init>()V

    .line 300
    .local v1, "uciPacket":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v2

    .line 301
    .local v2, "respUci":[B
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    const/4 v3, 0x0

    aget-byte v0, v2, v3

    .line 307
    return v0

    .line 302
    :cond_2
    :goto_0
    sget-object v3, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->TAG:Ljava/lang/String;

    const-string v4, "stopTestModeSession: respUci is null or size of respUci is zero"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v0
.end method

.method public unregisterRfTestCallback(Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;

    .line 346
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->mNotificationHandler:Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->unregisterRfTestCallback(Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;)V

    .line 347
    return-void
.end method
