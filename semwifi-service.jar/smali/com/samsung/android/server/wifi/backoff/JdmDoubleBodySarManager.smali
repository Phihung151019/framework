.class public Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "JdmDoubleBodySarManager"


# instance fields
.field private final mDoubleBodyRfSarGripSensor:Landroid/hardware/Sensor;

.field mDoubleBodyRfSarGripSensorListener:Landroid/hardware/SensorEventListener;

.field private final mDoubleBodyWifiSarGripSensor:Landroid/hardware/Sensor;

.field mDoubleBodyWifiSarGripSensorListener:Landroid/hardware/SensorEventListener;

.field private mIsGripping1:Z

.field private mIsGripping2:Z

.field private mIsHeadSar:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsGripping2:Z

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
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyWifiSarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyRfSarGripSensorListener:Landroid/hardware/SensorEventListener;

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyWifiSarGripSensor:Landroid/hardware/Sensor;

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyRfSarGripSensor:Landroid/hardware/Sensor;

    .line 39
    .line 40
    return-void
.end method

.method private updateBackoffMode()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : update : mIsGripping1:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsGripping1:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " mIsGripping2:"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsGripping2:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "SemWifiBackOff.Sar"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    iget v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    const/4 v3, 0x0

    .line 46
    if-ne v0, v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v2, " : updateBackoffMode : mIsHeadSar:"

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsHeadSar:Z

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsHeadSar:Z

    .line 82
    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsGripping1:Z

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    const/4 v0, -0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 100
    .line 101
    .line 102
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

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
    if-nez v0, :cond_0

    .line 33
    .line 34
    const-string p0, "checkAndSetBackoff exit"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->updateBackoffMode()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const/4 p1, -0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->getName()Ljava/lang/String;

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
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyWifiSarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyWifiSarGripSensor:Landroid/hardware/Sensor;

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyRfSarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyRfSarGripSensor:Landroid/hardware/Sensor;

    .line 47
    .line 48
    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyWifiSarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mDoubleBodyRfSarGripSensorListener:Landroid/hardware/SensorEventListener;

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JdmDoubleBodySarManager"

    .line 2
    .line 3
    return-object p0
.end method

.method public onBroadcastBackoffState(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->onBroadcastBackoffState(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    const-string v0, "JdmProximityHeadSarManager"

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string v0, "JdmReceiverHeadSarManager"

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsHeadSar:Z

    .line 23
    .line 24
    or-int/2addr p1, p2

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmDoubleBodySarManager;->mIsHeadSar:Z

    .line 26
    .line 27
    return-void
.end method
