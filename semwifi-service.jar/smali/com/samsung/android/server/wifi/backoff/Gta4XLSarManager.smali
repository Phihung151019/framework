.class public Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "Gta4XLSarManager"


# instance fields
.field private final mGta4XLGripSensor1:Landroid/hardware/Sensor;

.field private final mGta4XLGripSensor2:Landroid/hardware/Sensor;

.field mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

.field private mIsGripping1:Z

.field private mIsGripping2:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 19
    .line 20
    const p2, 0x10027

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLGripSensor1:Landroid/hardware/Sensor;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 30
    .line 31
    const p2, 0x10018

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLGripSensor2:Landroid/hardware/Sensor;

    .line 39
    .line 40
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->getName()Ljava/lang/String;

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v0, "checkAndSetBackoff exit, mWifiEnabled="

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLGripSensor1:Landroid/hardware/Sensor;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLGripSensor2:Landroid/hardware/Sensor;

    .line 18
    .line 19
    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/Gta4XLSarManager;->mGta4XLSarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Gta4XLSarManager"

    .line 2
    .line 3
    return-object p0
.end method
