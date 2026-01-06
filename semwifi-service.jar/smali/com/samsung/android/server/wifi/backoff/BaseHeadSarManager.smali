.class public abstract Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/BaseSarManager;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final ACTION_HEAD_SAR_INTENT:Ljava/lang/String; = "android.samsung.media.action.receiver_sar"

.field public static final EXTRA_RCV_ON:Ljava/lang/String; = "android.samsung.media.extra.receiver"


# instance fields
.field mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

.field mCallReceiver:Landroid/content/BroadcastReceiver;

.field mCallReceiverEnabled:Z

.field mIsCloseToProximitySensor:Z

.field mIsProximitySensorMonitorEnabled:Z

.field mProximitySensor:Landroid/hardware/Sensor;

.field mProximityThreshold:F


# direct methods
.method public static synthetic $r8$lambda$OMLS0ola9afOxmNL-EPZpr99Lw4(Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->lambda$setPowerBackoffEnabled$0(IZLjava/lang/String;)V

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
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$1;-><init>(Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    const/16 p2, 0x8

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mProximitySensor:Landroid/hardware/Sensor;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mProximityThreshold:F

    .line 30
    .line 31
    new-instance p1, Landroid/content/IntentFilter;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string p2, "android.samsung.media.action.receiver_sar"

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    .line 44
    .line 45
    const-string p1, "android.intent.action.PHONE_STATE"

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
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
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p3, p2, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->notifyToClients(Ljava/lang/String;ZI)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method setPowerBackoffEnabled(Z)V
    .locals 4

    .line 1
    const-string v0, "SemWifiBackOff.Sar"

    .line 2
    .line 3
    const-string v1, "setPowerBackoff(head) enabled="

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
    new-instance v3, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v3, p0, v0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;IZ)V

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
    const/4 v0, 0x1

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

.method triggerReceiverRoutine(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetBackoff(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->updateWifiState(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x3

    .line 5
    if-ne p2, p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseHeadSarManager;->mCallReceiverEnabled:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetBackoff(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
