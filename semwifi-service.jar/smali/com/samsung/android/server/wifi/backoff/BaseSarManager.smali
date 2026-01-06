.class public abstract Lcom/samsung/android/server/wifi/backoff/BaseSarManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/backoff/IObserver;


# static fields
.field static final DBG:Z

.field public static final RF_TEST_MODE:I = 0x2

.field public static final RF_TEST_MODE_WITH_PROXIMITY:I = 0x1

.field public static final RF_USER_MODE:I = 0x0

.field static final TAG:Ljava/lang/String; = "SemWifiBackOff.Sar"


# instance fields
.field mActiveInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBackoffEnabled:Z

.field mContext:Landroid/content/Context;

.field private final mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

.field private mEnabledSarManagerName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIsRfTestMode:Z

.field private mListener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

.field final mLock:Ljava/lang/Object;

.field mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

.field mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field mSensorManager:Landroid/hardware/SensorManager;

.field mWifiEnabled:Z

.field mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;


# direct methods
.method public static synthetic $r8$lambda$6U87joVLjfRUFjiQ__A_dm70ec4(Lcom/samsung/android/server/wifi/backoff/BaseSarManager;IIZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->lambda$setPowerBackoffMode1ant$1(IIZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$hSzFldjHx88ZOtFo1V1qoyRICLA(Lcom/samsung/android/server/wifi/backoff/BaseSarManager;IZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->lambda$setPowerBackoffMode3ant$0(IZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->getBroadcastObservable()Lcom/samsung/android/server/wifi/backoff/Observable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/backoff/Observable;->registObserver(Lcom/samsung/android/server/wifi/backoff/IObserver;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 25
    .line 26
    new-instance p1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 32
    .line 33
    new-instance p1, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 39
    .line 40
    new-instance p1, Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mEnabledSarManagerName:Ljava/util/Set;

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkRfMode()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 54
    .line 55
    const-string p2, "sensor"

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/hardware/SensorManager;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 64
    .line 65
    return-void
.end method

.method private checkRfMode()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSemFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "wifi_new_rf_test_mode"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const-string v2, "SemWifiBackOff.Sar"

    .line 16
    .line 17
    const-string v4, "startProximitySensor by checkRfMode"

    .line 18
    .line 19
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetBackoff(Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    return v3
.end method

.method private synthetic lambda$setPowerBackoffMode1ant$1(IIZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiNative:Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    .line 2
    .line 3
    invoke-interface {v0, p4, p1, p2}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;II)Z

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p4, p3, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->notifyToClients(Ljava/lang/String;ZI)V

    .line 8
    .line 9
    .line 10
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


# virtual methods
.method public addInterface(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method abstract checkAndSetBackoff(Z)V
.end method

.method abstract checkAndSetListener(Z)V
.end method

.method public getBackOffMode()Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method getRfTestModeString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "] mIsRfTestMode="

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mIsRfTestMode:Z

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method notifyToClients(Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mListener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {v0, p1, p0, p3}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStarted(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {v0, p1, p0, p3}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStopped(Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onBroadcastBackoffState(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mEnabledSarManagerName:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mEnabledSarManagerName:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public removeInterface(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method reportBackOffState(ZI)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mBackoffEnabled:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->add(I)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 12
    .line 13
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->remove(I)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method setListener(Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mListener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    .line 2
    .line 3
    return-void
.end method

.method abstract setPowerBackoffEnabled(Z)V
.end method

.method setPowerBackoffMode1ant(II)V
    .locals 5

    .line 1
    const-string v0, "SemWifiBackOff.Sar"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "setPowerBackoff(body) mode="

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ", ant="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v2

    .line 37
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mActiveInterfaces:Ljava/util/Set;

    .line 38
    .line 39
    new-instance v4, Lcom/samsung/android/server/wifi/backoff/BaseSarManager$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    invoke-direct {v4, p0, p1, p2, v1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/backoff/BaseSarManager;IIZ)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v3, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->reportBackOffState(ZI)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mSarManager:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0, v1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->broadcastBackoffState(Ljava/lang/String;Z)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
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
    new-instance v3, Lcom/samsung/android/server/wifi/backoff/BaseSarManager$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v3, p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/BaseSarManager;IZ)V

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
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->broadcastBackoffState(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method public updateWifiState(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-string p1, "updateWifiState state="

    .line 2
    .line 3
    const-string v0, ", mWifiEnabled="

    .line 4
    .line 5
    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", mBackoffEnabled="

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mBackoffEnabled:Z

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "SemWifiBackOff.Sar"

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    if-ne p2, p1, :cond_0

    .line 35
    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    :cond_0
    const/4 v0, 0x3

    .line 41
    if-ne p2, v0, :cond_1

    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    if-ne p2, v0, :cond_2

    .line 49
    .line 50
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetListener(Z)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    if-ne p2, p1, :cond_3

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mWifiEnabled:Z

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->checkAndSetListener(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/BaseSarManager;->mCurrentBackOffMode:Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->reset()V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    return-void
.end method
