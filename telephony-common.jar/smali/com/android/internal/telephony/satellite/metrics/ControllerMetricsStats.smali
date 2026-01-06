.class public Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;
.super Ljava/lang/Object;
.source "ControllerMetricsStats.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ControllerMetricsStats"

.field private static blacklist sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;


# instance fields
.field private blacklist mBatteryChargedStartTime:J

.field private blacklist mBatteryLevelWhenServiceOn:I

.field private final blacklist mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsBatteryCharged:Ljava/lang/Boolean;

.field private blacklist mIsSatelliteModemOn:Z

.field private blacklist mSatelliteOnTimeMillis:J

.field private blacklist mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

.field private blacklist mTotalBatteryChargeTimeSec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateSatelliteBatteryChargeTime(Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->updateSatelliteBatteryChargeTime(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlogd(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mIsBatteryCharged:Ljava/lang/Boolean;

    .line 505
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;-><init>(Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mContext:Landroid/content/Context;

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/metrics/SatelliteStats;->getInstance()Lcom/android/internal/telephony/metrics/SatelliteStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/metrics/SatelliteStats;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mIsBatteryCharged:Ljava/lang/Boolean;

    .line 505
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats$1;-><init>(Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;)V

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;
    .locals 1

    .line 56
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "ControllerMetricsStats was not yet initialized."

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->loge(Ljava/lang/String;)V

    .line 59
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    return-object v0
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1

    .line 533
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    .line 537
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;)Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    .line 72
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    return-object p0
.end method

.method public static blacklist make(Landroid/content/Context;Lcom/android/internal/telephony/metrics/SatelliteStats;)Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/metrics/SatelliteStats;)V

    sput-object v0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    .line 88
    :cond_0
    sget-object p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->sInstance:Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;

    return-object p0
.end method

.method private blacklist updateSatelliteBatteryChargeTime(Z)V
    .locals 4

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSatelliteBatteryChargeTime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mIsBatteryCharged:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 351
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mIsBatteryCharged:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryChargedStartTime:J

    return-void

    .line 358
    :cond_2
    iget p1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mTotalBatteryChargeTimeSec:I

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getElapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryChargedStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mTotalBatteryChargeTimeSec:I

    const-wide/16 v0, 0x0

    .line 360
    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryChargedStartTime:J

    return-void
.end method


# virtual methods
.method public blacklist captureTotalBatteryChargeTimeSec()I
    .locals 2

    .line 299
    iget v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mTotalBatteryChargeTimeSec:I

    const/4 v1, 0x0

    .line 300
    iput v1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mTotalBatteryChargeTimeSec:I

    return v0
.end method

.method public blacklist captureTotalBatteryConsumptionPercent(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    .line 382
    :try_start_0
    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 384
    invoke-virtual {p1, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result p1

    .line 385
    iget p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryLevelWhenServiceOn:I

    sub-int/2addr p0, p1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 387
    :catch_0
    const-string p0, "BatteryManager is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->loge(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist captureTotalServiceUpTimeSec()I
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getElapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteOnTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 292
    iput-wide v2, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteOnTimeMillis:J

    const-wide/16 v2, 0x3e8

    .line 293
    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public blacklist getElapsedRealtime()J
    .locals 2

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isSatelliteModemOn()Z
    .locals 0

    .line 524
    iget-boolean p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mIsSatelliteModemOn:Z

    return p0
.end method

.method public blacklist onSatelliteDisabled()V
    .locals 4

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->isSatelliteModemOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mIsSatelliteModemOn:Z

    .line 327
    const-string v0, "unregister BatteryStatusReceiver"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->captureTotalServiceUpTimeSec()I

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->captureTotalBatteryConsumptionPercent(Landroid/content/Context;)I

    move-result v1

    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->captureTotalBatteryChargeTimeSec()I

    move-result v2

    .line 335
    new-instance v3, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v3}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 337
    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setTotalServiceUptimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setTotalBatteryConsumptionPercent(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object v0

    .line 339
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setTotalBatteryChargedTimeSec(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSatelliteDisabled(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    :cond_0
    return-void
.end method

.method public blacklist onSatelliteEnabled()V
    .locals 2

    .line 306
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->isSatelliteModemOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mIsSatelliteModemOn:Z

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->startCaptureBatteryLevel()V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteOnTimeMillis:J

    .line 315
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    const-string v1, "register BatteryStatusReceiver"

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public blacklist reportAllowedSatelliteAccessCount(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 265
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 266
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfAllowedSatelliteAccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    goto :goto_0

    .line 268
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 269
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDisallowedSatelliteAccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 271
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportAllowedSatelliteAccessCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 273
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportAllowedStateChanged()V
    .locals 2

    .line 416
    const-string v0, "reportAllowedStateChanged:"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    .line 419
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfSatelliteAllowedStateChangedEvents(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object v0

    .line 417
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportCurrentMaxAllowedDataMode(II)V
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportCurrentMaxAllowedDataMode: cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxAllowedDataMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 472
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setMaxAllowedDataMode(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 470
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportCurrentVersionOfCarrierRoamingSatelliteConfig(II)V
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportCurrentVersionOfCarrierRoamingSatelliteConfig: cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 457
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 459
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 460
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCarrierRoamingSatelliteConfigVersion(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportCurrentVersionOfSatelliteAccessConfig(I)V
    .locals 2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportCurrentVersionOfSatelliteAccessConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 445
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 447
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setVersionOfSatelliteAccessControl(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 448
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 445
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportDeprovisionCount(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 246
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 247
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDeprovisionSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    goto :goto_0

    .line 250
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 251
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDeprovisionFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 254
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportDeprovisionCount(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportFailedSatelliteAccessCheckCount()V
    .locals 3

    .line 281
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    .line 283
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfSatelliteAccessCheckFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportFailedSatelliteAccessCheckCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportIncomingDatagramCount(IZ)V
    .locals 2

    .line 188
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDemoModeIncomingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDemoModeIncomingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 198
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfIncomingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfIncomingDatagramTypeSosSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfIncomingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 203
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfIncomingDatagramTypeSosSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    .line 206
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportIncomingDatagramCount(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 208
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportIncomingNtnSmsCount(I)V
    .locals 2

    .line 214
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfIncomingDatagramTypeSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfIncomingDatagramTypeSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    .line 221
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportIncomingNtnSmsCount(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportLocationQuerySuccessful(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 429
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 430
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfSuccessfulLocationQueries(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    goto :goto_0

    .line 432
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 433
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfFailedLocationQueries(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 435
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportLocationQuerySuccessful:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 437
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportOutgoingDatagramFailCount(IZ)V
    .locals 2

    .line 162
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDemoModeOutgoingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfOutgoingDatagramFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    .line 169
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDatagramTypeSosSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDatagramTypeLocationSharingFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 174
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDatagramTypeKeepAliveFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    :cond_3
    const/4 p2, 0x6

    if-ne p1, p2, :cond_4

    .line 176
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfOutgoingDatagramTypeSmsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    .line 180
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 181
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportOutgoingDatagramFailCount(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportOutgoingDatagramSuccessCount(IZ)V
    .locals 2

    .line 136
    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDemoModeOutgoingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfOutgoingDatagramSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    .line 143
    invoke-static {p1}, Lcom/android/internal/telephony/satellite/SatelliteServiceUtils;->isSosMessage(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDatagramTypeSosSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 146
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDatagramTypeLocationSharingSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfDatagramTypeKeepAliveSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    goto :goto_0

    :cond_3
    const/4 p2, 0x6

    if-ne p1, p2, :cond_4

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfOutgoingDatagramTypeSmsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    .line 154
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reportServiceEnablementSuccessCount(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportP2PSmsEligibilityNotificationsCount(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 483
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 484
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfP2PSmsAvailableNotificationShown(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    goto :goto_0

    .line 486
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 487
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfP2PSmsAvailableNotificationRemoved(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 490
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportP2PSmsEligibilityNotificationsCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 492
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportProvisionCount(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 230
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 231
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfProvisionSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    goto :goto_0

    .line 234
    :cond_0
    new-instance p1, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 235
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfProvisionFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 238
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportProvisionCount(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 239
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportServiceEnablementFailCount()V
    .locals 2

    .line 126
    const-string v0, "reportServiceEnablementFailCount()"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfSatelliteServiceEnablementsFail(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist reportServiceEnablementSuccessCount()V
    .locals 2

    .line 117
    const-string v0, "reportServiceEnablementSuccessCount()"

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    const/4 v1, 0x1

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCountOfSatelliteServiceEnablementsSuccess(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist setCarrierId(I)V
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCarrierId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 406
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 408
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 409
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist setIsNtnOnlyCarrier(Z)V
    .locals 2

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsNtnOnlyCarrier:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 498
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 500
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist setIsProvisioned(IZZ)V
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsProvisioned: carrierId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isProvisioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V

    .line 395
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mSatelliteStats:Lcom/android/internal/telephony/metrics/SatelliteStats;

    new-instance v0, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;-><init>()V

    .line 397
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setCarrierId(I)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 398
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setIsProvisioned(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 399
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->setIsNtnOnlyCarrier(Z)Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;

    move-result-object p1

    .line 400
    invoke-virtual {p1}, Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams$Builder;->build()Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;

    move-result-object p1

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/metrics/SatelliteStats;->onSatelliteControllerMetrics(Lcom/android/internal/telephony/metrics/SatelliteStats$SatelliteControllerParams;)V

    return-void
.end method

.method public blacklist startCaptureBatteryLevel()V
    .locals 2

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x4

    .line 371
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryLevelWhenServiceOn:I

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sBatteryLevelWhenServiceOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->mBatteryLevelWhenServiceOn:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 374
    :catch_0
    const-string p0, "BatteryManager is null"

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/metrics/ControllerMetricsStats;->loge(Ljava/lang/String;)V

    return-void
.end method
