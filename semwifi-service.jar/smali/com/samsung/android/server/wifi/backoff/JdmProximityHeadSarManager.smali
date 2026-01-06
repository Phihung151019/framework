.class public Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "JdmProximityHeadSarManager"

.field static mBackOffStatus:Z


# instance fields
.field private mIsBodySar:Z

.field private mIsJdmProximityEnabled:Z

.field mProximitySensorListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public static synthetic $r8$lambda$NXnTWVg_FVeDqE3UBalLhJ-4vQQ(Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->lambda$setPowerBackoffMode3ant$0(IZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
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

.method private registerListenerBaseHeadSarReceiver()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : registerListenerBaseHeadSarReceiver "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsJdmProximityEnabled:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "SemWifiBackOff.Sar"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsJdmProximityEnabled:Z

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    .line 41
    .line 42
    const/4 v3, 0x2

    .line 43
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsJdmProximityEnabled:Z

    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private unRegisterListenerBaseHeadSarReceiver()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " : unRegisterListenerBaseHeadSarReceiver "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsJdmProximityEnabled:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "SemWifiBackOff.Sar"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsJdmProximityEnabled:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsJdmProximityEnabled:Z

    .line 45
    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method checkAndSetBackoff(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

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
    const/4 v0, 0x1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, " : Proximity sensor started at : "

    .line 56
    .line 57
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v2

    .line 64
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->setPowerBackoffEnabled(Z)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " : Proximity sensor stopped at : "

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v2

    .line 99
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v2, " : checkAndSetBackoff : mIsBodySar:"

    .line 122
    .line 123
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsBodySar:Z

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsBodySar:Z

    .line 139
    .line 140
    if-eqz p1, :cond_2

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->setPowerBackoffMode3ant(I)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_2
    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->setPowerBackoffEnabled(Z)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 4

    .line 1
    const-string v0, "SemWifiBackOff.Sar"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->registerListenerBaseHeadSarReceiver()V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    .line 9
    .line 10
    if-nez p1, :cond_2

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiverEnabled:Z

    .line 13
    .line 14
    if-eqz p1, :cond_2

    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 24
    .line 25
    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " : Proximity sensor registered at : "

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    .line 59
    .line 60
    return-void

    .line 61
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 62
    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->unRegisterListenerBaseHeadSarReceiver()V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 77
    .line 78
    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, " : ProxSensor unregisterListener complete"

    .line 89
    .line 90
    invoke-static {p1, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsProximitySensorMonitorEnabled:Z

    .line 99
    .line 100
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "JdmProximityHeadSarManager"

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
    if-nez v0, :cond_0

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
    if-nez p1, :cond_0

    .line 19
    .line 20
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mIsBodySar:Z

    .line 21
    .line 22
    :cond_0
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
    new-instance v3, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;IZ)V

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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    sget-boolean v0, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->mBackOffStatus:Z

    .line 39
    .line 40
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->broadcastBackoffState(Ljava/lang/String;Z)V

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

.method triggerReceiverRoutine(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->checkAndSetListener(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mIsCloseToProximitySensor:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/JdmProximityHeadSarManager;->checkAndSetBackoff(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
