.class public Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;
.super Ljava/lang/Object;
.source "UwbVendorExtensionWrapper.java"


# static fields
.field private static final SEND_VENDOR_CMD_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "UwbVendorExtensionWrapper"


# instance fields
.field private mAdvertiseNotification:Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;

.field private mCachedSpecificationParams:Lcom/google/uwb/support/generic/GenericSpecificationParams;

.field private mDeviceNotification:Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;

.field private mOemCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

.field private mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

.field private final mSessionNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final mUciWaitObj:Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

.field private final mUwbManager:Landroid/uwb/UwbManager;

.field private mVendorUciCallback:Landroid/uwb/UwbManager$UwbVendorUciCallback;


# direct methods
.method public static synthetic $r8$lambda$NZApQrpbWA3JQTFyLp31WBFIFdE(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;II[B)[B
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->lambda$sendVendorUciMessageWithBlocked$0(II[B)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdvertiseNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mAdvertiseNotification:Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mDeviceNotification:Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionNotification(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionNotificationMap(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mSessionNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUciWaitObj(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUciWaitObj:Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    return-object p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mCachedSpecificationParams:Lcom/google/uwb/support/generic/GenericSpecificationParams;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mSessionNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    invoke-direct {v0}, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUciWaitObj:Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    .line 45
    const-class v0, Landroid/uwb/UwbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/uwb/UwbManager;

    iput-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUwbManager:Landroid/uwb/UwbManager;

    .line 47
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 48
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-direct {p0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->initializeCallback()V

    .line 49
    iget-object v1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mOemCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    invoke-virtual {v1, v0, v2}, Landroid/uwb/UwbManager;->registerUwbOemExtensionCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbOemExtensionCallback;)V

    .line 50
    iget-object v1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUwbManager:Landroid/uwb/UwbManager;

    iget-object v2, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mVendorUciCallback:Landroid/uwb/UwbManager$UwbVendorUciCallback;

    invoke-virtual {v1, v0, v2}, Landroid/uwb/UwbManager;->registerUwbVendorUciCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbVendorUciCallback;)V

    .line 51
    return-void
.end method

.method private initializeCallback()V
    .locals 1

    .line 88
    new-instance v0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$1;-><init>(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mOemCallback:Landroid/uwb/UwbManager$UwbOemExtensionCallback;

    .line 153
    new-instance v0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$2;-><init>(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mVendorUciCallback:Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 169
    return-void
.end method

.method private synthetic lambda$sendVendorUciMessageWithBlocked$0(II[B)[B
    .locals 6
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUciWaitObj:Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {v1, p1, p2, p3}, Landroid/uwb/UwbManager;->sendVendorUciMessage(II[B)I

    move-result v1

    .line 182
    .local v1, "res":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 183
    iget-object v5, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUciWaitObj:Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->blockingWait()V

    .line 184
    iget-object v5, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUciWaitObj:Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    invoke-virtual {v5}, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->getPayload()[B

    move-result-object v5

    if-nez v5, :cond_0

    .line 185
    new-array v4, v4, [B

    aput-byte v3, v4, v2

    monitor-exit v0

    return-object v4

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUciWaitObj:Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;

    invoke-virtual {v2}, Lcom/samsung/android/server/uwb/SamsungExtension$UciWaitObj;->getPayload()[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 190
    :cond_1
    new-array v4, v4, [B

    aput-byte v3, v4, v2

    monitor-exit v0

    return-object v4

    .line 192
    .end local v1    # "res":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private runTaskOnSingleThreadExecutor(Ljava/util/concurrent/FutureTask;I)[B
    .locals 4
    .param p2, "timeoutMs"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask<",
            "[B>;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 213
    .local p1, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<[B>;"
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 214
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 216
    int-to-long v1, p2

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 219
    throw v1
.end method

.method private sendVendorUciMessageWithBlocked(II[B)[B
    .locals 5
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendVendorUciMessageWithBlocked - GID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", OID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PAYLOAD : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    invoke-static {p3}, Lcom/samsung/uwb/support/util/UwbUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "UwbVendorExtensionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;II[B)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 196
    .local v0, "sendTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<[B>;"
    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    .line 199
    .local v2, "response":[B
    const/16 v3, 0x1388

    :try_start_0
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->runTaskOnSingleThreadExecutor(Ljava/util/concurrent/FutureTask;I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 205
    :goto_0
    goto :goto_1

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 200
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 201
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    const-string v4, "Failed to SendVendorMessage - TIMEOUT"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    goto :goto_0

    .line 207
    :goto_1
    return-object v2
.end method


# virtual methods
.method public getSpecificationInfo()Lcom/google/uwb/support/generic/GenericSpecificationParams;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mCachedSpecificationParams:Lcom/google/uwb/support/generic/GenericSpecificationParams;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mUwbManager:Landroid/uwb/UwbManager;

    invoke-virtual {v0}, Landroid/uwb/UwbManager;->getSpecificationInfo()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/uwb/support/generic/GenericSpecificationParams;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/generic/GenericSpecificationParams;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mCachedSpecificationParams:Lcom/google/uwb/support/generic/GenericSpecificationParams;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mCachedSpecificationParams:Lcom/google/uwb/support/generic/GenericSpecificationParams;

    return-object v0
.end method

.method public registerSessionNotificationCallback(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "sessionNotification"    # Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 66
    const-string v0, "registerSessionConfigurationCompleteCallback()"

    const-string v1, "UwbVendorExtensionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mSessionNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void

    .line 69
    :cond_1
    :goto_0
    const-string v0, "registerSessionConfigurationCompleteCallback - param must not NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public declared-synchronized sendVendorUciMessage(II[B)[B
    .locals 1
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "data"    # [B

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->sendVendorUciMessageWithBlocked(II[B)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 172
    .end local p0    # "this":Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;
    .end local p1    # "gid":I
    .end local p2    # "oid":I
    .end local p3    # "data":[B
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setAdvertiseListener(Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;)V
    .locals 0
    .param p1, "advertiseListener"    # Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mAdvertiseNotification:Lcom/samsung/android/server/uwb/IVendorExtension$AdvertiseNotification;

    .line 63
    return-void
.end method

.method public setDeviceListener(Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;)V
    .locals 0
    .param p1, "deviceListener"    # Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mDeviceNotification:Lcom/samsung/android/server/uwb/IVendorExtension$DeviceNotification;

    .line 55
    return-void
.end method

.method public setSessionListener(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;)V
    .locals 0
    .param p1, "sessionListener"    # Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mSessionNotification:Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    .line 59
    return-void
.end method

.method public unregisterSessionNotificationCallback(Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;)V
    .locals 2
    .param p1, "sessionNotification"    # Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;

    .line 77
    const-string v0, "unregisterSessionConfigurationCompleteCallback()"

    const-string v1, "UwbVendorExtensionWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-nez p1, :cond_0

    .line 80
    const-string v0, "unregisterSessionConfigurationCompleteCallback - param must not NULL"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;->mSessionNotificationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method
