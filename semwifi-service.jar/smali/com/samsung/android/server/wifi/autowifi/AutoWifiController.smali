.class public Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;,
        Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;
    }
.end annotation


# static fields
.field static final AUTO_WIFI:Ljava/lang/String; = "autowifi"

.field static final CMD_GEOFENCE_ENTER:I = 0x7

.field static final CMD_GEOFENCE_EXIT:I = 0x8

.field static final CMD_INITIALIZE:I = 0x0

.field static final CMD_MEASURE_LOCATION:I = 0xa

.field static final CMD_NETWORK_REMOVED:I = 0x5

.field static final CMD_SCANNING_MODE_CHANGED:I = 0x1

.field static final CMD_START_AUTO_WIFI:I = 0x2

.field static final CMD_START_SCAN:I = 0x9

.field static final CMD_STOP_AUTO_WIFI:I = 0x3

.field static final CMD_TRY_TO_CONNECT:I = 0xc

.field static final CMD_UPDATE_NETWORK_SCORE:I = 0x6

.field static final CMD_USER_CONTROL_TIMEOUT:I = 0xb

.field static final CMD_USER_CONTROL_WIFI_STATE:I = 0x4

.field private static final DBG_PROCESS_MESSAGE:Z = false

.field private static final DBG_PRODUCT_DEV:Z

.field static final DEFAULT_DELAY_FOR_MEASURING_LOCATION_MS:J = 0x1388L

.field static final DEFAULT_USER_CONTROL_TIMEOUT_MS:J = 0x5265c00L

.field static final EVENT_FAVORITE_NETWORK_FOUND:I = 0x65

.field static final EVENT_FAVORITE_NETWORK_NOT_FOUND:I = 0x66

.field static final EVENT_GEOFENCE_STATE_CHANGED:I = 0x67

.field static final EVENT_NETWORK_STATE_CHANGED:I = 0x68

.field static final EVENT_SCREEN_STATE_CHANGED:I = 0x69

.field static final EVENT_SEMWIFI_CONFIG_CHANGED:I = 0x6a

.field static final EVENT_WIFI_STATE_CHANGED:I = 0x64

.field private static final HOUR:J = 0x36ee80L

.field static final MAX_CELL_COUNT:I = 0x64

.field private static final MINUTE:J = 0xea60L

.field static final MIN_WAIT_FOR_WIFI_OFF_TIME_MS:J = 0x1d4c0L

.field public static final NAME:Ljava/lang/String; = "samsung.wifi.autowifi"

.field static final PERIODIC_SCAN_INIT_INTERVAL_MS:J = 0x1f40L

.field static final PERIODIC_SCAN_MAX_INTERVAL_MS:J = 0x1f400L

.field private static final SECOND:J = 0x3e8L

.field static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "AutoWifiController"

.field static final TEST_SETTING_AVERAGE_TIME:Ljava/lang/String; = "average_time"

.field static final TEST_SETTING_CELL_COUNT:Ljava/lang/String; = "cell_counter"

.field static final TEST_SETTING_CONFIG_KEY:Ljava/lang/String; = "configKey"

.field static final TEST_SETTING_GEOFENCE_MANUAL_MODE:Ljava/lang/String; = "manual_mode"

.field static final TEST_SETTING_GEOFENCE_STATE:Ljava/lang/String; = "geofence_state"

.field static final TEST_SETTING_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field static final TEST_SETTING_LOCTION_PROVIDER_AVAILABLE:Ljava/lang/String; = "location_provider_available"

.field static final TEST_SETTING_SCAN_AVAILABLE:Ljava/lang/String; = "scan_available"

.field static final TEST_SETTING_SCAN_INTERVAL:Ljava/lang/String; = "scan_interval"

.field static final TEST_SETTING_TIME_SCORE_1:Ljava/lang/String; = "dur_score_1"

.field static final TEST_SETTING_TIME_SCORE_2:Ljava/lang/String; = "dur_score_2"

.field static final TEST_SETTING_TIME_SCORE_4:Ljava/lang/String; = "dur_score_4"

.field static final TEST_SETTING_TIME_SCORE_MINUS:Ljava/lang/String; = "dur_minus"

.field static final TEST_SETTING_TIME_SCORE_RECOVERY:Ljava/lang/String; = "dur_recovery"

.field static final TEST_SETTING_TOTAL_NUMBER_OF_AVERAGE:Ljava/lang/String; = "total_number_of_average_time"

.field static final TEST_SETTING_UPDATE_NETWORK_SCORE:Ljava/lang/String; = "update_network_key"

.field static final TEST_SETTING_USER_CONTROL_TIMEOUT:Ljava/lang/String; = "user_control_timeout"

.field static final TEST_SETTING_WIFI_OFF_TIME:Ljava/lang/String; = "wifi_off_transition_min_time"

.field static final TEST_SETTING_WIFI_SWITCH:Ljava/lang/String; = "wifi_switch"

.field static final TYPE_AUTOWIFI_SCAN_ALWAYS_AVAILABLE:I = 0x0

.field static final TYPE_AUTOWIFI_TURN_OFF_IMPROVE_ACCURJACY:I = 0x2

.field static final TYPE_AUTOWIFI_TURN_OFF_LOCATION_PROVIDER:I = 0x1

.field static final TYPE_USE_ALL_NETWORK:I = 0x1

.field static final TYPE_USE_FAVORITE_NETWORK_ONLY:I = 0x0

