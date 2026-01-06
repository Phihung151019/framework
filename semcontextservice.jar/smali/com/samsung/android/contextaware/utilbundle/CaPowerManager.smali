.class public Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.super Ljava/lang/Object;
.source "CaPowerManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IApPowerObservable;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_SCREEN_OFF_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

.field private static final ACTION_SCREEN_ON_BY_PROXIMITY:Ljava/lang/String; = "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

.field private static final LOG_CONTEXT_NULL:I = 0x1001

.field private static final LOG_INTENT_NULL:I = 0x1002

.field private static final POWER_IS_CONNECTED:I = 0x1005

.field private static final POWER_IS_DISCONNECTED:I = 0x1006

.field private static final SCREEN_DOZE:I = 0x100b

.field private static final SCREEN_OFF:I = 0x1008

.field private static final SCREEN_OFF_INTENT:I = 0x100a

.field private static final SCREEN_OFF_PROXIMITY_INTENT:I = 0x100d

.field private static final SCREEN_ON:I = 0x1007

.field private static final SCREEN_ON_INTENT:I = 0x1009

.field private static final SCREEN_ON_PROXIMITY_INTENT:I = 0x100c

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# instance fields
.field private isApSleep:Z

.field private isApWakeup:Z

.field private isScreenOff:Z

.field private isScreenOffIntent:Z

.field private isScreenOffProximityIntent:Z

.field private isScreenOn:Z

.field private isScreenOnIntent:Z

.field private isScreenOnProximityIntent:Z

.field private mAPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private mDM:Landroid/hardware/display/DisplayManager;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mHandler:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/IApPowerObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isApSleep:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isApWakeup:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScreenOff(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOff:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScreenOffIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOffIntent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScreenOffProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOffProximityIntent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScreenOn(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScreenOnIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOnIntent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScreenOnProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOnProximityIntent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDM(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDM:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisApSleep(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isApSleep:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisApWakeup(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isApWakeup:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScreenOff(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOff:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScreenOffIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOffIntent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScreenOffProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOffProximityIntent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScreenOn(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScreenOnIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOnIntent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScreenOnProximityIntent(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOnProximityIntent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msendApStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendScreenStatusToSensorHub(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->sendScreenStatusToSensorHub(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isApWakeup:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isApSleep:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOn:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOff:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOnIntent:Z

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOffIntent:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOnProximityIntent:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->isScreenOffProximityIntent:Z

    .line 128
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 494
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
    .locals 2

    .line 79
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    .line 83
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    return-object v0

    .line 83
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private sendApStatusToSensorHub(I)V
    .locals 4
    .param p1, "status"    # I

    .line 347
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 348
    .local v1, "dataPacket":[B
    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 349
    const/4 v2, 0x1

    aput-byte v3, v1, v2

    .line 351
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 352
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 355
    .local v0, "result":I
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 356
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 358
    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x4ct
        0xdt
    .end array-data
.end method

.method private sendScreenStatusToSensorHub(I)V
    .locals 4
    .param p1, "status"    # I

    .line 366
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 367
    .local v1, "dataPacket":[B
    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 368
    const/4 v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 370
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 371
    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 374
    .local v0, "result":I
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 375
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 377
    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x47t
    .end array-data
.end method


# virtual methods
.method public final acquireAPWakeLock()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 384
    const-string v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 385
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    .line 389
    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 391
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_1

    .line 392
    const-string v1, "pm is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 393
    return-void

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    const-string v1, "WakeLock is already held."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 398
    return-void

    .line 401
    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 403
    const/4 v1, 0x1

    const-string v2, "CA_WAKELOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 406
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 407
    return-void
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    if-nez p1, :cond_0

    .line 90
    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 91
    return-void

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CaPowerManagerr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 98
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 110
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDM:Landroid/hardware/display/DisplayManager;

    .line 111
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDM:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mHandler:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 112
    return-void
.end method

.method public final isScreenOn()Z
    .locals 6

    .line 476
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 477
    const-string v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 478
    return v1

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 482
    .local v0, "window":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 483
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v3

    .line 485
    .local v3, "screenStatus":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 486
    const-string v5, "Screen Off."

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 488
    const-string v5, "Screen On."

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 491
    :cond_2
    :goto_0
    if-eq v3, v4, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method

.method public final notifyApPowerObserver(IJ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .line 460
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 461
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/IApPowerObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    .line 463
    .local v1, "observer":Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    if-eqz v1, :cond_0

    .line 464
    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IApPowerObserver;->initializePreparedSubCollection()V

    .line 465
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/contextaware/manager/IApPowerObserver;->updateApPowerStatus(IJ)V

    .line 467
    .end local v1    # "observer":Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    :cond_0
    goto :goto_0

    .line 468
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/manager/IApPowerObserver;>;"
    :cond_1
    return-void
.end method

.method public final registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    .line 433
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    return-void
.end method

.method public final releaseAPWakeLock()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 422
    return-void

    .line 414
    :cond_1
    :goto_0
    const-string v0, "WakeLock is not held."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    :cond_0
    return-void
.end method

.method public final unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    .line 447
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 450
    :cond_0
    return-void
.end method
