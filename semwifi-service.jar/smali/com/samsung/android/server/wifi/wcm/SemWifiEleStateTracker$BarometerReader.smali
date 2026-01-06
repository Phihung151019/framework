.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;
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
    name = "BarometerReader"
.end annotation


# instance fields
.field private barometer:Landroid/hardware/Sensor;

.field public mPressure:F

.field private sensorManager:Landroid/hardware/SensorManager;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;)V
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

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->mPressure:F

    .line 4
    const-string v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->sensorManager:Landroid/hardware/SensorManager;

    .line 5
    const-string v0, "SemWifiEleStateTracker"

    if-eqz p2, :cond_1

    const/4 v1, 0x6

    .line 6
    invoke-virtual {p2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->barometer:Landroid/hardware/Sensor;

    if-nez p2, :cond_0

    .line 7
    const-string p0, "Barometer sensor not available"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmBaroNotSupported(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 9
    const-string p0, "Barometer sensor available"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_1
    const-string p0, "Sensor Manager not available"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;-><init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBaroPressure()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->mPressure:F

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
    const/4 v1, 0x6

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    aget p1, p1, v0

    .line 14
    .line 15
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->mPressure:F

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public startReading()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->sensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->barometer:Landroid/hardware/Sensor;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 11
    .line 12
    .line 13
    const-string v0, "SemWifiEleStateTracker"

    .line 14
    .line 15
    const-string v1, "Start reading Baro"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmPrevBarometer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmCurrentBarometer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmSmallBaroDetected(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmRecentBaroChangeTime(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->mPressure:F

    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public stopReading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->sensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmPrevBarometer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmCurrentBarometer(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmSmallBaroDetected(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->-$$Nest$fputmRecentBaroChangeTime(Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker$BarometerReader;->mPressure:F

    .line 30
    .line 31
    const-string p0, "SemWifiEleStateTracker"

    .line 32
    .line 33
    const-string v0, "Stop Reading Baro"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method
