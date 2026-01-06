.class public Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "JdmTripleBodySarManager"


# instance fields
.field private final mGripLteSubSensor:Landroid/hardware/Sensor;

.field private mIsGripLteSubSensor:Z

.field private mIsGripping1:Z

.field private mIsGripping2:Z

.field private mIsHeadSar:Z

.field mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

.field private final mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

.field private final mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

.field mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping2:Z

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
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 17
    .line 18
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager$3;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager$3;-><init>(Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 26
    .line 27
    const p2, 0x10018

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 37
    .line 38
    const p2, 0x10027

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 46
    .line 47
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 48
    .line 49
    const p2, 0x10064

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 57
    .line 58
    return-void
.end method

.method private updateBackoffModeForTripleAnt()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->getName()Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping1:Z

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping2:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " mIsGripLteSubSensor:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "SemWifiBackOff.Sar"

    .line 48
    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping2:Z

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping1:Z

    .line 57
    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    .line 61
    .line 62
    if-eqz v2, :cond_0

    .line 63
    .line 64
    const/4 v0, 0x3

    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripping1:Z

    .line 72
    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsGripLteSubSensor:Z

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    :cond_1
    const/4 v0, 0x2

    .line 80
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v2, " : updateBackoffModeForTripleAnt : mIsHeadSar:"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsHeadSar:Z

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsHeadSar:Z

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    const/4 v0, -0x1

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 131
    .line 132
    .line 133
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->getName()Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->updateBackoffModeForTripleAnt()V

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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : enable sensor monitoring : "

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 56
    .line 57
    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JdmTripleBodySarManager"

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
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsHeadSar:Z

    .line 23
    .line 24
    or-int/2addr p1, p2

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmTripleBodySarManager;->mIsHeadSar:Z

    .line 26
    .line 27
    return-void
.end method
