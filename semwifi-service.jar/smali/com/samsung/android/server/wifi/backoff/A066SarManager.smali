.class public Lcom/samsung/android/server/wifi/backoff/A066SarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final HOTSPOT_SAR_BACKOFF:I = 0x6

.field static final NAME:Ljava/lang/String; = "A066SarManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private final mGripLteSubSensor:Landroid/hardware/Sensor;

.field private final mGripLteSubSensor2:Landroid/hardware/Sensor;

.field private mHotspotEnabled:Z

.field private mIsGripLteSubSensor:Z

.field private mIsGripLteSubSensor2:Z

.field private mIsGripping1:Z

.field private mIsGripping2:Z

.field private mIsHeadSar:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

.field mTripleBodySarGripLteSubSensorListener2:Landroid/hardware/SensorEventListener;

.field private final mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

.field private final mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

.field mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mHotspotEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripLteSubSensor2(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor2:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping2:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHotspotEnabled(Lcom/samsung/android/server/wifi/backoff/A066SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mHotspotEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripLteSubSensor(Lcom/samsung/android/server/wifi/backoff/A066SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripLteSubSensor2(Lcom/samsung/android/server/wifi/backoff/A066SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor2:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A066SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping2(Lcom/samsung/android/server/wifi/backoff/A066SarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping2:Z

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
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A066SarManager$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A066SarManager$2;

    .line 12
    .line 13
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager$2;-><init>(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 17
    .line 18
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager$3;-><init>(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 24
    .line 25
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A066SarManager$4;

    .line 26
    .line 27
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager$4;-><init>(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripLteSubSensorListener2:Landroid/hardware/SensorEventListener;

    .line 31
    .line 32
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A066SarManager$5;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager$5;-><init>(Lcom/samsung/android/server/wifi/backoff/A066SarManager;)V

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    .line 41
    const p3, 0x10018

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 51
    .line 52
    const p3, 0x10027

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 60
    .line 61
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 62
    .line 63
    const p3, 0x10064

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 71
    .line 72
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    .line 74
    const p3, 0x10065

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mGripLteSubSensor2:Landroid/hardware/Sensor;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    return-void
.end method

.method private updateBackoffModeForA066SarBackOff()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->getName()Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping1:Z

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping2:Z

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
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor:Z

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "mIsGripLteSubSensor2 "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor2:Z

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, " mHotspotEnabled "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mHotspotEnabled:Z

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "SemWifiBackOff.Sar"

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsHeadSar:Z

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsHeadSar:Z

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    const-string v1, "wifi"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/16 v1, 0xd

    .line 98
    .line 99
    if-eq v0, v1, :cond_7

    .line 100
    .line 101
    const/16 v1, 0xc

    .line 102
    .line 103
    if-ne v0, v1, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping2:Z

    .line 107
    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor2:Z

    .line 111
    .line 112
    if-nez v1, :cond_2

    .line 113
    .line 114
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor:Z

    .line 115
    .line 116
    if-nez v1, :cond_2

    .line 117
    .line 118
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping1:Z

    .line 119
    .line 120
    if-nez v1, :cond_2

    .line 121
    .line 122
    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_2
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor2:Z

    .line 130
    .line 131
    if-eqz v1, :cond_3

    .line 132
    .line 133
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor:Z

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping1:Z

    .line 138
    .line 139
    if-eqz v1, :cond_3

    .line 140
    .line 141
    const/4 v0, 0x3

    .line 142
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    const/4 v1, -0x1

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor2:Z

    .line 150
    .line 151
    if-nez v2, :cond_4

    .line 152
    .line 153
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor:Z

    .line 154
    .line 155
    if-nez v2, :cond_4

    .line 156
    .line 157
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping1:Z

    .line 158
    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    :cond_4
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_5
    if-nez v0, :cond_6

    .line 166
    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor2:Z

    .line 168
    .line 169
    if-nez v0, :cond_6

    .line 170
    .line 171
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripLteSubSensor:Z

    .line 172
    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsGripping1:Z

    .line 176
    .line 177
    if-nez v0, :cond_6

    .line 178
    .line 179
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_6
    const/4 v0, 0x2

    .line 184
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_7
    :goto_0
    const/4 v0, 0x6

    .line 189
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 190
    .line 191
    .line 192
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
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->updateBackoffModeForA066SarBackOff()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsHeadSar:Z

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    const/4 p1, -0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->getName()Ljava/lang/String;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensor1:Landroid/hardware/Sensor;

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensor2:Landroid/hardware/Sensor;

    .line 47
    .line 48
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mGripLteSubSensor:Landroid/hardware/Sensor;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripLteSubSensorListener2:Landroid/hardware/SensorEventListener;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mGripLteSubSensor2:Landroid/hardware/Sensor;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 67
    .line 68
    .line 69
    new-instance p1, Landroid/content/IntentFilter;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mFilter:Landroid/content/IntentFilter;

    .line 75
    .line 76
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mFilter:Landroid/content/IntentFilter;

    .line 86
    .line 87
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripSensorListener2:Landroid/hardware/SensorEventListener;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripLteSubSensorListener:Landroid/hardware/SensorEventListener;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 113
    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mTripleBodySarGripLteSubSensorListener2:Landroid/hardware/SensorEventListener;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    .line 123
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "A066SarManager"

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
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/A066SarManager;->mIsHeadSar:Z

    .line 23
    .line 24
    return-void
.end method
