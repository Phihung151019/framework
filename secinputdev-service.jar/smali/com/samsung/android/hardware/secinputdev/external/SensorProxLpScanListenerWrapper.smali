.class public Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
.super Lcom/samsung/android/hardware/secinputdev/external/ExternalService;
.source "SensorProxLpScanListenerWrapper.java"


# instance fields
.field private final sensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/external/ExternalService;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;Landroid/os/Handler;)V

    .line 37
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper$1;-><init>(Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 13
    return-void
.end method


# virtual methods
.method public register()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 19
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    if-eqz v0, :cond_2

    .line 22
    const v1, 0x10055

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 23
    .local v1, "lpScanSensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_1

    .line 26
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 33
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    .end local v1    # "lpScanSensor":Landroid/hardware/Sensor;
    .end local v2    # "ret":Z
    nop

    .line 34
    const-string v0, ""

    return-object v0

    .line 29
    .restart local v0    # "sensorManager":Landroid/hardware/SensorManager;
    .restart local v1    # "lpScanSensor":Landroid/hardware/Sensor;
    .restart local v2    # "ret":Z
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "SensorProxLpScanListenerWrapper false return"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
    throw v3

    .line 24
    .end local v2    # "ret":Z
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Sensor is null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
    throw v2

    .line 20
    .end local v1    # "lpScanSensor":Landroid/hardware/Sensor;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "SensorManager is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .end local v0    # "sensorManager":Landroid/hardware/SensorManager;
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
