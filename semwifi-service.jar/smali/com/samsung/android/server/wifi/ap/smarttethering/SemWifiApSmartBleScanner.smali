.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;
    }
.end annotation


# static fields
.field private static final AES_KEY_RESTART_INTERVAL:I = 0x7530

.field private static final AIRPLANE_MODE_OFF_RESTART_INTERVAL:I = 0x7d0

.field public static final CHECK_AES_KEY_STATUS_START_SCAN:I = 0x7

.field public static final CHECK_GUID_STATUS_START_SCAN:I = 0x4

.field public static final CHECK_TO_STOP_D2D_CLIENT_ADV:I = 0x6

.field public static final CHECK_TO_STOP_MHS_ADV:I = 0x5

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final D2D_CLIENT_ADV_STOP_INTERVAL:I = 0x7530

.field private static final FAMILYID_CHANGE_RESTART_INTERVAL:I = 0x1388

.field private static final FAMILY_GROUP_INFO_URI:Landroid/net/Uri;

.field private static final FAMILY_GROUP_MEMBER_INFO_URI:Landroid/net/Uri;

.field private static final HANDLE_BLE_SCAN_RESULT:I = 0x1

.field private static final HASH_VALUE_BASED_ON_FAMILY_ID:Ljava/lang/String; = "hash_value_based_on_familyid"

.field private static final KEY_CONTENT_PROVIDER_IS_FAMILY_SHARING_SWITCH_CHANGED_AUTOMATICALLY:Ljava/lang/String; = "smart_tethering_family_sharing_switch_changed_automatically"

.field private static final LOGIN_RESTART_INTERVAL:I = 0x9c40

.field private static final LOGOUT_RESTART_INTERVAL:I = 0xbb8

.field private static final MHS_ADV_STOP_INTERVAL:I = 0x7530

.field private static final SAMSUNG_ACCOUNT_FAMILY_AUTHORITY:Ljava/lang/String; = "com.samsung.android.samsungaccount.familyGroupProvider"

.field private static final SEMS_PACKAGE:Ljava/lang/String; = "com.samsung.android.mobileservice"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final SMART_TETHERING_FAMILY_COUNT:Ljava/lang/String; = "smart_tethering_family_count"

.field private static final SMART_TETHERING_FAMILY_DETAILS_CHANGED_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.changed"

.field private static final SMART_TETHERING_FAMILY_GUIDS:Ljava/lang/String; = "smart_tethering_family_guids"

.field private static final SMART_TETHERING_FAMILY_ID:Ljava/lang/String; = "smart_tethering_familyid"

.field private static final SMART_TETHERING_FAMILY_ID_CHANGED_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.familyid"

.field public static final SMART_TETHERING_FAMILY_MEMBER_ICONS:Ljava/lang/String; = "smart_tethering_family_icons_"

.field private static final SMART_TETHERING_FAMILY_OWNERID:Ljava/lang/String; = "smart_tethering_ownerid"

.field private static final SMART_TETHERING_FAMILY_USER_NAMES:Ljava/lang/String; = "smart_tethering_family_user_names"

.field private static final SMART_TETHERING_SERVICE_REGISTER:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.isServiceRegistered"

.field public static final START_SCAN:I = 0x2

.field public static final STOP_SCAN:I = 0x3

.field public static final SUPPORTMOBILEAPENHANCED_D2D:Z

.field public static final SUPPORTMOBILEAPENHANCED_LITE:Z

.field public static final SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

.field private static final SYNC_SA_FAMILY_DB:I = 0x8

.field private static TAG:Ljava/lang/String; = "SemWifiApSmartBleScanner"

.field private static final mRetryScanTimeout:J = 0x1388L

.field private static mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter; = null

.field private static mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter; = null

.field private static final wifiApScanInterval:I = 0xc30

.field private static final wifiApscanWindow_LCDOFF:I = 0x37

.field private static final wifiApscanWindow_LCDON:I = 0xa0


# instance fields
.field private AesKeyRetryNumber:I

.field private D2D_CLIENT_ADV_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

.field private DBG:Z

.field private LoginRetryNumber:I

.field private MHS_ADV_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

.field private final STANDALONE_API_INTERVAL:I

.field private d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private isAutoHotspotBleSet:Z

.field private isJDMDevice:Z

.field private isLcdOn:Z

.field private isScanningRunning:Z

.field private isStartScanningPending:Z

.field private isVerboseModeEnabled:Z

.field private last_client_adv_time:J

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDisableWifiAfterMacAddress:Z

.field mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

.field private mFamilySharingSavedState:Z

.field private mGattServerObjectLock:Ljava/lang/Object;

.field mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

.field private mInternetAvailableCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mIsGotAutohotspotBleAdvFromClient:Z

.field private mIsSamsungAccountLogin:Z

.field private mLastTimeStampBleStandaloneAPICalled:J

.field private mLocalLog:Landroid/util/LocalLog;

.field private mMaxRetryBleScan:I

.field mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

.field private mSemWifiApSmartBleScannerAppDisableReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;

.field private mUserId:I

.field private final mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field private mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

.field private mWifiApSmartBleScannerReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartFamilySwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

.field private mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

.field private mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private mWifiApSmart_AutoHotSpot_SwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

.field private mWifiApSmart_SA_Family_Observer:Landroid/database/ContentObserver;

