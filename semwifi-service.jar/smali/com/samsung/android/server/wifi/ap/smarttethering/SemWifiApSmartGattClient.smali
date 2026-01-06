.class public Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;,
        Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;
    }
.end annotation


# static fields
.field private static final CONNECTION_DELAY_SEC:I = 0x1388

.field private static final CONNECT_WIFI_PROFILE_SHARE:I = 0x1b

.field private static final DISCONNECT_GATT:I = 0xc

.field private static final DISCONNECT_HOTSPOT:I = 0xe

.field private static final DISPLAY_CHECK_HOPSPOT_STATUS:I = 0x1d

.field private static final DISPLAY_FAILED_HOTSPOT_PROVISIONG:I = 0x1c

.field private static final GATT_CONNECTION_TIMEOUT:I = 0xafc8

.field private static final GATT_TRANSACTION_TIMEOUT:I = 0xea60

.field private static final GENERATE_CONNECT_WIFI:I = 0xb

.field private static final LAUNCH_WIFI_PROFILE_SHARE:I = 0x1a

.field private static final MHSDBG:Z

.field private static final NEED:Ljava/lang/String; = "1"

.field private static final NEED_GET_AES_KEY:Ljava/lang/String; = "need_get_AES_key"

.field private static final NOTIFY_CLIENT_DATA_PAUSED_BY_DATALIMIT:I = 0x33

.field private static final NOTIFY_CLIENT_DATA_PAUSED_BY_TIMELIMIT:I = 0x34

.field private static final NOTIFY_CLIENT_DATA_PAUSED_BY_USER:I = 0x32

.field private static final NOT_NEED:Ljava/lang/String; = "0"

.field private static final PARTIAL_SCAN_FAILURE:I = 0x15

.field private static final RETRY_READ_BOND_STATUS:I = 0x1e

.field private static final SERVICE_DISCOVERY_TIMEOUT:I = 0x2710

.field private static final SET_SCLOUDSYNC_AFTER_CONNECT_SHARED_WIFI:I = 0x3e

.field private static final START_FULL_SCAN:I = 0x17

.field private static final START_PARTIAL_SCAN:I = 0x14

.field private static final STOP_PARTIAL_SCAN:I = 0x16

.field private static final ST_AUTH_FAILED:I = -0x3

.field private static final ST_BONDING_FAILURE:I = -0xa

.field private static final ST_BONDING_GOINGON:I = -0x5

.field private static final ST_BOND_FAILED:I = -0x2

.field private static final ST_CLIENT_NOT_SUPPORT_OWE:I = -0xf

.field private static final ST_CLIENT_NOT_SUPPORT_WPA3:I = -0xe

.field private static final ST_CONNECTION_ALREADY_EXIST:I = -0x4

.field private static final ST_DEVICE_NOT_FOUND:I = -0x1

.field private static final ST_GATT_CONNECTING:I = 0x1

.field private static final ST_GATT_FAILURE:I = -0x7

.field private static final ST_MHS_ENABLING_FAILURE:I = -0x8

.field private static final ST_MHS_GATT_CLIENT_TIMEOUT:I = -0xc

.field private static final ST_MHS_GATT_SERVICE_NOT_FOUND:I = -0xd

.field private static final ST_MHS_USERNAME_FAILED:I = -0x9

.field private static final ST_MHS_WIFI_CONNECTION_TIMEOUT:I = -0xb

.field private static final ST_WIFI_CONNECTED:I = 0x3

.field private static final ST_WIFI_CONNECTING:I = 0x2

.field private static final ST_WIFI_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemWifiApSmartGattClient"

.field private static final TRY_TO_GET_AES:I = 0x18

.field private static final TRY_TO_RECONNECT_AUTOHOTSPOT:I = 0x19

.field private static final UPDATE_CONNECTION_FAILURES:I = 0x12

.field private static final UPDATE_CONNECTION_FAILURES_TIMER:I = 0x1388

.field private static final WAIT_FOR_MTU_CALLBACK:I = 0x13

.field private static final WIFIAP_WARNING_CLASS:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

.field private static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

.field private static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFIAP_WARNING_STOP_DIALOG:Ljava/lang/String; = "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

.field private static mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private MHS_CONNECTION_TIMEOUT:I

.field private autoConnectClient:Z

.field private isBondingGoingon:Z

.field private isClientAcceptedWifiProfileSharing:Z

.field private isWifiProfileShareEnabled:Z

.field private mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAESKey:Ljava/lang/String;

.field private mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

.field private mBleWorkThread:Landroid/os/HandlerThread;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

.field private mBluetoothIsOn:Z

.field private mChacteristicRetryCount:I

.field private mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

.field private final mContext:Landroid/content/Context;

.field private mDelayStartFrom:J

.field mFailedBLEConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mGotMHSEnabledNotificationEarlier:Z

.field private mHotspotVersion:I

.field private mIsConnectedToAutoHotspot:Z

.field private mIsRetryGattConnect:Z

.field private mLimitCount:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMhsFreq:I

.field private mNeedRetry:Z

.field private mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

.field private mPassword:Ljava/lang/String;

.field private mPendingDeviceAddress:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field private mSilentRoaming:I

.field private mSmartAp_BLE_MAC:Ljava/lang/String;

.field private mSmartAp_WiFi_MAC:Ljava/lang/String;

.field mSmartMHSList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeMismatchOccured:Z

.field private mUserName:Ljava/lang/String;

.field private mUserType:I

.field private mWPA3Mode:I

.field private mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

.field private mWifiApSmartGattClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

.field private final mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWorkSource:Landroid/os/WorkSource;

.field private mhideSSID:I

.field private mhs_read_auth_status_retry:I

.field private mhs_read_status_retry:I

.field private mhs_read_wifi_share_retry:I

.field private mhs_write_bluetooth_gatt_characteristic_status_retry:I

.field private mversion:I

.field private mwaitingToConnect:Z

.field private needAddNotifyMhsEnabled:Z

.field private notifyClientDataPausedByDataLimit:I

.field private notifyClientDataPausedByTimeLimit:I

.field private notifyClientDataPausedByUser:I

.field private requestedToEnableMHS:Z

.field private savedBlockData:Ljava/lang/String;

.field private semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

.field private supportBand:I

.field private supportSecurity:I

.field private supportedOWESecurity:I

.field private tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

.field private tryingToRetry:I


