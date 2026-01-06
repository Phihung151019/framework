.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
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
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v3, :cond_2

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v0, v3, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x6

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 20
    .line 21
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 22
    .line 23
    aget p1, p1, v2

    .line 24
    .line 25
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->baroData:F

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    if-ge v2, v1, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    .line 33
    .line 34
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 35
    .line 36
    aget v3, v3, v2

    .line 37
    .line 38
    aput v3, v0, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    if-ge v2, v1, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$1;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    .line 48
    .line 49
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 50
    .line 51
    aget v3, v3, v2

    .line 52
    .line 53
    aput v3, v0, v2

    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_2
    return-void
.end method
