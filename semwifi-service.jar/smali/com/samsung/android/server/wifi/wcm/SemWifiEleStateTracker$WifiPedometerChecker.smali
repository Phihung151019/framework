.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiPedometerChecker"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mListenerEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStepCountSensor:Landroid/hardware/Sensor;

.field private mTotalStepCount:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsEnabled(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    .line 19
    .line 20
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string p1, "sensor"

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/hardware/SensorManager;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    const/16 p2, 0x13

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    .line 46
    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentTotalStepCnt()J
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "pedometer.getCurrentTotalStepCnt() : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SemWifiEleStateTracker"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    .line 23
    .line 24
    return-wide v0
.end method

.method public isPedometerEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x13

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aget p1, p1, v0

    .line 15
    .line 16
    float-to-long v0, p1

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    .line 18
    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v0, "onSensorChanged mTotalStepCount : "

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mTotalStepCount:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "SemWifiEleStateTracker"

    .line 36
    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setPedoRecentStep()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->checkNeedRecoverFromEle()V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->geomagneticEnable()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerBarometer()V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method public registerPedometer()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SemWifiEleStateTracker"

    .line 10
    .line 11
    const-string v1, "registerPedometer"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public unregisterPedometer()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mIsEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SemWifiEleStateTracker"

    .line 10
    .line 11
    const-string v1, "unregisterPedometer"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mStepCountSensor:Landroid/hardware/Sensor;

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$WifiPedometerChecker;->mListenerEnabled:Z

    .line 25
    .line 26
    :cond_0
    return-void
.end method
