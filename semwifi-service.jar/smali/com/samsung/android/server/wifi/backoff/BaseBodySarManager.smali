.class public abstract Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseSarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final SENSOR_MODE_NORMAL:I = 0x5

.field public static final SENSOR_MODE_UNKNOWN:I = 0x4

.field public static final SENSOR_STATE_BOOTING:I = 0x1

.field public static final SENSOR_STATE_NORMAL:I = 0x3

.field public static final SENSOR_STATE_UNKNOWN_BACKOFF:I = 0x2


# instance fields
.field mIsGripSensorMonitorEnabled:Z

.field mSensorState:I


# direct methods
.method public static synthetic $r8$lambda$_KXDcejCGUJ6Qtm-6ihjptu1bnc(Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->lambda$setPowerBackoffEnabled$0(IZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 6
    .line 7
    iget-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    iget-object p3, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string p4, "wifi_sensor_monitor_enable"

    .line 12
    .line 13
    invoke-virtual {p2, p3, p4, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const-string p0, "enabled state"

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-string p0, "disabled state"

    .line 29
    .line 30
    :goto_1
    const-string p1, "create sensor monitor with "

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "SemWifiBackOff.Sar"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private synthetic lambda$setPowerBackoffEnabled$0(IZLjava/lang/String;)V
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


# virtual methods
.method checkAndSetSensorState(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->getSensorMode(Landroid/hardware/SensorEvent;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const-string v0, "getSensorMode="

    .line 14
    .line 15
    const-string v2, ", mSensorState="

    .line 16
    .line 17
    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v2, "SemWifiBackOff.Sar"

    .line 31
    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    iget p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    if-ne p1, v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetBackoff(Z)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x2

    .line 47
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const/4 v0, 0x5

    .line 51
    if-ne p1, v0, :cond_2

    .line 52
    .line 53
    iput v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mSensorState:I

    .line 54
    .line 55
    :cond_2
    return-void
.end method

.method getSensorMode(Landroid/hardware/SensorEvent;)I
    .locals 5

    .line 1
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    array-length p0, p0

    .line 4
    const/4 v0, 0x2

    .line 5
    const/4 v1, 0x5

    .line 6
    const-string v2, "SemWifiBackOff.Sar"

    .line 7
    .line 8
    if-gt p0, v0, :cond_0

    .line 9
    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "event.values.length="

    .line 13
    .line 14
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 18
    .line 19
    array-length p1, p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v0, "event.values[3],="

    .line 34
    .line 35
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    aget v0, v0, v3

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", event.values[4]="

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 52
    .line 53
    const/4 v4, 0x4

    .line 54
    aget v0, v0, v4

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 67
    .line 68
    aget p0, p0, v3

    .line 69
    .line 70
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    .line 72
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    iget-object p0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 79
    .line 80
    aget p0, p0, v4

    .line 81
    .line 82
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    return v4

    .line 90
    :cond_2
    :goto_0
    return v1
.end method

.method isGripSensorMonitorEnabled()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "wifi_sensor_monitor_enable"

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v3, 0x0

    .line 16
    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;->mIsGripSensorMonitorEnabled:Z

    .line 17
    .line 18
    return v3
.end method

.method setPowerBackoffEnabled(Z)V
    .locals 4

    .line 1
    const-string v0, "SemWifiBackOff.Sar"

    .line 2
    .line 3
    const-string v1, "setPowerBackoff(body) enabled="

    .line 4
    .line 5
    invoke-static {v1, v0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v3, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/BaseBodySarManager;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 24
    .line 25
    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->reportBackOffState(ZI)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->broadcastBackoffState(Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p0
.end method
