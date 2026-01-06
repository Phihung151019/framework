.class public Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
.super Ljava/lang/Object;
.source "SemInputDeviceRawdataService.java"


# static fields
.field private static final RAWDATA_POSTFIX_SIZE:I = 0x1

.field private static final RAWDATA_PREFIX_SIZE:I = 0x4


# instance fields
.field public PHYS_CHANNEL_X:I

.field public PHYS_CHANNEL_Y:I

.field public RAWDATA_LENGTH:I

.field public RAWDATA_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private final bootingDump:Ljava/lang/StringBuilder;

.field private final callbackClientList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field private volatile isScreenOn:Z

.field private motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

.field private pollCount:I

.field private readRawdataEnable:I

.field private supportRawService:Z

.field private final touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;
    .param p3, "devid"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    .line 34
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    .line 35
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_LENGTH:I

    .line 36
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    .line 40
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    .line 41
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 42
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pollCount:I

    .line 45
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemInputRawdataService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    .line 48
    invoke-static {p3}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDeviceFactory;->getTouch(I)Lcom/samsung/android/hardware/secinputdev/device/Touch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    const-string v1, "\n"

    const-string v2, "- "

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Touch("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") is not registered"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "log":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-void

    .line 56
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getVersion()F

    move-result v0

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v0, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_1

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support hal v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getVersion()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .restart local v0    # "log":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    return-void

    .line 63
    .end local v0    # "log":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->initPanelInformation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_2

    .line 65
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method private clientCountDec(I)V
    .locals 2
    .param p1, "type"    # I

    .line 404
    if-lez p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->decrementAndGet(I)I

    .line 406
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->set(II)V

    .line 410
    :cond_0
    return-void
.end method

.method private clientCountInc(I)V
    .locals 1
    .param p1, "type"    # I

    .line 399
    if-lez p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->incrementAndGet(I)I

    .line 401
    :cond_0
    return-void
.end method

