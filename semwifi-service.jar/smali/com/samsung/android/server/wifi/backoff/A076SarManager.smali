.class public Lcom/samsung/android/server/wifi/backoff/A076SarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final HOTSPOT_SAR_BACKOFF:I = 0x6

.field static final NAME:Ljava/lang/String; = "A076SarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mGripLteSubSensor:Landroid/hardware/Sensor;

.field private mHotspotEnabled:Z

.field private mIsBodySar:Z

.field private mIsGripLteSubSensor:Z

.field private mIsGripping1:Z

.field private mIsGripping2:Z

.field private mIsHeadSar:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

.field private final mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

.field private final mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

.field mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;


# direct methods
.method public static synthetic $r8$lambda$gvgAjXWpSkc1iBslcysPvVfx85A(Lcom/samsung/android/server/wifi/backoff/A076SarManager;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->lambda$setPowerBackoffMode3ant$0(IZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mHotspotEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A076SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mHotspotEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsBodySar(Lcom/samsung/android/server/wifi/backoff/A076SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsBodySar:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A076SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A076SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A076SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping2:Z

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
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A076SarManager$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A076SarManager$2;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 17
    .line 18
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A076SarManager$3;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager$3;-><init>(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 24
    .line 25
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager$4;-><init>(Lcom/samsung/android/server/wifi/backoff/A076SarManager;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 33
    .line 34
    const p3, 0x10018

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 42
    .line 43
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 44
    .line 45
    const p3, 0x10027

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 53
    .line 54
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 55
    .line 56
    const p3, 0x10064

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    return-void
.end method

.method private synthetic lambda$setPowerBackoffMode3ant$0(IZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 2
    .line 3
    invoke-interface {v0, p3, p1}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->notifyToClients(Ljava/lang/String;ZI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private updateBackoffModeForA076SarBackOff()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->getName()Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping1:Z

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping2:Z

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripLteSubSensor:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, " mHotspotEnabled "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mHotspotEnabled:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "SemWifiBackOff.Sar"

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsHeadSar:Z

    .line 63
    .line 64
    if-eqz v0, :cond_0

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->setPowerBackoffMode3ant(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    const-string v1, "wifi"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    const/16 v1, 0xc

    .line 86
    .line 87
    if-eq v0, v1, :cond_5

    .line 88
    .line 89
    const/16 v1, 0xd

    .line 90
    .line 91
    if-ne v0, v1, :cond_1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping2:Z

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripLteSubSensor:Z

    .line 99
    .line 100
    if-nez v1, :cond_2

    .line 101
    .line 102
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping1:Z

    .line 103
    .line 104
    if-nez v1, :cond_2

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->setPowerBackoffMode3ant(I)V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    if-eqz v0, :cond_4

    .line 112
    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripping1:Z

    .line 114
    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsGripLteSubSensor:Z

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    :cond_3
    const/4 v0, 0x2

    .line 122
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->setPowerBackoffMode3ant(I)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_4
    const/4 v0, -0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->setPowerBackoffMode3ant(I)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    :goto_0
    const/4 v0, 0x6

    .line 132
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->setPowerBackoffMode3ant(I)V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method checkAndSetBackoff(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWifiBackOff.Sar"

    .line 6
    .line 7
    const-string p1, "checkAndSetBackoff exit"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->updateBackoffModeForA076SarBackOff()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsHeadSar:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->setPowerBackoffMode3ant(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/4 p1, -0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->setPowerBackoffMode3ant(I)V

    .line 30
    .line 31
    .line 32
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mFilter:Landroid/content/IntentFilter;

    .line 66
    .line 67
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mFilter:Landroid/content/IntentFilter;

    .line 77
    .line 78
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    .line 107
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "A076SarManager"

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
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsHeadSar:Z

    .line 23
    .line 24
    return-void
.end method

.method setPowerBackoffMode3ant(I)V
    .locals 4

    .line 1
    const-string v0, "SemWifiBackOff.Sar"

    .line 2
    .line 3
    const-string v1, "setPowerBackoff(3 ant) mode="

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 18
    .line 19
    new-instance v3, Lcom/samsung/android/server/wifi/backoff/A076SarManager$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/A076SarManager;IZ)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 25
    .line 26
    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const/4 p1, 0x2

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->reportBackOffState(ZI)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A076SarManager;->mIsBodySar:Z

    .line 39
    .line 40
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->broadcastBackoffState(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method
