.class public Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/autowifi/GeofenceController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;,
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;,
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;,
        Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceState;
    }
.end annotation


# static fields
.field static final ACTION_GEOFENCE_MONITORING:Ljava/lang/String; = "com.samsung.android.wifi.GEOFENCE"

.field private static final ACTION_MEASURE_NETWORK_LOCATION:Ljava/lang/String; = "com.samsung.android.wifi.NETWORK_LOCATION"

.field private static final DBG:Z

.field static final DISTANCE_100KM:I = 0x186a0

.field static final DISTANCE_10KM:I = 0x2710

.field static final DISTANCE_5KM:I = 0x1388

.field static final DISTANCE_600M:I = 0x258

.field private static final EVENT_STOP_MEASURING_LOCATION:I = 0x1

.field public static final GEOFENCE_STATE_ENTER:I = 0x1

.field public static final GEOFENCE_STATE_EXIT:I = 0x2

.field public static final GEOFENCE_STATE_UNKNOWN:I = 0x0

.field static final INVALID_GEOFENCE_ID:I = -0x1

.field static final MAX_GEOFENCE_NETWORK_SIZE:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AutoWifi.Geofence"


# instance fields
.field private final mAvailableGeopointIds:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mGeofenceConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

.field private final mGeofenceEnteredNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mGeofenceReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

.field private final mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

.field private mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mLocationNullCount:I

.field private final mLock:Ljava/lang/Object;

.field final mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenNetworkDistanceError10kmTo100kmCount:I

.field private mOpenNetworkDistanceError5kmTo10kmCount:I

.field private mOpenNetworkDistanceError600mTo5kmCount:I

.field private mOtherNetworkDistanceError10kmTo100kmCount:I

.field private mOtherNetworkDistanceError5kmTo10kmCount:I

.field private mOtherNetworkDistanceError600mTo5kmCount:I

.field private mPskNetworkDistanceError10kmTo100kmCount:I

.field private mPskNetworkDistanceError5kmTo10kmCount:I

.field private mPskNetworkDistanceError600mTo5kmCount:I

.field final mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

.field private mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