.field private mWifiApscanWindow:I

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field scanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method public static synthetic $r8$lambda$-j6zVUJK4k08_ppQ1WAn2ZuW7X0(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$registerSAAccountCallbacks$7(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$41_B9Uwx7NyjAgxJnT_CHA3EhJc(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$3(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$6Xgxb4SM77xgbOhyHwGAYypKfxI(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$4(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Eczo8QwirMCmHn4y_djKw1IiOY4(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$5(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$mo61OkqWQRYGj0Qi9MsUiptfvzU(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$rRIbonQ7pHGbJBjJzl2UHMm6fHU(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$vkdC5DzzB2cl8fAy8zzOOCDbxak(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$z35ttOb1EwxHfL2tDvvVGzUrfyw(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->lambda$new$6(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->AesKeyRetryNumber:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->LoginRetryNumber:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetd2d_client_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisVerboseModeEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isVerboseModeEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->last_client_adv_time:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilySharingSavedState:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxRetryBleScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMaxRetryBleScan:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserId(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mUserId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_adv_TimeoutMessage(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/android/internal/util/WakeupMessage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->AesKeyRetryNumber:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputLoginRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->LoginRetryNumber:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScanningRunning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlast_client_adv_time(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->last_client_adv_time:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFamilySharingSavedState(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilySharingSavedState:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsGotAutohotspotBleAdvFromClient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsGotAutohotspotBleAdvFromClient:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMaxRetryBleScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMaxRetryBleScan:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopBleScanning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->stopBleScanning()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    .line 13
    .line 14
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    .line 15
    .line 16
    const-string v0, "content://com.samsung.android.samsungaccount.familyGroupProvider/family_group_info"

    .line 17
    .line 18
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->FAMILY_GROUP_INFO_URI:Landroid/net/Uri;

    .line 23
    .line 24
    const-string v0, "content://com.samsung.android.samsungaccount.familyGroupProvider/family_group_member_info"

    .line 25
    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->FAMILY_GROUP_MEMBER_INFO_URI:Landroid/net/Uri;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    .line 40
    .line 41
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    .line 47
    .line 48
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    .line 54
    .line 55
    const-string v1, "package"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    .line 66
    .line 67
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    .line 73
    .line 74
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.familyid"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    .line 80
    .line 81
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.d2dfamilyid"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    .line 94
    .line 95
    const-string v1, "com.samsung.android.server.wifi.softap.smarttethering.isServiceRegistered"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "eng"

    .line 5
    .line 6
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->DBG:Z

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 31
    .line 32
    const-wide/16 v2, 0x0

    .line 33
    .line 34
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->last_client_adv_time:J

    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v4, " mhs adv Send Message Timeout"

    .line 48
    .line 49
    invoke-static {v2, v3, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->MHS_ADV_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, " d2d client adv Send Message Timeout"

    .line 63
    .line 64
    invoke-static {v2, v3, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->D2D_CLIENT_ADV_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 77
    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isJDMDevice:Z

    .line 79
    .line 80
    new-instance v0, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 88
    .line 89
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilySharingSavedState:Z

    .line 90
    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    .line 92
    .line 93
    const/4 v0, 0x3

    .line 94
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->LoginRetryNumber:I

    .line 95
    .line 96
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->AesKeyRetryNumber:I

    .line 97
    .line 98
    new-instance v0, Ljava/lang/Object;

    .line 99
    .line 100
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGattServerObjectLock:Ljava/lang/Object;

    .line 104
    .line 105
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mDisableWifiAfterMacAddress:Z

    .line 106
    .line 107
    const-wide/16 v2, -0x1

    .line 108
    .line 109
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLastTimeStampBleStandaloneAPICalled:J

    .line 110
    .line 111
    const/16 v0, 0x1388

    .line 112
    .line 113
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->STANDALONE_API_INTERVAL:I

    .line 114
    .line 115
    const/4 v0, 0x2

    .line 116
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMaxRetryBleScan:I

    .line 117
    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isVerboseModeEnabled:Z

    .line 119
    .line 120
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mUserId:I

    .line 121
    .line 122
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1;

    .line 123
    .line 124
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 125
    .line 126
    .line 127
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mInternetAvailableCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 128
    .line 129
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;

    .line 130
    .line 131
    new-instance v3, Landroid/os/Handler;

    .line 132
    .line 133
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    .line 137
    .line 138
    .line 139
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartFamilySwitchObserver:Landroid/database/ContentObserver;

    .line 140
    .line 141
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;

    .line 142
    .line 143
    new-instance v3, Landroid/os/Handler;

    .line 144
    .line 145
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    .line 149
    .line 150
    .line 151
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_AutoHotSpot_SwitchObserver:Landroid/database/ContentObserver;

    .line 152
    .line 153
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$5;

    .line 154
    .line 155
    new-instance v3, Landroid/os/Handler;

    .line 156
    .line 157
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$5;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    .line 161
    .line 162
    .line 163
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

    .line 164
    .line 165
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$6;

    .line 166
    .line 167
    new-instance v3, Landroid/os/Handler;

    .line 168
    .line 169
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$6;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    .line 173
    .line 174
    .line 175
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_SA_Family_Observer:Landroid/database/ContentObserver;

    .line 176
    .line 177
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$7;

    .line 178
    .line 179
    new-instance v3, Landroid/os/Handler;

    .line 180
    .line 181
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-direct {v2, p0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$7;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V

    .line 185
    .line 186
    .line 187
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

    .line 188
    .line 189
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 200
    .line 201
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 202
    .line 203
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 204
    .line 205
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 214
    .line 215
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 216
    .line 217
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattServer()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 226
    .line 227
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 236
    .line 237
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 246
    .line 247
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

    .line 248
    .line 249
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 250
    .line 251
    .line 252
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

    .line 253
    .line 254
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->registerSAAccountCallbacks()V

    .line 255
    .line 256
    .line 257
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;

    .line 258
    .line 259
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 260
    .line 261
    .line 262
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mSemWifiApSmartBleScannerAppDisableReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerAppDisableReceiver;

    .line 263
    .line 264
    iget-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 265
    .line 266
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerAppDisableFilter:Landroid/content/IntentFilter;

    .line 267
    .line 268
    invoke-virtual {p4, p2, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    iget-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerReceiver;

    .line 274
    .line 275
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerIntentFilter:Landroid/content/IntentFilter;

    .line 276
    .line 277
    invoke-virtual {p2, p4, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 278
    .line 279
    .line 280
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    const-string p4, "wifi_ap_smart_tethering_settings_with_family"

    .line 287
    .line 288
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 289
    .line 290
    .line 291
    move-result-object p4

    .line 292
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartFamilySwitchObserver:Landroid/database/ContentObserver;

    .line 293
    .line 294
    invoke-virtual {p2, p4, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 295
    .line 296
    .line 297
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 298
    .line 299
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    const-string p4, "client_advanced_autohotspot_run"

    .line 304
    .line 305
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 306
    .line 307
    .line 308
    move-result-object p4

    .line 309
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

    .line 310
    .line 311
    invoke-virtual {p2, p4, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 312
    .line 313
    .line 314
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 315
    .line 316
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    const-string p4, "wifi_client_smart_tethering_settings"

    .line 321
    .line 322
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 323
    .line 324
    .line 325
    move-result-object p4

    .line 326
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_Client_SwitchObserver:Landroid/database/ContentObserver;

    .line 327
    .line 328
    invoke-virtual {p2, p4, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 329
    .line 330
    .line 331
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    const-string p4, "wifi_ap_smart_tethering_settings"

    .line 338
    .line 339
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 340
    .line 341
    .line 342
    move-result-object p4

    .line 343
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_AutoHotSpot_SwitchObserver:Landroid/database/ContentObserver;

    .line 344
    .line 345
    invoke-virtual {p2, p4, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    .line 347
    .line 348
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 349
    .line 350
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 351
    .line 352
    .line 353
    move-result-object p2

    .line 354
    const-string p4, "wifi_ap_smart_d2d_mhs"

    .line 355
    .line 356
    invoke-static {p4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 357
    .line 358
    .line 359
    move-result-object p4

    .line 360
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_D2D_SwitchObserver:Landroid/database/ContentObserver;

    .line 361
    .line 362
    invoke-virtual {p2, p4, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 363
    .line 364
    .line 365
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 370
    .line 371
    .line 372
    move-result-object p2

    .line 373
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSAFamilySupportedBasedOnCountry()Z

    .line 374
    .line 375
    .line 376
    move-result p2

    .line 377
    if-eqz p2, :cond_2

    .line 378
    .line 379
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 380
    .line 381
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    sget-object p4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->FAMILY_GROUP_INFO_URI:Landroid/net/Uri;

    .line 386
    .line 387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_SA_Family_Observer:Landroid/database/ContentObserver;

    .line 388
    .line 389
    invoke-virtual {p2, p4, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 390
    .line 391
    .line 392
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 393
    .line 394
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 395
    .line 396
    .line 397
    move-result-object p2

    .line 398
    sget-object p4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->FAMILY_GROUP_MEMBER_INFO_URI:Landroid/net/Uri;

    .line 399
    .line 400
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmart_SA_Family_Observer:Landroid/database/ContentObserver;

    .line 401
    .line 402
    invoke-virtual {p2, p4, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 403
    .line 404
    .line 405
    :cond_2
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 406
    .line 407
    .line 408
    move-result p2

    .line 409
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isLcdOn:Z

    .line 410
    .line 411
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 412
    .line 413
    new-instance p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda0;

    .line 414
    .line 415
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V

    .line 419
    .line 420
    .line 421
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 422
    .line 423
    new-instance p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda1;

    .line 424
    .line 425
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V

    .line 429
    .line 430
    .line 431
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isOneUIVersion6_0_AtMost()Z

    .line 432
    .line 433
    .line 434
    move-result p2

    .line 435
    if-eqz p2, :cond_3

    .line 436
    .line 437
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 438
    .line 439
    new-instance p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda2;

    .line 440
    .line 441
    invoke-direct {p3, p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V

    .line 445
    .line 446
    .line 447
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 448
    .line 449
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda3;

    .line 450
    .line 451
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V

    .line 455
    .line 456
    .line 457
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 458
    .line 459
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda4;

    .line 460
    .line 461
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 468
    .line 469
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda5;

    .line 470
    .line 471
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 475
    .line 476
    .line 477
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 478
    .line 479
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda6;

    .line 480
    .line 481
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V

    .line 485
    .line 486
    .line 487
    return-void
.end method

.method private buildScanFilters()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const-string v7, "wifi_ap_smart_d2d_mhs"

    .line 31
    .line 32
    const/4 v8, 0x0

    .line 33
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v9, "wifi_client_smart_tethering_settings"

    .line 44
    .line 45
    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    const-string v10, "client_advanced_autohotspot_run"

    .line 56
    .line 57
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 62
    .line 63
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result v9

    .line 67
    const-wide/16 v10, -0x1

    .line 68
    .line 69
    cmp-long v0, v0, v10

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    const/16 v12, 0x75

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    if-nez v6, :cond_0

    .line 77
    .line 78
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getGUIDMask()[B

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    invoke-virtual {v0, v12, v9, v13}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 100
    .line 101
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    new-instance v9, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    const-string v13, "mGuidScanFilter"

    .line 111
    .line 112
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iget-object v13, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 116
    .line 117
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 128
    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v13, ":\tmGuidScanFilter"

    .line 140
    .line 141
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v13, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 145
    .line 146
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v9

    .line 153
    invoke-virtual {v0, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_0
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    .line 159
    .line 160
    if-eqz v0, :cond_3

    .line 161
    .line 162
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSAFamilySupportedBasedOnCountry()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    if-nez v0, :cond_3

    .line 175
    .line 176
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 177
    .line 178
    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getCientD2DMask()[B

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    invoke-virtual {v0, v12, v9, v13}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 198
    .line 199
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 200
    .line 201
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 205
    .line 206
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 207
    .line 208
    new-instance v9, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v13, "mClientD2dFilter"

    .line 211
    .line 212
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object v13, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 216
    .line 217
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 228
    .line 229
    new-instance v9, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v13, ":\tmClientD2dFilter"

    .line 240
    .line 241
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    iget-object v13, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 245
    .line 246
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    invoke-virtual {v0, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSAFamilySupportedBasedOnCountry()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-nez v0, :cond_3

    .line 270
    .line 271
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    .line 272
    .line 273
    if-nez v0, :cond_2

    .line 274
    .line 275
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    .line 276
    .line 277
    if-eqz v0, :cond_3

    .line 278
    .line 279
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 280
    .line 281
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-nez v0, :cond_3

    .line 286
    .line 287
    if-eqz v9, :cond_3

    .line 288
    .line 289
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    .line 290
    .line 291
    if-nez v0, :cond_3

    .line 292
    .line 293
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 294
    .line 295
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mClientD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 296
    .line 297
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 298
    .line 299
    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 300
    .line 301
    .line 302
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getMHS_D2D_ScanManufactureData()[B

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getMHSD2DMask()[B

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    invoke-virtual {v0, v12, v9, v13}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 319
    .line 320
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 321
    .line 322
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 326
    .line 327
    new-instance v9, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    const-string v13, "mMhsD2dFilter:"

    .line 330
    .line 331
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    iget-object v13, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 335
    .line 336
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 347
    .line 348
    new-instance v9, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .line 352
    .line 353
    sget-object v13, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v13, ":\tmMhsD2dFilter:"

    .line 359
    .line 360
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget-object v13, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mMhsD2dFilter:Landroid/bluetooth/le/ScanFilter;

    .line 364
    .line 365
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    invoke-virtual {v0, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_3
    :goto_0
    cmp-long v0, v2, v10

    .line 376
    .line 377
    if-eqz v0, :cond_4

    .line 378
    .line 379
    if-nez v6, :cond_4

    .line 380
    .line 381
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 382
    .line 383
    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getFamilyIdMask()[B

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    invoke-virtual {v0, v12, v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 403
    .line 404
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 405
    .line 406
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 410
    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    const-string v2, "mFamilyScanFilter"

    .line 414
    .line 415
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 419
    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 431
    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 438
    .line 439
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v2, ":\tmFamilyScanFilter"

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 448
    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    goto :goto_1

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 461
    .line 462
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-nez v0, :cond_7

    .line 467
    .line 468
    cmp-long v0, v4, v10

    .line 469
    .line 470
    if-eqz v0, :cond_7

    .line 471
    .line 472
    const/4 v0, 0x1

    .line 473
    if-eq v7, v0, :cond_5

    .line 474
    .line 475
    if-ne v8, v0, :cond_7

    .line 476
    .line 477
    :cond_5
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    .line 478
    .line 479
    if-nez v0, :cond_6

    .line 480
    .line 481
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    .line 482
    .line 483
    if-eqz v0, :cond_7

    .line 484
    .line 485
    :cond_6
    new-instance v0, Landroid/bluetooth/le/ScanFilter$Builder;

    .line 486
    .line 487
    invoke-direct {v0}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 488
    .line 489
    .line 490
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getScanManufactureData()[B

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getFamilyIdMask()[B

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-virtual {v0, v12, v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setManufacturerData(I[B[B)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 507
    .line 508
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 509
    .line 510
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 514
    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    const-string v2, "mD2DFamilyScanFilter"

    .line 518
    .line 519
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 523
    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .line 533
    .line 534
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 535
    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    .line 540
    .line 541
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 542
    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v2, ":\tmD2DFamilyScanFilter"

    .line 547
    .line 548
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 552
    .line 553
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    goto :goto_1

    .line 564
    :cond_7
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 565
    .line 566
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->scanFilters:Ljava/util/List;

    .line 567
    .line 568
    return-object p0
.end method

.method private buildScanSettings()Landroid/bluetooth/le/ScanSettings;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "power"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/os/PowerManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    :goto_0
    const/16 v1, 0x37

    .line 20
    .line 21
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isLcdOn:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0xa0

    .line 30
    .line 31
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 32
    .line 33
    :cond_1
    new-instance v0, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x64

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0xc30

    .line 44
    .line 45
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 46
    .line 47
    invoke-virtual {v0, v1, p0}, Landroid/bluetooth/le/ScanSettings$Builder;->semSetCustomScanParams(II)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method private checkIfAllowedDevice([B)Z
    .locals 6

    .line 1
    const/4 p0, 0x1

    .line 2
    const/4 v0, 0x4

    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    .line 12
    .line 13
    move p1, v3

    .line 14
    :goto_0
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    aget-byte v2, v1, p1

    .line 17
    .line 18
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v5, "temp value : "

    .line 21
    .line 22
    invoke-static {v2, v5}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    return p0

    .line 32
    :cond_0
    add-int/2addr p1, p0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v3

    .line 35
    :array_0
    .array-data 1
        0x11t
        0x11t
        0x11t
        0x11t
    .end array-data
.end method

.method private getCientD2DMask()[B
    .locals 3

    .line 1
    const/16 p0, 0x18

    .line 2
    .line 3
    new-array v0, p0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, p0, :cond_0

    .line 8
    .line 9
    aput-byte v1, v0, v2

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    const/4 v1, -0x1

    .line 16
    aput-byte v1, v0, p0

    .line 17
    .line 18
    const/16 p0, 0xa

    .line 19
    .line 20
    aput-byte v1, v0, p0

    .line 21
    .line 22
    return-object v0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "connectivity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getFamilyIdMask()[B
    .locals 10

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 8
    .line 9
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aput-byte v2, v1, v3

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    const/4 v3, -0x1

    .line 18
    aput-byte v3, v1, v0

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v4

    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    const-wide/16 v8, -0x1

    .line 31
    .line 32
    cmp-long p0, v4, v8

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    :goto_1
    if-ge v2, v0, :cond_2

    .line 38
    .line 39
    add-int/lit8 p0, v2, 0x6

    .line 40
    .line 41
    aput-byte v3, v1, p0

    .line 42
    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    cmp-long p0, v6, v8

    .line 47
    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    :goto_2
    if-ge v2, v0, :cond_2

    .line 51
    .line 52
    add-int/lit8 p0, v2, 0x6

    .line 53
    .line 54
    aput-byte v3, v1, p0

    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    return-object v1
.end method

.method private getGUIDMask()[B
    .locals 7

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 8
    .line 9
    if-ge v3, v0, :cond_0

    .line 10
    .line 11
    aput-byte v2, v1, v3

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    const/4 v0, -0x1

    .line 18
    aput-byte v0, v1, p0

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const-wide/16 v5, -0x1

    .line 25
    .line 26
    cmp-long p0, v3, v5

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    :goto_1
    const/4 p0, 0x4

    .line 31
    if-ge v2, p0, :cond_1

    .line 32
    .line 33
    add-int/lit8 p0, v2, 0x2

    .line 34
    .line 35
    aput-byte v0, v1, p0

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    return-object v1
.end method

.method private getMHSD2DMask()[B
    .locals 3

    .line 1
    const/16 p0, 0x18

    .line 2
    .line 3
    new-array v0, p0, [B

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, p0, :cond_0

    .line 8
    .line 9
    aput-byte v1, v0, v2

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x1

    .line 15
    const/4 v1, -0x1

    .line 16
    aput-byte v1, v0, p0

    .line 17
    .line 18
    const/16 p0, 0xa

    .line 19
    .line 20
    aput-byte v1, v0, p0

    .line 21
    .line 22
    return-object v0
.end method

.method private getMHS_D2D_ScanManufactureData()[B
    .locals 13

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    aput-byte v2, v1, v3

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 p0, 0x1

    .line 41
    aput-byte p0, v1, v2

    .line 42
    .line 43
    const/16 v10, 0x12

    .line 44
    .line 45
    aput-byte v10, v1, p0

    .line 46
    .line 47
    const/16 p0, 0xa

    .line 48
    .line 49
    const/4 v10, 0x3

    .line 50
    aput-byte v10, v1, p0

    .line 51
    .line 52
    const-wide/16 v10, -0x1

    .line 53
    .line 54
    cmp-long p0, v3, v10

    .line 55
    .line 56
    const/4 v3, 0x4

    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    move v0, v2

    .line 64
    :goto_1
    if-ge v0, v3, :cond_1

    .line 65
    .line 66
    add-int/lit8 v4, v0, 0x2

    .line 67
    .line 68
    aget-byte v12, p0, v0

    .line 69
    .line 70
    aput-byte v12, v1, v4

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    cmp-long p0, v5, v10

    .line 76
    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :goto_2
    if-ge v2, v3, :cond_3

    .line 84
    .line 85
    add-int/lit8 v0, v2, 0x6

    .line 86
    .line 87
    aget-byte v4, p0, v2

    .line 88
    .line 89
    aput-byte v4, v1, v0

    .line 90
    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    cmp-long p0, v8, v10

    .line 95
    .line 96
    if-eqz p0, :cond_3

    .line 97
    .line 98
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    :goto_3
    if-ge v2, v3, :cond_3

    .line 107
    .line 108
    add-int/lit8 v0, v2, 0x6

    .line 109
    .line 110
    aget-byte v4, p0, v2

    .line 111
    .line 112
    aput-byte v4, v1, v0

    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_3
    return-object v1
.end method

.method private getScanManufactureData()[B
    .locals 13

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    new-array v1, v0, [B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    if-ge v3, v0, :cond_0

    .line 8
    .line 9
    aput-byte v2, v1, v3

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    .line 37
    .line 38
    .line 39
    move-result-wide v8

    .line 40
    const/4 p0, 0x1

    .line 41
    aput-byte p0, v1, v2

    .line 42
    .line 43
    const/16 v10, 0x12

    .line 44
    .line 45
    aput-byte v10, v1, p0

    .line 46
    .line 47
    const/16 p0, 0xa

    .line 48
    .line 49
    const/4 v10, 0x4

    .line 50
    aput-byte v10, v1, p0

    .line 51
    .line 52
    const-wide/16 v11, -0x1

    .line 53
    .line 54
    cmp-long p0, v3, v11

    .line 55
    .line 56
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    move v0, v2

    .line 63
    :goto_1
    if-ge v0, v10, :cond_1

    .line 64
    .line 65
    add-int/lit8 v3, v0, 0x2

    .line 66
    .line 67
    aget-byte v4, p0, v0

    .line 68
    .line 69
    aput-byte v4, v1, v3

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    cmp-long p0, v5, v11

    .line 75
    .line 76
    if-eqz p0, :cond_2

    .line 77
    .line 78
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :goto_2
    if-ge v2, v10, :cond_3

    .line 83
    .line 84
    add-int/lit8 v0, v2, 0x6

    .line 85
    .line 86
    aget-byte v3, p0, v2

    .line 87
    .line 88
    aput-byte v3, v1, v0

    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_2
    cmp-long p0, v8, v11

    .line 94
    .line 95
    if-eqz p0, :cond_3

    .line 96
    .line 97
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->bytesFromLong(Ljava/lang/Long;)[B

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    :goto_3
    if-ge v2, v10, :cond_3

    .line 106
    .line 107
    add-int/lit8 v0, v2, 0x6

    .line 108
    .line 109
    aget-byte v3, p0, v2

    .line 110
    .line 111
    aput-byte v3, v1, v0

    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    return-object v1
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 7

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isLcdOn:Z

    .line 2
    .line 3
    const-wide/16 v0, 0x1f4

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x3

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v6, ":\tScreen is ON, restarting scanning"

    .line 27
    .line 28
    invoke-static {v4, v5, v6, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v4, "Screen is ON, restarting scanning"

    .line 34
    .line 35
    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 39
    .line 40
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 44
    .line 45
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string v6, ":\tScreen is OFF, restarting scanning"

    .line 67
    .line 68
    invoke-static {v4, v5, v6, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    const-string v4, "Screen is OFF, restarting scanning"

    .line 74
    .line 75
    invoke-static {p1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 84
    .line 85
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "airplane_mode_on"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v2

    .line 19
    :goto_0
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v3, "isAirplaneMode:"

    .line 22
    .line 23
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 31
    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, ":\tisAirplaneMode: "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x2

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 71
    .line 72
    const/4 v1, 0x3

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 77
    .line 78
    const/16 v0, 0xb

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 85
    .line 86
    if-eqz p0, :cond_3

    .line 87
    .line 88
    const-wide/16 v2, 0x7d0

    .line 89
    .line 90
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p3, "ABSENT:1,READY:5,LOADED:10"

    .line 4
    .line 5
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 9
    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string v1, ":\tABSENT:1,READY:5,LOADED:10"

    .line 18
    .line 19
    invoke-static {p3, v0, v1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 20
    .line 21
    .line 22
    const-string p2, "phone"

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/16 p3, 0xa

    .line 35
    .line 36
    const/4 v0, 0x5

    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-le p2, v2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v5, "simState1:"

    .line 52
    .line 53
    const-string v6, ",simState2:"

    .line 54
    .line 55
    const-string v7, ",telephonyManager.getPhoneCount():"

    .line 56
    .line 57
    invoke-static {v5, v6, p2, v3, v7}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 76
    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    const-string v8, ":\tsimState1:"

    .line 85
    .line 86
    invoke-static {v5, v7, v8, p2, v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v6, ",telephonyManager.getPhoneCount()"

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {v4, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    if-eq p2, v0, :cond_2

    .line 112
    .line 113
    if-eq p2, p3, :cond_2

    .line 114
    .line 115
    if-eq v3, p3, :cond_2

    .line 116
    .line 117
    if-ne v3, v0, :cond_1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 125
    .line 126
    const-string v3, "simState:"

    .line 127
    .line 128
    invoke-static {p1, v3}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {p2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v4, ":\tsimState:"

    .line 148
    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {p2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    if-eq p1, v0, :cond_2

    .line 163
    .line 164
    if-ne p1, p3, :cond_1

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_1
    move p1, v1

    .line 168
    goto :goto_1

    .line 169
    :cond_2
    :goto_0
    move p1, v0

    .line 170
    :goto_1
    const-string p2, "autohotspot_saved_state"

    .line 171
    .line 172
    if-nez p1, :cond_4

    .line 173
    .line 174
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string p3, "wifi_ap_smart_tethering_settings"

    .line 181
    .line 182
    invoke-static {p1, p3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    const-string v3, "wifi_ap_smart_tethering_settings_with_family"

    .line 193
    .line 194
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-ne p1, v2, :cond_3

    .line 199
    .line 200
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-static {v4, p2, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    .line 208
    .line 209
    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 210
    .line 211
    const-string v4, "SIM card not ready,disabling AutoHotspot"

    .line 212
    .line 213
    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 217
    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 224
    .line 225
    const-string v6, ":\tSIM card not ready,disabling AutoHotspot"

    .line 226
    .line 227
    invoke-static {v4, v5, v6, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-static {p2, p3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    .line 238
    .line 239
    :cond_3
    if-ne v0, v2, :cond_5

    .line 240
    .line 241
    sget-object p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 242
    .line 243
    const-string p3, "SIM card not ready,resetting familysharing agreement page,disabling familysharing,mst:"

    .line 244
    .line 245
    invoke-static {p1, p3}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 253
    .line 254
    new-instance p3, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v0, ":\tSIM card not ready,resetting familysharing agreement page,disabling familysharing,mst:"

    .line 265
    .line 266
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    const-string p2, "smart_tethering_family_sharing_service_registered"

    .line 282
    .line 283
    const-string p3, "0"

    .line 284
    .line 285
    invoke-static {p1, p2, p3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 289
    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-static {p1, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    .line 296
    .line 297
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 298
    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    const-string p1, "autohotspot_family_sharing_saved_state"

    .line 304
    .line 305
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :cond_4
    if-ne p1, v0, :cond_5

    .line 310
    .line 311
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-ne p1, v2, :cond_5

    .line 322
    .line 323
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 324
    .line 325
    const-string p2, "SIM card inserted,trying to set AutohotspotDB"

    .line 326
    .line 327
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 331
    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string p3, ":\tSIM card inserted,trying to set AutohotspotDB"

    .line 343
    .line 344
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p2

    .line 351
    invoke-virtual {p1, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SetAutoHotspotSettingsDB()V

    .line 355
    .line 356
    .line 357
    :cond_5
    return-void
.end method

.method private synthetic lambda$new$3(I)V
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "action BLE state:::"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ":\taction BLE state:::"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v0, v2, :cond_0

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 46
    .line 47
    :cond_0
    const/16 v0, 0xf

    .line 48
    .line 49
    const-wide/16 v3, 0x1f4

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    const/4 v6, 0x3

    .line 53
    if-ne p1, v0, :cond_2

    .line 54
    .line 55
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v8, "STATE_BLE_ON,isScanningRunning:"

    .line 60
    .line 61
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 77
    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v8, ":\tSTATE_BLE_ON,isScanningRunning:"

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 94
    .line 95
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 108
    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 112
    .line 113
    if-eqz v7, :cond_1

    .line 114
    .line 115
    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 119
    .line 120
    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 121
    .line 122
    .line 123
    :cond_2
    const/16 v0, 0x10

    .line 124
    .line 125
    if-ne p1, v0, :cond_3

    .line 126
    .line 127
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 128
    .line 129
    const-string v7, "BLE is turned off"

    .line 130
    .line 131
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 135
    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    const-string v9, ":\tBLE is turned off"

    .line 144
    .line 145
    invoke-static {v7, v8, v9, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->removeGattServer()V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 154
    .line 155
    const/4 v7, 0x0

    .line 156
    iput-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattService:Landroid/bluetooth/BluetoothGattService;

    .line 157
    .line 158
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 159
    .line 160
    if-eqz v0, :cond_3

    .line 161
    .line 162
    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    .line 164
    .line 165
    :cond_3
    const/16 v0, 0xa

    .line 166
    .line 167
    if-ne p1, v0, :cond_6

    .line 168
    .line 169
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    const-string v0, "airplane_mode_on"

    .line 176
    .line 177
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_4

    .line 182
    .line 183
    move v1, v2

    .line 184
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 185
    .line 186
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-nez v1, :cond_6

    .line 191
    .line 192
    if-eqz p1, :cond_6

    .line 193
    .line 194
    const-string v0, "autohotspot"

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_6

    .line 201
    .line 202
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 203
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v1, "BLE is OFF, in BT OFF,so check for Enabling BLE: "

    .line 207
    .line 208
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 224
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v1, ":\tBLE is OFF, in BT OFF,socheck for  Enabling BLE: "

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 253
    .line 254
    if-eqz p1, :cond_5

    .line 255
    .line 256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 257
    .line 258
    if-eqz p1, :cond_5

    .line 259
    .line 260
    invoke-virtual {p1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    .line 262
    .line 263
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 264
    .line 265
    if-eqz p0, :cond_6

    .line 266
    .line 267
    invoke-virtual {p0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 268
    .line 269
    .line 270
    :cond_6
    return-void
.end method

.method private synthetic lambda$new$4(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SetAutoHotspotSettingsDB()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, ":\t NearBy is toggelled, restarting scanning:"

    .line 21
    .line 22
    invoke-static {v1, v2, v3, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "NearBy is toggelled, restarting scanning:"

    .line 28
    .line 29
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 38
    .line 39
    const/4 p1, 0x2

    .line 40
    const-wide/16 v0, 0x1f4

    .line 41
    .line 42
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "wifi_ap_smart_tethering_settings"

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const-string v3, "wifi_ap_smart_tethering_settings_with_family"

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    if-ne p1, v4, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v5, "autohotspot_saved_nearby_state"

    .line 71
    .line 72
    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ne p1, v4, :cond_1

    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v5, "autohotspot_family_sharing_nearby_saved_state"

    .line 94
    .line 95
    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 117
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string v4, ":\t NearBy is toggelled, Turn off auto hotspot settings"

    .line 126
    .line 127
    invoke-static {v1, v3, v4, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 131
    .line 132
    const-string v1, "NearBy is toggelled, Turn off auto hotspot settings"

    .line 133
    .line 134
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 138
    .line 139
    if-eqz p1, :cond_2

    .line 140
    .line 141
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 149
    .line 150
    const-string v4, ":\t NearBy is toggelled, stop scanning:"

    .line 151
    .line 152
    invoke-static {v1, v3, v4, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 156
    .line 157
    const-string v1, "NearBy is toggelled, stop scanning:"

    .line 158
    .line 159
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 168
    .line 169
    .line 170
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$5(I)V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_2

    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isJDMDevice:Z

    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, " JDM Wi-Fi Enabled"

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ":\t JDM Wi-Fi Enabled"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v0, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 49
    .line 50
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getFactoryMacAddresses()[Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    array-length v1, p1

    .line 57
    if-lez v1, :cond_0

    .line 58
    .line 59
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    aget-object p1, p1, v0

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->writeWifiMacInfo(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mDisableWifiAfterMacAddress:Z

    .line 69
    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 73
    .line 74
    const-string v1, "ap.smart"

    .line 75
    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mDisableWifiAfterMacAddress:Z

    .line 80
    .line 81
    :cond_1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, " JDM Wi-Fi Enabled, starting scannnig"

    .line 102
    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    const-string v2, ":\t JDM Wi-Fi Enabled, starting scannnig"

    .line 116
    .line 117
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 118
    .line 119
    .line 120
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 121
    .line 122
    const/4 p1, 0x2

    .line 123
    const-wide/16 v0, 0x0

    .line 124
    .line 125
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    .line 127
    .line 128
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$6(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "SmartBleScanner, emergencyMode:"

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ":\temergencyMode:  "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x2

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 50
    .line 51
    const/4 v0, 0x3

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 56
    .line 57
    const/16 p1, 0xb

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 64
    .line 65
    if-eqz p0, :cond_2

    .line 66
    .line 67
    const-wide/16 v1, 0x7d0

    .line 68
    .line 69
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method private synthetic lambda$registerSAAccountCallbacks$7(Z)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "smart_tethering_family_sharing_switch_changed_automatically"

    .line 3
    .line 4
    const-string v2, "smart_tethering_sa_account_id"

    .line 5
    .line 6
    const-string v3, "0"

    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-lez p1, :cond_6

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    .line 19
    .line 20
    if-nez p1, :cond_6

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    .line 24
    .line 25
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v7, ":\t smartBleScanner LOGIN comp"

    .line 35
    .line 36
    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 37
    .line 38
    .line 39
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v5, "smartBleScanner LOGIN comp"

    .line 42
    .line 43
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 47
    .line 48
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAccountName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {v4, v2, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 58
    .line 59
    const-wide/16 v4, -0x1

    .line 60
    .line 61
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putHashbasedonD2DFamilyid(J)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DFamilyID(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    const-string v5, "smart_tethering_d2d_Wifimac"

    .line 73
    .line 74
    invoke-static {v2, v5, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-static {v2, v1, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkPreConditions()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->SIM_CARD_ERROR:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 89
    .line 90
    if-ne v1, v2, :cond_0

    .line 91
    .line 92
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isOneUIVersion6_0_AtMost()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    .line 98
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v2, "autohotspot_saved_state"

    .line 105
    .line 106
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 117
    .line 118
    const-string v3, ":\t login completed, but SIM card is not present "

    .line 119
    .line 120
    invoke-static {v1, v2, v3, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string v1, "login completed, but SIM card is not present "

    .line 126
    .line 127
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SetAutoHotspotSettingsDB()V

    .line 131
    .line 132
    .line 133
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$2;

    .line 134
    .line 135
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 139
    .line 140
    if-eqz v1, :cond_6

    .line 141
    .line 142
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSAFamilySupportedBasedOnCountry()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-nez v1, :cond_1

    .line 155
    .line 156
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 157
    .line 158
    const-wide/16 v2, 0x1388

    .line 159
    .line 160
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->updateAESKeyUsingLocalGroupSmartTetheringApk()I

    .line 167
    .line 168
    .line 169
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 172
    .line 173
    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 175
    .line 176
    const/4 p1, 0x4

    .line 177
    const-wide/32 v0, 0x9c40

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-gtz p1, :cond_6

    .line 191
    .line 192
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    .line 193
    .line 194
    if-eqz p1, :cond_6

    .line 195
    .line 196
    const/4 p1, 0x0

    .line 197
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    .line 198
    .line 199
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    const-string v5, ""

    .line 202
    .line 203
    invoke-static {v4, v2, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 207
    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 214
    .line 215
    const-string v6, ":\tSamsung account logout"

    .line 216
    .line 217
    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 218
    .line 219
    .line 220
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 221
    .line 222
    const-string v4, "Samsung account logout"

    .line 223
    .line 224
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 228
    .line 229
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    const-string v4, "wifi_ap_smart_tethering_settings"

    .line 234
    .line 235
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 239
    .line 240
    const-string v4, "smart_tethering_family_sharing_service_registered"

    .line 241
    .line 242
    invoke-static {v2, v4, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    const-string v4, "wifi_ap_smart_tethering_settings_with_family"

    .line 252
    .line 253
    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    .line 255
    .line 256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 257
    .line 258
    invoke-static {p1, v1, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    sget-boolean p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_D2D:Z

    .line 262
    .line 263
    if-eqz p1, :cond_3

    .line 264
    .line 265
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-eqz p1, :cond_3

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->resetWhitelist()V

    .line 272
    .line 273
    .line 274
    new-instance p1, Ljava/lang/StringBuffer;

    .line 275
    .line 276
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 285
    .line 286
    const-string v3, "MM-dd HH:mm:ss.SSS"

    .line 287
    .line 288
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 289
    .line 290
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 291
    .line 292
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v3

    .line 297
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v2, " Logout reset\n"

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    .line 319
    .line 320
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 321
    .line 322
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    const-string v2, "smartApWhiteList_migration_q_os_to_r"

    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 336
    .line 337
    if-eqz p1, :cond_4

    .line 338
    .line 339
    const/4 v1, 0x7

    .line 340
    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_4

    .line 345
    .line 346
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 347
    .line 348
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    .line 350
    .line 351
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 352
    .line 353
    if-eqz p1, :cond_5

    .line 354
    .line 355
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 356
    .line 357
    .line 358
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 359
    .line 360
    const/16 v0, 0xb

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->sendEmptyMessage(I)V

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 366
    .line 367
    if-eqz p0, :cond_6

    .line 368
    .line 369
    const/4 p1, 0x2

    .line 370
    const-wide/16 v0, 0xbb8

    .line 371
    .line 372
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 373
    .line 374
    .line 375
    :cond_6
    return-void
.end method

.method private registerSAAccountCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda7;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private setWifiApSmartTetheringEnable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "wifi_ap_smart_tethering_settings"

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private stopBleScanning()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 24
    .line 25
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "Stopped scanning"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, ":\tStopped scanning"

    .line 42
    .line 43
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public SetAutoHotspotSettingsDB()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WIFI_AP_WIFI_SHARING_B2B_DISABLE"

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, ":\t WIFI_AP_WIFI_SHARING_B2B_DISABLE is ON, so don\'t enable Autohotspot "

    .line 28
    .line 29
    invoke-static {v0, v1, v2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 30
    .line 31
    .line 32
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "WIFI_AP_WIFI_SHARING_B2B_DISABLE is ON, so don\'t enable Autohotspot"

    .line 35
    .line 36
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v3, "autohotspot_saved_nearby_state"

    .line 56
    .line 57
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    move v0, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v0, v2

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v5, "autohotspot_family_sharing_nearby_saved_state"

    .line 73
    .line 74
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v4, v1, :cond_2

    .line 79
    .line 80
    move v4, v1

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v4, v2

    .line 83
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-static {v6, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    .line 91
    .line 92
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    move v0, v2

    .line 103
    move v4, v0

    .line 104
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    const-string v5, "autohotspot_saved_state"

    .line 111
    .line 112
    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-ne v3, v1, :cond_4

    .line 117
    .line 118
    move v3, v1

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move v3, v2

    .line 121
    :goto_3
    if-nez v3, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    move v0, v3

    .line 125
    :goto_4
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 126
    .line 127
    new-instance v6, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v7, ":\t getSamsungAccountCount():"

    .line 138
    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 143
    .line 144
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v7, ",mAutoHotspotSavedState:"

    .line 152
    .line 153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-virtual {v3, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 167
    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v8, "getSamsungAccountCount():"

    .line 171
    .line 172
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 176
    .line 177
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_WIFI_ONLY_LITE:Z

    .line 198
    .line 199
    if-nez v3, :cond_9

    .line 200
    .line 201
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    .line 202
    .line 203
    if-eqz v3, :cond_6

    .line 204
    .line 205
    if-eqz v0, :cond_9

    .line 206
    .line 207
    :cond_6
    const-string v3, "ATT"

    .line 208
    .line 209
    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_7

    .line 216
    .line 217
    if-eqz v0, :cond_9

    .line 218
    .line 219
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 220
    .line 221
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->checkPreConditions()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    sget-object v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->CAN_USE_BLE:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 226
    .line 227
    if-ne v3, v6, :cond_9

    .line 228
    .line 229
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 230
    .line 231
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-lez v3, :cond_9

    .line 236
    .line 237
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setWifiApSmartTetheringEnable()V

    .line 238
    .line 239
    .line 240
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 241
    .line 242
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingSupported()Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_8

    .line 247
    .line 248
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApServiceImpl:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isWifiSharingLiteSupported()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-nez v3, :cond_8

    .line 255
    .line 256
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 257
    .line 258
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const-string v6, "wifi_ap_wifi_sharing"

    .line 263
    .line 264
    invoke-static {v3, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 265
    .line 266
    .line 267
    :cond_8
    if-eqz v0, :cond_9

    .line 268
    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 270
    .line 271
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    .line 277
    .line 278
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    const-string v3, "wifi_ap_smart_tethering_settings"

    .line 285
    .line 286
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    if-ne v0, v1, :cond_a

    .line 291
    .line 292
    if-eqz v4, :cond_a

    .line 293
    .line 294
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 295
    .line 296
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    const-string v3, "wifi_ap_smart_tethering_settings_with_family"

    .line 301
    .line 302
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    .line 304
    .line 305
    :cond_a
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 306
    .line 307
    const-string v2, "SetAutoHotspotSettingsDB:"

    .line 308
    .line 309
    invoke-static {v0, v2}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 317
    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .line 322
    .line 323
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string v2, ":\tSetAutoHotspotSettingsDB:"

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    return-void
.end method

.method checkPreConditions()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkCommonConditionForAutoHotspot()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "checkPreConditions : %s "

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkCommonConditionForAutoHotspot()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isVerboseModeEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getDumpLogs()Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string v1, "isSAFamilySupported:"

    .line 4
    .line 5
    const-string v2, "isBackGroundScanningRunning:"

    .line 6
    .line 7
    const-string v3, "mFamilyScanFilter:"

    .line 8
    .line 9
    const-string v4, "mGuidScanFilter:"

    .line 10
    .line 11
    const-string v5, "checkPreConditions:"

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    new-instance v8, Ljava/lang/StringBuffer;

    .line 18
    .line 19
    const-string v9, "-- Auto Hotspot BleScanner --\n"

    .line 20
    .line 21
    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->checkPreConditions()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGuidScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 52
    .line 53
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    .line 65
    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mFamilyScanFilter:Landroid/bluetooth/le/ScanFilter;

    .line 72
    .line 73
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 92
    .line 93
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSAFamilySupportedBasedOnCountry()Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    .line 147
    .line 148
    throw p0
.end method

.method public handleBootCompleted()V
    .locals 10

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "handleBootCompleted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ":\t handleBootCompleted"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    .line 33
    .line 34
    const-string v1, "SemWifiApSmartBleScanner"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 56
    .line 57
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->MHS_ADV_SEND_MESSAGE_TIMEOUT_TAG:Ljava/lang/String;

    .line 64
    .line 65
    const/4 v4, 0x5

    .line 66
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mhs_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 70
    .line 71
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 76
    .line 77
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->D2D_CLIENT_ADV_SEND_MESSAGE_TIMEOUT_PACKET_CHECK_TAG:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v4, 0x6

    .line 80
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->d2d_client_adv_TimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 84
    .line 85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    .line 98
    .line 99
    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 100
    .line 101
    .line 102
    const/16 v2, 0xc

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mInternetAvailableCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 115
    .line 116
    .line 117
    const-string v0, "vendor.wifiap.autohotspot.btadapterenable.smartmhs"

    .line 118
    .line 119
    const-string v1, "0"

    .line 120
    .line 121
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 125
    .line 126
    const-wide/16 v2, -0x1

    .line 127
    .line 128
    const/4 v4, 0x1

    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v5, "airplane_mode_on"

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    .line 146
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    const-string v5, " Airplane is ON and standalonemode is not ON"

    .line 149
    .line 150
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 154
    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    const-string v8, "Airplane is ON and standalonemode is not ON"

    .line 163
    .line 164
    invoke-static {v5, v7, v8, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 165
    .line 166
    .line 167
    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 168
    .line 169
    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isJDMDevice:Z

    .line 171
    .line 172
    if-eqz v0, :cond_1

    .line 173
    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_1

    .line 181
    .line 182
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->getInstance()Lcom/samsung/android/wifi/SemWifiApMacInfo;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiApMacInfo;->readWifiMacInfo()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    if-nez v0, :cond_1

    .line 191
    .line 192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    const-string v5, "wifi_on"

    .line 199
    .line 200
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eq v0, v4, :cond_1

    .line 205
    .line 206
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 207
    .line 208
    const-string v5, "JDM Wi-Fi Enabled and JDM MAC address is null"

    .line 209
    .line 210
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 214
    .line 215
    const-string v5, "ap.smart"

    .line 216
    .line 217
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->setWifiEnabled(ZLjava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mDisableWifiAfterMacAddress:Z

    .line 221
    .line 222
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    const/4 v5, 0x2

    .line 229
    if-lez v0, :cond_4

    .line 230
    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 232
    .line 233
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 234
    .line 235
    .line 236
    move-result-wide v7

    .line 237
    cmp-long v0, v7, v2

    .line 238
    .line 239
    if-eqz v0, :cond_2

    .line 240
    .line 241
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_3

    .line 252
    .line 253
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->checkIfActiveNetworkHasInternet()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_3

    .line 260
    .line 261
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 262
    .line 263
    const-string v5, "After BOOT Connected to Internet,Samsung account loggedin, but hashbased or Guid is -1"

    .line 264
    .line 265
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 269
    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 276
    .line 277
    const-string v8, ":\tAfter BOOT Connected to Internet,Samsung account loggedin, but hashbased or Guid is -1"

    .line 278
    .line 279
    invoke-static {v5, v7, v8, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 283
    .line 284
    const/4 v5, 0x3

    .line 285
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 289
    .line 290
    const/4 v5, 0x4

    .line 291
    const-wide/16 v7, 0x0

    .line 292
    .line 293
    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 294
    .line 295
    .line 296
    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 298
    .line 299
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 300
    .line 301
    .line 302
    move-result-wide v7

    .line 303
    cmp-long v0, v7, v2

    .line 304
    .line 305
    if-eqz v0, :cond_5

    .line 306
    .line 307
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 308
    .line 309
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    .line 311
    .line 312
    goto :goto_0

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 314
    .line 315
    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    .line 317
    .line 318
    :cond_5
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isOneUIVersion6_1_AtLeast()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_7

    .line 323
    .line 324
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    const-string v5, "autohotspot_saved_state"

    .line 331
    .line 332
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-ne v0, v4, :cond_7

    .line 337
    .line 338
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 339
    .line 340
    const-string v5, " try Enabling Autohotspot for 6.1 from saved state"

    .line 341
    .line 342
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 346
    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    .line 351
    .line 352
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    const-string v7, ":\ttry Enabling Autohotspot for 6.1 from saved state"

    .line 358
    .line 359
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    invoke-virtual {v0, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SetAutoHotspotSettingsDB()V

    .line 370
    .line 371
    .line 372
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 373
    .line 374
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const-string v5, "wifi_ap_smart_tethering_settings"

    .line 379
    .line 380
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    const-string v5, "autohotspot_family_sharing_saved_state"

    .line 385
    .line 386
    if-ne v0, v4, :cond_6

    .line 387
    .line 388
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 389
    .line 390
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    if-ne v0, v4, :cond_6

    .line 399
    .line 400
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 401
    .line 402
    const-string v7, " Enabling Autohotspot family for 6.1 from saved state"

    .line 403
    .line 404
    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 408
    .line 409
    new-instance v7, Ljava/lang/StringBuilder;

    .line 410
    .line 411
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .line 413
    .line 414
    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 415
    .line 416
    const-string v9, ":\t Enabling Autohotspot family for 6.1 from saved state"

    .line 417
    .line 418
    invoke-static {v7, v8, v9, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 419
    .line 420
    .line 421
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 422
    .line 423
    const-string v7, "smart_tethering_family_sharing_service_registered"

    .line 424
    .line 425
    const-string v8, "1"

    .line 426
    .line 427
    invoke-static {v0, v7, v8}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 431
    .line 432
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const-string v7, "wifi_ap_smart_tethering_settings_with_family"

    .line 437
    .line 438
    invoke-static {v0, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    .line 440
    .line 441
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 442
    .line 443
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    .line 449
    .line 450
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-lez v0, :cond_8

    .line 457
    .line 458
    iput-boolean v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsSamsungAccountLogin:Z

    .line 459
    .line 460
    :cond_8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApServiceImpl()Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->isSAFamilySupportedBasedOnCountry()Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_9

    .line 473
    .line 474
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 475
    .line 476
    const-string v5, ""

    .line 477
    .line 478
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DFamilyID(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 482
    .line 483
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putHashbasedonD2DFamilyid(J)V

    .line 484
    .line 485
    .line 486
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 487
    .line 488
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putHashbasedonFamilyId(Ljava/lang/Long;)V

    .line 493
    .line 494
    .line 495
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 496
    .line 497
    invoke-virtual {v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->putD2DWifiMac(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 501
    .line 502
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    if-nez v0, :cond_9

    .line 511
    .line 512
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 513
    .line 514
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    const-string v2, "AHSP"

    .line 519
    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 521
    .line 522
    .line 523
    move-result v0

    .line 524
    if-eqz v0, :cond_9

    .line 525
    .line 526
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 527
    .line 528
    const-string v2, "LocalGroup exist in next FamilySharing enabled"

    .line 529
    .line 530
    invoke-static {v0, v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 531
    .line 532
    .line 533
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 534
    .line 535
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 539
    .line 540
    new-instance v2, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .line 544
    .line 545
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 546
    .line 547
    const-string v6, " LocalGroup exist in next FamilySharing enabled"

    .line 548
    .line 549
    invoke-static {v2, v3, v6, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 550
    .line 551
    .line 552
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 553
    .line 554
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    const-string v2, "next_family_sharing_local_group_exist"

    .line 559
    .line 560
    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 561
    .line 562
    .line 563
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 564
    .line 565
    const-string v2, "hash_value_based_on_familyid"

    .line 566
    .line 567
    const-string v3, "-1"

    .line 568
    .line 569
    invoke-static {v0, v2, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 573
    .line 574
    const-string v2, "smart_tethering_family_count"

    .line 575
    .line 576
    invoke-static {v0, v2, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 580
    .line 581
    const-string v1, "smart_tethering_family_user_names"

    .line 582
    .line 583
    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 587
    .line 588
    const-string v1, "smart_tethering_family_guids"

    .line 589
    .line 590
    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 594
    .line 595
    const-string v1, "smart_tethering_familyid"

    .line 596
    .line 597
    invoke-static {v0, v1, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 601
    .line 602
    const-string v0, "smart_tethering_ownerid"

    .line 603
    .line 604
    invoke-static {p0, v0, v5}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->getInstance()Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;

    .line 608
    .line 609
    .line 610
    move-result-object p0

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiApSmartWhiteList;->resetWhitelist()V

    .line 612
    .line 613
    .line 614
    :cond_9
    return-void
.end method

.method public handleUserSwitch(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "handleUserSwitch: userId = "

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ":\thandleUserSwitch: userId = "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mUserId:I

    .line 40
    .line 41
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 46
    .line 47
    if-eqz p1, :cond_0

    .line 48
    .line 49
    const/4 v0, 0x3

    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 54
    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    const/4 p1, 0x2

    .line 58
    const-wide/16 v0, 0x64

    .line 59
    .line 60
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method isBackGroundScannRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 2
    .line 3
    return p0
.end method

.method public isGotAutohotspotBleAdvFromClient()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsGotAutohotspotBleAdvFromClient:Z

    .line 2
    .line 3
    return p0
.end method

.method isRegsteredAutoHotspotServer()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "autohotspot"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    sget-object p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "isRegsteredAutoHotspotServer()"

    .line 34
    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_0
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method declared-synchronized registerAutoHotspotGattServer(Z)Z
    .locals 6

    .line 1
    const-string v0, "setGattServer, Auto hotspot service is not enrolled : "

    .line 2
    .line 3
    const-string v1, "removeGattServer, Auto hotspot service is not enrolled : "

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGattServerObjectLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    :try_start_1
    const-string v4, "autohotspot"

    .line 18
    .line 19
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "registerAutoHotspotGattServer"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, ":\tregisterAutoHotspotGattServer"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->setGattServer(Z)Z

    .line 65
    .line 66
    .line 67
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    const-wide/16 v0, 0x32

    .line 69
    .line 70
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :catch_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return p1

    .line 80
    :cond_0
    if-eqz v2, :cond_2

    .line 81
    .line 82
    :try_start_4
    const-string v4, "autohotspot"

    .line 83
    .line 84
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->mGattServer:Landroid/bluetooth/BluetoothGattServer;

    .line 93
    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->SERVICE_UUID:Ljava/util/UUID;

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothGattServer;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    monitor-exit p0

    .line 106
    const/4 p0, 0x1

    .line 107
    return p0

    .line 108
    :cond_1
    :try_start_5
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 109
    .line 110
    const-string v4, "AutoHotspot Service is not registered, registering again"

    .line 111
    .line 112
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v5, ":\tAutoHotspot Service is not registered, registering again"

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 140
    .line 141
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->removeGattServer()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    .line 143
    .line 144
    const-wide/16 v4, 0x64

    .line 145
    .line 146
    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catch_1
    move-exception v2

    .line 151
    :try_start_7
    sget-object v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 169
    .line 170
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->setGattServer(Z)Z

    .line 171
    .line 172
    .line 173
    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 174
    const-wide/16 v1, 0x12c

    .line 175
    .line 176
    :try_start_8
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :catch_2
    move-exception v1

    .line 181
    :try_start_9
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 182
    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    :goto_2
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 199
    monitor-exit p0

    .line 200
    return p1

    .line 201
    :cond_2
    :try_start_a
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 202
    .line 203
    const-string v0, "bleAdapter is null or invalid so resetAutoHotspot bleAdapter"

    .line 204
    .line 205
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v1, ":\tbleAdapter is null or invalid so resetAutoHotspot bleAdapter"

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->resetAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 235
    .line 236
    .line 237
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 238
    monitor-exit p0

    .line 239
    const/4 p0, 0x0

    .line 240
    return p0

    .line 241
    :goto_3
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 242
    :try_start_c
    throw p1

    .line 243
    :catchall_1
    move-exception p1

    .line 244
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 245
    throw p1
.end method

.method sendMessagewithDelay(II)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    int-to-long v0, p2

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setBleStandAloneModeByAutohotspot(Z)V
    .locals 11

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "setBleStandAloneModeByAutohotspot "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, ",isAutoHotspotBleSet:"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 19
    .line 20
    invoke-static {v1, v3, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v3, "setBleStandAloneModeByAutohotspot:"

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 47
    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "airplane_mode_on"

    .line 73
    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    const/4 v1, 0x1

    .line 80
    if-eqz v0, :cond_0

    .line 81
    .line 82
    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    move v0, v3

    .line 85
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    const-string v5, "autohotspot"

    .line 90
    .line 91
    const-string v6, "setBleStandAloneModeByAutohotspot result:"

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    if-nez v0, :cond_2

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_2

    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 112
    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 116
    .line 117
    .line 118
    move-result-wide v2

    .line 119
    iget-wide v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLastTimeStampBleStandaloneAPICalled:J

    .line 120
    .line 121
    sub-long/2addr v2, v7

    .line 122
    const-wide/16 v9, 0x1388

    .line 123
    .line 124
    cmp-long v0, v2, v9

    .line 125
    .line 126
    if-gtz v0, :cond_1

    .line 127
    .line 128
    const-wide/16 v2, -0x1

    .line 129
    .line 130
    cmp-long v0, v7, v2

    .line 131
    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 135
    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 137
    .line 138
    .line 139
    move-result-wide v2

    .line 140
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLastTimeStampBleStandaloneAPICalled:J

    .line 141
    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 143
    .line 144
    invoke-virtual {v0, v1, v5}, Landroid/bluetooth/BluetoothAdapter;->semSetSystemAppStandAloneBleMode(ZLjava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, ",isEnabled:"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 174
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_2
    if-nez p1, :cond_3

    .line 206
    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 208
    .line 209
    if-eqz v0, :cond_3

    .line 210
    .line 211
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 212
    .line 213
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 214
    .line 215
    invoke-virtual {v0, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->semSetSystemAppStandAloneBleMode(ZLjava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 232
    .line 233
    invoke-static {v1, v3, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 237
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    sget-object v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 258
    .line 259
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_3
    return-void

    .line 270
    :cond_4
    sget-object p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 271
    .line 272
    const-string v0, "mBluetoothAdapter is null"

    .line 273
    .line 274
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 278
    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {p1, v1, v0, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method public setIsAutoHotspotBleSet()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isAutoHotspotBleSet:Z

    .line 3
    .line 4
    return-void
.end method

.method startBleScanning()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isFactoryBinary()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "This devices\'s binary is a factory binary"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->checkPreConditions()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;->CAN_USE_BLE:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil$AutoHotspotConditions;

    .line 36
    .line 37
    if-eq v0, v2, :cond_2

    .line 38
    .line 39
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v3, "failed to start background scanner "

    .line 44
    .line 45
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonGuid()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonFamilyId()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v6, "wifi_ap_smart_tethering_settings"

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    const-string v8, "wifi_client_smart_tethering_settings"

    .line 91
    .line 92
    invoke-static {v6, v8, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const-string v9, "client_advanced_autohotspot_run"

    .line 103
    .line 104
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    const-string v10, "wifi_ap_smart_d2d_mhs"

    .line 115
    .line 116
    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 121
    .line 122
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHashbasedonD2DFamilyid()J

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    iget-object v12, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 127
    .line 128
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    const/4 v13, 0x1

    .line 133
    if-nez v0, :cond_3

    .line 134
    .line 135
    if-nez v6, :cond_3

    .line 136
    .line 137
    if-nez v8, :cond_3

    .line 138
    .line 139
    if-nez v9, :cond_3

    .line 140
    .line 141
    if-nez v12, :cond_3

    .line 142
    .line 143
    const-wide/16 v14, -0x1

    .line 144
    .line 145
    cmp-long v0, v10, v14

    .line 146
    .line 147
    if-nez v0, :cond_3

    .line 148
    .line 149
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 150
    .line 151
    const-string v2, "not to start background scanner as there is no MST/CST/D2D enabled"

    .line 152
    .line 153
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v0, v2, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 169
    .line 170
    const-string v3, ":\t not to start background scanner as there is no MST/CST/D2D enabled"

    .line 171
    .line 172
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 177
    .line 178
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 183
    .line 184
    if-nez v0, :cond_4

    .line 185
    .line 186
    iput-boolean v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 187
    .line 188
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v3, "mBluetoothAdapter == null, waiting for isStartScanningPending "

    .line 193
    .line 194
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 198
    .line 199
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .line 208
    .line 209
    return-void

    .line 210
    :cond_4
    const-string v9, "autohotspot"

    .line 211
    .line 212
    invoke-virtual {v0, v9}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_5

    .line 217
    .line 218
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 219
    .line 220
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-nez v0, :cond_6

    .line 225
    .line 226
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    invoke-virtual {v1, v13}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->setBleStandAloneModeByAutohotspot(Z)V

    .line 235
    .line 236
    .line 237
    :cond_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    iput-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 244
    .line 245
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    .line 246
    .line 247
    invoke-direct {v0, v1, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V

    .line 248
    .line 249
    .line 250
    iput-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    .line 251
    .line 252
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 253
    .line 254
    if-nez v0, :cond_7

    .line 255
    .line 256
    iput-boolean v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 257
    .line 258
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 259
    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    .line 261
    .line 262
    const-string v3, "mBluetoothLeScanner == null, waiting for isStartScanningPending "

    .line 263
    .line 264
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-boolean v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isStartScanningPending:Z

    .line 268
    .line 269
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_7
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->buildScanFilters()Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    if-nez v9, :cond_8

    .line 289
    .line 290
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 291
    .line 292
    const-string v2, " scanfilter size zero"

    .line 293
    .line 294
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 298
    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 305
    .line 306
    const-string v3, ":\t scanfilter size zero "

    .line 307
    .line 308
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_8
    sget-boolean v9, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->SUPPORTMOBILEAPENHANCED_LITE:Z

    .line 313
    .line 314
    const-string v12, ",mWifiApscanWindow:"

    .line 315
    .line 316
    const-string v14, ",mD2DFamilyID:"

    .line 317
    .line 318
    const-string v15, ",mHashBasedFamilyID:"

    .line 319
    .line 320
    if-eqz v9, :cond_b

    .line 321
    .line 322
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 323
    .line 324
    .line 325
    iget-object v9, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 326
    .line 327
    const-string v7, "power"

    .line 328
    .line 329
    invoke-virtual {v9, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v7

    .line 333
    check-cast v7, Landroid/os/PowerManager;

    .line 334
    .line 335
    invoke-virtual {v7}, Landroid/os/PowerManager;->isInteractive()Z

    .line 336
    .line 337
    .line 338
    move-result v7

    .line 339
    if-eq v8, v13, :cond_9

    .line 340
    .line 341
    if-eqz v7, :cond_d

    .line 342
    .line 343
    if-ne v6, v13, :cond_d

    .line 344
    .line 345
    :cond_9
    iput-boolean v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 346
    .line 347
    :try_start_0
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 348
    .line 349
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->buildScanSettings()Landroid/bluetooth/le/ScanSettings;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    .line 354
    .line 355
    invoke-virtual {v6, v0, v7, v8}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .line 357
    .line 358
    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    const/4 v6, 0x0

    .line 364
    iput-boolean v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 365
    .line 366
    :goto_0
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->DBG:Z

    .line 367
    .line 368
    if-eqz v0, :cond_a

    .line 369
    .line 370
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 371
    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v7, "Started Lite scanning,mHashBasedGuid:"

    .line 375
    .line 376
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-static {v6, v14, v10, v11, v12}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 392
    .line 393
    invoke-static {v0, v7, v6}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 394
    .line 395
    .line 396
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 397
    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v7, ":\tStarted Lite scanning,mHashBasedGuid:"

    .line 409
    .line 410
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-static {v6, v15, v4, v5, v14}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    iget v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 426
    .line 427
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_2

    .line 438
    .line 439
    :cond_a
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 440
    .line 441
    const-string v2, "Started Lite scanning"

    .line 442
    .line 443
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .line 445
    .line 446
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 447
    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 454
    .line 455
    const-string v3, ":\tStarted Lite scanning"

    .line 456
    .line 457
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 458
    .line 459
    .line 460
    goto :goto_2

    .line 461
    :cond_b
    iput-boolean v13, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 462
    .line 463
    :try_start_1
    iget-object v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 464
    .line 465
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->buildScanSettings()Landroid/bluetooth/le/ScanSettings;

    .line 466
    .line 467
    .line 468
    move-result-object v7

    .line 469
    iget-object v8, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartBleScannerCallback:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$SemWifiApSmartBleScannerCallback;

    .line 470
    .line 471
    invoke-virtual {v6, v0, v7, v8}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 472
    .line 473
    .line 474
    goto :goto_1

    .line 475
    :catch_1
    move-exception v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 477
    .line 478
    .line 479
    const/4 v6, 0x0

    .line 480
    iput-boolean v6, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isScanningRunning:Z

    .line 481
    .line 482
    :goto_1
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->DBG:Z

    .line 483
    .line 484
    if-eqz v0, :cond_c

    .line 485
    .line 486
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 487
    .line 488
    new-instance v6, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    const-string v7, "Started scanning,mHashBasedGuid:"

    .line 491
    .line 492
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-static {v6, v14, v10, v11, v12}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 505
    .line 506
    .line 507
    iget v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 508
    .line 509
    invoke-static {v0, v7, v6}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 513
    .line 514
    new-instance v6, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .line 518
    .line 519
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 520
    .line 521
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    const-string v7, ":\tStarted scanning,mHashBasedGuid:"

    .line 525
    .line 526
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-static {v6, v15, v4, v5, v14}, Lcom/samsung/android/server/wifi/SemApeService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    iget v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApscanWindow:I

    .line 542
    .line 543
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    goto :goto_2

    .line 554
    :cond_c
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 555
    .line 556
    const-string v2, "Started scanning"

    .line 557
    .line 558
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .line 560
    .line 561
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 562
    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .line 567
    .line 568
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 569
    .line 570
    const-string v3, ":\tStarted scanning"

    .line 571
    .line 572
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/util/LocalLog;)V

    .line 573
    .line 574
    .line 575
    :cond_d
    :goto_2
    return-void
.end method

.method declared-synchronized unregisterAutoHotspotGattServer()V
    .locals 9

    .line 1
    const-string v0, "unregisterAutoHotspotGattServer, is called but mhs_adv:"

    .line 2
    .line 3
    const-string v1, "unregisterAutoHotspotGattServer,isBleON:"

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mGattServerObjectLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartMHS:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->isMHSAdvertizing()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DClient;->isAdvertising()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->semIsBleEnabled()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    .line 41
    const-string v7, "autohotspot"

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->semGetSystemAppStandAloneBleMode(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    sget-object v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ",isStandAloneMode:"

    .line 58
    .line 59
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 73
    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    sget-object v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v8, ":\tunregisterAutoHotspotGattServer,isBleON:"

    .line 85
    .line 86
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v8, ",isStandAloneMode:"

    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    invoke-virtual {v1, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-nez v4, :cond_0

    .line 108
    .line 109
    if-eqz v2, :cond_1

    .line 110
    .line 111
    :cond_0
    if-eqz v5, :cond_1

    .line 112
    .line 113
    sget-object v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v0, ",d2d_adv:"

    .line 124
    .line 125
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mLocalLog:Landroid/util/LocalLog;

    .line 139
    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    sget-object v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v5, ":\tunregisterAutoHotspotGattServer , is called but mhs_adv:"

    .line 151
    .line 152
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v4, ",d2d_adv:"

    .line 159
    .line 160
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit p0

    .line 175
    return-void

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    goto :goto_0

    .line 178
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mWifiApSmartGattServer:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattServer;->removeGattServer()V

    .line 181
    .line 182
    .line 183
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->mIsGotAutohotspotBleAdvFromClient:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .line 186
    const-wide/16 v0, 0x64

    .line 187
    .line 188
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    .line 190
    .line 191
    :catch_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    monitor-exit p0

    .line 193
    return-void

    .line 194
    :goto_0
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    :try_start_6
    throw v0

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 198
    throw v0
.end method
