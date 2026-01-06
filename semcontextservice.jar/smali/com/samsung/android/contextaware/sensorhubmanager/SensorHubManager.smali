.class public Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;,
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;,
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;,
        Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
    }
.end annotation


# static fields
.field private static final DEBUG_SSP_INJECTION:Z = false

.field private static final HEADER_SIZE:I = 0x8

.field private static final INDEX_DATASIZE_INHEADER:I = 0x0

.field private static final INDEX_END_INHEADER:I = 0x6

.field private static final INDEX_END_VALUES:I = 0xf

.field private static final INDEX_START_INHEADER:I = 0x4

.field private static final INDEX_START_VALUES:I = 0x2

.field private static final SEND_SCONTEXT_DATA:I = 0x1

.field private static final SENSORHUB_EVENT_MAX_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SensorHubManager"

.field private static final TYPE_SENSORHUB:I = 0x10032


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHubSensor:Landroid/hardware/Sensor;

.field private mInitializedSensorManager:Z

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mMainLooper:Landroid/os/Looper;

.field private mPool:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

.field private mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCtx(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mCtx:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHubSensor(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/Sensor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainLooper(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPool(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mPool:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSensorManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/SensorManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mCtx:Landroid/content/Context;

    .line 61
    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mInitializedSensorManager:Z

    .line 412
    iput-object p2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    .line 413
    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mCtx:Landroid/content/Context;

    .line 414
    invoke-direct {p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->initSensorManager()Z

    .line 415
    return-void
.end method

.method private disableSensorHubLocked()Z
    .locals 2

    .line 488
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 494
    const/4 v0, 0x1

    return v0

    .line 489
    :cond_1
    :goto_0
    const-string v0, "SensorHubManager"

    const-string v1, "disableSensorHubLocked : no sensor or service "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method private enableSensorHubLocked()Z
    .locals 7

    .line 475
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    const-string v2, "SensorHubManager"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    iget-object v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    .line 480
    .local v0, "ret":Z
    if-nez v0, :cond_1

    .line 481
    const-string v3, "hub register failed  "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v1

    .line 484
    :cond_1
    return v0

    .line 476
    .end local v0    # "ret":Z
    :cond_2
    :goto_0
    const-string v0, "enableSensorHubLocked: no sensor or service "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v1
.end method

.method private initSensorManager()Z
    .locals 5

    .line 418
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mInitializedSensorManager:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 419
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mCtx:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    const-string v3, "SensorHubManager"

    if-nez v0, :cond_1

    .line 423
    const-string v0, "initSensorManager : cannot get sensormanager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return v2

    .line 426
    :cond_1
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorListener:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubListener;

    .line 427
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mPool:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    .line 428
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mSensorManager:Landroid/hardware/SensorManager;

    const v4, 0x10032

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_3

    .line 431
    const-string v0, "initSensorManager : There is no sensor for hubmanager."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v2

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 435
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 437
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 438
    .local v4, "looper":Landroid/os/Looper;
    if-nez v4, :cond_4

    .line 439
    const-string v1, "initSensorManager : The looper is null."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return v2

    .line 442
    :cond_4
    new-instance v2, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;

    invoke-direct {v2, p0, v4}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    .line 465
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    .end local v4    # "looper":Landroid/os/Looper;
    :cond_5
    iput-boolean v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mInitializedSensorManager:Z

    .line 467
    :cond_6
    return v1
.end method


# virtual methods
.method public registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)Z
    .locals 6
    .param p1, "listener"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 503
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 504
    return v0

    .line 506
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 507
    const/4 v2, 0x0

    .line 508
    .local v2, "l":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    .line 509
    .local v4, "i":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 510
    move-object v2, v4

    .line 511
    goto :goto_1

    .line 513
    .end local v4    # "i":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    :cond_1
    goto :goto_0

    .line 514
    :cond_2
    :goto_1
    const-string v3, "SensorHubManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerListener: Listener= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    if-nez v2, :cond_4

    .line 516
    new-instance v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)V

    .line 517
    .end local v2    # "l":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    .local v3, "l":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    invoke-direct {p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->enableSensorHubLocked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 518
    const-string v2, "SensorHubManager"

    const-string v4, "registerListener: enableSensorHubLocked fail"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-exit v1

    return v0

    .line 521
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v3    # "l":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    :cond_4
    monitor-exit v1

    .line 524
    const/4 v0, 0x1

    return v0

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendSensorHubData(I[B)I
    .locals 3
    .param p1, "datasize"    # I
    .param p2, "data"    # [B

    .line 548
    array-length v0, p2

    const/4 v1, -0x1

    if-ge v0, p1, :cond_0

    .line 549
    const-string v0, "SensorHubManager"

    const-string v2, "sendSensorHubData failed, wrong data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    return v1

    .line 552
    :cond_0
    const/16 v0, 0x400

    if-le p1, v0, :cond_1

    .line 553
    const-string v0, "SensorHubManager"

    const-string v2, "sendSensorHubData failed, too big data"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return v1

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHubSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 557
    const-string v0, "SensorHubManager"

    const-string v2, "sendSensorHubData failed, no sensorhub"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return v1

    .line 561
    :cond_2
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;I[B)V

    .line 562
    .local v0, "sInfo":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 563
    .local v1, "msg":Landroid/os/Message;
    monitor-enter v0

    .line 564
    const/4 v2, 0x1

    :try_start_0
    iput v2, v1, Landroid/os/Message;->what:I

    .line 565
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 566
    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 567
    :goto_0
    iget-boolean v2, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mIsDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 569
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    goto :goto_1

    .line 571
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 574
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 576
    :cond_3
    :goto_1
    monitor-exit v0

    .line 577
    return p1

    .line 576
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public unregisterListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    .line 528
    if-nez p1, :cond_0

    .line 529
    return-void

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 533
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 534
    iget-object v3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    .line 535
    .local v3, "l":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 536
    iget-object v4, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 537
    const-string v4, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterListener listener= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .end local v3    # "l":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 541
    invoke-direct {p0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->disableSensorHubLocked()Z

    .line 543
    .end local v1    # "size":I
    :cond_3
    monitor-exit v0

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
