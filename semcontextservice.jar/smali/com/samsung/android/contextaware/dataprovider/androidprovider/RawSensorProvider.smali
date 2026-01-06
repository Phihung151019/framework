.class public abstract Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;
.super Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "RawSensorProvider.java"


# static fields
.field protected static final DEFAULT_SENSOR_RATE:I = 0xea60


# instance fields
.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRate:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p5, "rate"    # I

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 64
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 60
    iput p5, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method private registerSensorListener()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->getSensorType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorRate:I

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 142
    return-void

    .line 136
    :cond_1
    :goto_0
    const-string v0, "cannot register the sensor listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->unregisterSensorListener()V

    .line 122
    return-void
.end method

.method public enable()V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->registerSensorListener()V

    .line 112
    return-void
.end method

.method protected abstract getSensorType()I
.end method

.method protected final initializeManager()V
    .locals 2

    .line 165
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 166
    const-string v0, "mContext is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/androidprovider/AndroidProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 174
    const-string v0, "cannot create the SensorManager object"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 176
    :cond_1
    return-void
.end method

.method protected final terminateManager()V
    .locals 1

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    .line 188
    return-void
.end method

.method protected unregisterSensorListener()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/androidprovider/RawSensorProvider;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 154
    return-void

    .line 149
    :cond_1
    :goto_0
    const-string v0, "cannot unregister the sensor listener"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 150
    return-void
.end method
