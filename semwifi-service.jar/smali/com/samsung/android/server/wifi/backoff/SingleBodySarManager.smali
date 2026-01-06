.class public Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "SingleBodySarManager"


# instance fields
.field private final mGripSensorChannel:I

.field private final mSingleBodySarGripSensor:Landroid/hardware/Sensor;

.field mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGripSensorChannel(Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->mGripSensorChannel:I

    .line 2
    .line 3
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    invoke-virtual {p1, p5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->mSingleBodySarGripSensor:Landroid/hardware/Sensor;

    .line 18
    .line 19
    iput p6, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->mGripSensorChannel:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method checkAndSetBackoff(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : checkAndSetBackoff "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "SemWifiBackOff.Sar"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mBackoffEnabled:Z

    .line 35
    .line 36
    if-ne v0, p1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->setPowerBackoffEnabled(Z)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    :goto_0
    const-string p0, "checkAndSetBackoff exit"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : checkAndSetListener "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "SemWifiBackOff.Sar"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->mSingleBodySarGripSensor:Landroid/hardware/Sensor;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-virtual {p1, v0, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/SingleBodySarManager;->mSingleBodySarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SingleBodySarManager"

    .line 2
    .line 3
    return-object p0
.end method
