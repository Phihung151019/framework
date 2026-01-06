.class Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;->this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;->this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->-$$Nest$mEleDetectNotifier(Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread$1;->this$1:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic$SensorThread;->this$0:Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrAccData:[F

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    aget v2, v0, v1

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget v3, v0, v2

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    aget v0, v0, v3

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemWifiEleGeoMagnetic;->arrMagData:[F

    .line 24
    .line 25
    aget v0, p0, v1

    .line 26
    .line 27
    aget v0, p0, v2

    .line 28
    .line 29
    aget p0, p0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    return-void

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
