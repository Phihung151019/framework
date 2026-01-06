.class public Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedBR;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SaAccountBR;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemsBR;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$PackageBR;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BleBondingBR;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CscReceiver;,
        Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ProvisionAppReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS:Ljava/lang/String; = "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

.field private static final ACTION_LOGIN_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

.field private static final ACTION_LOGOUT_ACCOUNTS_COMPLETE:Ljava/lang/String; = "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

.field private static final ACTION_PROFILE_LOGIN_MERGE_COMPLETED:Ljava/lang/String; = "com.samsung.android.mobileservice.profile.ACTION_PROFILE_LOGIN_MERGE_COMPLETED"

.field public static final AP_STA_24GHZ_DISCONNECTED:Ljava/lang/String; = "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

.field public static final CHAMELEON_WIFIAP:Ljava/lang/String; = "com.samsung.sec.android.application.csc.chameleon_wifi"

.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field private static final PERMISSION_BR_RECEIVE_SEMS_BROADCAST:Ljava/lang/String; = "com.samsung.android.mobileservice.permission.RECEIVE_SEMS_BROADCAST"

.field private static final PROVISION_HOTSPOT_TRIGGER_ACTION:Ljava/lang/String; = "com.samsung.unifiedtp.PROVISION_HOTSPOT_TRIGGER_ACTION"

.field private static final SAMSUNG_ACCOUNT_SIGIN_RECEIVER_PERMISSION:Ljava/lang/String; = "com.osp.app.signin.BROADCAST_PERMISSION"

.field private static final SMART_TETHERING_FAMILY_DETAILS_CHANGED_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.changed"

.field private static final SMART_TETHERING_FAMILY_ID_CHANGED_BROADCAST:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.familyid"

.field private static final SMART_TETHERING_SERVICE_REGISTER:Ljava/lang/String; = "com.samsung.android.server.wifi.softap.smarttethering.isServiceRegistered"

.field public static final WIFIAP_MODEMNAI_MISSMATH:Ljava/lang/String; = "com.samsung.intent.action.MIP_ERROR"

.field public static final WIFIAP_TETHERING_DENIED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_DENIED"

.field public static final WIFIAP_TETHERING_FAILED:Ljava/lang/String; = "com.samsung.android.intent.action.TETHERING_FAILED"

.field private static final WIFI_AP_STA_DHCPACK_EVENT:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_DHCPACK_EVENT"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAirplaneModeListner:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;",
            ">;"
        }
    .end annotation
.end field

.field private mApInterfaceName:Ljava/lang/String;

.field private final mBatteryStateListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mBootCompletedListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityActionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDataSubscriptionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDateChangedListner:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceNameChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyModeChangedListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mNeabyScanningStateListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetWorkResetEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSamsungAccountListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mSamsungAccountProfileMergedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenStateListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemBleStateListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsSoftResetListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mShutDownEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimChangeStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartTetheringSsidListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbCableStateListners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiApNearbyScanContentObserver:Landroid/database/ContentObserver;

