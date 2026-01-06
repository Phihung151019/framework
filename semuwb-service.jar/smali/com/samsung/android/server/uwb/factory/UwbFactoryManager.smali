.class public Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;
.super Ljava/lang/Object;
.source "UwbFactoryManager.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/factory/IUwbFactoryManager;
.implements Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;,
        Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UwbFactoryManager"

.field public static final UCI_NTF_WAIT_TIMEOUT:I = 0x1388


# instance fields
.field private mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

.field private mContext:Landroid/content/Context;

.field private mDoVcoPllObject:Ljava/lang/Object;

.field private mDoVcoPllResultData:[B

.field private mEseConnectivityTestObject:Ljava/lang/Object;

.field private mEseDoBindObject:Ljava/lang/Object;

.field private mEseGetBindingStatusObject:Ljava/lang/Object;

.field private final mHandler:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

.field private final mLooper:Landroid/os/Looper;

.field private final mSamsungUwbTestManager:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

.field private mSeBindingCheckResult:Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

.field private mSeBindingResult:Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

.field private mSeConnectivityTestResult:Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

.field private mTestLoopbackObject:Ljava/lang/Object;

.field private mTestPerRxObject:Ljava/lang/Object;

.field private mTestRfLoopbackResult:Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

.field private mTestRxPacketErrorRateResult:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

.field private final mUwbFactoryIntentManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

.field private mUwbManager:Landroid/uwb/UwbManager;


# direct methods
.method public static synthetic $r8$lambda$Px7dcyr1E12Www4FJV05PZN98dE(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->lambda$waitUntilDeviceStatusChanged$0(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackAdapterState(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoVcoPllObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllResultData:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEseConnectivityTestObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseConnectivityTestObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEseDoBindObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseDoBindObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEseGetBindingStatusObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseGetBindingStatusObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/IVendorExtension;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSamsungUwbTestManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSamsungUwbTestManager:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeBindingCheckResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingCheckResult:Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeBindingResultData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingResult:Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeConnectivityTestResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeConnectivityTestResult:Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestLoopbackObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestLoopbackObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestPerRxObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestPerRxObject:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestRfLoopbackResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRfLoopbackResult:Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/uwb/support/data/rftest/TestPerRxData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRxPacketErrorRateResult:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUwbFactoryIntentManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mUwbFactoryIntentManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUwbManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)Landroid/uwb/UwbManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mUwbManager:Landroid/uwb/UwbManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDoVcoPllObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllObject:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDoVcoPllResultData(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllResultData:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEseConnectivityTestObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseConnectivityTestObject:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEseDoBindObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseDoBindObject:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEseGetBindingStatusObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseGetBindingStatusObject:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSeBindingCheckResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingCheckResult:Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSeBindingResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/ese/SeBindingResultData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingResult:Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSeConnectivityTestResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeConnectivityTestResult:Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTestLoopbackObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestLoopbackObject:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTestPerRxObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestPerRxObject:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTestRfLoopbackResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRfLoopbackResult:Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTestRxPacketErrorRateResult(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/data/rftest/TestPerRxData;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRxPacketErrorRateResult:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRawUci(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Lcom/samsung/uwb/support/uci/UciPacket;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->sendRawUci(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mwaitUntilDeviceStatusChanged(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->waitUntilDeviceStatusChanged(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iVendorExtension"    # Lcom/samsung/android/server/uwb/IVendorExtension;
    .param p3, "uwbVendorExtensionWrapper"    # Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const-string v0, "UwbFactoryManager"

    const-string v1, "UwbFactoryManager is started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSamsungUwbTestManager:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSamsungUwbTestManager:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->registerRfTestCallback(Lcom/samsung/android/server/uwb/factory/rfTest/ITestModeSessionCallback;Ljava/util/concurrent/Executor;)V

    .line 136
    iput-object p2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    .line 138
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UwbFactoryHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mLooper:Landroid/os/Looper;

    .line 141
    new-instance v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandler:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    .line 142
    new-instance v0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mUwbFactoryIntentManager:Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->initUwbManager()V

    .line 144
    return-void
.end method

.method private initUwbManager()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/uwb/UwbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mUwbManager:Landroid/uwb/UwbManager;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mUwbManager:Landroid/uwb/UwbManager;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "UwbFactoryManager"

    const-string v1, "UwbManager is NOT instantiated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 155
    .local v0, "stateExecutor":Ljava/util/concurrent/Executor;
    new-instance v1, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-direct {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    .line 156
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v1, v0, v2}, Landroid/uwb/UwbManager;->registerAdapterStateCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 157
    return-void
.end method

.method private synthetic lambda$waitUntilDeviceStatusChanged$0(I)Ljava/lang/Boolean;
    .locals 5
    .param p1, "expectedDeviceStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2789
    const/4 v0, 0x0

    .line 2790
    .local v0, "res":Z
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getWaitObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2791
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getState()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 2792
    const-string v2, "UwbFactoryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitUntilDeviceStatusChanged: expectedDeviceStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2797
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getWaitObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 2798
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getState()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2799
    const/4 v0, 0x1

    .line 2801
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 2794
    :cond_1
    const-string v2, "UwbFactoryManager"

    const-string v3, "waitUntilDeviceStatusChanged: already changed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 2802
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private sendRawUci(Lcom/samsung/uwb/support/uci/UciPacket;)[B
    .locals 4
    .param p1, "packet"    # Lcom/samsung/uwb/support/uci/UciPacket;

    .line 2977
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mIVendorExtension:Lcom/samsung/android/server/uwb/IVendorExtension;

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v0

    return-object v0
.end method

.method private waitUntilDeviceStatusChanged(I)Z
    .locals 8
    .param p1, "expectedDeviceStatus"    # I

    .line 2782
    const-string v0, "UwbFactoryManager"

    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->setExpectedState(I)V

    .line 2784
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2785
    .local v1, "object":Ljava/lang/Object;
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->setWaitObject(Ljava/lang/Object;)V

    .line 2786
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 2787
    .local v2, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;I)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2804
    .local v3, "waitingTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 2806
    const/4 v4, 0x0

    .line 2808
    .local v4, "res":Z
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7, v5}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 2814
    :goto_0
    goto :goto_1

    .line 2812
    :catch_0
    move-exception v5

    .line 2813
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2809
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2810
    .local v5, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 2811
    const-string v6, "waitUntilDeviceStatusChanged: Timeout occurred"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 2815
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->clearWaitObject()V

    .line 2817
    if-nez v4, :cond_1

    .line 2818
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mCallbackAdapterState:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;

    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$CallbackAdapterState;->getState()I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 2819
    const-string v5, "waitUntilDeviceStatusChanged: not changed yet"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    const/4 v0, 0x0

    return v0

    .line 2822
    :cond_0
    const-string v5, "waitUntilDeviceStatusChanged: already changed but can\'t catch it"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public applyCalibration()V
    .locals 10

    .line 2829
    const-string v0, "applyCalibration: Enter"

    const-string v1, "UwbFactoryManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    const-string v0, "/efs/sec_efs/uwb_factory/5_RF_PLL"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, -0x8000

    if-eqz v2, :cond_1

    .line 2833
    const/4 v2, 0x5

    .line 2834
    .local v2, "channelId":B
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsShort(Ljava/lang/String;)S

    move-result v0

    .line 2836
    .local v0, "vcoPll":S
    if-ne v0, v4, :cond_0

    .line 2837
    const-string v5, "CHANNEL_5, VCO_PLL_CAL is Wrong Value"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2839
    :cond_0
    new-instance v5, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    new-instance v6, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;

    invoke-direct {v6, v0}, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;-><init>(S)V

    invoke-direct {v5, v2, v6}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V

    .line 2840
    .local v5, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    invoke-direct {p0, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->sendRawUci(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v6

    aget-byte v6, v6, v3

    .line 2841
    .local v6, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CHANNEL_5, VCO_PLL_CAL result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    .end local v0    # "vcoPll":S
    .end local v2    # "channelId":B
    .end local v5    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v6    # "result":I
    :goto_0
    goto :goto_1

    .line 2844
    :cond_1
    const-string v0, "CHANNEL_5, VCO_PLL_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :goto_1
    const-string v0, "/efs/sec_efs/uwb_factory/9_RF_PLL"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2849
    const/16 v2, 0x9

    .line 2850
    .restart local v2    # "channelId":B
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsShort(Ljava/lang/String;)S

    move-result v0

    .line 2852
    .restart local v0    # "vcoPll":S
    if-ne v0, v4, :cond_2

    .line 2853
    const-string v5, "CHANNEL_9, VCO_PLL_CAL is Wrong Value"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2855
    :cond_2
    new-instance v5, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    new-instance v6, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;

    invoke-direct {v6, v0}, Lcom/samsung/uwb/support/data/param/devicecalibration/VcoPll;-><init>(S)V

    invoke-direct {v5, v2, v6}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V

    .line 2856
    .restart local v5    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    invoke-direct {p0, v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->sendRawUci(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v6

    aget-byte v6, v6, v3

    .line 2857
    .restart local v6    # "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CHANNEL_9, VCO_PLL_CAL result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    .end local v0    # "vcoPll":S
    .end local v2    # "channelId":B
    .end local v5    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v6    # "result":I
    :goto_2
    goto :goto_3

    .line 2860
    :cond_3
    const-string v0, "CHANNEL_9, VCO_PLL_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :goto_3
    const-string v0, "/efs/sec_efs/uwb_factory/5_M_1"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "/efs/sec_efs/uwb_factory/5_P_1"

    if-nez v2, :cond_5

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    .line 2898
    :cond_4
    const-string v0, "CHANNEL_5, TX_POWER_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2865
    :cond_5
    :goto_4
    const/4 v2, 0x5

    .line 2866
    .restart local v2    # "channelId":B
    new-instance v6, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;-><init>()V

    .line 2868
    .local v6, "txPowerPerAntennaBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2869
    const/4 v7, 0x1

    .line 2870
    .local v7, "txAntId":B
    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getTxPowerDeltaPeakRangingAntenna(I)I

    move-result v8

    int-to-short v8, v8

    .line 2871
    .local v8, "peakPower":S
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsShort(Ljava/lang/String;)S

    move-result v0

    .line 2872
    .local v0, "rmsPower":S
    if-ne v0, v4, :cond_6

    .line 2873
    const-string v9, "CHANNEL_5, RANGING_TX_POWER_CAL is Wrong Value"

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2875
    :cond_6
    invoke-virtual {v6, v7, v8, v0}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->setTxPower(BSS)Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    .line 2877
    .end local v0    # "rmsPower":S
    .end local v7    # "txAntId":B
    .end local v8    # "peakPower":S
    :goto_5
    goto :goto_6

    .line 2878
    :cond_7
    const-string v0, "CHANNEL_5, RANGING_TX_POWER_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    :goto_6
    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2882
    const/4 v0, 0x2

    .line 2883
    .local v0, "txAntId":B
    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getTxPowerDeltaPeakAoaAntenna(I)I

    move-result v7

    int-to-short v7, v7

    .line 2884
    .local v7, "peakPower":S
    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsShort(Ljava/lang/String;)S

    move-result v5

    .line 2885
    .local v5, "rmsPower":S
    if-ne v5, v4, :cond_8

    .line 2886
    const-string v8, "CHANNEL_5, AOA_TX_POWER_CAL is Wrong Value"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2888
    :cond_8
    invoke-virtual {v6, v0, v7, v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->setTxPower(BSS)Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    .line 2890
    .end local v0    # "txAntId":B
    .end local v5    # "rmsPower":S
    .end local v7    # "peakPower":S
    :goto_7
    goto :goto_8

    .line 2891
    :cond_9
    const-string v0, "CHANNEL_5, AOA_TX_POWER_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    :goto_8
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->build()Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;

    move-result-object v5

    invoke-direct {v0, v2, v5}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V

    .line 2895
    .local v0, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->sendRawUci(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v5

    aget-byte v5, v5, v3

    .line 2896
    .local v5, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CHANNEL_5, TX_POWER_CAL result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    .end local v0    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v2    # "channelId":B
    .end local v5    # "result":I
    .end local v6    # "txPowerPerAntennaBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;
    nop

    .line 2902
    :goto_9
    const-string v0, "/efs/sec_efs/uwb_factory/9_M_1"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "/efs/sec_efs/uwb_factory/9_P_1"

    if-nez v2, :cond_b

    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_a

    .line 2936
    :cond_a
    const-string v0, "CHANNEL_9, TX_POWER_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 2903
    :cond_b
    :goto_a
    const/16 v2, 0x9

    .line 2904
    .restart local v2    # "channelId":B
    new-instance v6, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    invoke-direct {v6}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;-><init>()V

    .line 2906
    .restart local v6    # "txPowerPerAntennaBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2907
    const/4 v7, 0x1

    .line 2908
    .local v7, "txAntId":B
    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getTxPowerDeltaPeakRangingAntenna(I)I

    move-result v8

    int-to-short v8, v8

    .line 2909
    .restart local v8    # "peakPower":S
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsShort(Ljava/lang/String;)S

    move-result v0

    .line 2910
    .local v0, "rmsPower":S
    if-ne v0, v4, :cond_c

    .line 2911
    const-string v9, "CHANNEL_9, RANGING_TX_POWER_CAL is Wrong Value"

    invoke-static {v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 2913
    :cond_c
    invoke-virtual {v6, v7, v8, v0}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->setTxPower(BSS)Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    .line 2915
    .end local v0    # "rmsPower":S
    .end local v7    # "txAntId":B
    .end local v8    # "peakPower":S
    :goto_b
    goto :goto_c

    .line 2916
    :cond_d
    const-string v0, "CHANNEL_9, RANGING_TX_POWER_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    :goto_c
    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2920
    const/4 v0, 0x2

    .line 2921
    .local v0, "txAntId":B
    invoke-static {v2}, Lcom/samsung/android/server/uwb/calibration/SamsungCalibrationData;->getTxPowerDeltaPeakAoaAntenna(I)I

    move-result v7

    int-to-short v7, v7

    .line 2922
    .local v7, "peakPower":S
    invoke-static {v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsShort(Ljava/lang/String;)S

    move-result v5

    .line 2923
    .local v5, "rmsPower":S
    if-ne v5, v4, :cond_e

    .line 2924
    const-string v4, "CHANNEL_9, AOA_TX_POWER_CAL is Wrong Value"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2926
    :cond_e
    invoke-virtual {v6, v0, v7, v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->setTxPower(BSS)Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;

    .line 2928
    .end local v0    # "txAntId":B
    .end local v5    # "rmsPower":S
    .end local v7    # "peakPower":S
    :goto_d
    goto :goto_e

    .line 2929
    :cond_f
    const-string v0, "CHANNEL_9, AOA_TX_POWER_CAL is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :goto_e
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    invoke-virtual {v6}, Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;->build()Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V

    .line 2933
    .local v0, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->sendRawUci(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v4

    aget-byte v4, v4, v3

    .line 2934
    .local v4, "result":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CHANNEL_9, TX_POWER_CAL result: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    .end local v0    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v2    # "channelId":B
    .end local v4    # "result":I
    .end local v6    # "txPowerPerAntennaBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/TxPowerPerAntenna$Builder;
    nop

    .line 2940
    :goto_f
    const-string v0, "/efs/sec_efs/uwb_factory/9_portrait"

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "/efs/sec_efs/uwb_factory/9_landscape"

    if-nez v2, :cond_11

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_10

    .line 2972
    :cond_10
    const-string v0, "CHANNEL_9, CAL_AOA_PHASE_OFFSET is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2941
    :cond_11
    :goto_10
    const/16 v2, 0x9

    .line 2942
    .restart local v2    # "channelId":B
    new-instance v5, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    invoke-direct {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;-><init>()V

    .line 2944
    .local v5, "pdoaOffsetCalibBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_13

    .line 2945
    const/4 v6, 0x1

    .line 2946
    .local v6, "rxPairId":B
    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsFloat(Ljava/lang/String;)F

    move-result v0

    .line 2947
    .local v0, "pdoaOffset":F
    cmpl-float v8, v0, v7

    if-nez v8, :cond_12

    .line 2948
    const-string v8, "CHANNEL_9, AOA_PORTRAIT_PHASE_OFFSET is Wrong Value"

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 2950
    :cond_12
    invoke-virtual {v5, v6, v0}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->setPdoaOffset(BF)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    .line 2952
    .end local v0    # "pdoaOffset":F
    .end local v6    # "rxPairId":B
    :goto_11
    goto :goto_12

    .line 2953
    :cond_13
    const-string v0, "CHANNEL_9, AOA_PORTRAIT_PHASE_OFFSET is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :goto_12
    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2957
    const/4 v0, 0x2

    .line 2958
    .local v0, "rxPairId":B
    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryConstant;->readStringAsFloat(Ljava/lang/String;)F

    move-result v4

    .line 2959
    .local v4, "pdoaOffset":F
    cmpl-float v6, v4, v7

    if-nez v6, :cond_14

    .line 2960
    const-string v6, "CHANNEL_9, AOA_LANDSCAPE_PHASE_OFFSET is Wrong Value"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2962
    :cond_14
    invoke-virtual {v5, v0, v4}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->setPdoaOffset(BF)Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;

    .line 2964
    .end local v0    # "rxPairId":B
    .end local v4    # "pdoaOffset":F
    :goto_13
    goto :goto_14

    .line 2965
    :cond_15
    const-string v0, "CHANNEL_9, AOA_LANDSCAPE_PHASE_OFFSET is NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    :goto_14
    new-instance v0, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;

    invoke-virtual {v5}, Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;->build()Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/samsung/uwb/support/uci/cmd/SetDeviceCalibrationCommand;-><init>(BLcom/samsung/uwb/support/data/param/TlvParam;)V

    .line 2969
    .local v0, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    invoke-direct {p0, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->sendRawUci(Lcom/samsung/uwb/support/uci/UciPacket;)[B

    move-result-object v4

    aget-byte v3, v4, v3

    .line 2970
    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHANNEL_9, CAL_AOA_PHASE_OFFSET result: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    .end local v0    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .end local v2    # "channelId":B
    .end local v3    # "result":I
    .end local v5    # "pdoaOffsetCalibBuilder":Lcom/samsung/uwb/support/data/param/devicecalibration/PdoaOffsetCalib$Builder;
    nop

    .line 2974
    :goto_15
    return-void
.end method

.method public onBindingCheckNotificationReceived(Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;)V
    .locals 3
    .param p1, "seBindingStatus"    # Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    .line 191
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingCheckResult:Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    .line 192
    const-string v0, "UwbFactoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetBindingStatusNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingCheckResult:Lcom/samsung/uwb/support/data/ese/SeBindingCheckResultData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseGetBindingStatusObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseGetBindingStatusObject:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseGetBindingStatusObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 197
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 199
    :cond_0
    :goto_0
    return-void
.end method

.method public onDoBindStatusNotificationReceived(Lcom/samsung/uwb/support/data/ese/SeBindingResultData;)V
    .locals 3
    .param p1, "seBindingResultData"    # Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    .line 180
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingResult:Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    .line 181
    const-string v0, "UwbFactoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoBindStatusNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeBindingResult:Lcom/samsung/uwb/support/data/ese/SeBindingResultData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseDoBindObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseDoBindObject:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseDoBindObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 186
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 188
    :cond_0
    :goto_0
    return-void
.end method

.method public onDoCalibrationNotificationReceived([B)V
    .locals 3
    .param p1, "data"    # [B

    .line 215
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllResultData:[B

    .line 216
    const-string v0, "UwbFactoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoCalibrationNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllResultData:[B

    invoke-static {v2}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllObject:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mDoVcoPllObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 221
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 223
    :cond_0
    :goto_0
    return-void
.end method

.method public onDoConnectivityTestStatusNotificationReceived(Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;)V
    .locals 3
    .param p1, "seConnectivityTestData"    # Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    .line 202
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeConnectivityTestResult:Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    .line 203
    const-string v0, "UwbFactoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDoConnectivityTestStatusNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSeConnectivityTestResult:Lcom/samsung/uwb/support/data/ese/SeConnectivityTestData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseConnectivityTestObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseConnectivityTestObject:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mEseConnectivityTestObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 208
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 210
    :cond_0
    :goto_0
    return-void
.end method

.method public onRfTestNotificationReceived(Lcom/samsung/uwb/support/uci/UciPacket;)V
    .locals 1
    .param p1, "uciPacket"    # Lcom/samsung/uwb/support/uci/UciPacket;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mSamsungUwbTestManager:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->handleRfTestNotification(Lcom/samsung/uwb/support/uci/UciPacket;)V

    .line 177
    return-void
.end method

.method public onTestLoopbackDataNotificationReceived([B)V
    .locals 3
    .param p1, "uci"    # [B

    .line 250
    new-instance v0, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    invoke-direct {v0, p1}, Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRfLoopbackResult:Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    .line 251
    const-string v0, "UwbFactoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTestLoopbackDataNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRfLoopbackResult:Lcom/samsung/uwb/support/data/rftest/TestLoopbackData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestLoopbackObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestLoopbackObject:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestLoopbackObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 256
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 258
    :cond_0
    :goto_0
    return-void
.end method

.method public onTestPerRxDataNotificationReceived([B)V
    .locals 3
    .param p1, "uci"    # [B

    .line 233
    new-instance v0, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    invoke-direct {v0, p1}, Lcom/samsung/uwb/support/data/rftest/TestPerRxData;-><init>([B)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRxPacketErrorRateResult:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    .line 234
    const-string v0, "UwbFactoryManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTestPerRxDataNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestRxPacketErrorRateResult:Lcom/samsung/uwb/support/data/rftest/TestPerRxData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestPerRxObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestPerRxObject:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mTestPerRxObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 239
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 241
    :cond_0
    :goto_0
    return-void
.end method

.method public onTestPeriodicTxDataNotificationReceived(I)V
    .locals 2
    .param p1, "status"    # I

    .line 228
    const-string v0, "UwbFactoryManager"

    const-string v1, "onTestPeriodicTxDataNotificationReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public onTestRxDataNotificationReceived()V
    .locals 2

    .line 245
    const-string v0, "UwbFactoryManager"

    const-string v1, "onTestRxDataNotificationReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public sendMessage(I)V
    .locals 2
    .param p1, "msgId"    # I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandler:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 170
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 171
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandler:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method

.method public sendMessage(ILjava/lang/String;)V
    .locals 2
    .param p1, "msgId"    # I
    .param p2, "sData"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandler:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-virtual {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 163
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager;->mHandler:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void
.end method