.method private deliveryRawdata([I)V
    .locals 8
    .param p1, "data"    # [I

    .line 347
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 349
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v2, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->deliveryRawdata([I)V

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 354
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    aput v3, p1, v2

    .line 360
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "ii":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 364
    :try_start_2
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    invoke-interface {v5, p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;->deliveryRawdata([I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    goto :goto_1

    .line 365
    :catch_0
    move-exception v5

    .line 366
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v7, "deliveryRawdata:broadcast"

    invoke-static {v6, v7, v5}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 368
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 362
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 370
    .end local v3    # "N":I
    .end local v4    # "ii":I
    :cond_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .end local p1    # "data":[I
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 374
    .end local v0    # "currentTime":J
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .restart local p1    # "data":[I
    :cond_2
    :goto_2
    goto :goto_3

    .line 372
    :catch_1
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "deliveryRawdata"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 375
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method private initPanelInformation()Z
    .locals 12

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "xNum":I
    const/4 v1, 0x0

    .line 94
    .local v1, "yNum":I
    const/4 v2, 0x0

    .line 95
    .local v2, "rawdataLength":I
    const/4 v3, 0x2

    .line 96
    .local v3, "retry":I
    :goto_0
    const-string v4, "\n"

    if-lez v3, :cond_3

    .line 99
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    const-string v6, "get_x_num"

    invoke-virtual {v5, v6}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "temp":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    .line 102
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    const-string v7, "get_y_num"

    invoke-virtual {v6, v7}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .end local v5    # "temp":Ljava/lang/String;
    .local v6, "temp":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 105
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    const-string v7, "rawdata_length"

    invoke-virtual {v5, v7}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .end local v6    # "temp":Ljava/lang/String;
    .restart local v5    # "temp":Ljava/lang/String;
    const-string v6, "NA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    const/4 v2, 0x0

    goto :goto_1

    .line 109
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 112
    :goto_1
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    if-ltz v2, :cond_1

    .line 115
    goto :goto_2

    .line 113
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channel number should be positive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(%d,%d,%d)"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "xNum":I
    .end local v1    # "yNum":I
    .end local v2    # "rawdataLength":I
    .end local v3    # "retry":I
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v5    # "temp":Ljava/lang/String;
    .restart local v0    # "xNum":I
    .restart local v1    # "yNum":I
    .restart local v2    # "rawdataLength":I
    .restart local v3    # "retry":I
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    :catch_0
    move-exception v5

    .line 117
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initPanelInformation: e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    add-int/lit8 v3, v3, -0x1

    .line 119
    if-nez v3, :cond_2

    .line 120
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v7, "initPanelInformation failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- initPanelInformation failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/4 v4, 0x0

    return v4

    .line 124
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    goto/16 :goto_0

    .line 127
    :cond_3
    :goto_2
    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    .line 128
    iput v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    .line 129
    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_LENGTH:I

    .line 130
    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_LENGTH:I

    const/4 v6, 0x1

    if-lez v5, :cond_4

    .line 131
    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_LENGTH:I

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    goto :goto_3

    .line 133
    :cond_4
    iget v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    iget v7, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    .line 135
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initPanelInformation: x: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " y: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " RAWDATA_SIZE: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- x: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_LENGTH:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    return v6
.end method


# virtual methods
.method public deliveryLastData([IF)V
    .locals 6
    .param p1, "croppedVideoClip"    # [I
    .param p2, "result"    # F

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deliveryLastData: callback: croppedVideoClip result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 385
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;->deliveryLastData([IF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    goto :goto_1

    .line 386
    :catch_0
    move-exception v3

    .line 387
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v5, "deliveryLastData:broadcast"

    invoke-static {v4, v5, v3}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 389
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v1    # "N":I
    .end local v2    # "ii":I
    :cond_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .end local p1    # "croppedVideoClip":[I
    .end local p2    # "result":F
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 395
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    .restart local p1    # "croppedVideoClip":[I
    .restart local p2    # "result":F
    :cond_1
    :goto_2
    goto :goto_3

    .line 393
    :catch_1
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "deliveryLastData"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pauseService()V

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->destroy()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public declared-synchronized disableService(II)Z
    .locals 5
    .param p1, "enabledType"    # I
    .param p2, "enableBit"    # I

    monitor-enter p0

    .line 218
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "disableService: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return v1

    .line 222
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "disableService: not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    monitor-exit p0

    return v1

    .line 227
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->clientCountDec(I)V

    .line 230
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    not-int v1, p2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 231
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->streamRawdata(I)I

    .line 232
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableService: total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0x%X"

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    monitor-exit p0

    return v3

    .line 217
    .end local p1    # "enabledType":I
    .end local p2    # "enableBit":I
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumping "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, " off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->bootingDump:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_1

    .line 240
    return-void

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- total:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " callback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 245
    const-string v0, "- registered callback client list"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "client":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .end local v1    # "client":Ljava/lang/String;
    goto :goto_1

    .line 250
    :cond_2
    return-void
.end method

.method public declared-synchronized enableService(II)Z
    .locals 6
    .param p1, "enabledType"    # I
    .param p2, "enableBit"    # I

    monitor-enter p0

    .line 189
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "enableService: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return v1

    .line 193
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableService: same motion is already enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0x%X|0x%X"

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    return v1

    .line 198
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->clientCountInc(I)V

    .line 201
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 202
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->streamRawdata(I)I

    move-result v0

    .line 204
    .local v0, "ret":I
    if-gez v0, :cond_2

    .line 205
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableService: failed to streamRawdata("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    not-int v3, p2

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->clientCountDec(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    monitor-exit p0

    return v1

    .line 210
    .end local v0    # "ret":I
    :cond_2
    goto :goto_0

    .line 211
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v1, "enableService: screen is off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableService: total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0x%X"

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enabledTypes:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    monitor-exit p0

    return v3

    .line 188
    .end local p1    # "enabledType":I
    .end local p2    # "enableBit":I
    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public getChannelX()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_X:I

    return v0
.end method

.method public getChannelY()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->PHYS_CHANNEL_Y:I

    return v0
.end method

.method public getRawdataLength()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_LENGTH:I

    return v0
.end method

.method public isSupport()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    return v0
.end method

.method public onReportInformation(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .line 313
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_0

    .line 314
    return-void

    .line 316
    :cond_0
    const-string v0, "handedge"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->deliveryInformation(Ljava/lang/String;)V

    .line 321
    :cond_1
    return-void
.end method

.method public onReportRawData(I[I)V
    .locals 5
    .param p1, "pollCount"    # I
    .param p2, "list"    # [I

    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_0

    .line 325
    return-void

    .line 328
    :cond_0
    iput p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pollCount:I

    .line 330
    invoke-direct {p0, p2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->deliveryRawdata([I)V

    .line 332
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    new-array v0, v0, [I

    .line 333
    .local v0, "extraList":[I
    const/4 v1, 0x1

    .local v1, "ii":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->pollCount:I

    if-ge v1, v2, :cond_1

    .line 335
    :try_start_0
    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->RAWDATA_SIZE:I

    const/4 v4, 0x0

    invoke-static {p2, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->deliveryRawdata([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    goto :goto_1

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v4, "onReportRawData"

    invoke-static {v3, v4, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 333
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "ii":I
    :cond_1
    return-void
.end method

.method public pauseService()V
    .locals 3

    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    if-nez v0, :cond_1

    .line 175
    return-void

    .line 178
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    .line 179
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    if-eqz v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "pauseService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->pause()V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->streamRawdata(I)I

    .line 186
    :cond_3
    return-void
.end method

.method public registerCallback(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "client"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback: client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "registerCallback: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v1

    .line 258
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v0

    .line 259
    .local v0, "callback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    if-nez v0, :cond_1

    .line 260
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v3, "registerCallback: binder/callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v1

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    .line 265
    .local v1, "findCallback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 266
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerCallback: already registered from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    .line 268
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 269
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v4, "registerCallback: replace callback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 273
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->enableService(II)Z

    .line 275
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    .line 276
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 277
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v4, "registerCallback: done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v2

    .line 277
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public restartService()V
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    if-nez v0, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    if-eqz v0, :cond_1

    .line 157
    return-void

    .line 160
    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v1, "restartService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->touch:Lcom/samsung/android/hardware/secinputdev/device/Touch;

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->readRawdataEnable:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/device/Touch;->streamRawdata(I)I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;->restart()V

    .line 167
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->isScreenOn:Z

    .line 168
    return-void
.end method

.method public setMotionController(Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;)V
    .locals 0
    .param p1, "mController"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->motionController:Lcom/samsung/android/hardware/secinputdev/SemInputMotionController;

    .line 73
    return-void
.end method

.method public unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "client"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCallback: client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->supportRawService:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v2, "unregisterCallback: RawdataService is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return v1

    .line 289
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    move-result-object v0

    .line 290
    .local v0, "callback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    if-nez v0, :cond_1

    .line 291
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v3, "registerCallback: binder/callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v1

    .line 295
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    .line 296
    .local v2, "findCallback":Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    if-eqz v2, :cond_2

    .line 297
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackClientList:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 299
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterCallback: not registered from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    .line 302
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->callbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v4

    .line 303
    .local v4, "ret":Z
    if-eqz v4, :cond_3

    .line 304
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->TAG:Ljava/lang/String;

    const-string v5, "unregisterCallback: done"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceRawdataService;->disableService(II)Z

    .line 306
    monitor-exit v3

    return v1

    .line 308
    .end local v4    # "ret":Z
    :cond_3
    monitor-exit v3

    .line 309
    return v1

    .line 308
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