.field private final mWifiApStaInfoStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mWifiApStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiApThreadRuunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNetworkStateListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiStateListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0TdcSzs_cUywUJeQeTo5yl7Szkw(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$41(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$1DxgUKoaQkPmWbzOEkQilj6p4pM(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$59(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$1menHDT4SN637rSPcH9c9Jx298Q(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$64(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$42c28CP-LI9EattosqZ_SLUv4t0(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$16(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$4EUpCsWy3r7p_8O4VD2S1lAByCQ(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$25(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$52M8F1J7yftIPUsd-SObCxlnJ2s(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onShutDownIntentRcvd$3()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$5VKIpF0hBR5MkeGVUACCVpgvvP0(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$1(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$6IkpzneG4J0jiLRBy91mgZdn_ts(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$6WEo9l1zfsGCTxKN_EanBBiDFQk(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$19(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$7e5K2flFFVz7IY-lB3nVd_zPWuo(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$50(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$7oJhTEsuwlbuYDMimBx6aMs88no(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$55(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$7otUCm4PG5SlwZv7-7OFl8zF72U(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$44(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$9XK7nnmcCr99nP6zhiwbEsfETKo(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$28(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$A_ieMgQqZ4EgAj7qeJgNKriclgE(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$62(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$C2SlPkVhv8zn04dYfYTVZKU1Sxk(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onAirplaneModeChanged$24()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$CnX0t2QzytetXcKzRunA2SEbAsg(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$17(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$DI80PxmqT-5Fl4fZa27Ru603uR8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onConnectivityAction$60(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Ep1EImI87fHndUjlToLpd7LV-PU(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$40(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$FIMxWSCXwISL-jJ-602OcDnv_Wc(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onDefaultDataSubscriptionChanged$57()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$HuxmIhSjcoq4M4BKX-rxnQ05kCY(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$4(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IXdhGitLRPPWwwETl3tVk7RjUF8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$14(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$IcULkGDOwwbVSgJvnxrw8SCNjl8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$31(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$LTo-8c_HJzXPMtdYSQGkGdHUZhw(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$56(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$LmyRJbUu8wkTcvq5X6n-e5CFuxk(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$67(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$MKR4WK1tjz2SBWvVJbyTh9oemtY(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$2(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Mp_A19XOQfkeCRzfKbYn9g929ZE(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$13(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$NnI32a4dOgmpg0cXoLgi1rK1T3M(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onDeviceNameChanged$63(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Pdm5gn5S9ZlysG8rIpU8o0z5rt8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$65(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Pr5TnTsi3_TPMgI91Gv8Z0hQNLA(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$52(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Q5aZaZHQjlhNCIZQzHNaWQtOQ_U(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$35(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Rkrw9bI3Dx7unIHIvFmyJ_4o10c(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onScreenStateChanged$30(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$RwCJjjkPEeIOcN6pAmCqx4vq0KI(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$26(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Twe7G2N6s3BdsOAdI5MdH1OjV9U(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$49(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$UK8k-eGTEZnKpDPJjgv2lK5wiNg(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onSamsungAccountProfileMerged$66()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$VY9FbIfzpT1htALRNTgrwCQsgMI(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onSimChangeStateChanged$12(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$WA0KjKg-G1arHj3b7_dwTT9AXAY(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$68(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$XbsZ3DjWJGv36fykGp6XcKTNwRw(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$53(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Y1Wii1oGKCdaaCDBjx71ao3nYK8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onNearbyScanningStateChanged$39(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ZZDbmdp73CnWSjgBaXfClpvgpfw(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onWifiApStaInfoStateChanged$9(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$_FY05nP90de7bXFdpJbgMXEpwFA(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$5(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$_XGKNBIUyvbCR8GHo467oGo8paU(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$11(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$_bzsfcFuRPgOKylZfN9DtRJ9Av8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onSmartTetheringSsidRecieved$51()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$aMRIk3eGrFurVP31B9N3yDwaPzg(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onSamsungAccountState$33(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$aPJ0-OPsV7SsjcxnXG2qrScCIsQ(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$61(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$bROTj7PIsPaOi12DXbiCud2ANLA(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onEmergencyModeChanged$54(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$be1K476VrTAnjbZHKL9xHDVT2qQ(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$10(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$cBPfLTHlNYJljlMTvhV5-XPb6eU(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$23(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$dVgId0UfH2rnLPn1Dv_eHPea648(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onUsbCableStateChanged$42(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$fnxDxcHKavb_heNgRSuNd6RTxj8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onWifiStateChanged$18(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$gNAjky2UeaZL-M4nCVtXqQaNXJU(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$37(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$gUFIJYI0qy8VGau1iokF4XW9yZQ(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onBootCompleted$48()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$gnuGE-r1VhbI0K5L4kbu49KDBYw(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onBatteryStateChanged$36(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$gz5Y2O0QT_JcOXh6sMtt1pVdLN8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onWifiNetworkStateChanged$15(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$hHW5GUBjZnXL2ROFgz0Kv3-wmPk(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$29(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$hgcZOsFflGuM3uralJbEEG7K8Y8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$34(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$hleiugkv273BRlonZRAZ38YjIrc(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$22(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$jZF-158LiCUpg7nDetCcNeAcfv4(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onSettingsSoftReset$45()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$jukE3-Mve5mKstuloRQvj7J7Ofo(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$46(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$mY0UsnNPFZopV_fWb4iDkp6qX2E(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$20(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$o9ydoSO1V9DUSAlj-5_Vm9m_DBI(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$38(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$pj43IlROB6uXBix0fB3EkHYXCps(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$47(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$qAklWUPGxxDPKeSTd4cNdLCo2r0(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onWifiApStateChanged$6(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$uKDXpfQ0PYtcgLYBb0G60Jr1RAk(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onDateChanged$21(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wYw0knU_j6koN7vVgCwBhQ_hggw(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$43(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$xEvbYU6kFDUTOybGDtVlVKAa7CU(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$registerListener$58(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$xmeyME0kJs4DMiVQgMA7kA0tHW8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$7(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$yKbB63ZMXIfGc6syjHzNgHYt-hQ(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onSemBleStateChanged$27(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$zJY_zNZnLks2o_YBIrbPpOHk0rk(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$onNetworkResetEventRcvd$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ztqVxiDJueYIMeTWqXtwlxP8yJA(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->lambda$unregisterListener$32(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mApInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetPowerManager(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Landroid/os/PowerManager;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getPowerManager()Landroid/os/PowerManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$monAirplaneModeChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onAirplaneModeChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monBatteryStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onBatteryStateChanged(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monBootCompleted(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onBootCompleted()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monConnectivityAction(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onConnectivityAction(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$monDateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onDateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monDefaultDataSubscriptionChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onDefaultDataSubscriptionChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monDeviceNameChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onDeviceNameChanged(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$monEmergencyModeChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onEmergencyModeChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monNearbyScanningStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onNearbyScanningStateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monNetworkResetEventRcvd(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onNetworkResetEventRcvd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monSamsungAccountProfileMerged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onSamsungAccountProfileMerged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monSamsungAccountState(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onSamsungAccountState(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onScreenStateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monSemBleStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onSemBleStateChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monSettingsSoftReset(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onSettingsSoftReset()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monShutDownIntentRcvd(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onShutDownIntentRcvd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monSimChangeStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onSimChangeStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monSmartTetheringSsidRecieved(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onSmartTetheringSsidRecieved()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monUsbCableStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onUsbCableStateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiApStaInfoStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiApStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onWifiApStateChanged(IIILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiNetworkStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onWifiNetworkStateChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$monWifiStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->onWifiStateChanged(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$smgetWifiApStateByName(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getWifiApStateByName(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$smshowMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->showMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/wifi/SemWifiApCust;->getInstance()Lcom/samsung/android/wifi/SemWifiApCust;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApCust;->mMHSCustomer:Ljava/lang/String;

    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SemWifiApIntentHandler"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStateListeners:Ljava/util/Set;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mShutDownEventListeners:Ljava/util/Set;

    .line 21
    .line 22
    new-instance v0, Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNetWorkResetEventListeners:Ljava/util/Set;

    .line 28
    .line 29
    new-instance v0, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStaInfoStateListeners:Ljava/util/Set;

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashSet;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSimChangeStateListeners:Ljava/util/Set;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiNetworkStateListener:Ljava/util/Set;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiStateListener:Ljava/util/Set;

    .line 56
    .line 57
    new-instance v0, Ljava/util/HashSet;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDateChangedListner:Ljava/util/Set;

    .line 63
    .line 64
    new-instance v0, Ljava/util/HashSet;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mAirplaneModeListner:Ljava/util/Set;

    .line 70
    .line 71
    new-instance v0, Ljava/util/HashSet;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSemBleStateListners:Ljava/util/Set;

    .line 77
    .line 78
    new-instance v0, Ljava/util/HashSet;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mScreenStateListners:Ljava/util/Set;

    .line 84
    .line 85
    new-instance v0, Ljava/util/HashSet;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountListners:Ljava/util/Set;

    .line 91
    .line 92
    new-instance v0, Ljava/util/HashSet;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBatteryStateListners:Ljava/util/Set;

    .line 98
    .line 99
    new-instance v0, Ljava/util/HashSet;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNeabyScanningStateListners:Ljava/util/Set;

    .line 105
    .line 106
    new-instance v0, Ljava/util/HashSet;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mUsbCableStateListners:Ljava/util/Set;

    .line 112
    .line 113
    new-instance v0, Ljava/util/HashSet;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSettingsSoftResetListners:Ljava/util/Set;

    .line 119
    .line 120
    new-instance v0, Ljava/util/HashSet;

    .line 121
    .line 122
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBootCompletedListners:Ljava/util/Set;

    .line 126
    .line 127
    new-instance v0, Ljava/util/HashSet;

    .line 128
    .line 129
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSmartTetheringSsidListners:Ljava/util/Set;

    .line 133
    .line 134
    new-instance v0, Ljava/util/HashSet;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mEmergencyModeChangedListners:Ljava/util/Set;

    .line 140
    .line 141
    new-instance v0, Ljava/util/HashSet;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDataSubscriptionListeners:Ljava/util/Set;

    .line 147
    .line 148
    new-instance v0, Ljava/util/HashSet;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mConnectivityActionListeners:Ljava/util/Set;

    .line 154
    .line 155
    new-instance v0, Ljava/util/HashSet;

    .line 156
    .line 157
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDeviceNameChangedListeners:Ljava/util/Set;

    .line 161
    .line 162
    new-instance v0, Ljava/util/HashSet;

    .line 163
    .line 164
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountProfileMergedListeners:Ljava/util/Set;

    .line 168
    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 170
    .line 171
    const/16 v1, 0xb

    .line 172
    .line 173
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 174
    .line 175
    .line 176
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 177
    .line 178
    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$1;

    .line 179
    .line 180
    new-instance v1, Landroid/os/Handler;

    .line 181
    .line 182
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$1;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Landroid/os/Handler;)V

    .line 190
    .line 191
    .line 192
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApNearbyScanContentObserver:Landroid/database/ContentObserver;

    .line 193
    .line 194
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mHandler:Landroid/os/Handler;

    .line 197
    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    const-string p2, "nearby_scanning_enabled"

    .line 203
    .line 204
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    const/4 v1, 0x0

    .line 209
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    .line 211
    .line 212
    new-instance p1, Landroid/content/IntentFilter;

    .line 213
    .line 214
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .line 216
    .line 217
    const-string p2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 218
    .line 219
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string p2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const-string p2, "android.intent.action.TIME_SET"

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    const-string p2, "android.net.wifi.STATE_CHANGE"

    .line 238
    .line 239
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 243
    .line 244
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    .line 248
    .line 249
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    .line 253
    .line 254
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    const-string p2, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 258
    .line 259
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 263
    .line 264
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 268
    .line 269
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string p2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 273
    .line 274
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string p2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 283
    .line 284
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 288
    .line 289
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 293
    .line 294
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 298
    .line 299
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string p2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 303
    .line 304
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 308
    .line 309
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 313
    .line 314
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string p2, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 318
    .line 319
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    new-instance v4, Landroid/content/IntentFilter;

    .line 323
    .line 324
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 328
    .line 329
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string p2, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 333
    .line 334
    invoke-virtual {v4, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    new-instance p2, Landroid/content/IntentFilter;

    .line 338
    .line 339
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v0, "com.samsung.android.mobileservice.profile.ACTION_PROFILE_LOGIN_MERGE_COMPLETED"

    .line 343
    .line 344
    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    .line 348
    .line 349
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .line 351
    .line 352
    const-string v2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 353
    .line 354
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    new-instance v2, Landroid/content/IntentFilter;

    .line 358
    .line 359
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    .line 363
    .line 364
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    const/16 v3, 0x3e8

    .line 368
    .line 369
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 370
    .line 371
    .line 372
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 373
    .line 374
    new-instance v5, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedBR;

    .line 375
    .line 376
    invoke-direct {v5, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedBR;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 377
    .line 378
    .line 379
    const/4 v6, 0x2

    .line 380
    invoke-virtual {v3, v5, v2, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 381
    .line 382
    .line 383
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 384
    .line 385
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;

    .line 386
    .line 387
    invoke-direct {v3, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v3, p1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 391
    .line 392
    .line 393
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 394
    .line 395
    new-instance v3, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SaAccountBR;

    .line 396
    .line 397
    invoke-direct {v3, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SaAccountBR;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 398
    .line 399
    .line 400
    const/4 v7, 0x2

    .line 401
    const-string v5, "com.osp.app.signin.BROADCAST_PERMISSION"

    .line 402
    .line 403
    const/4 v6, 0x0

    .line 404
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 405
    .line 406
    .line 407
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 408
    .line 409
    new-instance v6, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;

    .line 410
    .line 411
    invoke-direct {v6, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingResetBR;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 412
    .line 413
    .line 414
    const/4 v10, 0x2

    .line 415
    const-string v8, "com.sec.android.settings.permission.SOFT_RESET"

    .line 416
    .line 417
    const/4 v9, 0x0

    .line 418
    move-object v7, v0

    .line 419
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 420
    .line 421
    .line 422
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 423
    .line 424
    new-instance v6, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemsBR;

    .line 425
    .line 426
    invoke-direct {v6, p0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemsBR;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 427
    .line 428
    .line 429
    const-string v8, "com.samsung.android.mobileservice.permission.RECEIVE_SEMS_BROADCAST"

    .line 430
    .line 431
    move-object v7, p2

    .line 432
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 433
    .line 434
    .line 435
    return-void
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "power"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/PowerManager;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 18
    .line 19
    return-object p0
.end method

.method private getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApThreadRuunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApThreadRuunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApThreadRuunner:Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 16
    .line 17
    return-object p0
.end method

.method private static getWifiApStateByName(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "[invalid state]"

    .line 5
    .line 6
    return-object p0

    .line 7
    :pswitch_0
    const-string p0, "failed"

    .line 8
    .line 9
    return-object p0

    .line 10
    :pswitch_1
    const-string p0, "enabled"

    .line 11
    .line 12
    return-object p0

    .line 13
    :pswitch_2
    const-string p0, "enabling"

    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_3
    const-string p0, "disabled"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_4
    const-string p0, "disabling"

    .line 20
    .line 21
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$onAirplaneModeChanged$24()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mAirplaneModeListner:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;->onAirplaneModeChanged()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onBatteryStateChanged$36(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBatteryStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;->onBatteryStateChanged(II)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onBootCompleted$48()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBootCompletedListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;->onBootCompleted()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onConnectivityAction$60(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mConnectivityActionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;->onConnectivityAction(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDateChanged$21(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDateChangedListner:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;->onDateChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDefaultDataSubscriptionChanged$57()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDataSubscriptionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;->onDefaultDataSubscriptionChanged()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDeviceNameChanged$63(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDeviceNameChangedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;->onDeviceNameChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onEmergencyModeChanged$54(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mEmergencyModeChangedListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;->onEmergencyModeChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onNearbyScanningStateChanged$39(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNeabyScanningStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;->onNearbyScanningStateChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onNetworkResetEventRcvd$0()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNetWorkResetEventListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;->onNetworkResetEventRcvd()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSamsungAccountProfileMerged$66()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountProfileMergedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;->onSamsungAccountProfileMerged()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSamsungAccountState$33(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;->onSamsungAccountState(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onScreenStateChanged$30(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mScreenStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;->onScreenStateChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSemBleStateChanged$27(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSemBleStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;->onSemBleStateChanged(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSettingsSoftReset$45()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSettingsSoftResetListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;->onSettingsSoftReset()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onShutDownIntentRcvd$3()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mShutDownEventListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;->onShutDownIntentRcvd()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSimChangeStateChanged$12(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSimChangeStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;->onSimChangeStateChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onSmartTetheringSsidRecieved$51()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSmartTetheringSsidListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;->onSmartTetheringSsidRecieved()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onUsbCableStateChanged$42(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mUsbCableStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;->onUsbCableStateChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiApStaInfoStateChanged$9(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStaInfoStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v1, v0

    .line 18
    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;

    .line 19
    .line 20
    move-object v2, p1

    .line 21
    move-object v3, p2

    .line 22
    move v4, p3

    .line 23
    move-object v5, p4

    .line 24
    move-object v6, p5

    .line 25
    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;->onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiApStateChanged$6(IIILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;->onWifiApStateChanged(IIILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiNetworkStateChanged$15(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiNetworkStateListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;->onWifiNetworkStateChanged(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$onWifiStateChanged$18(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiStateListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;->onWifiStateChanged(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private synthetic lambda$registerListener$10(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStaInfoStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$13(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSimChangeStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$16(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiNetworkStateListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$19(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiStateListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$2(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNetWorkResetEventListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$22(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDateChangedListner:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$25(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mAirplaneModeListner:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$28(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSemBleStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$31(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mScreenStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$34(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$37(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBatteryStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$40(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNeabyScanningStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$43(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mUsbCableStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$46(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSettingsSoftResetListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$49(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBootCompletedListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$5(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mShutDownEventListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$52(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSmartTetheringSsidListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$55(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mEmergencyModeChangedListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$58(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDataSubscriptionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$61(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mConnectivityActionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$64(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDeviceNameChangedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$67(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountProfileMergedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$registerListener$8(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$1(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNetWorkResetEventListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$11(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStaInfoStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$14(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSimChangeStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$17(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiNetworkStateListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$20(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiStateListener:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$23(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDateChangedListner:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$26(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mAirplaneModeListner:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$29(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSemBleStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$32(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mScreenStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$35(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$38(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBatteryStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$4(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mShutDownEventListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$41(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mNeabyScanningStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$44(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mUsbCableStateListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$47(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSettingsSoftResetListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$50(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mBootCompletedListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$53(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSmartTetheringSsidListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$56(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mEmergencyModeChangedListners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$59(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDataSubscriptionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$62(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mConnectivityActionListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$65(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mDeviceNameChangedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$68(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mSamsungAccountProfileMergedListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$unregisterListener$7(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApStateListeners:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onBatteryStateChanged(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda52;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda52;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private onBootCompleted()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onConnectivityAction(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onDateChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onDefaultDataSubscriptionChanged()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onDeviceNameChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onEmergencyModeChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x6

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onNearbyScanningStateChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onNetworkResetEventRcvd()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onSamsungAccountProfileMerged()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onSamsungAccountState(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private onScreenStateChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onSemBleStateChanged(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda29;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onSettingsSoftReset()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onShutDownIntentRcvd()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onSimChangeStateChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda47;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda47;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private onSmartTetheringSsidRecieved()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda9;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onUsbCableStateChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x7

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onWifiApStaInfoStateChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda24;

    .line 6
    .line 7
    move-object v2, p0

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    move-object v6, p4

    .line 12
    move-object v7, p5

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda24;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private onWifiApStateChanged(IIILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda38;

    .line 11
    .line 12
    move-object v2, p0

    .line 13
    move v3, p1

    .line 14
    move v4, p2

    .line 15
    move v5, p3

    .line 16
    move-object v6, p4

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda38;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;IIILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private onWifiNetworkStateChanged(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;ZI)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private onWifiStateChanged(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda29;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda29;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;II)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static showMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    const/16 v2, 0x11

    .line 23
    .line 24
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method


# virtual methods
.method isNearByScanningEnabled()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "nearby_scanning_enabled"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-ne p0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda26;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda8;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda33;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda20;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda25;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda16;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda7;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda50;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda50;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda39;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda39;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda43;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda43;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda37;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda37;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda19;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda11;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda13;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda21;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda21;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda15;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda26;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$AirplaneModeListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BatteryStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;)V
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda10;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$BootCompletedListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ConnectivityActionListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DataSubscriptionListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda8;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DateChangedListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda33;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda33;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$DeviceNameChangedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda20;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda20;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$EmergencyModeChangedListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda25;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda25;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NearbyScanningStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda4;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$NetWorkResetEventListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda16;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda16;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountProfileMergedListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;)V
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SamsungAccountStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ScreenStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda50;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda50;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SemBleStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;)V
    .locals 3

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda39;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda39;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SettingsSoftResetListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda43;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda43;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$ShutDownEventListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;)V
    .locals 3

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda37;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda37;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SimChangeStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda19;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda19;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$SmartTetheringSsidListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;)V
    .locals 3

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda11;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda11;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$UsbCableStateListner;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda13;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda13;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStaInfoStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda21;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda21;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiApStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda15;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda15;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiNetworkStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->getThreadRunner()Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$WifiStateListener;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