.field private static final VERSION:Ljava/lang/String; = "v4.2.2"

.field static final mPeriodicScanIntervals:[J


# instance fields
.field private final connectedIfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoWifiStartedState:Lcom/android/internal/util/State;

.field private final mAutoWifiStoppedState:Lcom/android/internal/util/State;

.field private mAutoWifiUserType:I

.field private mAwareConnected:Z

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mContext:Landroid/content/Context;

.field private mCurrentGeofenceState:I

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field final mFavoriteNetworkListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

.field private final mFavoriteNetworks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

.field private final mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

.field final mGeofenceStateListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsP2pNetworkConnected:Z

.field private mIsSmartSwitchEnabled:Z

.field private mIsWifiConnected:Z

.field private mLastConnectedConfigKey:Ljava/lang/String;

.field private mLastConnectedDuration:J

.field private mLastConnectedRssi:I

.field private mLastNetworkState:Landroid/net/NetworkInfo$State;

.field private mLastScreenState:Z

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mManualGeofenceControl:Z

.field private mManualLocationProviderAvailable:Z

.field private mMaxCellCount:I

.field final mNetworkRemovedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

.field private final mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

.field final mNetworkUpdatedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;

.field private final mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

.field final mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private final mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

.field private final mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

.field private final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mTestSettings:Z

.field private final mUserControlState:Lcom/android/internal/util/State;

.field private mUserControlTimeoutMs:J

.field private final mWaitForWifiOffState:Lcom/android/internal/util/State;

.field private final mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private final mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private final mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiOffMinDelayMs:J

.field private final mWifiScanningModeEnabledState:Lcom/android/internal/util/State;


# direct methods
.method public static synthetic $r8$lambda$11gL94snwpT4zKZmFP3dS44afmc(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$3(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$1bHPS2Z-6Vg2N3POobOmooMKoZs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$6(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$4kPWjCvL0Y5YjB9ZTSZHsMcDHsE(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;ZZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$1(ZZILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$A0ckEhbwfOYKrAU-LtbNzZDJEX0(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$new$10(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$BRFGP7TgN__swNluYj33BHxjXXQ(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$7(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$GERUg1k4dhInxL3ApDZxZ61yxPk(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$8()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$SH-sCJcyP8nZVkrForNBueaXiXw(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$2(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$eRVFT9JfhWjckIPkLxi77SkLiIQ(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$9(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$irKuhZ8kQe3iJxiIp-HZpNEcn8w(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$4(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pCwGMAle7tIPv7QbBpS8lnZM8MA(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$new$0(Ljava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$uK9DAVI4OcsvZs8X8LwS9l32mA8(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->lambda$registerReceiver$5(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStartedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoWifiStoppedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStoppedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/SemClock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeofenceController(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/GeofenceController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGeofenceManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastConnectedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastScreenState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmManualGeofenceControl(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkScoreEvaluator(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/util/ScanPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScanner(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/autowifi/Scanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchFavoriteNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mTestSettings:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserControlState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserControlTimeoutMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitForWifiOffState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiCarrierInfoManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiOffMinDelayMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiScanningModeEnabledState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiScanningModeEnabledState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSmartSwitchEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsSmartSwitchEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastConnectedDuration(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedDuration:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxCellCount(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserControlTimeoutMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$maddWifiOnOffHistory(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->addWifiOnOffHistory(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndDisableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkAndDisableWifi()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckAndEnableWifi(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkAndEnableWifi()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckPoorNetworkConnection(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->checkPoorNetworkConnection()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiBigdataLogging()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiUserType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mgetInRangedConfigKey(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getInRangedConfigKey()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTargetConfig(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Ljava/lang/String;)Landroid/util/Pair;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getTargetConfig(Ljava/lang/String;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAirplaneModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misAvailableWifiOffFunction(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAvailableWifiOffFunction()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misScanAlwaysAvailable(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isScanAlwaysAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misSmartNetworkSwitchEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isSmartNetworkSwitchEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misUltraPowerSaveModeEnabled(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isUltraPowerSaveModeEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->notifyConnectingState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msendBroadcastBubbleTip(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendBroadcastBubbleTip()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetAutoWifiBigdataLogging(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiBigdataLogging(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetAutoWifiBigdataLoggingStart(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiBigdataLoggingStart(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetAutoWifiUserType(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiUserType(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetGeofenceState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setGeofenceState(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiNetworkState(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetupFavoriteNetworks(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setupFavoriteNetworks()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG_PRODUCT_DEV()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    .line 2
    .line 3
    return v0
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
    sput-boolean v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [J

    .line 13
    .line 14
    fill-array-data v0, :array_0

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mPeriodicScanIntervals:[J

    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 8
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Landroid/util/LocalLog;)V
    .locals 8

    .line 1
    new-instance v5, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    new-instance p5, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;

    .line 2
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-direct {p5, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V

    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClock()Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v0

    invoke-direct {v5, p5, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;-><init>(Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;Lcom/samsung/android/server/wifi/util/SemClock;)V

    new-instance v6, Lcom/samsung/android/server/wifi/autowifi/Scanner;

    new-instance p5, Landroid/net/wifi/WifiContext;

    invoke-direct {p5, p1}, Landroid/net/wifi/WifiContext;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-direct {v6, p5, v0, p2, p3}, Lcom/samsung/android/server/wifi/autowifi/Scanner;-><init>(Landroid/net/wifi/WifiContext;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V

    const-string p5, "location"

    .line 4
    invoke-static {p5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p5

    invoke-static {p5}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;Lcom/samsung/android/server/wifi/autowifi/Scanner;Landroid/location/ILocationManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;Lcom/samsung/android/server/wifi/autowifi/Scanner;Landroid/location/ILocationManager;)V
    .locals 9

    .line 6
    const-string v0, "AutoWifiController"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 7
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    const-wide/32 v0, 0x1d4c0

    .line 8
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    const-wide/32 v0, 0x5265c00

    .line 9
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualLocationProviderAvailable:Z

    .line 11
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAwareConnected:Z

    const/16 v0, 0x64

    .line 12
    iput v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    .line 13
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 14
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$DefaultState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    .line 15
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WifiScanningModeEnabledState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiScanningModeEnabledState:Lcom/android/internal/util/State;

    .line 16
    new-instance v2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStoppedState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStoppedState:Lcom/android/internal/util/State;

    .line 17
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;

    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$AutoWifiStartedState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiStartedState:Lcom/android/internal/util/State;

    .line 18
    new-instance v4, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    invoke-direct {v4, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 19
    new-instance v5, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;

    invoke-direct {v5, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    .line 20
    new-instance v6, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;

    invoke-direct {v6, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v6, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlState:Lcom/android/internal/util/State;

    .line 21
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->connectedIfaces:Ljava/util/Set;

    const/4 v7, 0x1

    .line 22
    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    aput-object v8, v7, p2

    .line 23
    invoke-static {v7}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGetWhatToString:Landroid/util/SparseArray;

    .line 24
    new-instance v7, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$9;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkRemovedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 25
    new-instance v7, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$10;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkUpdatedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;

    .line 26
    new-instance v7, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$11;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$11;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanListener:Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;

    .line 27
    new-instance v7, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworkListener:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator$Listener;

    .line 28
    new-instance v7, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$12;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceStateListener:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager$Listener;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 31
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 32
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getClock()Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.aware"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 34
    const-string v7, "wifiaware"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/aware/WifiAwareManager;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 35
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 36
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 37
    iput-object p4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 38
    iput-object p5, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 39
    iput-object p6, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 40
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiGeofenceManager()Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 42
    const-string p4, "sem_wifi"

    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 43
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFeature:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 44
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiControlHistoryManager()Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 45
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSaLoggingManager()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    move-object/from16 p1, p7

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLocationManager:Landroid/location/ILocationManager;

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 49
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 50
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 51
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 52
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 53
    invoke-virtual {p0, v6, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 55
    sget-boolean p1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    if-eqz p1, :cond_1

    const/16 p1, 0xc8

    goto :goto_1

    :cond_1
    const/16 p1, 0x32

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 57
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mTestSettings:Z

    .line 58
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiControlMonitor()Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 59
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->registerListener(Lcom/samsung/android/server/wifi/db/WifiControlListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addWifiOnOffHistory(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiControlHistoryManager:Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;

    .line 2
    .line 3
    const-string v0, "samsung.wifi.autowifi"

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/db/WifiControlHistoryManager;->addOrUpdateHistory(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private checkAndDisableWifi()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    .line 2
    .line 3
    const-string v1, "AutoWifiController"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isWifiConnected()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isWifiP2pConnected()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string p0, "skip to disable Wi-Fi, p2p connected"

    .line 22
    .line 23
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getForegroundPackageName(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v3, "com.android.settings"

    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    const-string p0, "skip to disable Wi-Fi, settings foreground"

    .line 44
    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 50
    .line 51
    const-string v0, "autowifi"

    .line 52
    .line 53
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_3
    :goto_0
    const-string p0, "skip to disable Wi-Fi, connected"

    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v2
.end method

.method private checkAndEnableWifi()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isWifiApEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiSharingEnabled(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string p0, "AutoWifiController"

    .line 18
    .line 19
    const-string v0, "skip to enable Wi-Fi, AP enabled"

    .line 20
    .line 21
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    const-string v1, "autowifi"

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method private checkPoorNetworkConnection()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "checkPoorNetworkConnection getCurrentStatusMode() : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStatusMode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", mLastConnectedRssi : "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedRssi:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "AutoWifiController"

    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStatusMode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedRssi:I

    .line 45
    .line 46
    const/16 v0, -0x4b

    .line 47
    .line 48
    if-ge p0, v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 p0, 0x0

    .line 52
    return p0

    .line 53
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 54
    return p0
.end method

.method private disableAutoWakeupController()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isAutoWakeupEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "AutoWifiController"

    .line 10
    .line 11
    const-string v1, "disable AutoWakeupController"

    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setAutoWakeupEnabled(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private doNotShowAgainBubbleTip()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_auto_wifi_bubbletip_do_not_show_again"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    return v2
.end method

.method private getAutoWifiBigdataLogging()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_auto_wifi_time_become_favorite_ap"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private getAutoWifiState()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_auto_wifi_control_enabled"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private getAutoWifiUserType()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_auto_wifi_last_user_state"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private getFavoriteNetworkKeys()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 27
    .line 28
    iget v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 29
    .line 30
    invoke-static {v3}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 37
    .line 38
    iget-object v4, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 47
    .line 48
    if-eqz v3, :cond_0

    .line 49
    .line 50
    iget-object v2, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v0
.end method

.method private getInRangedConfigKey()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->getInRangedWifiConfigKeys()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private getTargetConfig(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/net/wifi/WifiConfiguration;",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string p0, "couldn\'t get Wi-Fi config of "

    .line 18
    .line 19
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "AutoWifiController"

    .line 24
    .line 25
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isTargetConfig(Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method private hasManualFavoriteNetwork()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget v1, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 28
    .line 29
    const/16 v2, 0xb

    .line 30
    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    const/4 v2, -0x1

    .line 34
    if-ne v1, v2, :cond_0

    .line 35
    .line 36
    :cond_1
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method private isAirplaneModeEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "airplane_mode_on"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    return v2
.end method

.method private isAvailableWifiOffFunction()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    .line 2
    .line 3
    if-nez p0, :cond_0

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

.method private isScanAlwaysAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "wifi_scan_always_enabled"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    return v2
.end method

.method private isSmartNetworkSwitchEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    return v2
.end method

.method private isUltraPowerSaveModeEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "emergency_mode"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    return v2
.end method

.method private isWifiApEnabled()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/16 v0, 0xd

    .line 8
    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0xc

    .line 12
    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method private isWifiConnected()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->connectedIfaces:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method private isWifiP2pConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "AutoWifiController"

    .line 6
    .line 7
    const-string v0, "p2p was activated"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAwareConnected:Z

    .line 15
    .line 16
    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiEnabledByUser(Z)V

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-direct {p0, p3, p1, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendBigDataEvent(ZLjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic lambda$new$10(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p2, v1, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerReceiver$1(ZZILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    .line 8
    .line 9
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsP2pNetworkConnected:Z

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    const-string p0, "connected"

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string p0, "disconnected"

    .line 17
    .line 18
    :goto_0
    const-string p1, "p2p "

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p1, "AutoWifiController"

    .line 25
    .line 26
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private synthetic lambda$registerReceiver$2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAwareConnected:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string p0, "connected"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string p0, "disconnected"

    .line 9
    .line 10
    :goto_0
    const-string p1, "aware "

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "AutoWifiController"

    .line 17
    .line 18
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private synthetic lambda$registerReceiver$3(II)V
    .locals 1

    .line 1
    const/4 p2, 0x3

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiState(Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiState(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private synthetic lambda$registerReceiver$4(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedRssi:I

    .line 2
    .line 3
    return-void
.end method

.method private synthetic lambda$registerReceiver$5(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setSimState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$registerReceiver$6(Z)V
    .locals 3

    .line 1
    const-string v0, "received android.location.MODE_CHANGED extra:"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "AutoWifiController"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const-string v1, "android.location.MODE_CHANGED"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private synthetic lambda$registerReceiver$7(Z)V
    .locals 3

    .line 1
    const-string v0, "boot_completed "

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "AutoWifiController"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v0, 0x0

    .line 21
    const-string v1, "boot_completed"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerReceiver$8()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isLocationProviderAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "received android.location.PROVIDERS_CHANGED extra:"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "AutoWifiController"

    .line 12
    .line 13
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "network"

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private synthetic lambda$registerReceiver$9(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "received com.samsung.carrier.action.CARRIER_CHANGED extra:"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "AutoWifiController"

    .line 8
    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getAutoWifiStartTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long p1, v0, v2

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    const-string v1, "sem_auto_wifi_last_user_state"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/SemClock;->getWallClockMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiBigdataLoggingStart(J)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    const/4 p1, 0x3

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private logStateAndMessage(Landroid/os/Message;Lcom/android/internal/util/State;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " what="

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget p2, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getWhatToString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, " "

    .line 32
    .line 33
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const-string p1, "AutoWifiController"

    .line 48
    .line 49
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private notifyConnectingState()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private registerObserver()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v2, "wifi_scan_always_enabled"

    .line 6
    .line 7
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v3, p0, v4}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$2;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v2, "sem_auto_wifi_control_enabled"

    .line 26
    .line 27
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$3;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    .line 48
    .line 49
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$4;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$4;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 66
    .line 67
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    const-string v2, "emergency_mode"

    .line 70
    .line 71
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$5;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$5;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    const-string v2, "wifi_wakeup_enabled"

    .line 92
    .line 93
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$6;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$6;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 110
    .line 111
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 112
    .line 113
    const-string v2, "airplane_mode_on"

    .line 114
    .line 115
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$7;

    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$7;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 132
    .line 133
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    const-string v2, "sem_auto_wifi_last_user_state"

    .line 136
    .line 137
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    new-instance v3, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;

    .line 142
    .line 143
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-direct {v3, p0, v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$8;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/os/Handler;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->registerContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.wifi.direct"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 16
    .line 17
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda2;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "android.hardware.wifi.aware"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 40
    .line 41
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda3;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 58
    .line 59
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda4;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 68
    .line 69
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda5;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 78
    .line 79
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 88
    .line 89
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda6;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$RssiBroadcastListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 98
    .line 99
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda7;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$SimStateChagedListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 108
    .line 109
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda8;

    .line 110
    .line 111
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationModeChagedListener;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 118
    .line 119
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda9;

    .line 120
    .line 121
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$BootCompletedListener;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 128
    .line 129
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda10;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$LocationProviderChagedListener;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 138
    .line 139
    new-instance v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda11;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$CarrierConfigChangeListener;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private sendBigDataEvent(ZLjava/lang/String;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    if-nez p3, :cond_7

    .line 4
    .line 5
    new-instance p1, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const-string p3, "0"

    .line 15
    .line 16
    const-string v0, "1"

    .line 17
    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    move-object p2, v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p2, p3

    .line 23
    :goto_0
    const-string v1, "autoWifi_status"

    .line 24
    .line 25
    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne p2, v1, :cond_1

    .line 32
    .line 33
    move-object p3, v0

    .line 34
    :cond_1
    const-string p2, "autoWifi_inrange"

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    iget p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 46
    .line 47
    if-ne p2, v1, :cond_2

    .line 48
    .line 49
    const/4 p2, 0x3

    .line 50
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p2, 0x2

    .line 56
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    iget p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 62
    .line 63
    if-ne p2, v1, :cond_4

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 p2, 0x0

    .line 71
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    :goto_1
    const-string p3, "userOff_status"

    .line 76
    .line 77
    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 81
    .line 82
    new-instance p2, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 83
    .line 84
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setDimension(Ljava/util/HashMap;)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p2, "auto_wifi_user_action_wifi_off"

    .line 96
    .line 97
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_5
    const-string p1, "samsung.wifi.autowifi"

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    if-eqz p3, :cond_6

    .line 110
    .line 111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 112
    .line 113
    check-cast p1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 114
    .line 115
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$mgetScanCountForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 120
    .line 121
    check-cast p2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 122
    .line 123
    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$mgetDurationForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 128
    .line 129
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    const-string v0, "wifi_scan_count_before_wifi_on"

    .line 143
    .line 144
    invoke-virtual {p3, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 148
    .line 149
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 150
    .line 151
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    const-string p2, "wifi_duration_before_wifi_on"

    .line 163
    .line 164
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 165
    .line 166
    .line 167
    return-void

    .line 168
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    .line 169
    .line 170
    check-cast p1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;

    .line 171
    .line 172
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->-$$Nest$mgetScanCountForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    .line 177
    .line 178
    check-cast p2, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;

    .line 179
    .line 180
    invoke-static {p2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->-$$Nest$mgetDurationForBigdata(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;)I

    .line 181
    .line 182
    .line 183
    move-result p2

    .line 184
    iget-object p3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 185
    .line 186
    new-instance v0, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 187
    .line 188
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    const-string v0, "wifi_scan_count_before_wifi_off"

    .line 200
    .line 201
    invoke-virtual {p3, v0, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSaLoggingManager:Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;

    .line 205
    .line 206
    new-instance p1, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 207
    .line 208
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->setValue(I)Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog$Builder;->build()Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    const-string p2, "wifi_duration_before_wifi_off"

    .line 220
    .line 221
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager;->sendEvent(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/SaLoggingManager$DeviceEventLog;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    return-void
.end method

.method private sendBroadcastBubbleTip()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->shouldShowBubbleTip()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "AutoWifiController"

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "couldn\'t get Wi-Fi config of "

    .line 26
    .line 27
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 54
    .line 55
    const/4 v2, -0x1

    .line 56
    if-ne v0, v2, :cond_1

    .line 57
    .line 58
    const-string v0, "send sendBroadcastBubbleTip"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    new-instance v0, Landroid/content/Intent;

    .line 64
    .line 65
    const-string v1, "com.samsung.android.wifi.ACTION_AUTO_WIFI_BUBBLE_TIP"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 73
    .line 74
    const-string v2, "android.permission.NETWORK_SETTINGS"

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    return-void
.end method

.method private setAutoWifiBigdataLogging(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_auto_wifi_time_become_favorite_ap"

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private setAutoWifiBigdataLoggingStart(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Auto Wi-Fi Turn on at"

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "AutoWifiController"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    const-string v1, "sem_auto_wifi_turn_on_time"

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setSecureLongSetting(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private setAutoWifiUserType(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    const-string v0, "setAutoWifiUserType: "

    .line 6
    .line 7
    const-string v1, "AutoWifiController"

    .line 8
    .line 9
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mAutoWifiUserType:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v1, "sem_auto_wifi_last_user_state"

    .line 19
    .line 20
    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private setGeofenceState(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "set Geofence "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "AutoWifiController"

    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    const/16 p1, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    const/4 p1, 0x7

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private setSimState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiCarrierInfoManager:Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCarrierInfoManager;->isSimCardReady()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "simstate_changed"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private setWifiNetworkState(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isATTVendor()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_3

    .line 25
    .line 26
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setAutoWifiUserType(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 41
    .line 42
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 43
    .line 44
    const/16 v1, 0x68

    .line 45
    .line 46
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private setWifiState(Z)V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private setupFavoriteNetworks()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getFavoriteNetworkKeys()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    sget-boolean v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "setup favorite network"

    .line 26
    .line 27
    const-string v2, "AutoWifiController"

    .line 28
    .line 29
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eq v0, v1, :cond_0

    .line 39
    .line 40
    const-string v1, "favorite network size was changed, prev:"

    .line 41
    .line 42
    const-string v3, " cur:"

    .line 43
    .line 44
    invoke-static {v1, v0, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 65
    .line 66
    return-object p0
.end method

.method private switchGeofenceController(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "manual_mode"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-gez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, "test manual_mode: "

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "AutoWifiController"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    if-ne p1, v0, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    new-instance p1, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/autowifi/ManualGeofenceController;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 42
    .line 43
    const/16 p1, 0x67

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private switchWifiState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "wifi_switch"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-ltz p1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->setWifiEnabledByUser(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private updateAverageTimeValues(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const-string v0, "average_time"

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long p1, v0, v2

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    const-string p1, "test average_time: "

    .line 16
    .line 17
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v2, "AutoWifiController"

    .line 22
    .line 23
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 27
    .line 28
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$msetForceAverageTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method private updateCellCountLimits(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "cell_counter"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    const-string v0, "test cell_counter: "

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AutoWifiController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private updateGeofenceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "geofence_state"

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v1, "configKey"

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    const-string v1, "test geofence_state: "

    .line 30
    .line 31
    const-string v2, " is "

    .line 32
    .line 33
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "AutoWifiController"

    .line 38
    .line 39
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    if-ne v0, v1, :cond_3

    .line 44
    .line 45
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 46
    .line 47
    invoke-interface {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->addInRangedNetwork(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 52
    .line 53
    invoke-interface {v1, p1}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->removeFromInRangedNetworks(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    const/16 v1, 0x67

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private updateLocationMode(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "location_mode"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v2, "scan_available"

    .line 9
    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "location_provider_available"

    .line 15
    .line 16
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-ltz v0, :cond_6

    .line 21
    .line 22
    if-ltz v2, :cond_6

    .line 23
    .line 24
    if-gez p1, :cond_0

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_0
    const-string v1, "test location_mode: "

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v3, "AutoWifiController"

    .line 34
    .line 35
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const-string v1, "test scan_available: "

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v4, 0x1

    .line 49
    if-ne p1, v4, :cond_1

    .line 50
    .line 51
    move p1, v4

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    move p1, v1

    .line 54
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualLocationProviderAvailable:Z

    .line 55
    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v5, "test location_provider_available: "

    .line 59
    .line 60
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualLocationProviderAvailable:Z

    .line 64
    .line 65
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const/4 p1, -0x2

    .line 76
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLocationManager:Landroid/location/ILocationManager;

    .line 81
    .line 82
    invoke-interface {v3, p1}, Landroid/location/ILocationManager;->isLocationEnabledForUser(I)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-ne v0, v4, :cond_2

    .line 87
    .line 88
    move v5, v4

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move v5, v1

    .line 91
    :goto_1
    if-eq v3, v5, :cond_4

    .line 92
    .line 93
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLocationManager:Landroid/location/ILocationManager;

    .line 94
    .line 95
    if-ne v0, v4, :cond_3

    .line 96
    .line 97
    move v0, v4

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    move v0, v1

    .line 100
    :goto_2
    invoke-interface {v3, v0, p1}, Landroid/location/ILocationManager;->setLocationEnabledForUser(ZI)V

    .line 101
    .line 102
    .line 103
    :cond_4
    if-ne v2, v4, :cond_5

    .line 104
    .line 105
    move v1, v4

    .line 106
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isScanAlwaysAvailable()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eq v1, p1, :cond_6

    .line 111
    .line 112
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 115
    .line 116
    const-string v0, "wifi_scan_always_enabled"

    .line 117
    .line 118
    invoke-virtual {p1, p0, v0, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_3
    return-void
.end method

.method private updateNetworkScore(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "update_network_key"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, "configKey"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const-string v1, "test update network score:"

    .line 24
    .line 25
    const-string v2, " is "

    .line 26
    .line 27
    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "AutoWifiController"

    .line 32
    .line 33
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 37
    .line 38
    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->testNetworkScore(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    const/16 p1, 0x67

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method private updateNetworkScoreTimeValues(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    const-string v0, "dur_score_1"

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v4

    .line 9
    const-string v0, "dur_score_2"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v6

    .line 15
    const-string v0, "dur_score_4"

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v8

    .line 21
    const-string v0, "dur_minus"

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v10

    .line 27
    const-string v0, "dur_recovery"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v12

    .line 33
    add-long v0, v4, v6

    .line 34
    .line 35
    add-long/2addr v0, v8

    .line 36
    add-long/2addr v0, v10

    .line 37
    add-long/2addr v0, v12

    .line 38
    const-wide/16 v2, 0x0

    .line 39
    .line 40
    cmp-long p1, v0, v2

    .line 41
    .line 42
    if-lez p1, :cond_0

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "test time settings [score 1:"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", score 2:"

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", score 4:"

    .line 63
    .line 64
    const-string v1, ", minus:"

    .line 65
    .line 66
    invoke-static {p1, v0, v8, v9, v1}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", recovery:"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, "]"

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v0, "AutoWifiController"

    .line 90
    .line 91
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 95
    .line 96
    invoke-virtual/range {v3 .. v13}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->testTimeSettings(JJJJJ)V

    .line 97
    .line 98
    .line 99
    :cond_0
    return-void
.end method

.method private updateTimeoutSettings(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "wifi_off_transition_min_time"

    .line 2
    .line 3
    const-wide/16 v1, -0x1

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    cmp-long v0, v3, v5

    .line 12
    .line 13
    const-string v7, "AutoWifiController"

    .line 14
    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "test wifi_off_transition_min_time: "

    .line 18
    .line 19
    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    .line 27
    .line 28
    :cond_0
    const-string v0, "user_control_timeout"

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    cmp-long v0, v3, v5

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "test user_control_timeout: "

    .line 39
    .line 40
    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    .line 48
    .line 49
    :cond_1
    const-string p0, "scan_interval"

    .line 50
    .line 51
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 52
    .line 53
    .line 54
    move-result-wide p0

    .line 55
    const-wide/32 v0, 0x1f400

    .line 56
    .line 57
    .line 58
    cmp-long v0, p0, v0

    .line 59
    .line 60
    if-ltz v0, :cond_2

    .line 61
    .line 62
    const-string v0, "ignored scan_interval: "

    .line 63
    .line 64
    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method private updateTotalNumberOfAverage(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "total_number_of_average_time"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-lez p1, :cond_0

    .line 9
    .line 10
    const-string v0, "test total_number_of_average_time: "

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "AutoWifiController"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 22
    .line 23
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$msetForceTotalNumberOfAverage(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndStart()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->disableAutoWakeupController()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerReceiver()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerObserver()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isSmartNetworkSwitchEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsSmartSwitchEnabled:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkRemovedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkRemovedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkUpdatedListener:Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->registerNetworkUpdatedListener(Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkUpdatedListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getDebugString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->historyDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method getAheadTimeForEstimatedArrivalTime()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$fgetmAheadTimeForEstimatedArrivalTime(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method getAutoWifiStartTime()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "sem_auto_wifi_turn_on_time"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureLongSetting(Landroid/content/Context;Ljava/lang/String;J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " - Version:v4.2.2\n - CurrentState:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "\n - CurrentGeofenceState:"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mCurrentGeofenceState:I

    .line 25
    .line 26
    invoke-static {v1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n - Geofence Control Mode:"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    const-string v1, "manual"

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "auto"

    .line 46
    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " mode\n - Wi-Fi OFF Transition Min.Time:"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiOffMinDelayMs:J

    .line 56
    .line 57
    const-wide/16 v3, 0x3e8

    .line 58
    .line 59
    div-long/2addr v1, v3

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " seconds"

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsSmartSwitchEnabled:Z

    .line 69
    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    const-string v1, " (SNS is enabled, apply half of transition Min.Time)"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    const-string v1, "\n"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    iget-object v5, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWaitForWifiOffState:Lcom/android/internal/util/State;

    .line 87
    .line 88
    if-ne v2, v5, :cond_2

    .line 89
    .line 90
    check-cast v5, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;

    .line 91
    .line 92
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$WaitForWifiOffState;->getDebugLog()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    :cond_2
    const-string v2, " - User control timeout:"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mUserControlTimeoutMs:J

    .line 108
    .line 109
    div-long/2addr v5, v3

    .line 110
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v2, " seconds\n - Max cell count:"

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mMaxCellCount:I

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mIsWifiConnected:Z

    .line 127
    .line 128
    if-eqz v2, :cond_3

    .line 129
    .line 130
    const-string v2, " - Wi-Fi connected at:"

    .line 131
    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->getConnectionMaintenanceTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    div-long/2addr v5, v3

    .line 142
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v2, " seconds before\n"

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    :cond_3
    const-string v2, " - Last connected network :"

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedConfigKey:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, ", duration:"

    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastConnectedDuration:J

    .line 166
    .line 167
    div-long/2addr v5, v3

    .line 168
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v2, " seconds\n"

    .line 172
    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v2, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mNetworkScoreEvaluator:Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->dump()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, " - Wi-Fi off function: "

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAvailableWifiOffFunction()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_4

    .line 195
    .line 196
    const-string v2, "enabled"

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_4
    const-string v2, "disabled"

    .line 200
    .line 201
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v2, "\n - Favorite network keys:"

    .line 205
    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->getFavoriteNetworkKeys()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-eqz v3, :cond_5

    .line 222
    .line 223
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    check-cast v3, Ljava/lang/String;

    .line 228
    .line 229
    const-string v4, " "

    .line 230
    .line 231
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 242
    .line 243
    check-cast v1, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->getDebugLog()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceController:Lcom/samsung/android/server/wifi/autowifi/GeofenceController;

    .line 253
    .line 254
    invoke-interface {p0}, Lcom/samsung/android/server/wifi/autowifi/GeofenceController;->dump()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    return-object p0
.end method

.method getEstimatedTimeOfArrival()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$fgetmEstimatedTimeOfArrival(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const-string p0, " screen=off"

    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget p0, p1, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eq p0, v2, :cond_6

    .line 26
    .line 27
    const/4 v3, 0x5

    .line 28
    const-string v4, " configKey:"

    .line 29
    .line 30
    if-eq p0, v3, :cond_5

    .line 31
    .line 32
    const/4 v3, 0x6

    .line 33
    if-eq p0, v3, :cond_5

    .line 34
    .line 35
    const/16 v3, 0x64

    .line 36
    .line 37
    if-eq p0, v3, :cond_3

    .line 38
    .line 39
    const/16 v3, 0x65

    .line 40
    .line 41
    if-eq p0, v3, :cond_5

    .line 42
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :pswitch_0
    const-string p0, " screen "

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    if-ne p0, v2, :cond_1

    .line 56
    .line 57
    const-string p0, "on"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const-string p0, "off"

    .line 61
    .line 62
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_4

    .line 66
    :pswitch_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 70
    .line 71
    if-ne p0, v2, :cond_2

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "connected "

    .line 76
    .line 77
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const-string p0, "disconnected"

    .line 91
    .line 92
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :pswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 108
    .line 109
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getGeofenceStateString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_3
    const-string p0, " wifi "

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 123
    .line 124
    if-ne p0, v2, :cond_4

    .line 125
    .line 126
    const-string p0, "enabled"

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const-string p0, "disabled"

    .line 130
    .line 131
    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 148
    .line 149
    if-ne p0, v2, :cond_7

    .line 150
    .line 151
    const-string p0, "available"

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    const-string p0, "unavailable"

    .line 155
    .line 156
    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p0, " reason:"

    .line 160
    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 165
    .line 166
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNetworkLocations()Ljava/util/Map;
    .locals 0
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
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getMeasuredGeoLocations()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method getNextIntervalMsForTesting()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mSearchFavoriteNetworkState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    check-cast p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;->-$$Nest$fgetmNextIntervalMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$SearchFavoriteNetworkState;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGetWhatToString:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public hasNetworkLocations(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->hasGeofenceConfiguration(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method isAutoWifiEnabled()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getAutoWifiDefaultValue()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "sem_auto_wifi_control_enabled"

    .line 10
    .line 11
    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    return v0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public isAvailable()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mDefaultState:Lcom/android/internal/util/State;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    move v0, v3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v2

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mScanner:Lcom/samsung/android/server/wifi/autowifi/Scanner;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/autowifi/Scanner;->isAvailable()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v5, "isAvailable false, scanning: "

    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v5, ", Acuuracy: "

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isLocationProviderAvailable()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v5, "AutoWifiController"

    .line 49
    .line 50
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isLocationProviderAvailable()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    const-string v1, "trying to recovery state"

    .line 62
    .line 63
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const-string v1, "settings"

    .line 67
    .line 68
    invoke-virtual {p0, v3, v3, v2, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return v0
.end method

.method public isAvailableAutoWifiScan()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAvailable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isLocationProviderAvailable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isScanAlwaysAvailable()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x2

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public isLocationProviderAvailable()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualGeofenceControl:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mManualLocationProviderAvailable:Z

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const/4 v0, -0x2

    .line 9
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLocationManager:Landroid/location/ILocationManager;

    .line 14
    .line 15
    const-string v1, "network"

    .line 16
    .line 17
    invoke-interface {p0, v1, v0}, Landroid/location/ILocationManager;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method isTargetConfig(Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "AutoWifiController"

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "it\'s vendor ap netId:"

    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    return v2

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p2, "it\'s passpoint ap netId:"

    .line 46
    .line 47
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    return v2

    .line 63
    :cond_3
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    .line 72
    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string p2, "it\'s lock down network netId:"

    .line 78
    .line 79
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :cond_4
    return v2

    .line 95
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    if-eqz p0, :cond_9

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_7

    .line 109
    .line 110
    sget-boolean p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->DBG_PRODUCT_DEV:Z

    .line 111
    .line 112
    if-eqz p0, :cond_6

    .line 113
    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string p2, "it is isEphemeral ap netId:"

    .line 117
    .line 118
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 122
    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    :cond_6
    return v2

    .line 134
    :cond_7
    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isAndroidHotspot(Landroid/net/wifi/WifiInfo;)Z

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    if-eqz p0, :cond_9

    .line 139
    .line 140
    const-string p0, "it is Android Hotspot"

    .line 141
    .line 142
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    if-eqz p2, :cond_8

    .line 146
    .line 147
    iget p0, p2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    .line 148
    .line 149
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/FavoriteNetworkEvaluator;->isFavoriteNetwork(I)Z

    .line 150
    .line 151
    .line 152
    move-result p0

    .line 153
    if-eqz p0, :cond_8

    .line 154
    .line 155
    const-string p0, "it is already favorite Network"

    .line 156
    .line 157
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    return v0

    .line 161
    :cond_8
    return v2

    .line 162
    :cond_9
    return v0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->connectedIfaces:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->connectedIfaces:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public restoreNetworkLocation(Ljava/lang/String;DD)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mGeofenceManager:Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->restoreNetworkLocation(Ljava/lang/String;DD)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setScreenState(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mLastScreenState:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x69

    .line 5
    .line 6
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mTestSettings:Z

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->switchWifiState(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->switchGeofenceController(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateGeofenceState(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateTimeoutSettings(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateCellCountLimits(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateNetworkScore(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateNetworkScoreTimeValues(Landroid/os/Bundle;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateAverageTimeValues(Landroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateTotalNumberOfAverage(Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->updateLocationMode(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public setWifiEnabledByUser(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->disableAutoWakeupController()V

    .line 4
    .line 5
    .line 6
    :cond_0
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public shouldShowBubbleTip()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->isAutoWifiEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "AutoWifiController"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "BubbleTip - auto wifi is disabled"

    .line 11
    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getAutoWifiDefaultValue()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->mFavoriteNetworks:Ljava/util/Set;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x2

    .line 31
    if-le v0, v3, :cond_1

    .line 32
    .line 33
    const-string p0, "BubbleTip - FavoriteNetworks are over two"

    .line 34
    .line 35
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->doNotShowAgainBubbleTip()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const-string p0, "BubbleTip - do not show BubbleTip again"

    .line 46
    .line 47
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->hasManualFavoriteNetwork()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    const-string p0, "BubbleTip - already know this menu"

    .line 58
    .line 59
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_3
    const/4 p0, 0x1

    .line 64
    return p0
.end method