.field final mStopMeasuringLocationControlHandler:Landroid/os/Handler;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$XpINjZYpju9PKE_GGbniug2t_cA(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->lambda$removeGeofenceConfigurationFromDb$2(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$eCMqRwMCZ3ih6IYmaPsKVJgkOMg(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->lambda$saveGeofenceConfigurationToDb$1(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$sOAq46NL9dnMier_TjC5ziJe71c(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->lambda$clearAll$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeofenceConfigs(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/util/SemWifiHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastMeasurement(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocationNullCount(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocationNullCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLocationNullCount(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocationNullCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSemLocationManager(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Lcom/samsung/android/location/SemLocationManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkLocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->updateNetworkLocation(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
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
    sput-boolean v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 6

    .line 1
    new-instance v4, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    invoke-direct {v4, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/util/LocalLog;

    const/16 v0, 0x1f4

    invoke-direct {v5, v0}, Landroid/util/LocalLog;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;Landroid/util/LocalLog;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;Landroid/util/LocalLog;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 9
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$2;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 10
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$3;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mStopMeasuringLocationControlHandler:Landroid/os/Handler;

    .line 11
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$4;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$5;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceReceiver:Landroid/content/BroadcastReceiver;

    .line 13
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 15
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 16
    new-instance p3, Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    const-string v0, "AutoWifi.Geofence"

    invoke-direct {p3, v0, p2}, Lcom/samsung/android/server/wifi/util/SemWifiHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 17
    iput-object p4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    .line 18
    iput-object p5, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    .line 19
    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$1;-><init>(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "com.samsung.android.location.SERVICE_READY"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private addAndMonitorGeofence(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V
    .locals 9

    .line 1
    const-string v0, "saved geofence configs size: "

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p2, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/TreeSet;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->setGeofenceId(I)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getPendingIntent(I)Landroid/app/PendingIntent;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    new-instance v2, Lcom/samsung/android/location/SemGeopointGeofence;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLatitude()D

    .line 50
    .line 51
    .line 52
    move-result-wide v3

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLongitude()D

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const/16 v7, 0x1f4

    .line 66
    .line 67
    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/location/SemGeopointGeofence;-><init>(DDILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    if-eqz p2, :cond_2

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-direct {p0, v1, v3, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->compareSsid(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    const-string v1, "%-18s [locationId : %d][confKey : %s]"

    .line 111
    .line 112
    const-string v3, "setWifiBssid"

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    filled-new-array {p2}, [Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {v2, p2}, Lcom/samsung/android/location/SemGeopointGeofence;->setWifiBssids([Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {p2, v2, v1}, Lcom/samsung/android/location/SemLocationManager;->addGeofence(Lcom/samsung/android/location/SemGeopointGeofence;Landroid/app/PendingIntent;)I

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_3

    .line 159
    .line 160
    const-string p2, "AutoWifi.Geofence"

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string v2, "add and monitor geofence id : "

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v2, ", configKey : "

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    const-string p2, "%-18s [locationId : %d][confKey : %s]"

    .line 196
    .line 197
    const-string v1, "addAndMonitor"

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 223
    .line 224
    monitor-enter v1

    .line 225
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-interface {p2, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->saveGeofenceConfigurationToDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    .line 240
    move-object p0, v0

    .line 241
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    throw p0

    .line 243
    :cond_3
    const-string v1, "AutoWifi.Geofence"

    .line 244
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string v3, "Fail to add, geofenceId : "

    .line 248
    .line 249
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v3, " result : "

    .line 260
    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    const-string v1, "fail to add addAndMonitorGeofence [locationId : %d][confKey : %s][result : %d]"

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 304
    .line 305
    monitor-enter p1

    .line 306
    :try_start_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 307
    .line 308
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 309
    .line 310
    .line 311
    move-result p2

    .line 312
    const-string v1, "AutoWifi.Geofence"

    .line 313
    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    const/16 v0, 0xc8

    .line 330
    .line 331
    if-le p2, v0, :cond_4

    .line 332
    .line 333
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeOldConfig()V

    .line 334
    .line 335
    .line 336
    goto :goto_1

    .line 337
    :catchall_1
    move-exception v0

    .line 338
    move-object p0, v0

    .line 339
    goto :goto_2

    .line 340
    :cond_4
    :goto_1
    monitor-exit p1

    .line 341
    return-void

    .line 342
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 343
    throw p0
.end method

.method private compareSsid(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const/4 p0, 0x0

    .line 2
    move v0, p0

    .line 3
    :goto_0
    if-ge v0, p3, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method private getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 5
    .line 6
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method private getGeofenceManagerErrorString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 p0, -0x64

    .line 2
    .line 3
    if-eq p1, p0, :cond_0

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string p0, "UNKNOWN_ERROR("

    .line 9
    .line 10
    const-string v0, ")"

    .line 11
    .line 12
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    const-string p0, "ERROR_NOT_INITIALIZED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_1
    const-string p0, "ERROR_ILLEGAL_ARGUMENT"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_2
    const-string p0, "ERROR_ID_NOT_EXIST"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_3
    const-string p0, "ERROR_EXCEPTION"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_4
    const-string p0, "ERROR_ALREADY_STARTED"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_5
    const-string p0, "ERROR_TOO_MANY_GEOFENCE"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_6
    const-string p0, "ERROR_NOT_SUPPORTED"

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    const-string p0, "ERROR_LOCATION_CURRENTLY_UNAVAILABLE"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getGeofenceStateString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "EXIT"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "Wrong geofence state"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0

    .line 20
    :cond_1
    const-string p0, "ENTER"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    const-string p0, "UNKNOWN"

    .line 24
    .line 25
    return-object p0
.end method

.method private getPendingIntent(I)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.wifi.GEOFENCE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const/high16 v2, 0xb000000

    .line 22
    .line 23
    invoke-virtual {v1, p0, p1, v0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private isGeofenceIdValid(I)Z
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/16 p0, 0xc8

    .line 4
    .line 5
    if-gt p1, p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method private synthetic lambda$clearAll$0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "[clearAll]"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v3, v4}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Landroid/app/PendingIntent;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v5, "Failed clearAll geofence configKey : "

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, " code : "

    .line 73
    .line 74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceManagerErrorString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->clearAll()V

    .line 102
    .line 103
    .line 104
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p0
.end method

.method private synthetic lambda$removeGeofenceConfigurationFromDb$2(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->remove(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$saveGeofenceConfigurationToDb$1(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->save(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private loadFromDb()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Geofence DB : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceDbHelper:Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;->load()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLatitude()D

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    cmpl-double v4, v4, v6

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    const-string v4, "\n"

    .line 47
    .line 48
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, "remove [id : "

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, ", confKey : "

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v4, "]"

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    .line 81
    .line 82
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    new-instance v4, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 86
    .line 87
    invoke-direct {v4, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;-><init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    .line 88
    .line 89
    .line 90
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfigurationFromDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :cond_0
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isGeofenceIdValid(I)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_1

    .line 106
    .line 107
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    const-string v5, "AutoWifi.Geofence"

    .line 120
    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v7, "invalid geofenceId before : "

    .line 127
    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v7, " after : "

    .line 139
    .line 140
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    const-string v5, "\n"

    .line 154
    .line 155
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v5, "invalid geofenceId before [id : "

    .line 159
    .line 160
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v5, "], after [id : "

    .line 171
    .line 172
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v5, "], confKey : "

    .line 179
    .line 180
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->setGeofenceId(I)V

    .line 191
    .line 192
    .line 193
    :cond_1
    new-instance v4, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 194
    .line 195
    invoke-direct {v4, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;-><init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getPendingIntent(I)Landroid/app/PendingIntent;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 207
    .line 208
    .line 209
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    .line 219
    .line 220
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    const-string v4, "\n"

    .line 232
    .line 233
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v4, "add [id : "

    .line 237
    .line 238
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v4, ", confKey : "

    .line 249
    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v3, "]"

    .line 261
    .line 262
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    return-void

    .line 276
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    throw p0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private removeGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Landroid/app/PendingIntent;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string v1, "AutoWifi.Geofence"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed remove geofence id, code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceManagerErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    const-string v0, "AutoWifi.Geofence"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove geofence "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string v0, "%-18s [locationId : %d]"

    const-string v1, "removeGeofence"

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeFromInRangedNetworks(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfigurationFromDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void

    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private removeGeofenceConfigurationFromDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private removeOldConfig()V
    .locals 5

    .line 1
    const-string v0, "remove oldConfig : "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 26
    .line 27
    const-string v3, "AutoWifi.Geofence"

    .line 28
    .line 29
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method private saveGeofenceConfigurationToDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private startMonitoring()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    const/4 v4, 0x1

    .line 5
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " APs start monitoring"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 7
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private stopMonitoring()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMeasuring()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 48
    .line 49
    iget-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 50
    .line 51
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Landroid/app/PendingIntent;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v6, "Failed removeGeofence configKey : "

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v3, " code : "

    .line 79
    .line 80
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceManagerErrorString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, " APs stop monitoring"

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 126
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    throw p0
.end method

.method private updateGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->saveGeofenceConfigurationToDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p0

    .line 28
    :cond_0
    return-void
.end method

.method private updateNetworkLocation(Z)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "AutoWifi.Geofence"

    .line 9
    .line 10
    if-eqz v0, :cond_d

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetlocation(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Landroid/location/Location;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->isValidLocation(DD)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_d

    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setLocationMeasurement(DD)V

    .line 49
    .line 50
    .line 51
    const/4 v12, 0x1

    .line 52
    if-eqz p1, :cond_b

    .line 53
    .line 54
    sget-boolean p1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    .line 55
    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-string p1, "Passive Latitude, Longitude remove and updateGeofenceConfiguration"

    .line 59
    .line 60
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 64
    .line 65
    invoke-virtual {p1, v12}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_9

    .line 70
    .line 71
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_9

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLatitude()D

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getLongitude()D

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    new-array v11, v12, [F

    .line 86
    .line 87
    invoke-static/range {v3 .. v11}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 88
    .line 89
    .line 90
    aget v1, v11, v1

    .line 91
    .line 92
    const/high16 v3, 0x44160000    # 600.0f

    .line 93
    .line 94
    cmpl-float v3, v1, v3

    .line 95
    .line 96
    const v4, 0x459c4000    # 5000.0f

    .line 97
    .line 98
    .line 99
    if-lez v3, :cond_3

    .line 100
    .line 101
    cmpg-float v3, v1, v4

    .line 102
    .line 103
    if-gez v3, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isOpenNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError600mTo5kmCount:I

    .line 112
    .line 113
    add-int/2addr p1, v12

    .line 114
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError600mTo5kmCount:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isPskNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError600mTo5kmCount:I

    .line 124
    .line 125
    add-int/2addr p1, v12

    .line 126
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError600mTo5kmCount:I

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError600mTo5kmCount:I

    .line 130
    .line 131
    add-int/2addr p1, v12

    .line 132
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError600mTo5kmCount:I

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    cmpl-float v3, v1, v4

    .line 136
    .line 137
    const v4, 0x461c4000    # 10000.0f

    .line 138
    .line 139
    .line 140
    if-lez v3, :cond_6

    .line 141
    .line 142
    cmpg-float v3, v1, v4

    .line 143
    .line 144
    if-gez v3, :cond_6

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isOpenNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    if-eqz v1, :cond_4

    .line 151
    .line 152
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError5kmTo10kmCount:I

    .line 153
    .line 154
    add-int/2addr p1, v12

    .line 155
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError5kmTo10kmCount:I

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isPskNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_5

    .line 163
    .line 164
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError5kmTo10kmCount:I

    .line 165
    .line 166
    add-int/2addr p1, v12

    .line 167
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError5kmTo10kmCount:I

    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_5
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError5kmTo10kmCount:I

    .line 171
    .line 172
    add-int/2addr p1, v12

    .line 173
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError5kmTo10kmCount:I

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_6
    cmpl-float v3, v1, v4

    .line 177
    .line 178
    if-lez v3, :cond_9

    .line 179
    .line 180
    const v3, 0x47c35000    # 100000.0f

    .line 181
    .line 182
    .line 183
    cmpg-float v1, v1, v3

    .line 184
    .line 185
    if-gez v1, :cond_9

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isOpenNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError10kmTo100kmCount:I

    .line 194
    .line 195
    add-int/2addr p1, v12

    .line 196
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError10kmTo100kmCount:I

    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isPskNetwork(Landroid/net/wifi/WifiInfo;)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_8

    .line 204
    .line 205
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError10kmTo100kmCount:I

    .line 206
    .line 207
    add-int/2addr p1, v12

    .line 208
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError10kmTo100kmCount:I

    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_8
    iget p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError10kmTo100kmCount:I

    .line 212
    .line 213
    add-int/2addr p1, v12

    .line 214
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError10kmTo100kmCount:I

    .line 215
    .line 216
    :cond_9
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfigurationFromDb(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getGeofenceId()I

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    const/4 v1, -0x1

    .line 224
    if-eq p1, v1, :cond_a

    .line 225
    .line 226
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->getPendingIntent()Landroid/app/PendingIntent;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {p1, v1}, Lcom/samsung/android/location/SemLocationManager;->removeGeofence(Landroid/app/PendingIntent;)I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_a

    .line 237
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v3, "failed remove geofence id(updateNetworkLocation), code:"

    .line 241
    .line 242
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceManagerErrorString(I)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    :cond_a
    invoke-virtual {p0, v0, v12}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    .line 260
    .line 261
    .line 262
    return v12

    .line 263
    :cond_b
    sget-boolean p1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    .line 264
    .line 265
    if-eqz p1, :cond_c

    .line 266
    .line 267
    const-string p1, "Active Latitude , Longitude startMonitoring"

    .line 268
    .line 269
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :cond_c
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    .line 273
    .line 274
    .line 275
    return v12

    .line 276
    :cond_d
    const-string p0, "received invalid location"

    .line 277
    .line 278
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    return v1
.end method


# virtual methods
.method public addInRangedNetwork(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method checkAndStart()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    const/16 v1, 0xc8

    .line 3
    .line 4
    if-gt v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mAvailableGeopointIds:Ljava/util/TreeSet;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->loadFromDb()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method clearAll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mHandler:Lcom/samsung/android/server/wifi/util/SemWifiHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "WifiGeofenceManager:\n - state: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string v1, "unavailable"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const-string v1, "started"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "stopped"

    .line 30
    .line 31
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :goto_1
    const-string v1, "\n - geofence state: "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceState()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, "\n"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 56
    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    const-string v2, " - not added geofence configs from database: "

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, "\n"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNotAddedGeofenceNetworksFromDb:Ljava/util/Set;

    .line 78
    .line 79
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    .line 94
    .line 95
    const-string v4, "   "

    .line 96
    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, "\n"

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_2
    const-string v2, " - entered Wi-Fi network keys: "

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, "\n"

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_3

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "   "

    .line 150
    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v3, "\n"

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_3
    const-string v2, " - geofence configs: "

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 169
    .line 170
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, "\n"

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 183
    .line 184
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_4

    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 203
    .line 204
    const-string v4, "   "

    .line 205
    .line 206
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v3, "\n"

    .line 213
    .line 214
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_4
    const-string v2, " - location null count : "

    .line 219
    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocationNullCount:I

    .line 224
    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v2, "\n"

    .line 229
    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v2, " - distance error between previous location and current location"

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string v2, "\n"

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v2, "   Psk/Sae Network"

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    const-string v2, "\n"

    .line 249
    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v2, "      600m < x < 5km   : "

    .line 254
    .line 255
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError600mTo5kmCount:I

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v2, "\n"

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v2, "       5km < x < 10km  : "

    .line 269
    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError5kmTo10kmCount:I

    .line 274
    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v2, "\n"

    .line 279
    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v2, "      10km < x < 100km : "

    .line 284
    .line 285
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError10kmTo100kmCount:I

    .line 289
    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v2, "\n"

    .line 294
    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v2, "   Open/Owe Network"

    .line 299
    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v2, "\n"

    .line 304
    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v2, "      600m < x < 5km   : "

    .line 309
    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError600mTo5kmCount:I

    .line 314
    .line 315
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v2, "\n"

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v2, "       5km < x < 10km  : "

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError5kmTo10kmCount:I

    .line 329
    .line 330
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v2, "\n"

    .line 334
    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v2, "      10km < x < 100km : "

    .line 339
    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError10kmTo100kmCount:I

    .line 344
    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    const-string v2, "\n"

    .line 349
    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v2, "   Other Network"

    .line 354
    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v2, "\n"

    .line 359
    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v2, "      600m < x < 5km   : "

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError600mTo5kmCount:I

    .line 369
    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    const-string v2, "\n"

    .line 374
    .line 375
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    const-string v2, "       5km < x < 10km  : "

    .line 379
    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError5kmTo10kmCount:I

    .line 384
    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v2, "\n"

    .line 389
    .line 390
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    const-string v2, "      10km < x < 100km : "

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError10kmTo100kmCount:I

    .line 399
    .line 400
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    const-string v2, "\n"

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    const-string v1, " - measure status: "

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 415
    .line 416
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    if-eqz v1, :cond_5

    .line 421
    .line 422
    const-string v1, "running for "

    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 428
    .line 429
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 437
    .line 438
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 439
    .line 440
    .line 441
    move-result p0

    .line 442
    if-eqz p0, :cond_6

    .line 443
    .line 444
    const-string p0, " (passive)"

    .line 445
    .line 446
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    goto :goto_5

    .line 450
    :cond_5
    const-string p0, " stopped"

    .line 451
    .line 452
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object p0

    .line 459
    return-object p0

    .line 460
    :goto_6
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    throw p0
.end method

.method getGeofenceState()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    const/4 p0, 0x2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p0, 0x1

    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public getInRangedWifiConfigKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public getLocationNullCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocationNullCount:I

    .line 2
    .line 3
    return p0
.end method

.method getMeasureLocationPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.samsung.android.wifi.NETWORK_LOCATION"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/high16 v3, 0x2000000

    .line 23
    .line 24
    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method getMeasuredGeoLocations()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->hasValidLocation()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    new-instance v3, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getMeasuredGeoLocation()[D

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-string v5, "latitude"

    .line 47
    .line 48
    const/4 v6, 0x0

    .line 49
    aget-wide v6, v4, v6

    .line 50
    .line 51
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    const-string v5, "longitude"

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    aget-wide v6, v4, v6

    .line 62
    .line 63
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->getConfigKey()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    monitor-exit v1

    .line 81
    return-object v0

    .line 82
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public getOpenNetworkDistanceError10kmTo100kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError10kmTo100kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getOpenNetworkDistanceError5kmTo10kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError5kmTo10kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getOpenNetworkDistanceError600mTo5kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError600mTo5kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getOtherNetworkDistanceError10kmTo100kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError10kmTo100kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getOtherNetworkDistanceError5kmTo10kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError5kmTo10kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getOtherNetworkDistanceError600mTo5kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError600mTo5kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getPskNetworkDistanceError10kmTo100kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError10kmTo100kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getPskNetworkDistanceError5kmTo10kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError5kmTo10kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getPskNetworkDistanceError600mTo5kmCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError600mTo5kmCount:I

    .line 2
    .line 3
    return p0
.end method

.method hasGeofenceConfiguration(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceConfigs:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method historyDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "Geofence intent history : "

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocalLog:Landroid/util/LocalLog;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method isAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AutoWifi.Geofence"

    .line 6
    .line 7
    const-string v1, "service unavailable"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method isOpenNetwork(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    const/4 p1, 0x6

    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method isPassive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method isPskNetwork(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, 0x2

    .line 6
    if-eq p0, p1, :cond_1

    .line 7
    .line 8
    const/4 p1, 0x4

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method isStarted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method measureNetworkLocation(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :goto_0
    return v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v2, "AutoWifi.Geofence"

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v3, "ignore to measure, already started for "

    .line 29
    .line 30
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 34
    .line 35
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, " skipped "

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    return v1

    .line 58
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 63
    .line 64
    invoke-static {v3, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputwifiConfigKey(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->hasValidLocation()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v0, "start measuring location, passive: "

    .line 79
    .line 80
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 93
    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getAutoWifiDefaultValue()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_3

    .line 103
    .line 104
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 105
    .line 106
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;->onAddAndMonitorGeofence()V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 119
    .line 120
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;->onAddAndMonitorGeofence()V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    .line 136
    .line 137
    const-string v2, "com.samsung.android.wifi.NETWORK_LOCATION"

    .line 138
    .line 139
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const/4 v2, 0x2

    .line 143
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getMeasureLocationPendingIntent()Landroid/app/PendingIntent;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Lcom/samsung/android/location/SemLocationManager;->requestPassiveLocation(Landroid/app/PendingIntent;)V

    .line 153
    .line 154
    .line 155
    goto :goto_2

    .line 156
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 159
    .line 160
    const/16 v2, 0x64

    .line 161
    .line 162
    const/16 v3, 0x7530

    .line 163
    .line 164
    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/samsung/android/location/SemLocationManager;->requestSingleLocation(IIZLcom/samsung/android/location/SemLocationListener;)I

    .line 165
    .line 166
    .line 167
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 168
    .line 169
    const/4 p1, 0x1

    .line 170
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V

    .line 171
    .line 172
    .line 173
    return p1
.end method

.method public removeFromInRangedNetworks(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceEnteredNetworks:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method removeGeofenceConfiguration(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->removeGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    return-void
.end method

.method public resetStatusCounters()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLocationNullCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError600mTo5kmCount:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError5kmTo10kmCount:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mPskNetworkDistanceError10kmTo100kmCount:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError600mTo5kmCount:I

    .line 11
    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError5kmTo10kmCount:I

    .line 13
    .line 14
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOpenNetworkDistanceError10kmTo100kmCount:I

    .line 15
    .line 16
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError600mTo5kmCount:I

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError5kmTo10kmCount:I

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mOtherNetworkDistanceError10kmTo100kmCount:I

    .line 21
    .line 22
    return-void
.end method

.method restoreNetworkLocation(Ljava/lang/String;DD)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceConfiguration(Ljava/lang/String;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p2, p3, p4, p5}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->isValidLocation(DD)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const-string v2, "AutoWifi.Geofence"

    .line 28
    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;->setLocationMeasurement(DD)V

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    sget-boolean p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    const-string p2, "restoreNetwork Passive Latitude, Longitude updateGeofenceConfiguration"

    .line 41
    .line 42
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->updateGeofenceConfiguration(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    sget-boolean p2, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->DBG:Z

    .line 50
    .line 51
    if-eqz p2, :cond_4

    .line 52
    .line 53
    const-string p2, "restoreNetwork Active Latitude, Longitude startMonitoring"

    .line 54
    .line 55
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_4
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    const-string p0, "received invalid location"

    .line 64
    .line 65
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method start(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AutoWifi.Geofence"

    .line 8
    .line 9
    const-string v1, "starting manager"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v0, "Start Manager"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceReceiver:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    new-instance v1, Landroid/content/IntentFilter;

    .line 26
    .line 27
    const-string v2, "com.samsung.android.wifi.GEOFENCE"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->startMonitoring()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method startMonitoring(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->addAndMonitorGeofence(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$GeofenceConfiguration;Z)V

    return-void
.end method

.method stop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isStarted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AutoWifi.Geofence"

    .line 8
    .line 9
    const-string v1, "stop manager"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    const-string v0, "Stop Manager"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->localLog(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mGeofenceReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->stopMonitoring()V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method stopMeasuring()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mStopMeasuringLocationControlHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method stopMeasuringLocation()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fputisRunning(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "AutoWifi.Geofence"

    .line 23
    .line 24
    const-string v1, "stop measuring"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mLastMeasurement:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;->-$$Nest$fgetisPassive(Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Measurement;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mNetworkLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    :catch_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getMeasureLocationPendingIntent()Landroid/app/PendingIntent;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Lcom/samsung/android/location/SemLocationManager;->removePassiveLocation(Landroid/app/PendingIntent;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method
