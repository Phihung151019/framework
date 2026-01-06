.class public Lcom/samsung/android/server/wifi/backoff/A03sSarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field static final NAME:Ljava/lang/String; = "A03sSarManager"


# instance fields
.field private final mA03sGripSensor1:Landroid/hardware/Sensor;

.field mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

.field private mIsGripSensorMonitorEnabled:Z

.field private mIsGripping1:Z

.field private mIsRcvEnabled:Z

.field private mIsReceiverListenerEnabled:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsGripSensorMonitorEnabled(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsGripSensorMonitorEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRcvEnabled(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsRcvEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsGripping1(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsGripping1:Z

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/A03sSarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 14
    .line 15
    const p2, 0x10027

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mA03sGripSensor1:Landroid/hardware/Sensor;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string p3, "wifi_sensor_monitor_enable"

    .line 29
    .line 30
    const/4 p4, 0x1

    .line 31
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne p1, p4, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p4, 0x0

    .line 39
    :goto_0
    iput-boolean p4, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsGripSensorMonitorEnabled:Z

    .line 40
    .line 41
    if-eqz p4, :cond_1

    .line 42
    .line 43
    const-string p0, "enabled state"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p0, "disabled state"

    .line 47
    .line 48
    :goto_1
    const-string p1, "create sensor monitor with "

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string p1, "SemWifiBackOff.Sar"

    .line 55
    .line 56
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

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
    move-result-object p1

    .line 25
    const-string v0, "SemWifiBackOff.Sar"

    .line 26
    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    const-string p0, "checkAndSetBackoff exit"

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsRcvEnabled:Z

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const-string p1, "setPowerBackoffMode: 0"

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsGripping1:Z

    .line 55
    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    const-string p1, "setPowerBackoffMode: 1"

    .line 59
    .line 60
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->setPowerBackoffMode3ant(I)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    const-string p1, "setPowerBackoffEnabled to false"

    .line 69
    .line 70
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->setPowerBackoffEnabled(Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method checkAndSetListener(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

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
    const-string v0, " : mGripSensor1 == null"

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsReceiverListenerEnabled:Z

    .line 35
    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    .line 42
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    .line 43
    .line 44
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsReceiverListenerEnabled:Z

    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mA03sGripSensor1:Landroid/hardware/Sensor;

    .line 51
    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 70
    .line 71
    const/4 v1, 0x3

    .line 72
    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsReceiverListenerEnabled:Z

    .line 77
    .line 78
    if-eqz p1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    .line 86
    .line 87
    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsReceiverListenerEnabled:Z

    .line 89
    .line 90
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mA03sGripSensor1:Landroid/hardware/Sensor;

    .line 91
    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {p1, p0, v0, v1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mA03sSarGripSensorListener1:Landroid/hardware/SensorEventListener;

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "A03sSarManager"

    .line 2
    .line 3
    return-object p0
.end method

.method triggerReceiverRoutine(Z)V
    .locals 2

    .line 1
    const-string v0, "Receiver is set to"

    .line 2
    .line 3
    const-string v1, "SemWifiBackOff.Sar"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsRcvEnabled:Z

    .line 9
    .line 10
    if-ne v0, p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsRcvEnabled:Z

    .line 14
    .line 15
    if-nez p1, :cond_2

    .line 16
    .line 17
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->mIsGripping1:Z

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->checkAndSetBackoff(Z)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/A03sSarManager;->checkAndSetBackoff(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
