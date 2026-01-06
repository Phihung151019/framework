.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;
.source "DevicePhysicalContextMonitorHandler.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubModeHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;
    .locals 2

    .line 39
    const-class v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    .line 43
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;->instance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/DevicePhysicalContextMonitorHandler;

    return-object v0

    .line 43
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final disable()V
    .locals 0

    .line 75
    return-void
.end method

.method protected final enable()V
    .locals 0

    .line 68
    return-void
.end method

.method protected final getModeList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 57
    .local v0, "list":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DEVICE_PHYSICAL_CONTEXT_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    return-object v0
.end method