# direct methods
.method public static synthetic $r8$lambda$fPcc9elZBWNbFtrFgJy01flI474(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->lambda$registerCallbacks$0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$psvDri6an0Tvc_2NAfW5PGumYuA(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->lambda$registerCallbacks$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetMHS_CONNECTION_TIMEOUT(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisClientAcceptedWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisWifiProfileShareEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isWifiProfileShareEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAdapter(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmChacteristicRetryCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mChacteristicRetryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mDelayStartFrom:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHotspotVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLimitCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mMhsFreq:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNeedRetry:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNl80211Manager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/net/wifi/nl80211/WifiNl80211Manager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSSID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSilentRoaming(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSilentRoaming:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeMismatchOccured(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserName(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserType(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserType:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWPA3Mode:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmhideSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhideSSID:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_read_auth_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_read_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmversion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mversion:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mwaitingToConnect:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetneedAddNotifyMhsEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->needAddNotifyMhsEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryingToRetry:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputMHS_CONNECTION_TIMEOUT(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 1

    .line 1
    const v0, 0xc350

    .line 2
    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    .line 5
    .line 6
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAESKey(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothDevice(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothGattService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothIsOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChacteristicRetryCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mChacteristicRetryCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mDelayStartFrom:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGotMHSEnabledNotificationEarlier(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHotspotVersion(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLimitCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mMhsFreq:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNeedRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNeedRetry:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNl80211Manager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/net/wifi/nl80211/WifiNl80211Manager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPassword:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingDeviceAddress(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSSID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSmartAp_BLE_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTimeMismatchOccured(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWPA3Mode:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_read_auth_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_read_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_read_wifi_share_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmhs_write_bluetooth_gatt_characteristic_status_retry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mwaitingToConnect:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedAddNotifyMhsEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->needAddNotifyMhsEnabled:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputnotifyClientDataPausedByDataLimit(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByDataLimit:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputnotifyClientDataPausedByTimeLimit(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByTimeLimit:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputnotifyClientDataPausedByUser(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByUser:I

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputrequestedToEnableMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryingToRetry:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mchannelToFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->channelToFreq(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mcheckIfBSSIDExistInScanResults(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->checkIfBSSIDExistInScanResults(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->doPartialScan(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/wifi/SemWifiManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->invokeCallback(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchWiFiApWarningForWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->launchWiFiApWarningForWifiProfileSharing(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendAuthInformation(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothGatt;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->sendAuthInformation(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$msendWifiConfigurationForWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->sendWifiConfigurationForWifiProfileSharing(Landroid/net/wifi/WifiConfiguration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetConnectionState(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->shutdownclient()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mshutdownclient_1(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->shutdownclient_1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->stopPartialScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mtryToConnectToRemoteBLE(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetMHSDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    .line 4
    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    .line 11
    .line 12
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    .line 18
    .line 19
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    .line 25
    .line 26
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    .line 32
    .line 33
    const/16 v1, 0x3e7

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/util/LocalLog;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 16
    .line 17
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLimitCount:I

    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWPA3Mode:I

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mwaitingToConnect:Z

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    .line 29
    .line 30
    const/4 v2, -0x1

    .line 31
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mMhsFreq:I

    .line 32
    .line 33
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryingToRetry:I

    .line 34
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 41
    .line 42
    const-wide/16 v2, -0x1

    .line 43
    .line 44
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mDelayStartFrom:J

    .line 45
    .line 46
    new-instance v2, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    .line 52
    .line 53
    const/16 v2, 0x7530

    .line 54
    .line 55
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    .line 56
    .line 57
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    .line 63
    .line 64
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    .line 65
    .line 66
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    .line 67
    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    .line 69
    .line 70
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    .line 71
    .line 72
    new-instance v2, Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;

    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsConnectedToAutoHotspot:Z

    .line 80
    .line 81
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$2;

    .line 82
    .line 83
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 91
    .line 92
    iput-object p3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 93
    .line 94
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApIntentHandler()Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 103
    .line 104
    iput-object p4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 105
    .line 106
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 115
    .line 116
    new-instance p2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    .line 117
    .line 118
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 119
    .line 120
    .line 121
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientReceiver:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SemWifiApSmartGattClientReceiver;

    .line 122
    .line 123
    sget-object p3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartGattClientIntentFilter:Landroid/content/IntentFilter;

    .line 124
    .line 125
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->registerCallbacks()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method private channelToFreq(I)I
    .locals 1

    .line 1
    const/4 p0, 0x1

    .line 2
    if-lt p1, p0, :cond_1

    .line 3
    .line 4
    const/16 p0, 0xa5

    .line 5
    .line 6
    if-gt p1, p0, :cond_1

    .line 7
    .line 8
    const/16 p0, 0xe

    .line 9
    .line 10
    if-gt p1, p0, :cond_0

    .line 11
    .line 12
    const/16 p0, 0x967

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p0, 0x1388

    .line 16
    .line 17
    :goto_0
    mul-int/lit8 p1, p1, 0x5

    .line 18
    .line 19
    add-int/2addr p1, p0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 p1, -0x1

    .line 25
    :goto_1
    const-string p0, "freq :"

    .line 26
    .line 27
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "SemWifiApSmartGattClient"

    .line 32
    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    return p1
.end method

.method private checkIfBSSIDExistInScanResults(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    const-string p0, "SemWifiApSmartGattClient"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, " checkIfBSSIDExistInScanResults,scanResults null"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, " checkIfBSSIDExistInScanResults,scanResults size:"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    if-nez p3, :cond_1

    .line 34
    .line 35
    const-string p1, " checkIfBSSIDExistInScanResults,ssid null"

    .line 36
    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :cond_1
    if-nez p2, :cond_2

    .line 42
    .line 43
    const-string v1, " checkIfBSSIDExistInScanResults,wifiprofileShare bssid null"

    .line 44
    .line 45
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_7

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 63
    .line 64
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 65
    .line 66
    const/4 v3, 0x1

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    if-eqz p2, :cond_4

    .line 70
    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p2, "scanResult.RSSI:"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget p2, v1, Landroid/net/wifi/ScanResult;->level:I

    .line 85
    .line 86
    invoke-static {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 87
    .line 88
    .line 89
    return v3

    .line 90
    :cond_4
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    if-nez p2, :cond_3

    .line 95
    .line 96
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    sget-boolean v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    .line 103
    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v4, "checkIfBSSIDExistInScanResults:"

    .line 109
    .line 110
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-virtual {v4}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_3

    .line 144
    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string p2, "ssid scanResult.RSSI:"

    .line 148
    .line 149
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget p2, v1, Landroid/net/wifi/ScanResult;->level:I

    .line 153
    .line 154
    invoke-static {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 155
    .line 156
    .line 157
    return v3

    .line 158
    :cond_7
    return v0
.end method

.method private doPartialScan(I)V
    .locals 12

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-instance v2, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 5
    .line 6
    invoke-direct {v2}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    iput v3, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 11
    .line 12
    const-string v4, "SemWifiApSmartGattClient"

    .line 13
    .line 14
    const-string v5, "doScanInternal enter"

    .line 15
    .line 16
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    if-eq p1, v5, :cond_0

    .line 22
    .line 23
    iput v6, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 24
    .line 25
    new-array v0, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 26
    .line 27
    iput-object v0, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 28
    .line 29
    new-instance v1, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 32
    .line 33
    .line 34
    aput-object v1, v0, v6

    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_0
    iput v6, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 39
    .line 40
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 41
    .line 42
    and-int/lit8 v5, p1, 0x4

    .line 43
    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    new-array p1, v0, [I

    .line 47
    .line 48
    fill-array-data p1, :array_0

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    const-string v5, "wifinl80211"

    .line 54
    .line 55
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 60
    .line 61
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 62
    .line 63
    const/16 v5, 0x8

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    array-length v5, v3

    .line 70
    add-int/2addr v5, v0

    .line 71
    new-array v5, v5, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 72
    .line 73
    iput-object v5, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 74
    .line 75
    move v5, v6

    .line 76
    move v7, v5

    .line 77
    :goto_0
    if-ge v5, v0, :cond_1

    .line 78
    .line 79
    aget v8, p1, v5

    .line 80
    .line 81
    iget-object v9, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 82
    .line 83
    add-int/lit8 v10, v7, 0x1

    .line 84
    .line 85
    new-instance v11, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 86
    .line 87
    invoke-direct {v11, v8}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 88
    .line 89
    .line 90
    aput-object v11, v9, v7

    .line 91
    .line 92
    add-int/2addr v5, v1

    .line 93
    move v7, v10

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    array-length p1, v3

    .line 96
    move v0, v6

    .line 97
    :goto_1
    if-ge v0, p1, :cond_4

    .line 98
    .line 99
    aget v5, v3, v0

    .line 100
    .line 101
    iget-object v8, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 102
    .line 103
    add-int/lit8 v9, v7, 0x1

    .line 104
    .line 105
    new-instance v10, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 106
    .line 107
    invoke-direct {v10, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 108
    .line 109
    .line 110
    aput-object v10, v8, v7

    .line 111
    .line 112
    add-int/2addr v0, v1

    .line 113
    move v7, v9

    .line 114
    goto :goto_1

    .line 115
    :cond_2
    and-int/2addr p1, v3

    .line 116
    if-eqz p1, :cond_3

    .line 117
    .line 118
    new-array p1, v0, [I

    .line 119
    .line 120
    fill-array-data p1, :array_1

    .line 121
    .line 122
    .line 123
    new-array v3, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 124
    .line 125
    iput-object v3, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 126
    .line 127
    move v3, v6

    .line 128
    move v5, v3

    .line 129
    :goto_2
    if-ge v3, v0, :cond_4

    .line 130
    .line 131
    aget v7, p1, v3

    .line 132
    .line 133
    iget-object v8, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 134
    .line 135
    add-int/lit8 v9, v5, 0x1

    .line 136
    .line 137
    new-instance v10, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 138
    .line 139
    invoke-direct {v10, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 140
    .line 141
    .line 142
    aput-object v10, v8, v5

    .line 143
    .line 144
    add-int/2addr v3, v1

    .line 145
    move v5, v9

    .line 146
    goto :goto_2

    .line 147
    :cond_3
    const/16 p1, 0xd

    .line 148
    .line 149
    new-array p1, p1, [I

    .line 150
    .line 151
    fill-array-data p1, :array_2

    .line 152
    .line 153
    .line 154
    const/16 v0, 0xd

    .line 155
    .line 156
    new-array v3, v0, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 157
    .line 158
    iput-object v3, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 159
    .line 160
    move v3, v6

    .line 161
    move v5, v3

    .line 162
    :goto_3
    if-ge v3, v0, :cond_4

    .line 163
    .line 164
    aget v7, p1, v3

    .line 165
    .line 166
    iget-object v8, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 167
    .line 168
    add-int/lit8 v9, v5, 0x1

    .line 169
    .line 170
    new-instance v10, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 171
    .line 172
    invoke-direct {v10, v7}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 173
    .line 174
    .line 175
    aput-object v10, v8, v5

    .line 176
    .line 177
    add-int/2addr v3, v1

    .line 178
    move v5, v9

    .line 179
    goto :goto_3

    .line 180
    :cond_4
    :goto_4
    const/4 p1, 0x3

    .line 181
    iput p1, v2, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 182
    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 184
    .line 185
    if-nez p1, :cond_5

    .line 186
    .line 187
    new-instance p1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 188
    .line 189
    invoke-direct {p1, p0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 190
    .line 191
    .line 192
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 193
    .line 194
    :cond_5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 205
    .line 206
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWorkSource:Landroid/os/WorkSource;

    .line 207
    .line 208
    invoke-virtual {p1, v2, v0, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 209
    .line 210
    .line 211
    const-string p0, "doScanInternal started"

    .line 212
    .line 213
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :array_0
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x143c
        0x1450
        0x1464
        0x1478
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
    .end array-data

    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    :array_1
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
        0x143c
        0x1450
        0x1464
        0x1478
        0x1671
        0x1685
        0x1699
        0x16ad
        0x16c1
    .end array-data

    :array_2
    .array-data 4
        0x96c
        0x971
        0x976
        0x97b
        0x980
        0x985
        0x98a
        0x98f
        0x994
        0x999
        0x99e
        0x9a3
        0x9a8
    .end array-data
.end method

.method private getSemWifiManager()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "sem_wifi"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private invokeCallback(Ljava/lang/String;I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "invokeCallback state "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "clientmac"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v2, "SemWifiApSmartGattClient"

    .line 24
    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "SemWifiApSmartGattClient:\tsinvokeCallback state :"

    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 54
    .line 55
    if-eqz p0, :cond_0

    .line 56
    .line 57
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-gez p2, :cond_0

    .line 61
    .line 62
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_0

    .line 75
    .line 76
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setFailedMHSConnectionHistory(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->updateGattFailedConnectionState(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerCallbacks$0(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    return-void

    .line 9
    :cond_1
    :goto_0
    const-string p1, "SemWifiApSmartGattClient"

    .line 10
    .line 11
    const-string v0, "shutdownClient due to Wi-FI is OFF/"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    const-string v0, "auto_hotspot_connected_user"

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {p1, v0, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mwaitingToConnect:Z

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mMhsFreq:I

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x16

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 42
    .line 43
    const/16 v0, 0xc

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 49
    .line 50
    monitor-enter p1

    .line 51
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    .line 56
    monitor-exit p1

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method private synthetic lambda$registerCallbacks$1(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    const-string v3, "SemWifiApSmartGattClient"

    .line 26
    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v5, "rcvd Wifi Network connection status changed:bssid:"

    .line 30
    .line 31
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 35
    .line 36
    invoke-virtual {v5, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v5, ",wifiInfo.getSSID():"

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v5, ",isConnected:"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    .line 67
    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v5, "SemWifiApSmartGattClient:\trcvd Wifi Network connection status changed:bssid:"

    .line 75
    .line 76
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 80
    .line 81
    invoke-virtual {v5, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, ",wifiInfo.getSSID():"

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ",isConnected:"

    .line 97
    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v3, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    const/4 v1, 0x3

    .line 112
    const/4 v3, 0x0

    .line 113
    if-eqz p1, :cond_8

    .line 114
    .line 115
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    .line 116
    .line 117
    const-string p1, "1"

    .line 118
    .line 119
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 120
    .line 121
    const-string v4, "need_get_AES_key"

    .line 122
    .line 123
    invoke-static {v3, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    iget p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLimitCount:I

    .line 134
    .line 135
    if-lez p1, :cond_3

    .line 136
    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 138
    .line 139
    if-eqz p1, :cond_2

    .line 140
    .line 141
    const/16 v3, 0x18

    .line 142
    .line 143
    const-wide/16 v4, 0xbb8

    .line 144
    .line 145
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 146
    .line 147
    .line 148
    :cond_2
    const-string p1, "SemWifiApSmartGattClient"

    .line 149
    .line 150
    const-string v3, "re-try to get AES by using startSmartTetheringApk"

    .line 151
    .line 152
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 156
    .line 157
    const-string v3, "SemWifiApSmartGattClient:\tre-try to get AES by using startSmartTetheringApk"

    .line 158
    .line 159
    invoke-virtual {p1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    if-eqz v0, :cond_d

    .line 163
    .line 164
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v4, "\""

    .line 171
    .line 172
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSSID:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v4, "\""

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_d

    .line 194
    .line 195
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 200
    .line 201
    monitor-enter v3

    .line 202
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 203
    .line 204
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    if-eqz v5, :cond_7

    .line 213
    .line 214
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    check-cast v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 219
    .line 220
    if-eqz v2, :cond_4

    .line 221
    .line 222
    iget v6, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 223
    .line 224
    const/4 v7, 0x2

    .line 225
    if-ne v6, v7, :cond_4

    .line 226
    .line 227
    iget-object v6, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 228
    .line 229
    if-eqz v6, :cond_4

    .line 230
    .line 231
    iput v1, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 232
    .line 233
    iget-object v2, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 234
    .line 235
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->invokeCallback(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    const-string v1, "SemWifiApSmartGattClient"

    .line 239
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v4, "mSSID : "

    .line 246
    .line 247
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSSID:Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v4, ", mSmartAp_WiFi_Mac : "

    .line 256
    .line 257
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 261
    .line 262
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v4, ", get mac address from WifiInfo, mac "

    .line 266
    .line 267
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 285
    .line 286
    if-eqz v1, :cond_5

    .line 287
    .line 288
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    if-eqz v1, :cond_5

    .line 293
    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSSID:Ljava/lang/String;

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v2, "_"

    .line 305
    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v0, "_"

    .line 317
    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByUser:I

    .line 322
    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v0, "_"

    .line 327
    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByDataLimit:I

    .line 332
    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v0, "_"

    .line 337
    .line 338
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByTimeLimit:I

    .line 342
    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const-string v1, "SemWifiApSmartGattClient"

    .line 351
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v4, "makeBlockData : "

    .line 358
    .line 359
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 373
    .line 374
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 375
    .line 376
    invoke-static {v1, v2, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    goto :goto_0

    .line 380
    :catchall_0
    move-exception p0

    .line 381
    goto :goto_1

    .line 382
    :cond_5
    :goto_0
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserType:I

    .line 383
    .line 384
    const/4 v1, 0x1

    .line 385
    if-ne v0, v1, :cond_6

    .line 386
    .line 387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 388
    .line 389
    if-eqz v0, :cond_6

    .line 390
    .line 391
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    .line 392
    .line 393
    .line 394
    move-result v0

    .line 395
    if-lez v0, :cond_6

    .line 396
    .line 397
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_6

    .line 406
    .line 407
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 412
    .line 413
    const-string v4, "smart_wifi_ap_advanced_connect"

    .line 414
    .line 415
    const/16 v6, 0xa

    .line 416
    .line 417
    invoke-virtual {v0, v2, v4, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    if-ne v0, v6, :cond_6

    .line 422
    .line 423
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionLcdOffSetting(I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-virtual {p1, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setAdvnacedConnectionSetting(I)V

    .line 435
    .line 436
    .line 437
    iget-object p1, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 438
    .line 439
    const/16 v0, 0x39

    .line 440
    .line 441
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->launchWiFiApWarning(Ljava/lang/String;I)V

    .line 442
    .line 443
    .line 444
    :cond_6
    const-string p1, "SemWifiApSmartGattClient"

    .line 445
    .line 446
    const-string v0, "updated status to WIFI connected in the SmartMHSlist"

    .line 447
    .line 448
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    .line 450
    .line 451
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 452
    .line 453
    const-string v0, "SemWifiApSmartGattClient:\tupdated status to WIFI connected in the SmartMHSlist"

    .line 454
    .line 455
    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->showSmartMHSInfo()V

    .line 459
    .line 460
    .line 461
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsConnectedToAutoHotspot:Z

    .line 462
    .line 463
    const-string p0, "SemWifiApSmartGattClient"

    .line 464
    .line 465
    const-string p1, "connected to auto hotspot"

    .line 466
    .line 467
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    :cond_7
    monitor-exit v3

    .line 471
    return-void

    .line 472
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    throw p0

    .line 474
    :cond_8
    if-nez p1, :cond_d

    .line 475
    .line 476
    const-string p1, "SemWifiApSmartGattClient"

    .line 477
    .line 478
    const-string v0, "isDisconnected: true"

    .line 479
    .line 480
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsConnectedToAutoHotspot:Z

    .line 484
    .line 485
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 486
    .line 487
    monitor-enter p1

    .line 488
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 489
    .line 490
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_c

    .line 499
    .line 500
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    check-cast v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 505
    .line 506
    iget v4, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 507
    .line 508
    if-ne v4, v1, :cond_9

    .line 509
    .line 510
    const-string v0, "SemWifiApSmartGattClient"

    .line 511
    .line 512
    const-string v1, "disconnected from auto hotspot"

    .line 513
    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    .line 516
    .line 517
    iput v3, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 518
    .line 519
    iget-object v0, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 520
    .line 521
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->invokeCallback(Ljava/lang/String;I)V

    .line 522
    .line 523
    .line 524
    const-string v0, "SemWifiApSmartGattClient"

    .line 525
    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    .line 527
    .line 528
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 529
    .line 530
    .line 531
    const-string v3, "updated status to WIFI disconnected in the SmartMHSlist:"

    .line 532
    .line 533
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 537
    .line 538
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    const/16 v3, 0x9

    .line 546
    .line 547
    if-nez v1, :cond_a

    .line 548
    .line 549
    const-string v1, "null"

    .line 550
    .line 551
    goto :goto_2

    .line 552
    :catchall_1
    move-exception p0

    .line 553
    goto :goto_4

    .line 554
    :cond_a
    iget-object v1, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 555
    .line 556
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    .line 562
    .line 563
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 564
    .line 565
    const-string v1, "auto_hotspot_connected_user"

    .line 566
    .line 567
    const/4 v4, 0x0

    .line 568
    invoke-static {v0, v1, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 572
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    .line 574
    .line 575
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    .line 577
    .line 578
    const-string v1, "SemWifiApSmartGattClient:\tupdated status to WIFI disconnected in the SmartMHSlist:"

    .line 579
    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget-object v1, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 584
    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    if-nez v0, :cond_b

    .line 593
    .line 594
    const-string v0, "null"

    .line 595
    .line 596
    goto :goto_3

    .line 597
    :cond_b
    iget-object v0, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 598
    .line 599
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    :goto_3
    invoke-virtual {p0, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    :cond_c
    monitor-exit p1

    .line 607
    return-void

    .line 608
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 609
    throw p0

    .line 610
    :cond_d
    return-void
.end method

.method private launchWiFiApWarning(Ljava/lang/String;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->getWifiApWarningActivityRunningState()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v1, "com.android.settings"

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-ne v0, v2, :cond_0

    .line 27
    .line 28
    const-string v0, "SemWifiApSmartGattClient"

    .line 29
    .line 30
    const-string v3, "sending WIFIAP_WARNING_STOP_DIALOG "

    .line 31
    .line 32
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/content/Intent;

    .line 36
    .line 37
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    const-string v3, "com.samsung.android.settings.wifi.mobileap.wifiapwarning.finish"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v3, 0xc8

    .line 54
    .line 55
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAAHFirstTimeConnectionDialog:Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance p1, Landroid/content/Intent;

    .line 73
    .line 74
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 78
    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const/high16 v0, 0x10000000

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const-string v0, "wifiap_warning_dialog_type"

    .line 93
    .line 94
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return-void
.end method

.method private launchWiFiApWarningForWifiProfileSharing(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.android.settings"

    .line 7
    .line 8
    const-string v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v1, "wifiap_warning_dialog_type"

    .line 24
    .line 25
    const/16 v2, 0x3a

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v1, "mhs_wifi_network_name"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private registerCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->semWifiApIntentHandler:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-le p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x22

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    sub-int/2addr p0, v0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ne v1, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_1
    return-object p1
.end method

.method private resetSmartHotspotConfiguration()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByDataLimit:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByTimeLimit:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->notifyClientDataPausedByUser:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->savedBlockData:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->needAddNotifyMhsEnabled:Z

    .line 12
    .line 13
    return-void
.end method

.method private sendAuthInformation(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothGattService:Landroid/bluetooth/BluetoothGattService;

    .line 4
    .line 5
    sget-object v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_ENCRYPTED_AUTH_ID:Ljava/util/UUID;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getHostNameFromDeviceName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getOwnWifiMac()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 24
    .line 25
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v5, ""

    .line 30
    .line 31
    if-nez v4, :cond_0

    .line 32
    .line 33
    move-object v4, v5

    .line 34
    :cond_0
    if-nez v2, :cond_1

    .line 35
    .line 36
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    :goto_0
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 50
    .line 51
    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserType:I

    .line 60
    .line 61
    const-string v9, ",supportedOWESecurity:"

    .line 62
    .line 63
    const-string v10, "supportSecurity byte "

    .line 64
    .line 65
    const-string v11, "supportBand byte "

    .line 66
    .line 67
    const/4 v12, 0x3

    .line 68
    const/4 v13, 0x2

    .line 69
    const-string v15, "SemWifiApSmartGattClient"

    .line 70
    .line 71
    const/16 v16, 0x0

    .line 72
    .line 73
    const/4 v14, 0x1

    .line 74
    if-ne v8, v14, :cond_c

    .line 75
    .line 76
    const-string v4, "Autheticating for same GUID"

    .line 77
    .line 78
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 82
    .line 83
    const-string v8, "SemWifiApSmartGattClient:\tAutheticating for same GUID"

    .line 84
    .line 85
    invoke-virtual {v4, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 89
    .line 90
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getGuid()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :goto_1
    array-length v5, v4

    .line 106
    add-int/lit8 v5, v5, 0x14

    .line 107
    .line 108
    array-length v7, v6

    .line 109
    add-int/2addr v5, v7

    .line 110
    array-length v7, v3

    .line 111
    add-int/2addr v5, v7

    .line 112
    new-array v5, v5, [B

    .line 113
    .line 114
    aput-byte v14, v5, v16

    .line 115
    .line 116
    array-length v7, v4

    .line 117
    int-to-byte v7, v7

    .line 118
    aput-byte v7, v5, v14

    .line 119
    .line 120
    move/from16 v7, v16

    .line 121
    .line 122
    :goto_2
    array-length v8, v4

    .line 123
    if-ge v7, v8, :cond_3

    .line 124
    .line 125
    add-int/lit8 v8, v7, 0x2

    .line 126
    .line 127
    aget-byte v17, v4, v7

    .line 128
    .line 129
    aput-byte v17, v5, v8

    .line 130
    .line 131
    add-int/lit8 v7, v7, 0x1

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_3
    array-length v7, v4

    .line 135
    add-int/2addr v7, v13

    .line 136
    array-length v8, v6

    .line 137
    int-to-byte v8, v8

    .line 138
    aput-byte v8, v5, v7

    .line 139
    .line 140
    move/from16 v7, v16

    .line 141
    .line 142
    :goto_3
    array-length v8, v6

    .line 143
    if-ge v7, v8, :cond_4

    .line 144
    .line 145
    add-int/lit8 v8, v7, 0x2

    .line 146
    .line 147
    move/from16 v17, v14

    .line 148
    .line 149
    array-length v14, v4

    .line 150
    add-int/2addr v8, v14

    .line 151
    add-int/lit8 v8, v8, 0x1

    .line 152
    .line 153
    aget-byte v14, v6, v7

    .line 154
    .line 155
    aput-byte v14, v5, v8

    .line 156
    .line 157
    add-int/lit8 v7, v7, 0x1

    .line 158
    .line 159
    move/from16 v14, v17

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_4
    move/from16 v17, v14

    .line 163
    .line 164
    array-length v7, v4

    .line 165
    add-int/2addr v7, v12

    .line 166
    array-length v8, v6

    .line 167
    add-int/2addr v7, v8

    .line 168
    array-length v8, v3

    .line 169
    int-to-byte v8, v8

    .line 170
    aput-byte v8, v5, v7

    .line 171
    .line 172
    move/from16 v14, v16

    .line 173
    .line 174
    :goto_4
    array-length v7, v3

    .line 175
    if-ge v14, v7, :cond_5

    .line 176
    .line 177
    add-int/lit8 v7, v14, 0x4

    .line 178
    .line 179
    array-length v8, v4

    .line 180
    add-int/2addr v7, v8

    .line 181
    array-length v8, v6

    .line 182
    add-int/2addr v7, v8

    .line 183
    aget-byte v8, v3, v14

    .line 184
    .line 185
    aput-byte v8, v5, v7

    .line 186
    .line 187
    add-int/lit8 v14, v14, 0x1

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_5
    iget v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 191
    .line 192
    if-eqz v7, :cond_6

    .line 193
    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 200
    .line 201
    int-to-byte v8, v8

    .line 202
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v7

    .line 209
    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    array-length v7, v4

    .line 213
    add-int/lit8 v7, v7, 0x4

    .line 214
    .line 215
    array-length v8, v6

    .line 216
    add-int/2addr v7, v8

    .line 217
    array-length v8, v3

    .line 218
    add-int/2addr v7, v8

    .line 219
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 220
    .line 221
    int-to-byte v8, v8

    .line 222
    aput-byte v8, v5, v7

    .line 223
    .line 224
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 230
    .line 231
    int-to-byte v8, v8

    .line 232
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 239
    .line 240
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v7

    .line 247
    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .line 249
    .line 250
    array-length v7, v4

    .line 251
    add-int/lit8 v7, v7, 0x5

    .line 252
    .line 253
    array-length v8, v6

    .line 254
    add-int/2addr v7, v8

    .line 255
    array-length v8, v3

    .line 256
    add-int/2addr v7, v8

    .line 257
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 258
    .line 259
    int-to-byte v8, v8

    .line 260
    aput-byte v8, v5, v7

    .line 261
    .line 262
    array-length v7, v4

    .line 263
    add-int/lit8 v7, v7, 0x5

    .line 264
    .line 265
    array-length v8, v6

    .line 266
    add-int/2addr v7, v8

    .line 267
    array-length v8, v3

    .line 268
    add-int/2addr v7, v8

    .line 269
    add-int/lit8 v7, v7, 0x1

    .line 270
    .line 271
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 272
    .line 273
    int-to-byte v8, v8

    .line 274
    aput-byte v8, v5, v7

    .line 275
    .line 276
    array-length v4, v4

    .line 277
    add-int/lit8 v4, v4, 0x5

    .line 278
    .line 279
    array-length v6, v6

    .line 280
    add-int/2addr v4, v6

    .line 281
    array-length v3, v3

    .line 282
    add-int/2addr v4, v3

    .line 283
    add-int/2addr v4, v13

    .line 284
    move/from16 v3, p2

    .line 285
    .line 286
    int-to-byte v3, v3

    .line 287
    aput-byte v3, v5, v4

    .line 288
    .line 289
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 290
    .line 291
    if-eqz v3, :cond_b

    .line 292
    .line 293
    sget-boolean v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHSDBG:Z

    .line 294
    .line 295
    if-eqz v3, :cond_7

    .line 296
    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v6, "Using AES:"

    .line 300
    .line 301
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    :cond_7
    new-instance v4, Ljava/lang/String;

    .line 317
    .line 318
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 319
    .line 320
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 321
    .line 322
    .line 323
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/AES;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    if-eqz v0, :cond_8

    .line 330
    .line 331
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    goto :goto_5

    .line 336
    :cond_8
    const/4 v0, 0x0

    .line 337
    :goto_5
    if-nez v0, :cond_9

    .line 338
    .line 339
    const-string v3, " Encryption can\'t be null"

    .line 340
    .line 341
    invoke-static {v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_9
    if-eqz v3, :cond_a

    .line 346
    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v4, "Encrypted size is"

    .line 350
    .line 351
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    array-length v4, v0

    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    const-string v4, ","

    .line 359
    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    new-instance v4, Ljava/lang/String;

    .line 364
    .line 365
    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    :cond_a
    :goto_6
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 379
    .line 380
    .line 381
    goto/16 :goto_10

    .line 382
    .line 383
    :cond_b
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 384
    .line 385
    .line 386
    goto/16 :goto_10

    .line 387
    .line 388
    :cond_c
    move/from16 v17, v14

    .line 389
    .line 390
    if-ne v8, v13, :cond_13

    .line 391
    .line 392
    const-string v8, "Autheticating for same family ID"

    .line 393
    .line 394
    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .line 396
    .line 397
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 398
    .line 399
    const-string v14, "SemWifiApSmartGattClient:\tAutheticating for same family ID"

    .line 400
    .line 401
    invoke-virtual {v8, v14}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 405
    .line 406
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getFamilyID()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v8

    .line 410
    if-eqz v8, :cond_d

    .line 411
    .line 412
    invoke-virtual {v8, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    goto :goto_7

    .line 417
    :cond_d
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    :goto_7
    array-length v7, v5

    .line 422
    add-int/lit8 v7, v7, 0x14

    .line 423
    .line 424
    array-length v8, v6

    .line 425
    add-int/2addr v7, v8

    .line 426
    array-length v8, v3

    .line 427
    add-int/2addr v7, v8

    .line 428
    array-length v8, v4

    .line 429
    add-int/2addr v7, v8

    .line 430
    new-array v7, v7, [B

    .line 431
    .line 432
    aput-byte v13, v7, v16

    .line 433
    .line 434
    array-length v8, v5

    .line 435
    int-to-byte v8, v8

    .line 436
    aput-byte v8, v7, v17

    .line 437
    .line 438
    move/from16 v8, v16

    .line 439
    .line 440
    :goto_8
    array-length v14, v5

    .line 441
    if-ge v8, v14, :cond_e

    .line 442
    .line 443
    add-int/lit8 v14, v8, 0x2

    .line 444
    .line 445
    aget-byte v18, v5, v8

    .line 446
    .line 447
    aput-byte v18, v7, v14

    .line 448
    .line 449
    add-int/lit8 v8, v8, 0x1

    .line 450
    .line 451
    goto :goto_8

    .line 452
    :cond_e
    array-length v8, v5

    .line 453
    add-int/2addr v8, v13

    .line 454
    array-length v13, v6

    .line 455
    int-to-byte v13, v13

    .line 456
    aput-byte v13, v7, v8

    .line 457
    .line 458
    move/from16 v8, v16

    .line 459
    .line 460
    :goto_9
    array-length v13, v6

    .line 461
    if-ge v8, v13, :cond_f

    .line 462
    .line 463
    add-int/lit8 v13, v8, 0x2

    .line 464
    .line 465
    array-length v14, v5

    .line 466
    add-int/2addr v13, v14

    .line 467
    add-int/lit8 v13, v13, 0x1

    .line 468
    .line 469
    aget-byte v14, v6, v8

    .line 470
    .line 471
    aput-byte v14, v7, v13

    .line 472
    .line 473
    add-int/lit8 v8, v8, 0x1

    .line 474
    .line 475
    goto :goto_9

    .line 476
    :cond_f
    array-length v8, v5

    .line 477
    add-int/2addr v8, v12

    .line 478
    array-length v12, v6

    .line 479
    add-int/2addr v8, v12

    .line 480
    array-length v12, v3

    .line 481
    int-to-byte v12, v12

    .line 482
    aput-byte v12, v7, v8

    .line 483
    .line 484
    move/from16 v8, v16

    .line 485
    .line 486
    :goto_a
    array-length v12, v3

    .line 487
    if-ge v8, v12, :cond_10

    .line 488
    .line 489
    add-int/lit8 v12, v8, 0x4

    .line 490
    .line 491
    array-length v13, v5

    .line 492
    add-int/2addr v12, v13

    .line 493
    array-length v13, v6

    .line 494
    add-int/2addr v12, v13

    .line 495
    aget-byte v13, v3, v8

    .line 496
    .line 497
    aput-byte v13, v7, v12

    .line 498
    .line 499
    add-int/lit8 v8, v8, 0x1

    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_10
    array-length v8, v5

    .line 503
    add-int/lit8 v8, v8, 0x4

    .line 504
    .line 505
    array-length v12, v6

    .line 506
    add-int/2addr v8, v12

    .line 507
    array-length v12, v3

    .line 508
    add-int/2addr v8, v12

    .line 509
    array-length v12, v4

    .line 510
    int-to-byte v12, v12

    .line 511
    aput-byte v12, v7, v8

    .line 512
    .line 513
    move/from16 v14, v16

    .line 514
    .line 515
    :goto_b
    array-length v8, v4

    .line 516
    if-ge v14, v8, :cond_11

    .line 517
    .line 518
    add-int/lit8 v8, v14, 0x5

    .line 519
    .line 520
    array-length v12, v5

    .line 521
    add-int/2addr v8, v12

    .line 522
    array-length v12, v6

    .line 523
    add-int/2addr v8, v12

    .line 524
    array-length v12, v3

    .line 525
    add-int/2addr v8, v12

    .line 526
    aget-byte v12, v4, v14

    .line 527
    .line 528
    aput-byte v12, v7, v8

    .line 529
    .line 530
    add-int/lit8 v14, v14, 0x1

    .line 531
    .line 532
    goto :goto_b

    .line 533
    :cond_11
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 534
    .line 535
    if-eqz v8, :cond_12

    .line 536
    .line 537
    new-instance v8, Ljava/lang/StringBuilder;

    .line 538
    .line 539
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    iget v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 543
    .line 544
    int-to-byte v11, v11

    .line 545
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    array-length v8, v5

    .line 556
    add-int/lit8 v8, v8, 0x5

    .line 557
    .line 558
    array-length v11, v6

    .line 559
    add-int/2addr v8, v11

    .line 560
    array-length v11, v3

    .line 561
    add-int/2addr v8, v11

    .line 562
    array-length v11, v4

    .line 563
    add-int/2addr v8, v11

    .line 564
    iget v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 565
    .line 566
    int-to-byte v11, v11

    .line 567
    aput-byte v11, v7, v8

    .line 568
    .line 569
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    .line 570
    .line 571
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    iget v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 575
    .line 576
    int-to-byte v10, v10

    .line 577
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    iget v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 584
    .line 585
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v8

    .line 592
    invoke-static {v15, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    array-length v8, v5

    .line 596
    add-int/lit8 v8, v8, 0x6

    .line 597
    .line 598
    array-length v9, v6

    .line 599
    add-int/2addr v8, v9

    .line 600
    array-length v9, v3

    .line 601
    add-int/2addr v8, v9

    .line 602
    array-length v9, v4

    .line 603
    add-int/2addr v8, v9

    .line 604
    iget v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 605
    .line 606
    int-to-byte v9, v9

    .line 607
    aput-byte v9, v7, v8

    .line 608
    .line 609
    array-length v5, v5

    .line 610
    add-int/lit8 v5, v5, 0x6

    .line 611
    .line 612
    array-length v6, v6

    .line 613
    add-int/2addr v5, v6

    .line 614
    array-length v3, v3

    .line 615
    add-int/2addr v5, v3

    .line 616
    array-length v3, v4

    .line 617
    add-int/2addr v5, v3

    .line 618
    add-int/lit8 v5, v5, 0x1

    .line 619
    .line 620
    iget v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 621
    .line 622
    int-to-byte v0, v0

    .line 623
    aput-byte v0, v7, v5

    .line 624
    .line 625
    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 626
    .line 627
    .line 628
    goto/16 :goto_10

    .line 629
    .line 630
    :cond_13
    if-ne v8, v12, :cond_19

    .line 631
    .line 632
    const-string v4, "Autheticating for Allowed User"

    .line 633
    .line 634
    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 638
    .line 639
    const-string v8, "SemWifiApSmartGattClient:\tAutheticating for Allowed User"

    .line 640
    .line 641
    invoke-virtual {v4, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 645
    .line 646
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getD2DFamilyID()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v4

    .line 650
    if-eqz v4, :cond_14

    .line 651
    .line 652
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    goto :goto_c

    .line 657
    :cond_14
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    :goto_c
    array-length v5, v4

    .line 662
    add-int/lit8 v5, v5, 0x14

    .line 663
    .line 664
    array-length v7, v6

    .line 665
    add-int/2addr v5, v7

    .line 666
    array-length v7, v3

    .line 667
    add-int/2addr v5, v7

    .line 668
    new-array v5, v5, [B

    .line 669
    .line 670
    aput-byte v12, v5, v16

    .line 671
    .line 672
    array-length v7, v4

    .line 673
    int-to-byte v7, v7

    .line 674
    aput-byte v7, v5, v17

    .line 675
    .line 676
    move/from16 v7, v16

    .line 677
    .line 678
    :goto_d
    array-length v8, v4

    .line 679
    if-ge v7, v8, :cond_15

    .line 680
    .line 681
    add-int/lit8 v8, v7, 0x2

    .line 682
    .line 683
    aget-byte v14, v4, v7

    .line 684
    .line 685
    aput-byte v14, v5, v8

    .line 686
    .line 687
    add-int/lit8 v7, v7, 0x1

    .line 688
    .line 689
    goto :goto_d

    .line 690
    :cond_15
    array-length v7, v4

    .line 691
    add-int/2addr v7, v13

    .line 692
    array-length v8, v6

    .line 693
    int-to-byte v8, v8

    .line 694
    aput-byte v8, v5, v7

    .line 695
    .line 696
    move/from16 v7, v16

    .line 697
    .line 698
    :goto_e
    array-length v8, v6

    .line 699
    if-ge v7, v8, :cond_16

    .line 700
    .line 701
    add-int/lit8 v8, v7, 0x2

    .line 702
    .line 703
    array-length v13, v4

    .line 704
    add-int/2addr v8, v13

    .line 705
    add-int/lit8 v8, v8, 0x1

    .line 706
    .line 707
    aget-byte v13, v6, v7

    .line 708
    .line 709
    aput-byte v13, v5, v8

    .line 710
    .line 711
    add-int/lit8 v7, v7, 0x1

    .line 712
    .line 713
    goto :goto_e

    .line 714
    :cond_16
    array-length v7, v4

    .line 715
    add-int/2addr v7, v12

    .line 716
    array-length v8, v6

    .line 717
    add-int/2addr v7, v8

    .line 718
    array-length v8, v3

    .line 719
    int-to-byte v8, v8

    .line 720
    aput-byte v8, v5, v7

    .line 721
    .line 722
    move/from16 v14, v16

    .line 723
    .line 724
    :goto_f
    array-length v7, v3

    .line 725
    if-ge v14, v7, :cond_17

    .line 726
    .line 727
    add-int/lit8 v7, v14, 0x4

    .line 728
    .line 729
    array-length v8, v4

    .line 730
    add-int/2addr v7, v8

    .line 731
    array-length v8, v6

    .line 732
    add-int/2addr v7, v8

    .line 733
    aget-byte v8, v3, v14

    .line 734
    .line 735
    aput-byte v8, v5, v7

    .line 736
    .line 737
    add-int/lit8 v14, v14, 0x1

    .line 738
    .line 739
    goto :goto_f

    .line 740
    :cond_17
    iget v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 741
    .line 742
    if-eqz v7, :cond_18

    .line 743
    .line 744
    new-instance v7, Ljava/lang/StringBuilder;

    .line 745
    .line 746
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 750
    .line 751
    int-to-byte v8, v8

    .line 752
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    .line 761
    .line 762
    array-length v7, v4

    .line 763
    add-int/lit8 v7, v7, 0x4

    .line 764
    .line 765
    array-length v8, v6

    .line 766
    add-int/2addr v7, v8

    .line 767
    array-length v8, v3

    .line 768
    add-int/2addr v7, v8

    .line 769
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 770
    .line 771
    int-to-byte v8, v8

    .line 772
    aput-byte v8, v5, v7

    .line 773
    .line 774
    :cond_18
    new-instance v7, Ljava/lang/StringBuilder;

    .line 775
    .line 776
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 780
    .line 781
    int-to-byte v8, v8

    .line 782
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    .line 787
    .line 788
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 789
    .line 790
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v7

    .line 797
    invoke-static {v15, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .line 799
    .line 800
    array-length v7, v4

    .line 801
    add-int/lit8 v7, v7, 0x5

    .line 802
    .line 803
    array-length v8, v6

    .line 804
    add-int/2addr v7, v8

    .line 805
    array-length v8, v3

    .line 806
    add-int/2addr v7, v8

    .line 807
    iget v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 808
    .line 809
    int-to-byte v8, v8

    .line 810
    aput-byte v8, v5, v7

    .line 811
    .line 812
    array-length v4, v4

    .line 813
    add-int/lit8 v4, v4, 0x5

    .line 814
    .line 815
    array-length v6, v6

    .line 816
    add-int/2addr v4, v6

    .line 817
    array-length v3, v3

    .line 818
    add-int/2addr v4, v3

    .line 819
    add-int/lit8 v4, v4, 0x1

    .line 820
    .line 821
    iget v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 822
    .line 823
    int-to-byte v0, v0

    .line 824
    aput-byte v0, v5, v4

    .line 825
    .line 826
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 827
    .line 828
    .line 829
    :cond_19
    :goto_10
    const-string v0, "Write Characterstic:"

    .line 830
    .line 831
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .line 837
    .line 838
    move-object/from16 v0, p1

    .line 839
    .line 840
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 841
    .line 842
    .line 843
    return-void
.end method

.method private sendWifiConfigurationForWifiProfileSharing(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "com.android.settings"

    .line 7
    .line 8
    const-string v2, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/high16 v1, 0x10000000

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    const-string v1, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    const-string v1, "wifiap_warning_dialog_type"

    .line 24
    .line 25
    const/16 v2, 0x3e

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    const-string v1, "mhs_wifi_configuration"

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private setConnectionState(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "setConnectionState state "

    .line 2
    .line 3
    const-string v1, "MhsMac "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 10
    .line 11
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "SemWifiApSmartGattClient"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 28
    .line 29
    const-string v1, "SemWifiApSmartGattClient:\tsetConnectionState state :"

    .line 30
    .line 31
    const-string v2, "MhsMac"

    .line 32
    .line 33
    invoke-static {v1, p1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 38
    .line 39
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v0, -0xa

    .line 54
    .line 55
    if-eq p1, v0, :cond_0

    .line 56
    .line 57
    const/4 v0, -0x2

    .line 58
    if-eq p1, v0, :cond_0

    .line 59
    .line 60
    const/4 v0, -0x7

    .line 61
    if-ne p1, v0, :cond_1

    .line 62
    .line 63
    :cond_0
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Landroid/util/Pair;

    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    .line 82
    .line 83
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->setBLEPairingFailedHistory(Ljava/lang/String;Landroid/util/Pair;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->updateSmartMHSConnectionStatus(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 93
    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;->onStateChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    :catch_0
    :cond_2
    return-void
.end method

.method private shutdownclient()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "shutdownclient,mConnectedGatt:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "SemWifiApSmartGattClient"

    .line 18
    .line 19
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "SemWifiApSmartGattClient:\tshutdownclient,mConnectedGatt:"

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    .line 63
    .line 64
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 65
    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 84
    .line 85
    .line 86
    const-wide/16 v3, 0x3e8

    .line 87
    .line 88
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    :catch_0
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    iput-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    .line 97
    .line 98
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGotMHSEnabledNotificationEarlier:Z

    .line 99
    .line 100
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_1

    .line 113
    .line 114
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->setNeedToDoSilentRoaming(I)V

    .line 123
    .line 124
    .line 125
    :cond_1
    const-string v0, "1"

    .line 126
    .line 127
    const-string v1, "vendor.wifiap.autohotspot.btadapterenable.smartgattclient"

    .line 128
    .line 129
    const-string v3, "0"

    .line 130
    .line 131
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    .line 141
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 145
    .line 146
    if-eqz v0, :cond_2

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/16 v1, 0xc

    .line 153
    .line 154
    if-ne v0, v1, :cond_2

    .line 155
    .line 156
    const-string v0, "disabling BT which was enabled through autohotspot"

    .line 157
    .line 158
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 164
    .line 165
    .line 166
    :cond_2
    return-void
.end method

.method private shutdownclient_1()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "shutdownclient_1,mConnectedGatt:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "SemWifiApSmartGattClient"

    .line 18
    .line 19
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v4, "SemWifiApSmartGattClient:\tshutdownclient_1,mConnectedGatt:"

    .line 27
    .line 28
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x1

    .line 58
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->requestedToEnableMHS:Z

    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 69
    .line 70
    .line 71
    const-wide/16 v1, 0x3e8

    .line 72
    .line 73
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    :catch_0
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mTimeMismatchOccured:Z

    .line 82
    .line 83
    return-void
.end method

.method private stopPartialScan()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiScanner;->stopScan(Landroid/net/wifi/WifiScanner$ScanListener;)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPartialScanListener:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$PartialScanListener;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    const/4 v3, 0x1

    .line 29
    add-int/2addr v1, v3

    .line 30
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 45
    .line 46
    const-wide/16 v4, 0x3e8

    .line 47
    .line 48
    const-string v6, "SemWifiApSmartGattClient"

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    const-string v0, "mConnectedGatt is not null before intiating new connection, resource leak2"

    .line 53
    .line 54
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 58
    .line 59
    const-string v7, "SemWifiApSmartGattClient\tmConnectedGatt is not null before intiating new connection, resource leak2"

    .line 60
    .line 61
    invoke-virtual {v0, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 67
    .line 68
    .line 69
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 75
    .line 76
    const/4 v8, 0x2

    .line 77
    invoke-virtual {p1, v0, p2, v7, v8}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 82
    .line 83
    const-string p2, "Trying to create a new connection. attempt:"

    .line 84
    .line 85
    const-string v0, ",mConnectedGatt:"

    .line 86
    .line 87
    invoke-static {p2, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    iget-object v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 92
    .line 93
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 104
    .line 105
    const-string v9, "SemWifiApSmartGattClient\tTrying to create a new connection. attempt:"

    .line 106
    .line 107
    invoke-static {v9, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    iget-object v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v7, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    new-instance v7, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 135
    .line 136
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {v6, p2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    const-string p2, "set timeout for servicediscovery"

    .line 147
    .line 148
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 152
    .line 153
    if-eqz p2, :cond_2

    .line 154
    .line 155
    const/16 v7, 0x19

    .line 156
    .line 157
    invoke-virtual {p2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    .line 159
    .line 160
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 161
    .line 162
    const-wide/16 v9, 0x2710

    .line 163
    .line 164
    invoke-virtual {p2, v7, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    .line 166
    .line 167
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 168
    .line 169
    if-nez p2, :cond_3

    .line 170
    .line 171
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    .line 173
    .line 174
    :catch_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {p0, v3, p2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mGattCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 182
    .line 183
    invoke-virtual {p1, p2, v3, v4, v8}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 188
    .line 189
    const-string p1, "mConnectedGatt = null, Trying to create a new connection. attempt:"

    .line 190
    .line 191
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 196
    .line 197
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {v6, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 208
    .line 209
    const-string v4, "SemWifiApSmartGattClient\tmConnectedGatt = null, Trying to create a new connection. attempt:"

    .line 210
    .line 211
    invoke-static {v4, v1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 216
    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {p2, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    new-instance p2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 239
    .line 240
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-static {v6, p1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemAutoHotspotDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 251
    .line 252
    if-nez p1, :cond_3

    .line 253
    .line 254
    const-string p1, " mConnectedGatt = null, returning false"

    .line 255
    .line 256
    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .line 258
    .line 259
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 260
    .line 261
    const-string p1, "SemWifiApSmartGattClient\tmConnectedGatt = null, returning false"

    .line 262
    .line 263
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    return v2

    .line 267
    :cond_3
    return v3
.end method

.method private updateSmartMHSConnectionStatus(Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iput p2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method


# virtual methods
.method public connectToSmartMHS(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z
    .locals 13

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->autoConnectClient:Z

    .line 2
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->autoConnectClient:Z

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to connect from AdvHotspot client,autoConnectClient:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->autoConnectClient:Z

    const-string v3, "SemWifiApSmartGattClient"

    .line 5
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 6
    iget-object v5, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mDevice:Ljava/lang/String;

    iget v6, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mMHSdeviceType:I

    iget v7, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mhidden:I

    iget v8, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSecurity:I

    iget-object v9, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    iget-object v10, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mUserName:Ljava/lang/String;

    iget v11, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->version:I

    iget-boolean v12, p1, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->isWifiProfileShareEnabled:Z

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    .line 7
    iput-boolean v0, v4, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->autoConnectClient:Z

    return p0
.end method

.method public connectToSmartMHS(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;IZ)Z
    .locals 14

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v8, p7

    .line 11
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 12
    const-string v6, "SemWifiApSmartGattClient"

    const-string v7, "packageName:"

    const-string v9, " mIsRetryGattConnect "

    .line 13
    invoke-static {v7, v5, v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 14
    iget-boolean v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    .line 15
    invoke-static {v5, v7, v6}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 17
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setAutohotspotMHSConnectionHistory(Ljava/lang/String;)V

    .line 18
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adv_autohotspot_client_history"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 19
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v10, 0x0

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    if-nez v5, :cond_1

    .line 20
    const-string p0, "SemWifiApSmartGattClient"

    const-string v0, "mConnectedGatt is not null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 21
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isBondingGoingon:Z

    if-eqz v5, :cond_2

    .line 22
    const-string p0, "SemWifiApSmartGattClient"

    const-string v0, "isBondingGoingon is true"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 23
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v5

    .line 24
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v11, 0x2

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 25
    iget v12, v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-eq v12, v9, :cond_4

    if-ne v12, v11, :cond_3

    :cond_4
    iget-boolean v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsRetryGattConnect:Z

    if-nez v11, :cond_3

    .line 26
    const-string p0, "SemWifiApSmartGattClient"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gatt connecting is going on, return:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    monitor-exit v5

    return v10

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    .line 28
    :cond_5
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 30
    iput v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_status_retry:I

    .line 31
    iput v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_auth_status_retry:I

    .line 32
    iput v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_read_wifi_share_retry:I

    .line 33
    iput-boolean v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing:Z

    .line 34
    iput v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhs_write_bluetooth_gatt_characteristic_status_retry:I

    .line 35
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserType:I

    .line 36
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mhideSSID:I

    .line 37
    iput-boolean v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isWifiProfileShareEnabled:Z

    .line 38
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isWifiProfileShareAHSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->autoConnectClient:Z

    if-nez v5, :cond_6

    move/from16 v5, p8

    .line 39
    iput-boolean v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isWifiProfileShareEnabled:Z

    .line 40
    :cond_6
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isWifiProfileShareEnabled:Z

    if-eqz v5, :cond_7

    .line 41
    const-string v5, "SemWifiApSmartGattClient"

    const-string v6, "wifiProfileShare is supported"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_7
    iput-boolean v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->autoConnectClient:Z

    move-object/from16 v5, p6

    .line 43
    iput-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mUserName:Ljava/lang/String;

    .line 44
    iput v8, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mversion:I

    .line 45
    iput v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSilentRoaming:I

    .line 46
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 47
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getNeedToDoSilentRoaming()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSilentRoaming:I

    .line 48
    :cond_8
    const-string v5, "SemWifiApSmartGattClient"

    const-string v6, "connectToSmartMHS   mversion:"

    const-string v7, ",address:"

    .line 49
    invoke-static {v6, v8, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 50
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mUserType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mHidden:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mSecurity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mSmartAp_WiFi_MAC:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mSilentRoaming:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSilentRoaming:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    const-string v6, "SemWifiApSmartGattClient:\tconnectToSmartMHS   mversion:"

    const-string v7, ",address:"

    .line 52
    invoke-static {v6, v8, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 53
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v7, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",mUserType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mHidden:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSecurity:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mSmartAp_WiFi_MAC:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mSilentRoaming:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSilentRoaming:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAutoHotspotBleAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_17

    if-nez p1, :cond_9

    goto/16 :goto_5

    .line 55
    :cond_9
    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    if-nez v12, :cond_a

    .line 56
    const-string p0, "SemWifiApSmartGattClient"

    const-string v0, "Device not found. Unable to connect."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 57
    :cond_a
    iput-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_BLE_MAC:Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v2

    .line 60
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v10

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 62
    iget-object v7, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v13, 0x3

    if-eqz v7, :cond_b

    iget v7, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-eq v7, v13, :cond_b

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    .line 64
    :cond_b
    iget v7, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    if-eq v7, v13, :cond_c

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartClient:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    invoke-virtual {v7, v11, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->removeFromScanResults(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_c
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    :cond_d
    :try_start_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v10

    :goto_2
    if-ge v5, v3, :cond_e

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 68
    iget-object v7, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 69
    :catch_0
    :cond_e
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 70
    iget-object v13, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    monitor-enter v13

    .line 71
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object/from16 v3, p5

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v0, 0x7530

    .line 73
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->MHS_CONNECTION_TIMEOUT:I

    .line 74
    invoke-direct {p0, v9, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    if-eqz v0, :cond_f

    const/16 v2, 0x12

    .line 76
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 77
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_f
    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-virtual {v0, v8, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isEncryptionCanbeUsed(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getAESKey(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    .line 81
    :cond_10
    iput v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 82
    iput v11, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    .line 83
    iput v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->resetSmartHotspotConfiguration()V

    .line 85
    const-string v0, "SemWifiApSmartGattClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supportSecurity :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",supportedOWESecurity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportedOWESecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    const-string v1, "wifinl80211"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->savedBlockData:Ljava/lang/String;

    .line 88
    const-string v0, "SemWifiApSmartGattClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "this.mSmartAp_WiFi_MAC : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartAp_WiFi_MAC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " savedBlockData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->savedBlockData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    move-result-object v0

    .line 90
    array-length v0, v0

    if-eqz v0, :cond_11

    .line 91
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 92
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNl80211Manager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-virtual {v0, v11}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getChannelsMhzForBand(I)[I

    move-result-object v0

    .line 93
    array-length v0, v0

    if-eqz v0, :cond_12

    .line 94
    iget v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    or-int/2addr v0, v11

    iput v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    .line 95
    :cond_12
    iput-boolean v10, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mNeedRetry:Z

    .line 96
    iput v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mChacteristicRetryCount:I

    .line 97
    const-string v0, "SemWifiApSmartGattClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "supportBand :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->supportBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_13

    .line 98
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mAESKey:Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_13
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_15

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    if-ne v0, v1, :cond_14

    .line 100
    const-string v0, "SemWifiApSmartGattClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SemWifiApSmartGattClient:\tdevice is not bonded, enabling BT adapter,mBluetoothIsOn:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 102
    const-string v0, "vendor.wifiap.autohotspot.btadapterenable.smartgattclient"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 104
    iput-boolean v9, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothIsOn:Z

    .line 105
    iput-object v12, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_3

    .line 106
    :cond_14
    const-string v0, "SemWifiApSmartGattClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "device is not bonded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SemWifiApSmartGattClient:\tdevice is not bonded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mPendingDeviceAddress:Ljava/lang/String;

    .line 109
    invoke-virtual {v12, v11}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    goto :goto_3

    .line 110
    :cond_15
    invoke-direct {p0, v12, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tryToConnectToRemoteBLE(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, -0x7

    .line 111
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->setConnectionState(ILjava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mFailedBLEConnections:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_3
    return v9

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 113
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 114
    :goto_4
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    .line 115
    :cond_17
    :goto_5
    const-string p0, "SemWifiApSmartGattClient"

    const-string v0, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 116
    :goto_6
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0
.end method

.method public factoryReset()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "SemWifiApSmartGattClient"

    .line 6
    .line 7
    const-string v3, "factoryReset is called"

    .line 8
    .line 9
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mLocalLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    const-string v3, "SemWifiApSmartGattClient:\tfactoryReset is called"

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "adv_autohotspot_client_history"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v2, "bonded_device_clientside"

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method

.method public getHotspotVersion()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "mHotspotVersion value : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "SemWifiApSmartGattClient"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mHotspotVersion:I

    .line 23
    .line 24
    return p0
.end method

.method public getSmartApClientMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 25
    .line 26
    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    const-string v0, "SemWifiApSmartGattClient"

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "getSmartApClientMac mhs_mac "

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ",::"

    .line 58
    .line 59
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget-object p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 75
    .line 76
    monitor-exit v1

    .line 77
    return-object p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    monitor-exit v1

    .line 81
    return-object v0

    .line 82
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public getSmartApConnectedStatus(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 25
    .line 26
    iget-object v4, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->MHS_MAC:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    const-string v0, "SemWifiApSmartGattClient"

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "getSmartApConnectedStatus mhs_mac "

    .line 44
    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWifiApSmartUtil:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p0, ",::"

    .line 58
    .line 59
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 63
    .line 64
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    iget p0, v3, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 75
    .line 76
    monitor-exit v1

    .line 77
    return p0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    monitor-exit v1

    .line 81
    return v0

    .line 82
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method

.method public getSmartApConnectedStatusFromScanResult(Ljava/lang/String;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 25
    .line 26
    iget-object v3, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const-string v0, "SemWifiApSmartGattClient"

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "getSmartApConnectedStatusFromScanResult client MAC:"

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v4, ":"

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v4, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    iget v0, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-eqz p0, :cond_3

    .line 89
    .line 90
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotService()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->isAutohotspotConnectedAfterLCDON(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    const-string p0, "SemWifiApSmartGattClient"

    .line 105
    .line 106
    const-string v0, "getSmartApConnectedStatusFromScanResult client MAC:"

    .line 107
    .line 108
    const-string v1, ":Advanced Connection"

    .line 109
    .line 110
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    const/4 p0, 0x3

    .line 118
    return p0

    .line 119
    :cond_3
    return v0

    .line 120
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    throw p0
.end method

.method public handleBootCompleted()V
    .locals 3

    .line 1
    const-string v0, "SemWifiApSmartGattClient"

    .line 2
    .line 3
    const-string v1, "handleBootCompleted"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v1, "SemWifiApSmartGattClientBleHandler"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkThread:Landroid/os/HandlerThread;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mBleWorkHandler:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "bonded_device_clientside"

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    new-instance v0, Landroid/os/WorkSource;

    .line 46
    .line 47
    const/16 v1, 0x3e8

    .line 48
    .line 49
    const-string v2, "com.samsung.android.server.wifi.softap.smarttethering"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mWorkSource:Landroid/os/WorkSource;

    .line 55
    .line 56
    const-string p0, "vendor.wifiap.autohotspot.btadapterenable.smartgattclient"

    .line 57
    .line 58
    const-string v0, "0"

    .line 59
    .line 60
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public isClientAcceptedWifiProfileSharing(Z)V
    .locals 2

    .line 1
    const-string v0, "isClientAcceptedWifiProfileSharing: "

    .line 2
    .line 3
    const-string v1, "SemWifiApSmartGattClient"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->isClientAcceptedWifiProfileSharing:Z

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mConnectedGatt:Landroid/bluetooth/BluetoothGatt;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->sendAuthInformation(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public isConnectedToAutoHotspot()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mIsConnectedToAutoHotspot:Z

    .line 2
    .line 3
    return p0
.end method

.method public registerWifiApSmartCallback(Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->tWifiApSmartCallback:Lcom/samsung/android/wifi/SemWifiManager$SemWifiApSmartCallback;

    .line 2
    .line 3
    return-void
.end method

.method showSmartMHSInfo()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 21
    .line 22
    const-string v2, "SemWifiApSmartGattClient"

    .line 23
    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v4, ""

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method
