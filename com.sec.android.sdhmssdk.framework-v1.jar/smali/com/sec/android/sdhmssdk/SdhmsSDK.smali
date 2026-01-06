.class public Lcom/sec/android/sdhmssdk/SdhmsSDK;
.super Ljava/lang/Object;
.source "SdhmsSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final THERMAL_CONTROL_5G:I = 0x8

.field public static final THERMAL_CONTROL_BRIGHTNESS:I = 0x2

.field public static final THERMAL_CONTROL_HRR:I = 0x4

.field public static final THERMAL_CONTROL_SPEED:I = 0x1

.field private static final VERSION:Ljava/lang/String; = "1.7.0"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSupported:Z

.field private mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;


# direct methods
.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/android/sdhmssdk/SdhmsSDK;Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mContext:Landroid/content/Context;

    .line 36
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v1

    .line 37
    .local v1, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    .line 38
    return-void
.end method

.method private declared-synchronized getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .locals 3

    monitor-enter p0

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    if-nez v0, :cond_0

    .line 46
    const-string v0, "sdhms"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 47
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 48
    invoke-static {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    .line 49
    iget-object v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 51
    :try_start_1
    new-instance v1, Lcom/sec/android/sdhmssdk/SdhmsSDK$1;

    invoke-direct {v1, p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK$1;-><init>(Lcom/sec/android/sdhmssdk/SdhmsSDK;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    goto :goto_0

    .line 57
    .end local p0    # "this":Lcom/sec/android/sdhmssdk/SdhmsSDK;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 63
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mService:Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "1.7.0"

    return-object v0
.end method


# virtual methods
.method public addHeavyLoadApps(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 288
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 289
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 291
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->addHeavyLoadApps(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 296
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public addLowModeApps(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 330
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 331
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 333
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->addLowModeApps(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 338
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public addLowRefreshRateApps(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 372
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLowRefreshRateApps : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 374
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 376
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->addLowRefreshRateApps(Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 379
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 381
    :cond_0
    if-nez v0, :cond_1

    .line 382
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "addLowRefreshRateApps API call failed : SDHMS service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_1
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "addLowRefreshRateApps API call failed : mIsSupported is false"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getHeavyLoadApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 310
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 312
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getHeavyLoadApps()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 317
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHighBrightnessMode()Z
    .locals 3

    .line 476
    sget-object v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v1, "getHighBrightnessMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 478
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 480
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getHighBrightnessMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 481
    :catch_0
    move-exception v1

    .line 482
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 483
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 485
    :cond_0
    if-nez v0, :cond_1

    .line 486
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "getHighBrightnessMode API call failed : SDHMS service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_1
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "getHighBrightnessMode API call failed : mIsSupported is false"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getLowModeApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 351
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 352
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 354
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getLowModeApps()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 359
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLowRefreshRateApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    sget-object v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v1, "getLowRefreshRateApps"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 402
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 404
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getLowRefreshRateApps()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 405
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 407
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 409
    :cond_0
    if-nez v0, :cond_1

    .line 410
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "getLowRefreshRateApps API call failed : SDHMS service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_1
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "getLowRefreshRateApps API call failed : mIsSupported is false"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getOverheatEventHistory(JJ)Ljava/util/List;
    .locals 28
    .param p1, "startTimestamp"    # J
    .param p3, "endTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/sec/android/sdhmssdk/SemOverheatHistory;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v1

    .line 80
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v1, :cond_12

    move-object/from16 v3, p0

    iget-boolean v0, v3, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v0, :cond_12

    .line 82
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    nop

    .line 84
    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getOverheatReason(JJ)Ljava/util/List;

    move-result-object v8

    .line 85
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/sdhms/OverheatReasonInternal;

    .line 86
    .local v10, "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    const/4 v11, 0x0

    .line 87
    .local v11, "type":I
    const/4 v12, 0x0

    .local v12, "chargerType":I
    const/4 v13, 0x0

    .line 88
    .local v13, "environment":I
    const/4 v14, 0x0

    .local v14, "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    const/4 v15, 0x0

    .local v15, "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    const/16 v16, 0x0

    .line 89
    .local v16, "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    const/16 v17, 0x0

    .line 90
    .local v17, "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    const/16 v18, 0x0

    .line 92
    .local v18, "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getChargerType()I

    move-result v19
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v19, :cond_0

    .line 93
    or-int/lit8 v11, v11, 0x1

    .line 94
    :try_start_1
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getChargerType()I

    move-result v19
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v12, v19

    goto :goto_1

    .line 189
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .end local v10    # "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    .end local v11    # "type":I
    .end local v12    # "chargerType":I
    .end local v13    # "environment":I
    .end local v14    # "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v15    # "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v16    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v17    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .end local v18    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :catch_0
    move-exception v0

    move-object/from16 v21, v1

    const/16 v20, 0x0

    goto/16 :goto_b

    .line 97
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    .restart local v10    # "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    .restart local v11    # "type":I
    .restart local v12    # "chargerType":I
    .restart local v13    # "environment":I
    .restart local v14    # "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .restart local v15    # "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .restart local v16    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .restart local v17    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v18    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getCameraApp()Ljava/lang/String;

    move-result-object v19
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v20, 0x0

    const-string v2, "%%%"

    move-object/from16 v21, v1

    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .local v21, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    const-string v1, "###"

    const/16 v22, 0x0

    const/16 v23, 0x1

    if-eqz v19, :cond_3

    .line 98
    const/high16 v19, 0x10000

    or-int v11, v11, v19

    .line 100
    :try_start_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v19

    .line 101
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getCameraApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "appList":[Ljava/lang/String;
    array-length v4, v3

    move/from16 v5, v22

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v24, v3, v5

    move-object/from16 v25, v24

    .line 103
    .local v25, "s":Ljava/lang/String;
    move-object/from16 v24, v3

    move-object/from16 v3, v25

    .end local v25    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    .local v24, "appList":[Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 104
    .local v26, "app":[Ljava/lang/String;
    move-object/from16 v25, v3

    move-object/from16 v3, v26

    move/from16 v26, v4

    .end local v26    # "app":[Ljava/lang/String;
    .local v3, "app":[Ljava/lang/String;
    .restart local v25    # "s":Ljava/lang/String;
    array-length v4, v3

    move-object/from16 v27, v3

    const/4 v3, 0x2

    .end local v3    # "app":[Ljava/lang/String;
    .local v27, "app":[Ljava/lang/String;
    if-ne v4, v3, :cond_1

    .line 105
    new-instance v3, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    invoke-direct {v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;-><init>()V

    aget-object v4, v27, v22

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v3

    aget-object v4, v27, v23

    .line 107
    invoke-virtual {v3, v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    move-result-object v3

    .line 105
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v25    # "s":Ljava/lang/String;
    .end local v27    # "app":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v24

    move/from16 v4, v26

    goto :goto_2

    .end local v24    # "appList":[Ljava/lang/String;
    .local v3, "appList":[Ljava/lang/String;
    :cond_2
    move-object/from16 v24, v3

    .line 112
    .end local v3    # "appList":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getGameApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 113
    const/high16 v3, 0x20000

    or-int/2addr v11, v3

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v3

    .line 116
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getGameApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 117
    .restart local v3    # "appList":[Ljava/lang/String;
    array-length v4, v3

    move/from16 v5, v22

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v24, v3, v5

    move-object/from16 v25, v24

    .line 118
    .restart local v25    # "s":Ljava/lang/String;
    move-object/from16 v24, v3

    move-object/from16 v3, v25

    .end local v25    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    .restart local v24    # "appList":[Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 119
    .restart local v26    # "app":[Ljava/lang/String;
    move-object/from16 v25, v3

    move-object/from16 v3, v26

    move/from16 v26, v4

    .end local v26    # "app":[Ljava/lang/String;
    .local v3, "app":[Ljava/lang/String;
    .restart local v25    # "s":Ljava/lang/String;
    array-length v4, v3

    move-object/from16 v27, v3

    const/4 v3, 0x2

    .end local v3    # "app":[Ljava/lang/String;
    .restart local v27    # "app":[Ljava/lang/String;
    if-ne v4, v3, :cond_4

    .line 120
    new-instance v3, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    invoke-direct {v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;-><init>()V

    aget-object v4, v27, v22

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v3

    aget-object v4, v27, v23

    .line 122
    invoke-virtual {v3, v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    move-result-object v3

    .line 120
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v25    # "s":Ljava/lang/String;
    .end local v27    # "app":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v24

    move/from16 v4, v26

    goto :goto_3

    .end local v24    # "appList":[Ljava/lang/String;
    .local v3, "appList":[Ljava/lang/String;
    :cond_5
    move-object/from16 v24, v3

    .line 127
    .end local v3    # "appList":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNavigationApp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 128
    const/high16 v3, 0x40000

    or-int/2addr v11, v3

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .end local v16    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .local v3, "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNavigationApp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "appList":[Ljava/lang/String;
    array-length v5, v4

    move-object/from16 v16, v4

    move/from16 v4, v22

    .end local v4    # "appList":[Ljava/lang/String;
    .local v16, "appList":[Ljava/lang/String;
    :goto_4
    if-ge v4, v5, :cond_9

    aget-object v24, v16, v4

    move-object/from16 v25, v24

    .line 133
    .restart local v25    # "s":Ljava/lang/String;
    move/from16 v24, v4

    move-object/from16 v4, v25

    .end local v25    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 134
    .restart local v26    # "app":[Ljava/lang/String;
    move-object/from16 v25, v4

    move-object/from16 v4, v26

    move/from16 v26, v5

    .end local v26    # "app":[Ljava/lang/String;
    .local v4, "app":[Ljava/lang/String;
    .restart local v25    # "s":Ljava/lang/String;
    array-length v5, v4

    move-object/from16 v27, v4

    const/4 v4, 0x2

    .end local v4    # "app":[Ljava/lang/String;
    .restart local v27    # "app":[Ljava/lang/String;
    if-ne v5, v4, :cond_7

    .line 135
    new-instance v4, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    invoke-direct {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;-><init>()V

    aget-object v5, v27, v22

    .line 136
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    aget-object v5, v27, v23

    .line 137
    invoke-virtual {v4, v5}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    move-result-object v4

    .line 135
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v25    # "s":Ljava/lang/String;
    .end local v27    # "app":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v24, 0x1

    move/from16 v5, v26

    goto :goto_4

    .line 127
    .end local v3    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .local v16, "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    :cond_8
    move-object/from16 v3, v16

    .line 142
    .end local v16    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .restart local v3    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    :cond_9
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNetworkApp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 143
    or-int/lit8 v11, v11, 0x2

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .end local v17    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .local v4, "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getNetworkApp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, "appList":[Ljava/lang/String;
    array-length v6, v5

    move/from16 v7, v22

    :goto_5
    if-ge v7, v6, :cond_b

    aget-object v17, v5, v7

    move-object/from16 v24, v17

    .line 148
    .local v24, "s":Ljava/lang/String;
    move-object/from16 v17, v5

    move-object/from16 v5, v24

    .end local v24    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    .local v17, "appList":[Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v24

    .line 149
    .local v25, "app":[Ljava/lang/String;
    move-object/from16 v24, v5

    move-object/from16 v5, v25

    move/from16 v25, v6

    .end local v25    # "app":[Ljava/lang/String;
    .local v5, "app":[Ljava/lang/String;
    .restart local v24    # "s":Ljava/lang/String;
    array-length v6, v5

    move-object/from16 v26, v5

    const/4 v5, 0x3

    .end local v5    # "app":[Ljava/lang/String;
    .restart local v26    # "app":[Ljava/lang/String;
    if-ne v6, v5, :cond_a

    .line 150
    new-instance v5, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    invoke-direct {v5}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;-><init>()V

    aget-object v6, v26, v22

    .line 151
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    move-result-object v5

    aget-object v6, v26, v23

    .line 152
    invoke-virtual {v5, v6}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    move-result-object v5

    const/16 v19, 0x2

    aget-object v6, v26, v19

    .line 153
    move/from16 v27, v7

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->usage(J)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;

    move-result-object v5

    .line 150
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 149
    :cond_a
    move/from16 v27, v7

    .line 147
    .end local v24    # "s":Ljava/lang/String;
    .end local v26    # "app":[Ljava/lang/String;
    :goto_6
    add-int/lit8 v7, v27, 0x1

    move-object/from16 v5, v17

    move/from16 v6, v25

    goto :goto_5

    .end local v17    # "appList":[Ljava/lang/String;
    .local v5, "appList":[Ljava/lang/String;
    :cond_b
    move-object/from16 v17, v5

    .end local v5    # "appList":[Ljava/lang/String;
    .restart local v17    # "appList":[Ljava/lang/String;
    goto :goto_7

    .line 142
    .end local v4    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .local v17, "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    :cond_c
    move-object/from16 v4, v17

    .line 158
    .end local v17    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .restart local v4    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    :goto_7
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getProcessApp()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 159
    or-int/lit8 v11, v11, 0x4

    .line 161
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .end local v18    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .local v5, "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getProcessApp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "appList":[Ljava/lang/String;
    array-length v6, v1

    move/from16 v7, v22

    :goto_8
    if-ge v7, v6, :cond_e

    aget-object v17, v1, v7

    move-object/from16 v18, v17

    .line 164
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v17, v1

    move-object/from16 v1, v18

    .end local v18    # "s":Ljava/lang/String;
    .local v1, "s":Ljava/lang/String;
    .local v17, "appList":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v24, v18

    .line 165
    .local v24, "app":[Ljava/lang/String;
    move-object/from16 v18, v1

    move-object/from16 v1, v24

    move-object/from16 v24, v2

    .end local v24    # "app":[Ljava/lang/String;
    .local v1, "app":[Ljava/lang/String;
    .restart local v18    # "s":Ljava/lang/String;
    array-length v2, v1

    move-object/from16 v25, v1

    const/4 v1, 0x3

    .end local v1    # "app":[Ljava/lang/String;
    .restart local v25    # "app":[Ljava/lang/String;
    if-ne v2, v1, :cond_d

    .line 166
    new-instance v2, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    invoke-direct {v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;-><init>()V

    aget-object v16, v25, v22

    .line 167
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    move-result-object v1

    aget-object v2, v25, v23

    .line 168
    invoke-virtual {v1, v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->processName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    move-result-object v1

    const/16 v19, 0x2

    aget-object v2, v25, v19

    .line 169
    move/from16 v16, v6

    move/from16 v27, v7

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->usage(D)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;

    move-result-object v1

    .line 166
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 165
    :cond_d
    move/from16 v16, v6

    move/from16 v27, v7

    const/16 v19, 0x2

    .line 163
    .end local v18    # "s":Ljava/lang/String;
    .end local v25    # "app":[Ljava/lang/String;
    :goto_9
    add-int/lit8 v7, v27, 0x1

    move/from16 v6, v16

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    goto :goto_8

    .end local v17    # "appList":[Ljava/lang/String;
    .local v1, "appList":[Ljava/lang/String;
    :cond_e
    move-object/from16 v17, v1

    .end local v1    # "appList":[Ljava/lang/String;
    .restart local v17    # "appList":[Ljava/lang/String;
    goto :goto_a

    .line 158
    .end local v5    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .end local v17    # "appList":[Ljava/lang/String;
    .local v18, "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :cond_f
    move-object/from16 v5, v18

    .line 174
    .end local v18    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .restart local v5    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    :goto_a
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getEnvironmentType()I

    move-result v1

    if-lez v1, :cond_10

    .line 175
    or-int/lit8 v11, v11, 0x8

    .line 176
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getEnvironmentType()I

    move-result v1

    move v13, v1

    .line 179
    :cond_10
    new-instance v1, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    invoke-direct {v1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;-><init>()V

    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getBeginTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->beginTime(J)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    .line 180
    invoke-virtual {v10}, Lcom/sec/android/sdhms/OverheatReasonInternal;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->endTime(J)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->overheatType(I)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    invoke-direct {v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;-><init>()V

    .line 182
    invoke-virtual {v2, v12}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->chargerType(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->cameraAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v15}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->gameAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->navigationAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    .line 184
    invoke-virtual {v2, v4}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->networkAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->processAppList(Ljava/util/List;)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    .line 185
    invoke-virtual {v2, v13}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->environmentType(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/sdhmssdk/SemOverheatReason$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatReason;

    move-result-object v2

    .line 181
    invoke-virtual {v1, v2}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->semOverheatReason(Lcom/sec/android/sdhmssdk/SemOverheatReason;)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->build()Lcom/sec/android/sdhmssdk/SemOverheatHistory;

    move-result-object v1

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 187
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v1, v21

    .end local v3    # "navigation":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v4    # "network":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;>;"
    .end local v5    # "process":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyProcessLoadItem;>;"
    .end local v10    # "info":Lcom/sec/android/sdhms/OverheatReasonInternal;
    .end local v11    # "type":I
    .end local v12    # "chargerType":I
    .end local v13    # "environment":I
    .end local v14    # "camera":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    .end local v15    # "game":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;>;"
    goto/16 :goto_0

    .line 189
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :catch_1
    move-exception v0

    goto :goto_b

    .line 188
    .end local v21    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .local v1, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :cond_11
    return-object v0

    .line 189
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhmssdk/SemOverheatHistory;>;"
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/sdhms/OverheatReasonInternal;>;"
    :catch_2
    move-exception v0

    move-object/from16 v21, v1

    const/16 v20, 0x0

    .line 190
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v21    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :goto_b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 191
    return-object v20

    .line 80
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v21    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .restart local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    :cond_12
    move-object/from16 v21, v1

    const/16 v20, 0x0

    .line 194
    .end local v1    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    .restart local v21    # "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    return-object v20
.end method

.method public getSupportedReasonTypes()I
    .locals 2

    .line 208
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 209
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 210
    const v1, 0x7000f

    return v1

    .line 215
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getThermalControlFlag()I
    .locals 2

    .line 267
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 268
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 270
    :try_start_0
    invoke-interface {v0}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->getThermalControlFlag()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 275
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public setHighBrightnessMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 451
    sget-object v0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHighBrightnessMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 453
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 455
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setHighBrightnessMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    goto :goto_1

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 460
    :cond_0
    if-nez v0, :cond_1

    .line 461
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "setHighBrightnessMode API call failed : SDHMS service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    :cond_1
    sget-object v1, Lcom/sec/android/sdhmssdk/SdhmsSDK;->TAG:Ljava/lang/String;

    const-string v2, "setHighBrightnessMode API call failed : mIsSupported is false"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_1
    return-void
.end method

.method public setThermalControlFlag(I)Z
    .locals 2
    .param p1, "flag"    # I

    .line 245
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 246
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/sdhmssdk/SdhmsSDK;->mIsSupported:Z

    if-eqz v1, :cond_0

    .line 248
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->setThermalControlFlag(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 253
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateBatteryStatsInfo(I)I
    .locals 2
    .param p1, "type"    # I

    .line 432
    invoke-direct {p0}, Lcom/sec/android/sdhmssdk/SdhmsSDK;->getService()Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;

    move-result-object v0

    .line 433
    .local v0, "service":Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;
    if-eqz v0, :cond_0

    .line 435
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/android/sdhms/ISamsungDeviceHealthManager;->updateBatteryStatsInfo(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 436
    :catch_0
    move-exception v1

    .line 437
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 440
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
