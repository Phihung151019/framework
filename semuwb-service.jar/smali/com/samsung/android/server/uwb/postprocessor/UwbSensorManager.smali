.class public Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;
.super Ljava/lang/Object;
.source "UwbSensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_LOGGING:I = 0x14

.field private static final TAG:Ljava/lang/String; = "extension_UwbSensorManager"

.field private static sInstance:Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;


# instance fields
.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mGyroscopeSensor:Landroid/hardware/Sensor;

.field private mIsSensorRegistered:Z

.field private final mListenerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNumAccelerometerSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mNumGyroscopeSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mNumOrientationSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->sInstance:Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mNumAccelerometerSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mNumOrientationSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mNumGyroscopeSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mListenerSet:Ljava/util/HashSet;

    .line 43
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mIsSensorRegistered:Z

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->sInstance:Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->sInstance:Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;

    .line 35
    :cond_0
    sget-object v1, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->sInstance:Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 31
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isLoggingEnabled(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 3
    .param p1, "detectedCount"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 110
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 111
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 112
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_0
    return v2
.end method

.method private isSensorAvailable()Z
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x0

    const-string v2, "extension_UwbSensorManager"

    if-nez v0, :cond_0

    .line 89
    const-string v0, "fail to get default sensor(3)"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 95
    const-string v0, "fail to get default sensor(1)"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v1

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 101
    const-string v0, "fail to get default sensor(4)"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v1

    .line 105
    :cond_2
    return v3
.end method

.method static synthetic lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;)V
    .locals 0
    .param p0, "sensorEvent"    # Landroid/hardware/SensorEvent;
    .param p1, "listener"    # Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;

    .line 144
    invoke-interface {p1, p0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .line 151
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "print":Z
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const-string v2, "extension_UwbSensorManager"

    packed-switch v1, :pswitch_data_0

    .line 134
    :pswitch_0
    const-string v1, "invalid sensor type"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mNumGyroscopeSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->isLoggingEnabled(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    .line 131
    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mNumOrientationSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->isLoggingEnabled(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    .line 123
    goto :goto_0

    .line 126
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mNumAccelerometerSensorDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->isLoggingEnabled(Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v0

    .line 127
    nop

    .line 138
    :goto_0
    if-eqz v0, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UWB Sensor Data Received Type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mListenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorEvent;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 146
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public registerListener(Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mListenerSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public declared-synchronized startSensorListen()V
    .locals 3

    monitor-enter p0

    .line 48
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mIsSensorRegistered:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->isSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mOrientationSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mGyroscopeSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mIsSensorRegistered:Z

    .line 54
    const-string v0, "extension_UwbSensorManager"

    const-string v1, "PostProcessing Sensor Listener Registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local p0    # "this":Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mIsSensorRegistered:Z

    if-nez v0, :cond_1

    .line 58
    const-string v0, "extension_UwbSensorManager"

    const-string v1, "PostProcessing Sensor Listener is already Registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopSensorListen()V
    .locals 2

    monitor-enter p0

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->isSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mIsSensorRegistered:Z

    .line 67
    const-string v0, "extension_UwbSensorManager"

    const-string v1, "PostProcessing Sensor Listener Unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    .end local p0    # "this":Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mIsSensorRegistered:Z

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "extension_UwbSensorManager"

    const-string v1, "PostProcessing Sensor Listener is already Unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mListenerSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager;->mListenerSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    return-void
.end method
