.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/location/SemLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$eXsGV0STK_2T2RneUhTxZ5Y6yD4(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->lambda$onLocationChanged$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onLocationChanged$0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mupdateNetworkLocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMeasuring()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "AutoWifi.Geofence"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p0, "ignored, not running state"

    .line 16
    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLocationNullCount(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fputmLocationNullCount(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;I)V

    .line 32
    .line 33
    .line 34
    const-string p0, "measure completed but location is null"

    .line 35
    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Landroid/location/Location;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;

    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    return-void
.end method
