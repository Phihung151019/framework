.class public Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "DoubleBodySarManager"


# instance fields
.field private final mDoubleBodySarGripSensor1:Landroid/hardware/Sensor;

.field private final mDoubleBodySarGripSensor2:Landroid/hardware/Sensor;

.field mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

.field private mGripSensorChannel1:I

.field private mGripSensorChannel2:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmGripSensorChannel1(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mGripSensorChannel1:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGripSensorChannel2(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mGripSensorChannel2:I

    .line 2
    .line 3
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p2, " : SEC_PRODUCT_FEATURE_WLAN_CONFIG_SEPARATE_ANT_BACKOFF="

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "SemWifiBackOff.Sar"

    .line 43
    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const-string p1, " "

    .line 48
    .line 49
    invoke-virtual {p5, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 54
    .line 55
    const/4 p3, 0x0

    .line 56
    aget-object p3, p1, p3

    .line 57
    .line 58
    const-string p4, "0x"

    .line 59
    .line 60
    const-string p5, ""

    .line 61
    .line 62
    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    const/16 v0, 0x10

    .line 67
    .line 68
    invoke-static {p3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 77
    .line 78
    const/4 p2, 0x1

    .line 79
    aget-object p2, p1, p2

    .line 80
    .line 81
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    iput p2, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mGripSensorChannel1:I

    .line 86
    .line 87
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 88
    .line 89
    const/4 p3, 0x2

    .line 90
    aget-object p3, p1, p3

    .line 91
    .line 92
    invoke-virtual {p3, p4, p5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-static {p3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 105
    .line 106
    const/4 p2, 0x3

    .line 107
    aget-object p1, p1, p2

    .line 108
    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mGripSensorChannel2:I

    .line 114
    .line 115
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

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
    if-eqz v0, :cond_2

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
    const/4 v0, 0x0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x2

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode1ant(II)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    :goto_0
    const-string p0, "checkAndSetBackoff exit"

    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensor1:Landroid/hardware/Sensor;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensor2:Landroid/hardware/Sensor;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/DoubleBodySarManager;->mDoubleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

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
    const-string p0, "DoubleBodySarManager"

    .line 2
    .line 3
    return-object p0
.end method
