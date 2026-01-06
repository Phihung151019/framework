.class Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;Landroid/util/LocalLog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$TmMrrLkJp8eY2ipOtuF_m4ASFNQ(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->lambda$onReceive$0()V

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mstartMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "AutoWifi.Geofence"

    .line 2
    .line 3
    const-string p2, "sec_location is ready"

    .line 4
    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 9
    .line 10
    const-string p2, "sec_location is ready, syncWithSLocationDb"

    .line 11
    .line 12
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "wifi"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 28
    .line 29
    const-string v0, "sec_location"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/samsung/android/location/SemLocationManager;

    .line 36
    .line 37
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fputmSemLocationManager(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/location/SemLocationManager;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-direct {p2, v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method
