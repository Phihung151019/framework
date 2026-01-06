.class Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiPedometerChecker"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInitSteps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSensorAvailable:Z

.field private mListenerEnabled:Z

.field private mRegisterReasons:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStepDetectorSensor:Landroid/hardware/Sensor;

.field private mTotalStepCountSinceFirstRegister:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mStepDetectorSensor:Landroid/hardware/Sensor;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mIsSensorAvailable:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mListenerEnabled:Z

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 19
    .line 20
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 21
    .line 22
    new-instance p1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mInitSteps:Ljava/util/HashMap;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const-string p1, "sensor"

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/hardware/SensorManager;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const/16 p2, 0x12

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mStepDetectorSensor:Landroid/hardware/Sensor;

    .line 50
    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mIsSensorAvailable:Z

    .line 55
    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentTotalStepCnt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRegisterReasons()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 2
    .line 3
    return p0
.end method

.method public getStepsSince(I)J
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mInitSteps:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    sub-long/2addr v0, p0

    .line 25
    return-wide v0

    .line 26
    :cond_0
    const-wide/16 p0, 0x0

    .line 27
    .line 28
    return-wide p0
.end method

.method public isPedometerEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mListenerEnabled:Z

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
    .locals 4

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
    const/16 v1, 0x12

    .line 8
    .line 9
    if-ne v0, v1, :cond_2

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
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    cmpl-float p1, p1, v0

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 23
    .line 24
    const-wide/16 v2, 0x1

    .line 25
    .line 26
    add-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 28
    .line 29
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$sfgetDBG()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "STEP_DETECTOR changed. mTotalStepCountSinceFirstRegister="

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "RssiThresholdNetSelector"

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :cond_0
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 57
    .line 58
    and-int/lit8 p1, p1, 0x1

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 63
    .line 64
    const/16 v0, 0x65

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    .line 68
    .line 69
    :cond_1
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 70
    .line 71
    and-int/lit8 p1, p1, 0x2

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 76
    .line 77
    const/16 p1, 0x6a

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method

.method public registerPedometer(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mIsSensorAvailable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mStepDetectorSensor:Landroid/hardware/Sensor;

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mListenerEnabled:Z

    .line 21
    .line 22
    const-string v0, "RssiThresholdNetSelector"

    .line 23
    .line 24
    const-string v1, "attach step sensor listener"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 32
    .line 33
    :cond_0
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 34
    .line 35
    and-int v1, v0, p1

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    or-int/2addr v0, p1

    .line 40
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mInitSteps:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 49
    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 58
    .line 59
    const-string v1, "registerPedometer - reason : "

    .line 60
    .line 61
    const-string v2, " init steps : "

    .line 62
    .line 63
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mTotalStepCountSinceFirstRegister:J

    .line 68
    .line 69
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$mAddHistoryAndILog(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method public unregisterPedometer(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mIsSensorAvailable:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const v0, 0xffff

    .line 6
    .line 7
    .line 8
    const-string v1, "detach step sensor listener"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mInitSteps:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mStepDetectorSensor:Landroid/hardware/Sensor;

    .line 23
    .line 24
    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 34
    .line 35
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$mAddHistoryAndILog(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mListenerEnabled:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 42
    .line 43
    and-int v3, v0, p1

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    not-int v3, p1

    .line 48
    and-int/2addr v0, v3

    .line 49
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mInitSteps:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 61
    .line 62
    const-string v3, "unregisterPedometer - reason : "

    .line 63
    .line 64
    invoke-static {p1, v3}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$mAddHistoryAndILog(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    iget p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mRegisterReasons:I

    .line 72
    .line 73
    if-nez p1, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mSensorManager:Landroid/hardware/SensorManager;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mStepDetectorSensor:Landroid/hardware/Sensor;

    .line 84
    .line 85
    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->isPedometerEnabled()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->this$0:Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 95
    .line 96
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->-$$Nest$mAddHistoryAndILog(Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector$WifiPedometerChecker;->mListenerEnabled:Z

    .line 100
    .line 101
    :cond_4
    return-void
.end method
